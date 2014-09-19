package com.fusepowered.m1.android;

import java.lang.ref.*;
import android.os.*;
import android.widget.*;
import android.view.*;
import com.fusepowered.m1.google.gson.*;
import android.text.*;
import android.webkit.*;
import org.json.*;
import java.util.*;
import android.net.*;
import android.content.*;
import java.io.*;

class HandShake
{
    static final String BASE_URL = "http://androidsdk.ads.mp.mydas.mobi/";
    static final String BASE_URL_PATH = "getAd.php5?";
    private static final String HANDSHAKE_FALLBACK_URL = "http://ads.mp.mydas.mobi/appConfigServlet?apid=";
    private static final String HANDSHAKE_HTTPS_SCHEME = "https://";
    private static final String HANDSHAKE_HTTP_SCHEME = "http://";
    private static final String HANDSHAKE_URL_HOST = "ads.mp.mydas.mobi/";
    private static final String HANDSHAKE_URL_OVERRIDE_PARMS = "?apid=";
    private static final String HANDSHAKE_URL_PARMS = "appConfigServlet?apid=";
    private static final String KEY_CACHED_VIDEOS = "handshake_cachedvideos5.0";
    private static String adUrl;
    static String apid;
    private static boolean forceRefresh;
    private static String handShakeURL;
    private static HandShake sharedInstance;
    long adRefreshSecs;
    private LinkedHashMap<String, AdTypeHandShake> adTypeHandShakes;
    private WeakReference<Context> appContextRef;
    DTOCachedVideo[] cachedVideos;
    private WeakReference<Context> contextRef;
    long creativeCacheTimeout;
    private long deferredViewTimeout;
    String endSessionURL;
    private long handShakeCallback;
    private final Handler handler;
    boolean hardwareAccelerationEnabled;
    boolean kill;
    private long lastHandShake;
    String mmdid;
    String mmjsUrl;
    private String noVideosToCacheURL;
    NuanceCredentials nuanceCredentials;
    private ArrayList<Scheme> schemes;
    private String schemesList;
    String startSessionURL;
    private Runnable updateHandShakeRunnable;
    
    static {
        HandShake.apid = "28913";
        HandShake.handShakeURL = "https://ads.mp.mydas.mobi/appConfigServlet?apid=";
        HandShake.adUrl = "http://androidsdk.ads.mp.mydas.mobi/getAd.php5?";
    }
    
    private HandShake() {
        super();
        this.handler = new Handler(Looper.getMainLooper());
        this.adTypeHandShakes = new LinkedHashMap<String, AdTypeHandShake>();
        this.schemes = new ArrayList<Scheme>();
        this.deferredViewTimeout = 3600000L;
        this.kill = false;
        this.handShakeCallback = 86400000L;
        this.creativeCacheTimeout = 259200000L;
        this.updateHandShakeRunnable = new Runnable() {
            @Override
            public void run() {
                Context context = (Context)HandShake.this.contextRef.get();
                if (context == null) {
                    context = (Context)HandShake.this.appContextRef.get();
                }
                if (context != null) {
                    HandShake.sharedHandShake(context);
                }
            }
        };
    }
    
    private HandShake(final Context referent) {
        super();
        this.handler = new Handler(Looper.getMainLooper());
        this.adTypeHandShakes = new LinkedHashMap<String, AdTypeHandShake>();
        this.schemes = new ArrayList<Scheme>();
        this.deferredViewTimeout = 3600000L;
        this.kill = false;
        this.handShakeCallback = 86400000L;
        this.creativeCacheTimeout = 259200000L;
        this.updateHandShakeRunnable = new Runnable() {
            @Override
            public void run() {
                Context context = (Context)HandShake.this.contextRef.get();
                if (context == null) {
                    context = (Context)HandShake.this.appContextRef.get();
                }
                if (context != null) {
                    HandShake.sharedHandShake(context);
                }
            }
        };
        this.contextRef = new WeakReference<Context>(referent);
        this.appContextRef = new WeakReference<Context>(referent.getApplicationContext());
        if (HandShake.forceRefresh || !this.loadHandShake(referent) || System.currentTimeMillis() - this.lastHandShake > this.handShakeCallback) {
            HandShake.forceRefresh = false;
            this.lastHandShake = System.currentTimeMillis();
            this.requestHandshake(false);
        }
    }
    
