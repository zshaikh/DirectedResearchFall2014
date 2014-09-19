package com.google.analytics.tracking.android;

import com.google.android.gms.analytics.internal.*;
import android.content.*;
import java.util.concurrent.*;
import android.content.pm.*;
import android.text.*;
import com.google.android.gms.common.util.*;
import java.util.*;
import java.io.*;

class GAThread extends Thread implements AnalyticsThread
{
    static final String API_VERSION = "1";
    private static final String CLIENT_VERSION = "ma1b5";
    private static final int MAX_SAMPLE_RATE = 100;
    private static final int SAMPLE_RATE_MODULO = 10000;
    private static final int SAMPLE_RATE_MULTIPLIER = 100;
    private static GAThread sInstance;
    private volatile boolean mAppOptOut;
    private volatile String mClientId;
    private volatile boolean mClosed;
    private volatile List<Command> mCommands;
    private final Context mContext;
    private volatile boolean mDisabled;
    private volatile String mInstallCampaign;
    private volatile MetaModel mMetaModel;
    private volatile ServiceProxy mServiceProxy;
    private final LinkedBlockingQueue<Runnable> queue;
    
    private GAThread(final Context mContext) {
        super("GAThread");
        this.queue = new LinkedBlockingQueue<Runnable>();
        this.mDisabled = false;
        this.mClosed = false;
        if (mContext != null) {
            this.mContext = mContext.getApplicationContext();
        }
        else {
            this.mContext = mContext;
        }
        this.start();
    }
    
    GAThread(final Context mContext, final ServiceProxy mServiceProxy) {
        super("GAThread");
        this.queue = new LinkedBlockingQueue<Runnable>();
        this.mDisabled = false;
        this.mClosed = false;
        if (mContext != null) {
            this.mContext = mContext.getApplicationContext();
        }
        else {
            this.mContext = mContext;
        }
        this.mServiceProxy = mServiceProxy;
        this.start();
    }
    
    private void fillAppParameters(final Map<String, String> map) {
        final PackageManager packageManager = this.mContext.getPackageManager();
        final String packageName = this.mContext.getPackageName();
        final String installerPackageName = packageManager.getInstallerPackageName(packageName);
        String string = packageName;
        while (true) {
            try {
                final PackageInfo packageInfo = packageManager.getPackageInfo(this.mContext.getPackageName(), 0);
                String versionName = null;
                if (packageInfo != null) {
                    string = packageManager.getApplicationLabel(packageInfo.applicationInfo).toString();
                    versionName = packageInfo.versionName;
                }
                this.putIfAbsent(map, "appName", string);
                this.putIfAbsent(map, "appVersion", versionName);
                this.putIfAbsent(map, "appId", packageName);
                this.putIfAbsent(map, "appInstallerId", installerPackageName);
                map.put("apiVersion", "1");
            }
            catch (PackageManager$NameNotFoundException ex) {
                Log.e("Error retrieving package info: appName set to " + string);
                final String versionName = null;
                continue;
            }
            break;
        }
    }
    
    private void fillCampaignParameters(final Map<String, String> map) {
        final String filterCampaign = Utils.filterCampaign(map.get("campaign"));
        if (TextUtils.isEmpty((CharSequence)filterCampaign)) {
            return;
        }
        final Map<String, String> urlParameters = Utils.parseURLParameters(filterCampaign);
        map.put("campaignContent", urlParameters.get("utm_content"));
        map.put("campaignMedium", urlParameters.get("utm_medium"));
        map.put("campaignName", urlParameters.get("utm_campaign"));
        map.put("campaignSource", urlParameters.get("utm_source"));
        map.put("campaignKeyword", urlParameters.get("utm_term"));
        map.put("campaignId", urlParameters.get("utm_id"));
        map.put("gclid", urlParameters.get("gclid"));
        map.put("dclid", urlParameters.get("dclid"));
        map.put("gmob_t", urlParameters.get("gmob_t"));
    }
    
