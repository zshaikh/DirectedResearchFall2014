package com.fiksu.asotracking;

import java.util.concurrent.atomic.*;
import android.content.*;
import org.apache.http.client.*;
import org.apache.http.impl.client.*;
import android.util.*;
import org.json.*;

public class FiksuConfigurationManager
{
    private static final FiksuConfigurationManager INSTANCE;
    private final FiksuConfiguration mFiksuConfiguration;
    private final AtomicBoolean mIsUpdatingConfiguration;
    private SharedPreferences mSharedPreferences;
    
    static {
        INSTANCE = new FiksuConfigurationManager();
    }
    
    private FiksuConfigurationManager() {
        super();
        this.mFiksuConfiguration = new FiksuConfiguration();
        this.mIsUpdatingConfiguration = new AtomicBoolean(false);
        this.mSharedPreferences = null;
    }
    
    private static final HttpClient getHttpClient(final Context context) {
        try {
            return (HttpClient)new DefaultHttpClient();
        }
        catch (IllegalArgumentException ex) {
            Log.e("FiksuTracking", "Caught IllegalArgumentException while creating http client: " + ex.toString());
            return null;
        }
    }
    
    protected static FiksuConfigurationManager getInstance() {
        return FiksuConfigurationManager.INSTANCE;
    }
    
    private static final String getSynchUrl(final Context context) {
        return "https://sdk.fiksu.com/config/FiksuConfiguration_android_" + context.getPackageName() + "_" + "50010" + ".json";
    }
    