    private void deserializeFromObj(final JSONObject jsonObject) {
        final Context context = this.contextRef.get();
        if (jsonObject == null) {
            return;
        }
        while (true) {
            while (true) {
                int n = 0;
                Label_0607: {
                    try {
                        final JSONArray optJSONArray = jsonObject.optJSONArray("errors");
                        if (optJSONArray != null) {
                            n = 0;
                            if (n < optJSONArray.length()) {
                                final JSONObject optJSONObject = optJSONArray.optJSONObject(n);
                                if (optJSONObject == null) {
                                    break Label_0607;
                                }
                                final String optString = optJSONObject.optString("message", (String)null);
                                final String optString2 = optJSONObject.optString("type", (String)null);
                                if (optString == null || optString2 == null) {
                                    break Label_0607;
                                }
                                if (optString2.equalsIgnoreCase("log")) {
                                    MMSDK.Log.e(optString);
                                    break Label_0607;
                                }
                                if (optString2.equalsIgnoreCase("prompt")) {
                                    this.handler.post((Runnable)new Runnable() {
                                        @Override
                                        public void run() {
                                            try {
                                                Toast.makeText(context, (CharSequence)("Error: " + optString), 1).show();
                                            }
                                            catch (WindowManager$BadTokenException ex) {
                                                ex.printStackTrace();
                                            }
                                        }
                                    });
                                }
                                break Label_0607;
                            }
                        }
                    }
                    catch (Exception ex) {
                        ex.printStackTrace();
                        return;
                    }
                    break;
                }
                ++n;
                continue;
            }
        }
        final JSONObject optJSONObject2 = jsonObject.optJSONObject("adtypes");
        if (optJSONObject2 != null) {
            final String[] adTypes = MMAdImpl.getAdTypes();
            for (int i = 0; i < adTypes.length; ++i) {
                final JSONObject optJSONObject3 = optJSONObject2.optJSONObject(adTypes[i]);
                if (optJSONObject3 != null) {
                    final AdTypeHandShake value = new AdTypeHandShake();
                    value.deserializeFromObj(optJSONObject3);
                    value.loadLastVideo(context, adTypes[i]);
                    this.adTypeHandShakes.put(adTypes[i], value);
                }
            }
        }
    Label_0299_Outer:
        while (true) {
            while (true) {
                int n2 = 0;
                Label_0625: {
                    Label_0619: {
                        synchronized (this) {
                            final JSONArray optJSONArray2 = jsonObject.optJSONArray("schemes");
                            if (optJSONArray2 != null) {
                                if (this.schemes != null && this.schemes.size() > 0) {
                                    this.schemes.removeAll(this.schemes);
                                }
                                break Label_0619;
                            }
                            Label_0357: {
                                this.adRefreshSecs = jsonObject.optLong("adrefresh", 0L);
                            }
                            // monitorexit(this)
                            this.deferredViewTimeout = 1000L * jsonObject.optLong("deferredviewtimeout", 3600L);
                            this.kill = jsonObject.optBoolean("kill");
                            setAdUrl(context, jsonObject.optString("baseURL"));
                            this.handShakeCallback = 1000L * jsonObject.optLong("handshakecallback", 86400L);
                            this.creativeCacheTimeout = 1000L * jsonObject.optLong("creativeCacheTimeout", 259200L);
                            this.hardwareAccelerationEnabled = jsonObject.optBoolean("hardwareAccelerationEnabled");
                            this.startSessionURL = jsonObject.optString("startSessionURL");
                            this.endSessionURL = jsonObject.optString("endSessionURL");
                            this.nuanceCredentials = new Gson().fromJson(jsonObject.optString("nuanceCredentials"), NuanceCredentials.class);
                            this.mmjsUrl = jsonObject.optString("mmjs");
                            this.handleCachedVideos(jsonObject, context);
                            if (!TextUtils.isEmpty((CharSequence)this.mmjsUrl) && !MRaid.isMRaidUpdated(context, this.mmjsUrl)) {
                                MRaid.downloadMraidJs(this.appContextRef.get(), this.mmjsUrl);
                                return;
                            }
                            break;
                            // iftrue(Label_0625:, optJSONObject4 == null)
                            // iftrue(Label_0357:, n2 >= optJSONArray2.length())
                            JSONObject optJSONObject4 = null;
                        Block_20:
                            while (true) {
                                optJSONObject4 = optJSONArray2.optJSONObject(n2);
                                break Block_20;
                                continue Label_0299_Outer;
                            }
                            final Scheme e = new Scheme();
                            e.deserializeFromObj(optJSONObject4);
                            this.schemes.add(e);
                            break Label_0625;
                        }
                        break;
                    }
                    n2 = 0;
                    continue;
                }
                ++n2;
                continue;
            }
        }
        MMSDK.Log.w("Not downloading MMJS - (" + this.mmjsUrl + ")");
    }
    
    static String getAdUrl() {
        if (!TextUtils.isEmpty((CharSequence)HandShake.adUrl) && URLUtil.isHttpUrl(HandShake.adUrl.replace("getAd.php5?", ""))) {
            return HandShake.adUrl;
        }
        return "http://androidsdk.ads.mp.mydas.mobi/getAd.php5?";
    }
    
    private void handleCachedVideos(final JSONObject jsonObject, final Context context) {
        final JSONArray optJSONArray = jsonObject.optJSONArray("cachedVideos");
        if (optJSONArray != null) {
            this.cachedVideos = new Gson().fromJson(optJSONArray.toString(), DTOCachedVideo[].class);
            MMSDK.Log.d(this.cachedVideos.toString());
        }
        this.noVideosToCacheURL = jsonObject.optString("noVideosToCacheURL");
        if (this.cachedVideos != null) {
            PreCacheWorker.preCacheVideos(this.cachedVideos, context, this.noVideosToCacheURL);
        }
    }
    
    private boolean isFirstLaunch(final Context context) {
        return context != null && context.getSharedPreferences("MillennialMediaSettings", 0).getBoolean("firstlaunchHandshake", true);
    }
    