    private void fillExceptionParameters(final Map<String, String> map) {
        final String s = map.get("rawException");
        if (s != null) {
            map.remove("rawException");
            final ByteArrayInputStream in = new ByteArrayInputStream(Utils.hexDecode(s));
            try {
                final ObjectInputStream objectInputStream = new ObjectInputStream(in);
                final Object object = objectInputStream.readObject();
                objectInputStream.close();
                if (object instanceof Throwable) {
                    map.put("exDescription", new StandardExceptionParser(this.mContext, new ArrayList<String>()).getDescription(map.get("exceptionThreadName"), (Throwable)object));
                }
            }
            catch (IOException ex) {
                Log.w("IOException reading exception");
            }
            catch (ClassNotFoundException ex2) {
                Log.w("ClassNotFoundException reading exception");
            }
        }
    }
    
    private String generateClientId() {
        String lowerCase = UUID.randomUUID().toString().toLowerCase();
        if (!this.storeClientId(lowerCase)) {
            lowerCase = "0";
        }
        return lowerCase;
    }
    
    @VisibleForTesting
    static String getAndClearCampaign(final Context context) {
        try {
            final FileInputStream openFileInput = context.openFileInput("gaInstallData");
            final byte[] array = new byte[8192];
            final int read = openFileInput.read(array, 0, 8192);
            if (openFileInput.available() > 0) {
                Log.e("Too much campaign data, ignoring it.");
                openFileInput.close();
                context.deleteFile("gaInstallData");
                return null;
            }
            openFileInput.close();
            context.deleteFile("gaInstallData");
            if (read <= 0) {
                Log.w("Campaign file is empty.");
                return null;
            }
            final String str = new String(array, 0, read);
            Log.i("Campaign found: " + str);
            return str;
        }
        catch (FileNotFoundException ex) {
            Log.i("No campaign data found.");
            return null;
        }
        catch (IOException ex2) {
            Log.e("Error reading campaign data.");
            context.deleteFile("gaInstallData");
            return null;
        }
    }
    
    private String getHostUrl(final Map<String, String> map) {
        String s = map.get("internalHitUrl");
        if (s == null) {
            if (!map.containsKey("useSecure")) {
                return "https://ssl.google-analytics.com/collect";
            }
            if (!Utils.safeParseBoolean(map.get("useSecure"))) {
                return "http://www.google-analytics.com/collect";
            }
            s = "https://ssl.google-analytics.com/collect";
        }
        return s;
    }
    
    static GAThread getInstance(final Context context) {
        if (GAThread.sInstance == null) {
            GAThread.sInstance = new GAThread(context);
        }
        return GAThread.sInstance;
    }
    
    private void init() {
        this.mServiceProxy.createService();
        (this.mCommands = new ArrayList<Command>()).add(new Command("appendVersion", "_v", "ma1b5"));
        this.mCommands.add(new Command("appendQueueTime", "qt", null));
        this.mCommands.add(new Command("appendCacheBuster", "z", null));
        MetaModelInitializer.set(this.mMetaModel = new MetaModel());
    }
    
    private boolean isSampledOut(final Map<String, String> map) {
        if (map.get("sampleRate") != null) {
            final double safeParseDouble = Utils.safeParseDouble(map.get("sampleRate"));
            if (safeParseDouble <= 0.0) {
                return true;
            }
            if (safeParseDouble < 100.0) {
                final String s = map.get("clientId");
                if (s != null && Math.abs(s.hashCode()) % 10000 >= 100.0 * safeParseDouble) {
                    return true;
                }
            }
        }
        return false;
    }
    
    private boolean loadAppOptOut() {
        return this.mContext.getFileStreamPath("gaOptOut").exists();
    }
    
    private String printStackTrace(final Throwable t) {
        final ByteArrayOutputStream out = new ByteArrayOutputStream();
        final PrintStream s = new PrintStream(out);
        t.printStackTrace(s);
        s.flush();
        return new String(out.toByteArray());
    }
    