    private static final String readContentsFromServer(final Context p0, final String p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: invokestatic    com/fiksu/asotracking/FiksuConfigurationManager.getHttpClient:(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;
        //     4: astore          4
        //     6: aload           4
        //     8: ifnonnull       13
        //    11: aconst_null    
        //    12: areturn        
        //    13: aload           4
        //    15: new             Lorg/apache/http/client/methods/HttpGet;
        //    18: dup            
        //    19: aload_1        
        //    20: invokespecial   org/apache/http/client/methods/HttpGet.<init>:(Ljava/lang/String;)V
        //    23: invokeinterface org/apache/http/client/HttpClient.execute:(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
        //    28: astore          5
        //    30: aload           5
        //    32: invokeinterface org/apache/http/HttpResponse.getStatusLine:()Lorg/apache/http/StatusLine;
        //    37: invokeinterface org/apache/http/StatusLine.getStatusCode:()I
        //    42: istore          6
        //    44: ldc             "FiksuTracking"
        //    46: new             Ljava/lang/StringBuilder;
        //    49: dup            
        //    50: ldc             "Status code for "
        //    52: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //    55: aload_1        
        //    56: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    59: ldc             " is: "
        //    61: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    64: iload           6
        //    66: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //    69: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    72: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;)I
        //    75: pop            
        //    76: iload           6
        //    78: sipush          404
        //    81: if_icmpne       87
        //    84: ldc             ""
        //    86: areturn        
        //    87: aload           5
        //    89: invokeinterface org/apache/http/HttpResponse.getEntity:()Lorg/apache/http/HttpEntity;
        //    94: invokeinterface org/apache/http/HttpEntity.getContent:()Ljava/io/InputStream;
        //    99: astore          8
        //   101: new             Ljava/io/BufferedReader;
        //   104: dup            
        //   105: new             Ljava/io/InputStreamReader;
        //   108: dup            
        //   109: aload           8
        //   111: invokespecial   java/io/InputStreamReader.<init>:(Ljava/io/InputStream;)V
        //   114: invokespecial   java/io/BufferedReader.<init>:(Ljava/io/Reader;)V
        //   117: astore          9
        //   119: new             Ljava/lang/StringBuilder;
        //   122: dup            
        //   123: invokespecial   java/lang/StringBuilder.<init>:()V
        //   126: astore          10
        //   128: aload           9
        //   130: invokevirtual   java/io/BufferedReader.readLine:()Ljava/lang/String;
        //   133: astore          16
        //   135: aload           16
        //   137: ifnonnull       202
        //   140: aload           10
        //   142: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   145: astore          17
        //   147: aload           8
        //   149: invokevirtual   java/io/InputStream.close:()V
        //   152: aload           9
        //   154: invokevirtual   java/io/BufferedReader.close:()V
        //   157: aload           17
        //   159: areturn        
        //   160: astore          18
        //   162: aload           17
        //   164: areturn        
        //   165: astore_2       
        //   166: ldc             "FiksuTracking"
        //   168: new             Ljava/lang/StringBuilder;
        //   171: dup            
        //   172: ldc             "Caught IOException reading from url ["
        //   174: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   177: aload_1        
        //   178: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   181: ldc             "]: "
        //   183: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   186: aload_2        
        //   187: invokevirtual   java/io/IOException.toString:()Ljava/lang/String;
        //   190: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   193: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   196: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //   199: pop            
        //   200: aconst_null    
        //   201: areturn        
        //   202: aload           10
        //   204: new             Ljava/lang/StringBuilder;
        //   207: dup            
        //   208: aload           16
        //   210: invokestatic    java/lang/String.valueOf:(Ljava/lang/Object;)Ljava/lang/String;
        //   213: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   216: ldc             "\n"
        //   218: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   221: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   224: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   227: pop            
        //   228: goto            128
        //   231: astore          13
        //   233: ldc             "FiksuTracking"
        //   235: new             Ljava/lang/StringBuilder;
        //   238: dup            
        //   239: ldc             "Caught IOException reading input stream from url ["
        //   241: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   244: aload_1        
        //   245: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   248: ldc             "]: "
        //   250: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   253: aload           13
        //   255: invokevirtual   java/io/IOException.toString:()Ljava/lang/String;
        //   258: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   261: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   264: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //   267: pop            
        //   268: aload           8
        //   270: invokevirtual   java/io/InputStream.close:()V
        //   273: aload           9
        //   275: invokevirtual   java/io/BufferedReader.close:()V
        //   278: aconst_null    
        //   279: areturn        
        //   280: astore          11
        //   282: aload           8
        //   284: invokevirtual   java/io/InputStream.close:()V
        //   287: aload           9
        //   289: invokevirtual   java/io/BufferedReader.close:()V
        //   292: aload           11
        //   294: athrow         
        //   295: astore          12
        //   297: goto            292
        //   300: astore          15
        //   302: goto            278
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  0      6      165    202    Ljava/io/IOException;
        //  13     76     165    202    Ljava/io/IOException;
        //  87     101    165    202    Ljava/io/IOException;
        //  128    135    231    280    Ljava/io/IOException;
        //  128    135    280    300    Any
        //  140    147    231    280    Ljava/io/IOException;
        //  140    147    280    300    Any
        //  147    157    160    165    Ljava/io/IOException;
        //  202    228    231    280    Ljava/io/IOException;
        //  202    228    280    300    Any
        //  233    268    280    300    Any
        //  268    278    300    305    Ljava/io/IOException;
        //  282    292    295    300    Ljava/io/IOException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0128:
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
    
    private void setSharedPreferences(final Context context) {
        if (this.mSharedPreferences != null) {
            return;
        }
        if (context == null) {
            Log.e("FiksuTracking", "Context is null so we cannot load configuration from SharedPreferences");
            return;
        }
        this.mSharedPreferences = context.getSharedPreferences("FiksuConfigurationSharedPreferences", 0);
    }
    
    private final boolean updateConfigurationFromServerBlocking(final Context context, final String s) {
        final String contentsFromServer = readContentsFromServer(context, s);
        if (contentsFromServer == null) {
            return false;
        }
        if (contentsFromServer.length() == 0) {
            this.mFiksuConfiguration.updateLastUpdateTimestamp();
            this.mFiksuConfiguration.writeToSharedPreferences(this.mSharedPreferences);
            return true;
        }
        try {
            this.mFiksuConfiguration.readFromJSONObject(new JSONObject(contentsFromServer));
            this.mFiksuConfiguration.writeToSharedPreferences(this.mSharedPreferences);
            return true;
        }
        catch (JSONException ex) {
            Log.e("FiksuTracking", "Caught JSONException parsing data from [" + contentsFromServer + "]: " + ex.toString());
            return false;
        }
    }
    
    public final FiksuConfiguration getFiksuConfiguration() {
        return this.mFiksuConfiguration;
    }
    
    protected final void initialize(final Context sharedPreferences) {
        this.setSharedPreferences(sharedPreferences);
        if (this.mSharedPreferences != null) {
            this.mFiksuConfiguration.readFromSharedPreferences(this.mSharedPreferences);
        }
        if (this.mFiksuConfiguration.hasEverSynchedWithServer()) {
            this.updateConfiguration(sharedPreferences);
            return;
        }
        this.updateConfiguration(sharedPreferences);
    }
    
    public final void setDebugModeEnabled(final boolean debugModeEnabled) {
        this.mFiksuConfiguration.setDebugModeEnabled(debugModeEnabled);
    }
    
    protected final void updateConfiguration(final Context sharedPreferences) {
        if (this.mFiksuConfiguration.isUpToDate()) {
            return;
        }
        this.setSharedPreferences(sharedPreferences);
        this.updateConfigurationFromServerInTheBackground(sharedPreferences, getSynchUrl(sharedPreferences));
    }
    
    protected final void updateConfigurationFromServerInTheBackground(final Context context, final String s) {
        if (this.mIsUpdatingConfiguration.compareAndSet(false, true)) {
            new Thread(new Runnable() {
                @Override
                public void run() {
                    try {
                        FiksuConfigurationManager.this.updateConfigurationFromServerBlocking(context, s);
                    }
                    finally {
                        FiksuConfigurationManager.this.mIsUpdatingConfiguration.set(false);
                    }
                }
            }).start();
        }
    }
}