    private boolean loadHandShake(final Context context) {
        final SharedPreferences sharedPreferences = context.getSharedPreferences("MillennialMediaSettings", 0);
        if (sharedPreferences == null) {
            return false;
        }
        final boolean contains = sharedPreferences.contains("handshake_deferredviewtimeout");
        boolean b = false;
        if (contains) {
            this.deferredViewTimeout = sharedPreferences.getLong("handshake_deferredviewtimeout", this.deferredViewTimeout);
            b = true;
        }
        if (sharedPreferences.contains("handshake_baseUrl")) {
            HandShake.adUrl = sharedPreferences.getString("handshake_baseUrl", HandShake.adUrl);
            b = true;
        }
        if (sharedPreferences.contains("handshake_callback")) {
            this.handShakeCallback = sharedPreferences.getLong("handshake_callback", this.handShakeCallback);
            b = true;
        }
        if (sharedPreferences.contains("handshake_hardwareAccelerationEnabled")) {
            this.hardwareAccelerationEnabled = sharedPreferences.getBoolean("handshake_hardwareAccelerationEnabled", false);
            b = true;
        }
        if (sharedPreferences.contains("handshake_startSessionURL")) {
            this.startSessionURL = sharedPreferences.getString("handshake_startSessionURL", "");
            b = true;
        }
        if (sharedPreferences.contains("handshake_endSessionURL")) {
            this.endSessionURL = sharedPreferences.getString("handshake_endSessionURL", "");
            b = true;
        }
        if (sharedPreferences.contains("handshake_nuanceCredentials")) {
            this.nuanceCredentials = new Gson().fromJson(sharedPreferences.getString("handshake_nuanceCredentials", ""), NuanceCredentials.class);
            b = true;
        }
        if (sharedPreferences.contains("handshake_mmdid")) {
            this.setMMdid(context, sharedPreferences.getString("handshake_mmdid", this.mmdid), false);
            b = true;
        }
        if (sharedPreferences.contains("handshake_creativecachetimeout")) {
            this.creativeCacheTimeout = sharedPreferences.getLong("handshake_creativecachetimeout", this.creativeCacheTimeout);
            b = true;
        }
        if (sharedPreferences.contains("handshake_mmjs")) {
            this.mmjsUrl = sharedPreferences.getString("handshake_mmjs", this.mmjsUrl);
            b = true;
        }
        final String[] adTypes = MMAdImpl.getAdTypes();
        for (int i = 0; i < adTypes.length; ++i) {
            final AdTypeHandShake value = new AdTypeHandShake();
            if (value.load(sharedPreferences, adTypes[i])) {
                b = true;
                this.adTypeHandShakes.put(adTypes[i], value);
            }
        }
    Label_0537_Outer:
        while (true) {
            while (true) {
            Label_0728:
                while (true) {
                    int n = 0;
                    Label_0722: {
                        synchronized (this) {
                            if (sharedPreferences.contains("handshake_schemes")) {
                                final String string = sharedPreferences.getString("handshake_schemes", "");
                                if (string.length() > 0) {
                                    final String[] split = string.split("\n");
                                    final int length = split.length;
                                    n = 0;
                                    if (n >= length) {
                                        break Label_0728;
                                    }
                                    final String[] split2 = split[n].split("\t");
                                    if (split2.length >= 2) {
                                        this.schemes.add(new Scheme(split2[0], Integer.parseInt(split2[1])));
                                    }
                                    break Label_0722;
                                }
                            }
                            // monitorexit(this)
                            if (sharedPreferences.contains("handshake_cachedvideos5.0")) {
                                final String string2 = sharedPreferences.getString("handshake_cachedvideos5.0", "");
                                if (string2.length() > 0) {
                                    this.cachedVideos = new Gson().fromJson(string2, DTOCachedVideo[].class);
                                }
                            }
                            if (sharedPreferences.contains("handshake_lasthandshake")) {
                                this.lastHandShake = sharedPreferences.getLong("handshake_lasthandshake", this.lastHandShake);
                                b = true;
                            }
                            if (b) {
                                MMSDK.Log.d("Handshake successfully loaded from shared preferences.");
                                if (System.currentTimeMillis() - this.lastHandShake < this.handShakeCallback) {
                                    this.handler.postDelayed(this.updateHandShakeRunnable, this.handShakeCallback - (System.currentTimeMillis() - this.lastHandShake));
                                }
                                this.noVideosToCacheURL = sharedPreferences.getString("handshake_novideostocacheurl", "");
                                if (this.cachedVideos != null) {
                                    PreCacheWorker.preCacheVideos(this.cachedVideos, context, this.noVideosToCacheURL);
                                }
                            }
                            return b;
                        }
                    }
                    ++n;
                    continue Label_0537_Outer;
                }
                b = true;
                continue;
            }
        }
    }
    
    private JSONObject parseJson(final String s) {
        MMSDK.Log.d("JSON String: %s", s);
        if (s != null) {
            try {
                final JSONObject jsonObject = new JSONObject(s);
                MMSDK.Log.v(jsonObject.toString());
                if (jsonObject.has("mmishake")) {
                    return jsonObject.getJSONObject("mmishake");
                }
            }
            catch (JSONException ex) {
                ex.printStackTrace();
            }
        }
        return null;
    }
    