    private void putIfAbsent(final Map<String, String> map, final String s, final String s2) {
        if (!map.containsKey(s)) {
            map.put(s, s2);
        }
    }
    
    private void queueToThread(final Runnable e) {
        this.queue.add(e);
    }
    
    private boolean storeClientId(final String s) {
        try {
            final FileOutputStream openFileOutput = this.mContext.openFileOutput("gaClientId", 0);
            openFileOutput.write(s.getBytes());
            openFileOutput.close();
            return true;
        }
        catch (FileNotFoundException ex) {
            Log.e("Error creating clientId file.");
            return false;
        }
        catch (IOException ex2) {
            Log.e("Error writing to clientId file.");
            return false;
        }
    }
    
    @VisibleForTesting
    void close() {
        this.mClosed = true;
        this.interrupt();
    }
    
    @Override
    public void dispatch() {
        this.queueToThread(new Runnable() {
            @Override
            public void run() {
                GAThread.this.mServiceProxy.dispatch();
            }
        });
    }
    
    @Override
    public LinkedBlockingQueue<Runnable> getQueue() {
        return this.queue;
    }
    
    @Override
    public Thread getThread() {
        return this;
    }
    
    @VisibleForTesting
    String initializeClientId() {
        String generateClientId = null;
        while (true) {
            FileInputStream openFileInput = null;
            String s = null;
            try {
                openFileInput = this.mContext.openFileInput("gaClientId");
                final byte[] array = new byte[128];
                final int read = openFileInput.read(array, 0, 128);
                if (openFileInput.available() > 0) {
                    Log.e("clientId file seems corrupted, deleting it.");
                    openFileInput.close();
                    this.mContext.deleteFile("gaInstallData");
                }
                if (read <= 0) {
                    Log.e("clientId file seems empty, deleting it.");
                    openFileInput.close();
                    this.mContext.deleteFile("gaInstallData");
                }
                else {
                    s = new String(array, 0, read);
                    final FileInputStream fileInputStream = openFileInput;
                    fileInputStream.close();
                    final String s2 = generateClientId = s;
                }
                if (generateClientId == null) {
                    generateClientId = this.generateClientId();
                }
                return generateClientId;
            }
            catch (IOException ex) {}
            catch (NumberFormatException ex2) {}
            catch (FileNotFoundException ex3) {
                generateClientId = null;
                continue;
            }
            try {
                final FileInputStream fileInputStream = openFileInput;
                fileInputStream.close();
                generateClientId = s;
                continue;
            }
            catch (NumberFormatException ex4) {}
            catch (IOException ex5) {}
            catch (FileNotFoundException ex6) {
                generateClientId = s;
                continue;
            }
            break;
        }
    }
    
    @VisibleForTesting
    boolean isDisabled() {
        return this.mDisabled;
    }
    
    @Override
    public void requestAppOptOut(final GoogleAnalytics.AppOptOutCallback appOptOutCallback) {
        this.queueToThread(new Runnable() {
            @Override
            public void run() {
                appOptOutCallback.reportAppOptOut(GAThread.this.mAppOptOut);
            }
        });
    }
    
    @Override
    public void requestClientId(final ClientIdCallback clientIdCallback) {
        this.queueToThread(new Runnable() {
            @Override
            public void run() {
                clientIdCallback.reportClientId(GAThread.this.mClientId);
            }
        });
    }
    