    private void requestHandshake(final boolean b) {
        Utils.ThreadUtils.execute(new Runnable() {
            @Override
            public void run() {
                // 
                // This method could not be decompiled.
                // 
                // Original Bytecode:
                // 
                //     0: aload_0        
                //     1: getfield        com/fusepowered/m1/android/HandShake$1.this$0:Lcom/fusepowered/m1/android/HandShake;
                //     4: invokestatic    com/fusepowered/m1/android/HandShake.access$000:(Lcom/fusepowered/m1/android/HandShake;)Ljava/lang/ref/WeakReference;
                //     7: invokevirtual   java/lang/ref/WeakReference.get:()Ljava/lang/Object;
                //    10: checkcast       Landroid/content/Context;
                //    13: astore_1       
                //    14: aload_1        
                //    15: ifnonnull       32
                //    18: aload_0        
                //    19: getfield        com/fusepowered/m1/android/HandShake$1.this$0:Lcom/fusepowered/m1/android/HandShake;
                //    22: invokestatic    com/fusepowered/m1/android/HandShake.access$100:(Lcom/fusepowered/m1/android/HandShake;)Ljava/lang/ref/WeakReference;
                //    25: invokevirtual   java/lang/ref/WeakReference.get:()Ljava/lang/Object;
                //    28: checkcast       Landroid/content/Context;
                //    31: astore_1       
                //    32: aload_1        
                //    33: ifnonnull       37
                //    36: return         
                //    37: iconst_0       
                //    38: istore_2       
                //    39: new             Ljava/lang/StringBuilder;
                //    42: dup            
                //    43: invokespecial   java/lang/StringBuilder.<init>:()V
                //    46: astore_3       
                //    47: new             Ljava/util/TreeMap;
                //    50: dup            
                //    51: invokespecial   java/util/TreeMap.<init>:()V
                //    54: astore          4
                //    56: aload           4
                //    58: ldc             "ua"
                //    60: new             Ljava/lang/StringBuilder;
                //    63: dup            
                //    64: invokespecial   java/lang/StringBuilder.<init>:()V
                //    67: ldc             "Android:"
                //    69: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //    72: getstatic       android/os/Build.MODEL:Ljava/lang/String;
                //    75: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //    78: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //    81: invokeinterface java/util/Map.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
                //    86: pop            
                //    87: aload_0        
                //    88: getfield        com/fusepowered/m1/android/HandShake$1.this$0:Lcom/fusepowered/m1/android/HandShake;
                //    91: aload_1        
                //    92: invokestatic    com/fusepowered/m1/android/HandShake.access$200:(Lcom/fusepowered/m1/android/HandShake;Landroid/content/Context;)Z
                //    95: istore_2       
                //    96: iload_2        
                //    97: ifeq            112
                //   100: aload           4
                //   102: ldc             "firstlaunch"
                //   104: ldc             "1"
                //   106: invokeinterface java/util/Map.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
                //   111: pop            
                //   112: aload_0        
                //   113: getfield        com/fusepowered/m1/android/HandShake$1.val$isInitialize:Z
                //   116: ifeq            131
                //   119: aload           4
                //   121: ldc             "init"
                //   123: ldc             "1"
                //   125: invokeinterface java/util/Map.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
                //   130: pop            
                //   131: aload_1        
                //   132: aload           4
                //   134: invokestatic    com/fusepowered/m1/android/MMSDK.insertUrlCommonValues:(Landroid/content/Context;Ljava/util/Map;)V
                //   137: aload           4
                //   139: invokeinterface java/util/Map.entrySet:()Ljava/util/Set;
                //   144: invokeinterface java/util/Set.iterator:()Ljava/util/Iterator;
                //   149: astore          12
                //   151: aload           12
                //   153: invokeinterface java/util/Iterator.hasNext:()Z
                //   158: ifeq            261
                //   161: aload           12
                //   163: invokeinterface java/util/Iterator.next:()Ljava/lang/Object;
                //   168: checkcast       Ljava/util/Map$Entry;
                //   171: astore          30
                //   173: iconst_2       
                //   174: anewarray       Ljava/lang/Object;
                //   177: astore          31
                //   179: aload           31
                //   181: iconst_0       
                //   182: aload           30
                //   184: invokeinterface java/util/Map$Entry.getKey:()Ljava/lang/Object;
                //   189: aastore        
                //   190: aload           31
                //   192: iconst_1       
                //   193: aload           30
                //   195: invokeinterface java/util/Map$Entry.getValue:()Ljava/lang/Object;
                //   200: checkcast       Ljava/lang/String;
                //   203: ldc             "UTF-8"
                //   205: invokestatic    java/net/URLEncoder.encode:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
                //   208: aastore        
                //   209: aload_3        
                //   210: ldc             "&%s=%s"
                //   212: aload           31
                //   214: invokestatic    java/lang/String.format:(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
                //   217: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   220: pop            
                //   221: goto            151
                //   224: astore          8
                //   226: iconst_1       
                //   227: anewarray       Ljava/lang/Object;
                //   230: astore          9
                //   232: aload           9
                //   234: iconst_0       
                //   235: aload           8
                //   237: invokevirtual   java/io/IOException.getMessage:()Ljava/lang/String;
                //   240: aastore        
                //   241: ldc             "Could not get a handshake. %s"
                //   243: aload           9
                //   245: invokestatic    com/fusepowered/m1/android/MMSDK$Log.e:(Ljava/lang/String;[Ljava/lang/Object;)V
                //   248: iconst_0       
                //   249: ifeq            36
                //   252: aload_0        
                //   253: getfield        com/fusepowered/m1/android/HandShake$1.this$0:Lcom/fusepowered/m1/android/HandShake;
                //   256: aload_1        
                //   257: invokestatic    com/fusepowered/m1/android/HandShake.access$1000:(Lcom/fusepowered/m1/android/HandShake;Landroid/content/Context;)V
                //   260: return         
                //   261: new             Ljava/lang/StringBuilder;
                //   264: dup            
                //   265: invokespecial   java/lang/StringBuilder.<init>:()V
                //   268: invokestatic    com/fusepowered/m1/android/HandShake.access$300:()Ljava/lang/String;
                //   271: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   274: getstatic       com/fusepowered/m1/android/HandShake.apid:Ljava/lang/String;
                //   277: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   280: aload_3        
                //   281: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   284: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   287: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   290: astore          13
                //   292: ldc             "Performing handshake: %s"
                //   294: iconst_1       
                //   295: anewarray       Ljava/lang/Object;
                //   298: dup            
                //   299: iconst_0       
                //   300: aload           13
                //   302: aastore        
                //   303: invokestatic    com/fusepowered/m1/android/MMSDK$Log.v:(Ljava/lang/String;[Ljava/lang/Object;)V
                //   306: new             Lcom/fusepowered/m1/android/HttpGetRequest;
                //   309: dup            
                //   310: sipush          3000
                //   313: invokespecial   com/fusepowered/m1/android/HttpGetRequest.<init>:(I)V
                //   316: aload           13
                //   318: invokevirtual   com/fusepowered/m1/android/HttpGetRequest.get:(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
                //   321: astore          29
                //   323: aload           29
                //   325: astore          16
                //   327: aload           16
                //   329: ifnull          354
                //   332: aload           16
                //   334: invokeinterface org/apache/http/HttpResponse.getStatusLine:()Lorg/apache/http/StatusLine;
                //   339: invokeinterface org/apache/http/StatusLine.getStatusCode:()I
                //   344: istore          28
                //   346: iload           28
                //   348: sipush          200
                //   351: if_icmpeq       431
                //   354: invokestatic    com/fusepowered/m1/android/HandShake.access$300:()Ljava/lang/String;
                //   357: ldc             "https://"
                //   359: ldc             "http://"
                //   361: invokevirtual   java/lang/String.replaceFirst:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
                //   364: invokestatic    com/fusepowered/m1/android/HandShake.access$302:(Ljava/lang/String;)Ljava/lang/String;
                //   367: pop            
                //   368: new             Ljava/lang/StringBuilder;
                //   371: dup            
                //   372: invokespecial   java/lang/StringBuilder.<init>:()V
                //   375: invokestatic    com/fusepowered/m1/android/HandShake.access$300:()Ljava/lang/String;
                //   378: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   381: getstatic       com/fusepowered/m1/android/HandShake.apid:Ljava/lang/String;
                //   384: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   387: aload_3        
                //   388: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   391: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   394: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   397: astore          26
                //   399: ldc             "Performing handshake (HTTP Fallback): %s"
                //   401: iconst_1       
                //   402: anewarray       Ljava/lang/Object;
                //   405: dup            
                //   406: iconst_0       
                //   407: aload           26
                //   409: aastore        
                //   410: invokestatic    com/fusepowered/m1/android/MMSDK$Log.v:(Ljava/lang/String;[Ljava/lang/Object;)V
                //   413: new             Lcom/fusepowered/m1/android/HttpGetRequest;
                //   416: dup            
                //   417: invokespecial   com/fusepowered/m1/android/HttpGetRequest.<init>:()V
                //   420: aload           26
                //   422: invokevirtual   com/fusepowered/m1/android/HttpGetRequest.get:(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
                //   425: astore          27
                //   427: aload           27
                //   429: astore          16
                //   431: aload           16
                //   433: ifnull          458
                //   436: aload           16
                //   438: invokeinterface org/apache/http/HttpResponse.getStatusLine:()Lorg/apache/http/StatusLine;
                //   443: invokeinterface org/apache/http/StatusLine.getStatusCode:()I
                //   448: istore          24
                //   450: iload           24
                //   452: sipush          200
                //   455: if_icmpeq       520
                //   458: new             Ljava/lang/StringBuilder;
                //   461: dup            
                //   462: invokespecial   java/lang/StringBuilder.<init>:()V
                //   465: ldc             "http://ads.mp.mydas.mobi/appConfigServlet?apid="
                //   467: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   470: getstatic       com/fusepowered/m1/android/HandShake.apid:Ljava/lang/String;
                //   473: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   476: aload_3        
                //   477: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   480: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   483: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   486: astore          22
                //   488: ldc             "Performing handshake (HTTP Fallback Original): %s"
                //   490: iconst_1       
                //   491: anewarray       Ljava/lang/Object;
                //   494: dup            
                //   495: iconst_0       
                //   496: aload           22
                //   498: aastore        
                //   499: invokestatic    com/fusepowered/m1/android/MMSDK$Log.v:(Ljava/lang/String;[Ljava/lang/Object;)V
                //   502: new             Lcom/fusepowered/m1/android/HttpGetRequest;
                //   505: dup            
                //   506: invokespecial   com/fusepowered/m1/android/HttpGetRequest.<init>:()V
                //   509: aload           22
                //   511: invokevirtual   com/fusepowered/m1/android/HttpGetRequest.get:(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
                //   514: astore          23
                //   516: aload           23
                //   518: astore          16
                //   520: aload           16
                //   522: ifnull          761
                //   525: aload           16
                //   527: invokeinterface org/apache/http/HttpResponse.getStatusLine:()Lorg/apache/http/StatusLine;
                //   532: invokeinterface org/apache/http/StatusLine.getStatusCode:()I
                //   537: sipush          200
                //   540: if_icmpne       761
                //   543: aload_0        
                //   544: getfield        com/fusepowered/m1/android/HandShake$1.this$0:Lcom/fusepowered/m1/android/HandShake;
                //   547: aload_0        
                //   548: getfield        com/fusepowered/m1/android/HandShake$1.this$0:Lcom/fusepowered/m1/android/HandShake;
                //   551: aload           16
                //   553: invokeinterface org/apache/http/HttpResponse.getEntity:()Lorg/apache/http/HttpEntity;
                //   558: invokeinterface org/apache/http/HttpEntity.getContent:()Ljava/io/InputStream;
                //   563: invokestatic    com/fusepowered/m1/android/HttpGetRequest.convertStreamToString:(Ljava/io/InputStream;)Ljava/lang/String;
                //   566: invokestatic    com/fusepowered/m1/android/HandShake.access$400:(Lcom/fusepowered/m1/android/HandShake;Ljava/lang/String;)Lorg/json/JSONObject;
                //   569: invokestatic    com/fusepowered/m1/android/HandShake.access$500:(Lcom/fusepowered/m1/android/HandShake;Lorg/json/JSONObject;)V
                //   572: aload_0        
                //   573: getfield        com/fusepowered/m1/android/HandShake$1.this$0:Lcom/fusepowered/m1/android/HandShake;
                //   576: aload_1        
                //   577: invokestatic    com/fusepowered/m1/android/HandShake.access$600:(Lcom/fusepowered/m1/android/HandShake;Landroid/content/Context;)V
                //   580: aload_0        
                //   581: getfield        com/fusepowered/m1/android/HandShake$1.this$0:Lcom/fusepowered/m1/android/HandShake;
                //   584: invokestatic    com/fusepowered/m1/android/HandShake.access$900:(Lcom/fusepowered/m1/android/HandShake;)Landroid/os/Handler;
                //   587: aload_0        
                //   588: getfield        com/fusepowered/m1/android/HandShake$1.this$0:Lcom/fusepowered/m1/android/HandShake;
                //   591: invokestatic    com/fusepowered/m1/android/HandShake.access$700:(Lcom/fusepowered/m1/android/HandShake;)Ljava/lang/Runnable;
                //   594: aload_0        
                //   595: getfield        com/fusepowered/m1/android/HandShake$1.this$0:Lcom/fusepowered/m1/android/HandShake;
                //   598: invokestatic    com/fusepowered/m1/android/HandShake.access$800:(Lcom/fusepowered/m1/android/HandShake;)J
                //   601: invokevirtual   android/os/Handler.postDelayed:(Ljava/lang/Runnable;J)Z
                //   604: pop            
                //   605: ldc             "Obtained a new handshake"
                //   607: invokestatic    com/fusepowered/m1/android/MMSDK$Log.v:(Ljava/lang/String;)V
                //   610: iload_2        
                //   611: ifeq            36
                //   614: aload_0        
                //   615: getfield        com/fusepowered/m1/android/HandShake$1.this$0:Lcom/fusepowered/m1/android/HandShake;
                //   618: aload_1        
                //   619: invokestatic    com/fusepowered/m1/android/HandShake.access$1000:(Lcom/fusepowered/m1/android/HandShake;Landroid/content/Context;)V
                //   622: return         
                //   623: astore          14
                //   625: iconst_1       
                //   626: anewarray       Ljava/lang/Object;
                //   629: astore          15
                //   631: aload           15
                //   633: iconst_0       
                //   634: aload           14
                //   636: invokevirtual   java/io/IOException.getMessage:()Ljava/lang/String;
                //   639: aastore        
                //   640: ldc             "Could not get a handshake. %s"
                //   642: aload           15
                //   644: invokestatic    com/fusepowered/m1/android/MMSDK$Log.e:(Ljava/lang/String;[Ljava/lang/Object;)V
                //   647: aconst_null    
                //   648: astore          16
                //   650: goto            327
                //   653: astore          6
                //   655: iconst_1       
                //   656: anewarray       Ljava/lang/Object;
                //   659: astore          7
                //   661: aload           7
                //   663: iconst_0       
                //   664: aload           6
                //   666: invokevirtual   java/lang/Exception.getMessage:()Ljava/lang/String;
                //   669: aastore        
                //   670: ldc             "Could not get a handshake. %s"
                //   672: aload           7
                //   674: invokestatic    com/fusepowered/m1/android/MMSDK$Log.e:(Ljava/lang/String;[Ljava/lang/Object;)V
                //   677: iconst_0       
                //   678: ifeq            36
                //   681: aload_0        
                //   682: getfield        com/fusepowered/m1/android/HandShake$1.this$0:Lcom/fusepowered/m1/android/HandShake;
                //   685: aload_1        
                //   686: invokestatic    com/fusepowered/m1/android/HandShake.access$1000:(Lcom/fusepowered/m1/android/HandShake;Landroid/content/Context;)V
                //   689: return         
                //   690: astore          17
                //   692: iconst_1       
                //   693: anewarray       Ljava/lang/Object;
                //   696: astore          18
                //   698: aload           18
                //   700: iconst_0       
                //   701: aload           17
                //   703: invokevirtual   java/io/IOException.getMessage:()Ljava/lang/String;
                //   706: aastore        
                //   707: ldc             "Could not get a handshake. %s"
                //   709: aload           18
                //   711: invokestatic    com/fusepowered/m1/android/MMSDK$Log.e:(Ljava/lang/String;[Ljava/lang/Object;)V
                //   714: goto            431
                //   717: astore          5
                //   719: iload_2        
                //   720: ifeq            731
                //   723: aload_0        
                //   724: getfield        com/fusepowered/m1/android/HandShake$1.this$0:Lcom/fusepowered/m1/android/HandShake;
                //   727: aload_1        
                //   728: invokestatic    com/fusepowered/m1/android/HandShake.access$1000:(Lcom/fusepowered/m1/android/HandShake;Landroid/content/Context;)V
                //   731: aload           5
                //   733: athrow         
                //   734: astore          19
                //   736: iconst_1       
                //   737: anewarray       Ljava/lang/Object;
                //   740: astore          20
                //   742: aload           20
                //   744: iconst_0       
                //   745: aload           19
                //   747: invokevirtual   java/io/IOException.getMessage:()Ljava/lang/String;
                //   750: aastore        
                //   751: ldc             "Could not get a handshake. %s"
                //   753: aload           20
                //   755: invokestatic    com/fusepowered/m1/android/MMSDK$Log.e:(Ljava/lang/String;[Ljava/lang/Object;)V
                //   758: goto            520
                //   761: iconst_0       
                //   762: istore_2       
                //   763: goto            610
                //    Exceptions:
                //  Try           Handler
                //  Start  End    Start  End    Type                 
                //  -----  -----  -----  -----  ---------------------
                //  39     96     224    261    Ljava/io/IOException;
                //  39     96     653    690    Ljava/lang/Exception;
                //  39     96     717    734    Any
                //  100    112    224    261    Ljava/io/IOException;
                //  100    112    653    690    Ljava/lang/Exception;
                //  100    112    717    734    Any
                //  112    131    224    261    Ljava/io/IOException;
                //  112    131    653    690    Ljava/lang/Exception;
                //  112    131    717    734    Any
                //  131    151    224    261    Ljava/io/IOException;
                //  131    151    653    690    Ljava/lang/Exception;
                //  131    151    717    734    Any
                //  151    221    224    261    Ljava/io/IOException;
                //  151    221    653    690    Ljava/lang/Exception;
                //  151    221    717    734    Any
                //  226    248    717    734    Any
                //  261    306    224    261    Ljava/io/IOException;
                //  261    306    653    690    Ljava/lang/Exception;
                //  261    306    717    734    Any
                //  306    323    623    653    Ljava/io/IOException;
                //  306    323    653    690    Ljava/lang/Exception;
                //  306    323    717    734    Any
                //  332    346    224    261    Ljava/io/IOException;
                //  332    346    653    690    Ljava/lang/Exception;
                //  332    346    717    734    Any
                //  354    427    690    717    Ljava/io/IOException;
                //  354    427    653    690    Ljava/lang/Exception;
                //  354    427    717    734    Any
                //  436    450    224    261    Ljava/io/IOException;
                //  436    450    653    690    Ljava/lang/Exception;
                //  436    450    717    734    Any
                //  458    516    734    761    Ljava/io/IOException;
                //  458    516    653    690    Ljava/lang/Exception;
                //  458    516    717    734    Any
                //  525    610    224    261    Ljava/io/IOException;
                //  525    610    653    690    Ljava/lang/Exception;
                //  525    610    717    734    Any
                //  625    647    224    261    Ljava/io/IOException;
                //  625    647    653    690    Ljava/lang/Exception;
                //  625    647    717    734    Any
                //  655    677    717    734    Any
                //  692    714    224    261    Ljava/io/IOException;
                //  692    714    653    690    Ljava/lang/Exception;
                //  692    714    717    734    Any
                //  736    758    224    261    Ljava/io/IOException;
                //  736    758    653    690    Ljava/lang/Exception;
                //  736    758    717    734    Any
                // 
                // The error that occurred was:
                // 
                // java.lang.IndexOutOfBoundsException: Index: 337, Size: 337
                //     at java.util.ArrayList.rangeCheck(ArrayList.java:635)
                //     at java.util.ArrayList.get(ArrayList.java:411)
                //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3305)
                //     at com.strobel.decompiler.ast.AstBuilder.build(AstBuilder.java:114)
                //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:210)
                //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
                //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
                //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:655)
                //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:532)
                //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:499)
                //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:141)
                //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createType(AstBuilder.java:130)
                //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.transformCall(AstMethodBodyBuilder.java:1163)
                //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.transformByteCode(AstMethodBodyBuilder.java:1010)
                //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.transformExpression(AstMethodBodyBuilder.java:540)
                //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.transformByteCode(AstMethodBodyBuilder.java:554)
                //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.transformExpression(AstMethodBodyBuilder.java:540)
                //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.transformNode(AstMethodBodyBuilder.java:392)
                //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.transformBlock(AstMethodBodyBuilder.java:333)
                //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:294)
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
        });
    }
    
    private void saveHandShake(final Context context) {
        final SharedPreferences$Editor edit = context.getSharedPreferences("MillennialMediaSettings", 0).edit();
        edit.putLong("handshake_deferredviewtimeout", this.deferredViewTimeout);
        edit.putBoolean("handshake_kill", this.kill);
        edit.putString("handshake_baseUrl", HandShake.adUrl);
        edit.putLong("handshake_callback", this.handShakeCallback);
        edit.putBoolean("handshake_hardwareAccelerationEnabled", this.hardwareAccelerationEnabled);
        edit.putString("handshake_startSessionURL", this.startSessionURL);
        if (this.nuanceCredentials != null) {
            edit.putString("handshake_nuanceCredentials", new Gson().toJson(this.nuanceCredentials));
        }
        edit.putString("handshake_endSessionURL", this.endSessionURL);
        edit.putLong("handshake_creativecaetimeout", this.creativeCacheTimeout);
        edit.putString("handshake_mmjs", this.mmjsUrl);
        for (final String key : this.adTypeHandShakes.keySet()) {
            this.adTypeHandShakes.get(key).save(edit, key);
        }
        synchronized (this) {
            final StringBuilder sb = new StringBuilder();
            for (int i = 0; i < this.schemes.size(); ++i) {
                final Scheme scheme = this.schemes.get(i);
                if (i > 0) {
                    sb.append("\n");
                }
                sb.append(scheme.scheme + "\t" + scheme.id);
            }
            edit.putString("handshake_schemes", sb.toString());
            // monitorexit(this)
            if (this.cachedVideos != null) {
                edit.putString("handshake_cachedvideos5.0", new Gson().toJson(this.cachedVideos));
            }
            edit.putString("handshake_novideostocacheurl", this.noVideosToCacheURL);
            edit.putLong("handshake_lasthandshake", this.lastHandShake);
            edit.commit();
        }
    }
    
    private void sentFirstLaunch(final Context context) {
        if (context != null) {
            final SharedPreferences$Editor edit = context.getSharedPreferences("MillennialMediaSettings", 0).edit();
            edit.putBoolean("firstlaunchHandshake", false);
            edit.commit();
        }
    }
    
    static void setAdUrl(final Context context, final String s) {
        if (!TextUtils.isEmpty((CharSequence)s)) {
            if (s.endsWith("/")) {
                HandShake.adUrl = s + "getAd.php5?";
                return;
            }
            HandShake.adUrl = s + "/" + "getAd.php5?";
        }
    }
    
    static void setHandShakeURL(final Context context, String replaceFirst) {
        synchronized (HandShake.class) {
            if (!TextUtils.isEmpty((CharSequence)replaceFirst)) {
                if (replaceFirst.startsWith("http://")) {
                    replaceFirst = replaceFirst.replaceFirst("http://", "https://");
                }
                HandShake.handShakeURL = replaceFirst + "?apid=";
                HandShake.forceRefresh = true;
                HandShake.sharedInstance = new HandShake(context);
            }
        }
    }
    
    static HandShake sharedHandShake(final Context context) {
        synchronized (HandShake.class) {
            HandShake sharedInstance;
            if (HandShake.apid == null) {
                MMSDK.Log.e("No apid set for the handshake.");
                sharedInstance = null;
            }
            else {
                if (HandShake.sharedInstance == null) {
                    HandShake.sharedInstance = new HandShake(context);
                }
                else if (System.currentTimeMillis() - HandShake.sharedInstance.lastHandShake > HandShake.sharedInstance.handShakeCallback) {
                    MMSDK.Log.d("Handshake expired, requesting new handshake from the server.");
                    HandShake.sharedInstance = new HandShake(context);
                }
                sharedInstance = HandShake.sharedInstance;
            }
            return sharedInstance;
        }
    }
    
    boolean canDisplayCachedAd(final String key, final long n) {
        synchronized (this) {
            final AdTypeHandShake adTypeHandShake = this.adTypeHandShakes.get(key);
            return adTypeHandShake == null || adTypeHandShake.canDisplayCachedAd(n);
        }
    }
    
    boolean canRequestVideo(final Context context, final String key) {
        synchronized (this) {
            final AdTypeHandShake adTypeHandShake = this.adTypeHandShakes.get(key);
            return adTypeHandShake == null || adTypeHandShake.canRequestVideo(context);
        }
    }
    
    void endSession() {
        if (!TextUtils.isEmpty((CharSequence)this.endSessionURL)) {
            Utils.HttpUtils.executeUrl(this.endSessionURL);
        }
    }
    
    JSONArray getSchemesJSONArray(final Context context) {
        synchronized (this) {
            final JSONArray jsonArray = new JSONArray();
            if (this.schemes.size() > 0) {
                for (final Scheme scheme : this.schemes) {
                    if (scheme.checkAvailability(context)) {
                        try {
                            final JSONObject jsonObject = new JSONObject();
                            jsonObject.put("scheme", (Object)scheme.scheme);
                            jsonObject.put("schemeid", scheme.id);
                            jsonArray.put((Object)jsonObject);
                        }
                        catch (JSONException ex) {}
                    }
                }
            }
            return jsonArray;
        }
    }
    
    String getSchemesList(final Context context) {
        while (true) {
            StringBuilder sb = null;
        Label_0131:
            while (true) {
                Scheme scheme = null;
                Label_0114: {
                    synchronized (this) {
                        if (this.schemesList == null && this.schemes.size() > 0) {
                            sb = new StringBuilder();
                            final Iterator<Scheme> iterator = this.schemes.iterator();
                            while (iterator.hasNext()) {
                                scheme = iterator.next();
                                if (scheme.checkAvailability(context)) {
                                    if (sb.length() <= 0) {
                                        break Label_0114;
                                    }
                                    sb.append("," + scheme.id);
                                }
                            }
                            break Label_0131;
                        }
                        break;
                    }
                }
                sb.append(Integer.toString(scheme.id));
                continue;
            }
            if (sb.length() > 0) {
                this.schemesList = sb.toString();
                break;
            }
            break;
        }
        // monitorexit(this)
        return this.schemesList;
    }
    
    boolean isAdTypeDownloading(final String key) {
        synchronized (this) {
            final AdTypeHandShake adTypeHandShake = this.adTypeHandShakes.get(key);
            return adTypeHandShake != null && adTypeHandShake.downloading;
        }
    }
    
    void lockAdTypeDownload(final String key) {
        synchronized (this) {
            final AdTypeHandShake adTypeHandShake = this.adTypeHandShakes.get(key);
            if (adTypeHandShake != null) {
                adTypeHandShake.downloading = true;
            }
        }
    }
    
    void sendInitRequest() {
        this.requestHandshake(true);
    }
    
    void setMMdid(final Context context, final String s) {
        this.setMMdid(context, s, true);
    }
    
    void setMMdid(final Context context, final String mmdid, final boolean b) {
        // monitorenter(this)
        Label_0080: {
            if (mmdid == null) {
                break Label_0080;
            }
            try {
                if (mmdid.length() == 0 || mmdid.equals("NULL")) {
                    this.mmdid = null;
                }
                else {
                    this.mmdid = mmdid;
                }
                MMSDK.setMMdid(this.mmdid);
                if (b) {
                    final SharedPreferences$Editor edit = context.getSharedPreferences("MillennialMediaSettings", 0).edit();
                    edit.putString("handshake_mmdid", this.mmdid);
                    edit.commit();
                }
            }
            finally {
            }
            // monitorexit(this)
        }
    }
    
    void startSession() {
        if (!TextUtils.isEmpty((CharSequence)this.startSessionURL)) {
            Utils.HttpUtils.executeUrl(this.startSessionURL);
        }
    }
    
    void unlockAdTypeDownload(final String key) {
        synchronized (this) {
            final AdTypeHandShake adTypeHandShake = this.adTypeHandShakes.get(key);
            if (adTypeHandShake != null) {
                adTypeHandShake.downloading = false;
            }
        }
    }
    
    void updateLastVideoViewedTime(final Context context, final String key) {
        synchronized (this) {
            final AdTypeHandShake adTypeHandShake = this.adTypeHandShakes.get(key);
            if (adTypeHandShake != null) {
                adTypeHandShake.updateLastVideoViewedTime(context, key);
            }
        }
    }
    
    private class AdTypeHandShake
    {
        boolean downloading;
        long lastVideo;
        long videoInterval;
        
        AdTypeHandShake() {
            super();
            this.lastVideo = 0L;
            this.videoInterval = 0L;
        }
        
        boolean canDisplayCachedAd(final long n) {
            return System.currentTimeMillis() - n < HandShake.this.deferredViewTimeout;
        }
        
        boolean canRequestVideo(final Context context) {
            MMSDK.Log.d("canRequestVideo() Current Time: %d Last Video: %d  Diff: %d  Video interval: %d", System.currentTimeMillis(), this.lastVideo / 1000L, (System.currentTimeMillis() - this.lastVideo) / 1000L, this.videoInterval / 1000L);
            return System.currentTimeMillis() - this.lastVideo > this.videoInterval;
        }
        
        void deserializeFromObj(final JSONObject jsonObject) {
            if (jsonObject == null) {
                return;
            }
            this.videoInterval = 1000L * jsonObject.optLong("videointerval");
        }
        
        boolean load(final SharedPreferences sharedPreferences, final String s) {
            final boolean contains = sharedPreferences.contains("handshake_lastvideo_" + s);
            boolean b = false;
            if (contains) {
                this.lastVideo = sharedPreferences.getLong("handshake_lastvideo_" + s, this.lastVideo);
                b = true;
            }
            if (sharedPreferences.contains("handshake_videointerval_" + s)) {
                this.videoInterval = sharedPreferences.getLong("handshake_videointerval_" + s, this.videoInterval);
                b = true;
            }
            return b;
        }
        
        void loadLastVideo(final Context context, final String s) {
            final SharedPreferences sharedPreferences = context.getSharedPreferences("MillennialMediaSettings", 0);
            if (sharedPreferences != null && sharedPreferences.contains("handshake_lastvideo_" + s)) {
                this.lastVideo = sharedPreferences.getLong("handshake_lastvideo_" + s, this.lastVideo);
            }
        }
        
        void save(final Context context, final String s) {
            final SharedPreferences$Editor edit = context.getSharedPreferences("MillennialMediaSettings", 0).edit();
            this.save(edit, s);
            edit.commit();
        }
        
        void save(final SharedPreferences$Editor sharedPreferences$Editor, final String s) {
            sharedPreferences$Editor.putLong("handshake_lastvideo_" + s, this.lastVideo);
            sharedPreferences$Editor.putLong("handshake_videointerval_" + s, this.videoInterval);
        }
        
        void updateLastVideoViewedTime(final Context context, final String s) {
            this.lastVideo = System.currentTimeMillis();
            this.save(context, s);
        }
    }
    
    static class NuanceCredentials
    {
        String appID;
        String appKey;
        int port;
        String server;
        String sessionID;
        
        @Override
        public String toString() {
            return "Credentials: appid=" + this.appID + " server=" + this.server + " port=" + this.port + " appKey=" + this.appKey + "sessionID=" + this.sessionID;
        }
    }
    
    private class Scheme
    {
        int id;
        String scheme;
        
        Scheme() {
            super();
        }
        
        Scheme(final String scheme, final int id) {
            super();
            this.scheme = scheme;
            this.id = id;
        }
        
        boolean checkAvailability(final Context context) {
            Intent intent;
            if (this.scheme.contains("://")) {
                intent = new Intent("android.intent.action.VIEW", Uri.parse(this.scheme));
            }
            else {
                intent = new Intent("android.intent.action.VIEW", Uri.parse(this.scheme + "://"));
            }
            return context.getPackageManager().queryIntentActivities(intent, 65536).size() > 0;
        }
        
        void deserializeFromObj(final JSONObject jsonObject) {
            if (jsonObject == null) {
                return;
            }
            this.scheme = jsonObject.optString("scheme", (String)null);
            this.id = jsonObject.optInt("schemeid");
        }
    }
}