    @Override
    public void run() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: ldc2_w          5000
        //     3: invokestatic    java/lang/Thread.sleep:(J)V
        //     6: aload_0        
        //     7: getfield        com/google/analytics/tracking/android/GAThread.mServiceProxy:Lcom/google/analytics/tracking/android/ServiceProxy;
        //    10: ifnonnull       29
        //    13: aload_0        
        //    14: new             Lcom/google/analytics/tracking/android/GAServiceProxy;
        //    17: dup            
        //    18: aload_0        
        //    19: getfield        com/google/analytics/tracking/android/GAThread.mContext:Landroid/content/Context;
        //    22: aload_0        
        //    23: invokespecial   com/google/analytics/tracking/android/GAServiceProxy.<init>:(Landroid/content/Context;Lcom/google/analytics/tracking/android/AnalyticsThread;)V
        //    26: putfield        com/google/analytics/tracking/android/GAThread.mServiceProxy:Lcom/google/analytics/tracking/android/ServiceProxy;
        //    29: aload_0        
        //    30: invokespecial   com/google/analytics/tracking/android/GAThread.init:()V
        //    33: aload_0        
        //    34: aload_0        
        //    35: invokespecial   com/google/analytics/tracking/android/GAThread.loadAppOptOut:()Z
        //    38: putfield        com/google/analytics/tracking/android/GAThread.mAppOptOut:Z
        //    41: aload_0        
        //    42: aload_0        
        //    43: invokevirtual   com/google/analytics/tracking/android/GAThread.initializeClientId:()Ljava/lang/String;
        //    46: putfield        com/google/analytics/tracking/android/GAThread.mClientId:Ljava/lang/String;
        //    49: aload_0        
        //    50: aload_0        
        //    51: getfield        com/google/analytics/tracking/android/GAThread.mContext:Landroid/content/Context;
        //    54: invokestatic    com/google/analytics/tracking/android/GAThread.getAndClearCampaign:(Landroid/content/Context;)Ljava/lang/String;
        //    57: putfield        com/google/analytics/tracking/android/GAThread.mInstallCampaign:Ljava/lang/String;
        //    60: aload_0        
        //    61: getfield        com/google/analytics/tracking/android/GAThread.mClosed:Z
        //    64: ifne            211
        //    67: aload_0        
        //    68: getfield        com/google/analytics/tracking/android/GAThread.queue:Ljava/util/concurrent/LinkedBlockingQueue;
        //    71: invokevirtual   java/util/concurrent/LinkedBlockingQueue.take:()Ljava/lang/Object;
        //    74: checkcast       Ljava/lang/Runnable;
        //    77: astore          11
        //    79: aload_0        
        //    80: getfield        com/google/analytics/tracking/android/GAThread.mDisabled:Z
        //    83: ifne            60
        //    86: aload           11
        //    88: invokeinterface java/lang/Runnable.run:()V
        //    93: goto            60
        //    96: astore          9
        //    98: aload           9
        //   100: invokevirtual   java/lang/InterruptedException.toString:()Ljava/lang/String;
        //   103: invokestatic    com/google/analytics/tracking/android/Log.i:(Ljava/lang/String;)I
        //   106: pop            
        //   107: goto            60
        //   110: astore          6
        //   112: new             Ljava/lang/StringBuilder;
        //   115: dup            
        //   116: invokespecial   java/lang/StringBuilder.<init>:()V
        //   119: ldc_w           "Error on GAThread: "
        //   122: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   125: aload_0        
        //   126: aload           6
        //   128: invokespecial   com/google/analytics/tracking/android/GAThread.printStackTrace:(Ljava/lang/Throwable;)Ljava/lang/String;
        //   131: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   134: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   137: invokestatic    com/google/analytics/tracking/android/Log.e:(Ljava/lang/String;)I
        //   140: pop            
        //   141: ldc_w           "Google Analytics is shutting down."
        //   144: invokestatic    com/google/analytics/tracking/android/Log.e:(Ljava/lang/String;)I
        //   147: pop            
        //   148: aload_0        
        //   149: iconst_1       
        //   150: putfield        com/google/analytics/tracking/android/GAThread.mDisabled:Z
        //   153: goto            60
        //   156: astore_1       
        //   157: ldc_w           "sleep interrupted in GAThread initialize"
        //   160: invokestatic    com/google/analytics/tracking/android/Log.w:(Ljava/lang/String;)I
        //   163: pop            
        //   164: goto            6
        //   167: astore_3       
        //   168: new             Ljava/lang/StringBuilder;
        //   171: dup            
        //   172: invokespecial   java/lang/StringBuilder.<init>:()V
        //   175: ldc_w           "Error initializing the GAThread: "
        //   178: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   181: aload_0        
        //   182: aload_3        
        //   183: invokespecial   com/google/analytics/tracking/android/GAThread.printStackTrace:(Ljava/lang/Throwable;)Ljava/lang/String;
        //   186: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   189: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   192: invokestatic    com/google/analytics/tracking/android/Log.e:(Ljava/lang/String;)I
        //   195: pop            
        //   196: ldc_w           "Google Analytics will not start up."
        //   199: invokestatic    com/google/analytics/tracking/android/Log.e:(Ljava/lang/String;)I
        //   202: pop            
        //   203: aload_0        
        //   204: iconst_1       
        //   205: putfield        com/google/analytics/tracking/android/GAThread.mDisabled:Z
        //   208: goto            60
        //   211: return         
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                            
        //  -----  -----  -----  -----  --------------------------------
        //  0      6      156    167    Ljava/lang/InterruptedException;
        //  33     60     167    211    Ljava/lang/Throwable;
        //  67     93     96     110    Ljava/lang/InterruptedException;
        //  67     93     110    156    Ljava/lang/Throwable;
        //  98     107    110    156    Ljava/lang/Throwable;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0060:
        //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
        //     at com.strobel.decompiler.ast.AstOptimizer.mergeDisparateObjectInitializations(AstOptimizer.java:2592)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:235)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:655)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:532)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:499)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:141)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createType(AstBuilder.java:130)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addType(AstBuilder.java:105)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.buildAst(JavaLanguage.java:71)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.decompileType(JavaLanguage.java:59)
        //     at com.strobel.decompiler.DecompilerDriver.decompileType(DecompilerDriver.java:304)
        //     at com.strobel.decompiler.DecompilerDriver.decompileJar(DecompilerDriver.java:225)
        //     at com.strobel.decompiler.DecompilerDriver.main(DecompilerDriver.java:110)
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
    
    @Override
    public void sendHit(final Map<String, String> m) {
        final HashMap<String, String> hashMap = new HashMap<String, String>(m);
        final long currentTimeMillis = System.currentTimeMillis();
        hashMap.put("hitTime", Long.toString(currentTimeMillis));
        this.queueToThread(new Runnable() {
            @Override
            public void run() {
                hashMap.put("clientId", GAThread.this.mClientId);
                if (GAThread.this.mAppOptOut || GAThread.this.isSampledOut(hashMap)) {
                    return;
                }
                if (!TextUtils.isEmpty((CharSequence)GAThread.this.mInstallCampaign)) {
                    hashMap.put("campaign", GAThread.this.mInstallCampaign);
                    GAThread.this.mInstallCampaign = null;
                }
                GAThread.this.fillAppParameters(hashMap);
                GAThread.this.fillCampaignParameters(hashMap);
                GAThread.this.fillExceptionParameters(hashMap);
                GAThread.this.mServiceProxy.putHit(HitBuilder.generateHitParams(GAThread.this.mMetaModel, hashMap), currentTimeMillis, GAThread.this.getHostUrl(hashMap), GAThread.this.mCommands);
            }
        });
    }
    
    @Override
    public void setAppOptOut(final boolean b) {
        this.queueToThread(new Runnable() {
            @Override
            public void run() {
                if (GAThread.this.mAppOptOut == b) {
                    return;
                }
                while (true) {
                    Label_0076: {
                        if (!b) {
                            break Label_0076;
                        }
                        final File fileStreamPath = GAThread.this.mContext.getFileStreamPath("gaOptOut");
                        while (true) {
                            try {
                                fileStreamPath.createNewFile();
                                GAThread.this.mServiceProxy.clearHits();
                                GAThread.this.mAppOptOut = b;
                                return;
                            }
                            catch (IOException ex) {
                                Log.w("Error creating optOut file.");
                                continue;
                            }
                            break;
                        }
                    }
                    GAThread.this.mContext.deleteFile("gaOptOut");
                    continue;
                }
            }
        });
    }
}
