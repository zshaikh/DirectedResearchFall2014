package com.kochava.android.tracker;

import android.net.*;
import android.webkit.*;
import java.util.concurrent.*;
import org.apache.http.params.*;
import org.apache.http.conn.scheme.*;
import org.apache.http.conn.ssl.*;
import org.apache.http.impl.conn.tsccm.*;
import org.apache.http.impl.client.*;
import org.apache.http.conn.*;
import android.view.*;
import android.util.*;
import org.json.*;
import android.app.*;
import android.annotation.*;
import android.content.pm.*;
import android.content.*;
import android.database.*;
import java.security.*;
import java.math.*;
import android.os.*;
import org.apache.http.entity.*;
import org.apache.http.message.*;
import org.apache.http.*;
import org.apache.http.client.methods.*;
import java.io.*;
import org.apache.http.client.*;
import java.text.*;
import com.kochava.android.util.*;
import java.util.*;

public class Feature
{
    private static final String ADD_ENDPOINT = "http://bidder.kochava.com/adserver/request/";
    private static final String ADD_URL = "http://bidder.kochava.com";
    protected static final String ADLOGTAG = "KochavaAds";
    private static final int AD_CLICK_RESET_TIME = 2500;
    private static final int AD_UNAVAILABLE_CLICK_RESET_TIME = 2500;
    private static final String API_URL = "https://control.kochava.com";
    public static final String ATTRIBUTION_DATA = "attributionData";
    private static final String ATTRIBUTION_ID_COLUMN_NAME = "aid";
    private static final Uri ATTRIBUTION_ID_CONTENT_URI;
    protected static final String ATTRIBUTION_PREF_DATA = "attributionData";
    protected static final String ATTRIBUTION_PREF_NAME = "attributionPref";
    private static final int BULK_UPLOAD_LIMIT = 40;
    private static final int DATA_EXPIRATION = 604800000;
    private static final String ENDPOINT_TRACK = "https://control.kochava.com/track/kvTracker.php";
    private static final int FLUSH_RATE = 60000;
    private static final String HTML_FORMAT = "<html><body style=\"text-align: center; background-color: black; vertical-align: center;\"><img src = \"%s\" /></body></html>";
    private static final String INIT_ENDPOINT = "https://control.kochava.com/track/kvinit";
    private static final int INIT_FORCE_TIME = 600000;
    public static final String LINKIDENTITYBOOL = "linkIdentityBool";
    protected static final String LOGTAG = "KochavaTracker";
    private static final String OPTIONS_ENDPOINT = "https://control.kochava.com/track/kv_options.php";
    protected static final String PREF_APPDATA = "kochavaappdata";
    protected static final String PREF_CUR = "currency";
    protected static final String PREF_INIT = "initBool";
    protected static final String PREF_INIT_DATA = "initData";
    protected static final String PREF_LAT = "mylat";
    protected static final String PREF_LONG = "mylong";
    protected static final String PREF_NAME = "initPrefs";
    protected static final String PREF_TIMESTOPPED = "timeStampStopped";
    protected static final String REQLOGTAG = "KochavaRequirements";
    private static final String SENDONSTART = "sendonstart";
    private static final String STRING_FALSE = "false";
    private static final String STRING_TRUE = "true";
    protected static Context appContext;
    private static Handler attributionDataHandler;
    private static int first_run;
    private static Handler linkIdentityHandler;
    private static HashMap<String, Boolean> paramRestrictions;
    public static Hashtable<Integer, Bundle> webStates;
    public static Hashtable<Integer, WebView> webViews;
    private Timer adTimer;
    private SharedPreferences attributionDataPrefs;
    private boolean badInit;
    private boolean canSendSession;
    private final ExecutorService executor;
    private Handler initHandler;
    private Timer initTimer;
    private Timer initTimerRepeat;
    private JSONObject initialObject;
    private JSONObject initialPropertiesObject;
    private KochavaDbAdapter kDbAdapter;
    protected JSONObject kvinitdata;
    protected JSONObject kvinitdataholder;
    protected JSONObject kvinitorigdata;
    private long lastCallTime;
    private String mAndroidID;
    private String mAppId;
    private String mAppName;
    private String mAppPackageName;
    private String mAppVersionCode;
    private String mAppVersionName;
    private String mCarrier;
    private Context mContext;
    private String mDeviceId;
    private int mDisplayHeight;
    private int mDisplayWidth;
    private String mEnvDeviceID;
    private String mFbId;
    private String mIMEI;
    private boolean mIsStartOfLife;
    private String mKochDevIDStrategy;
    private String mMacAddr;
    private String mModel;
    private String mOSVersion;
    private Map<String, String> mSuperProperties;
    private boolean mTestMode;
    private Timer mTimer;
    private Timer mTimerSendOnBegin;
    private String mUserAgent;
    private SharedPreferences prefs;
    private boolean requestAttributionData;
    private long startTime;
    
    static {
        Feature.first_run = 0;
        ATTRIBUTION_ID_CONTENT_URI = Uri.parse("content://com.facebook.katana.provider.AttributionIdProvider");
        Feature.paramRestrictions = new HashMap<String, Boolean>() {
            {
                this.put("android_id", true);
                this.put("imei", true);
                this.put("odin", true);
                this.put("mac", true);
                this.put("fb_attribution_id", true);
                this.put("open_udid", true);
            }
        };
    }
    
    public Feature(final Context context, final String value) {
        super();
        this.lastCallTime = 0L;
        this.startTime = 0L;
        this.mTestMode = false;
        this.mIsStartOfLife = true;
        this.badInit = false;
        this.canSendSession = true;
        this.requestAttributionData = false;
        this.executor = Executors.newFixedThreadPool(1);
        this.initHandler = new Handler() {
            public void handleMessage(final Message p0) {
                // 
                // This method could not be decompiled.
                // 
                // Original Bytecode:
                // 
                //     0: aload_1        
                //     1: invokevirtual   android/os/Message.getData:()Landroid/os/Bundle;
                //     4: ldc             "sendonstart"
                //     6: invokevirtual   android/os/Bundle.getBoolean:(Ljava/lang/String;)Z
                //     9: istore_2       
                //    10: new             Landroid/webkit/WebView;
                //    13: dup            
                //    14: aload_0        
                //    15: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //    18: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //    21: invokespecial   android/webkit/WebView.<init>:(Landroid/content/Context;)V
                //    24: astore_3       
                //    25: aload_0        
                //    26: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //    29: aload_3        
                //    30: invokevirtual   android/webkit/WebView.getSettings:()Landroid/webkit/WebSettings;
                //    33: invokevirtual   android/webkit/WebSettings.getUserAgentString:()Ljava/lang/String;
                //    36: invokestatic    com/kochava/android/tracker/Feature.access$1:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //    39: aload_3        
                //    40: invokevirtual   android/webkit/WebView.destroy:()V
                //    43: aload_0        
                //    44: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //    47: aload_0        
                //    48: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //    51: invokestatic    com/kochava/android/tracker/Feature.access$2:(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
                //    54: invokestatic    com/kochava/android/tracker/Feature.access$3:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //    57: aload_0        
                //    58: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //    61: aload_0        
                //    62: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //    65: invokestatic    com/kochava/android/tracker/Feature.access$4:(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
                //    68: invokestatic    com/kochava/android/tracker/Feature.access$5:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //    71: aload_0        
                //    72: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //    75: ldc             "Default"
                //    77: invokestatic    com/kochava/android/tracker/Feature.access$6:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //    80: aload_0        
                //    81: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //    84: ldc             "N/A"
                //    86: invokestatic    com/kochava/android/tracker/Feature.access$7:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //    89: aload_0        
                //    90: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //    93: ldc             ""
                //    95: invokestatic    com/kochava/android/tracker/Feature.access$8:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //    98: aload_0        
                //    99: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   102: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   105: invokestatic    com/kochava/android/util/OpenUDID.syncContext:(Landroid/content/Context;)V
                //   108: aload_0        
                //   109: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   112: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   115: invokevirtual   android/content/Context.getApplicationContext:()Landroid/content/Context;
                //   118: invokevirtual   android/content/Context.getPackageManager:()Landroid/content/pm/PackageManager;
                //   121: astore          23
                //   123: aload           23
                //   125: aload_0        
                //   126: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   129: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   132: invokevirtual   android/content/Context.getPackageName:()Ljava/lang/String;
                //   135: iconst_0       
                //   136: invokevirtual   android/content/pm/PackageManager.getApplicationInfo:(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
                //   139: astore          31
                //   141: aload           31
                //   143: astore          26
                //   145: aload_0        
                //   146: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   149: astore          28
                //   151: aload           26
                //   153: ifnull          981
                //   156: aload           23
                //   158: aload           26
                //   160: invokevirtual   android/content/pm/PackageManager.getApplicationLabel:(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
                //   163: astore          29
                //   165: aload           28
                //   167: aload           29
                //   169: checkcast       Ljava/lang/String;
                //   172: invokestatic    com/kochava/android/tracker/Feature.access$6:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //   175: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
                //   178: ifeq            209
                //   181: ldc             "KochavaTracker"
                //   183: new             Ljava/lang/StringBuilder;
                //   186: dup            
                //   187: ldc             "mAppName now: "
                //   189: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   192: aload_0        
                //   193: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   196: invokestatic    com/kochava/android/tracker/Feature.access$9:(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
                //   199: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   202: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   205: invokestatic    android/util/Log.i:(Ljava/lang/String;Ljava/lang/String;)I
                //   208: pop            
                //   209: aload_0        
                //   210: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   213: new             Ljava/lang/StringBuilder;
                //   216: dup            
                //   217: aload_0        
                //   218: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   221: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   224: invokevirtual   android/content/Context.getPackageManager:()Landroid/content/pm/PackageManager;
                //   227: aload_0        
                //   228: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   231: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   234: invokevirtual   android/content/Context.getPackageName:()Ljava/lang/String;
                //   237: iconst_0       
                //   238: invokevirtual   android/content/pm/PackageManager.getPackageInfo:(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
                //   241: getfield        android/content/pm/PackageInfo.versionCode:I
                //   244: invokestatic    java/lang/String.valueOf:(I)Ljava/lang/String;
                //   247: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   250: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   253: invokestatic    com/kochava/android/tracker/Feature.access$7:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //   256: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
                //   259: ifeq            290
                //   262: ldc             "KochavaTracker"
                //   264: new             Ljava/lang/StringBuilder;
                //   267: dup            
                //   268: ldc             "mAppVersionCode now: "
                //   270: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   273: aload_0        
                //   274: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   277: invokestatic    com/kochava/android/tracker/Feature.access$10:(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
                //   280: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   283: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   286: invokestatic    android/util/Log.i:(Ljava/lang/String;Ljava/lang/String;)I
                //   289: pop            
                //   290: aload_0        
                //   291: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   294: aload_0        
                //   295: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   298: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   301: invokevirtual   android/content/Context.getPackageManager:()Landroid/content/pm/PackageManager;
                //   304: aload_0        
                //   305: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   308: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   311: invokevirtual   android/content/Context.getPackageName:()Ljava/lang/String;
                //   314: iconst_0       
                //   315: invokevirtual   android/content/pm/PackageManager.getPackageInfo:(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
                //   318: getfield        android/content/pm/PackageInfo.versionName:Ljava/lang/String;
                //   321: invokestatic    com/kochava/android/tracker/Feature.access$8:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //   324: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
                //   327: ifeq            358
                //   330: ldc             "KochavaTracker"
                //   332: new             Ljava/lang/StringBuilder;
                //   335: dup            
                //   336: ldc             "mAppVersionName now: "
                //   338: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   341: aload_0        
                //   342: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   345: invokestatic    com/kochava/android/tracker/Feature.access$11:(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
                //   348: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   351: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   354: invokestatic    android/util/Log.i:(Ljava/lang/String;Ljava/lang/String;)I
                //   357: pop            
                //   358: aload_0        
                //   359: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   362: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   365: ldc             "window"
                //   367: invokevirtual   android/content/Context.getSystemService:(Ljava/lang/String;)Ljava/lang/Object;
                //   370: checkcast       Landroid/view/WindowManager;
                //   373: astore          19
                //   375: aload_0        
                //   376: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   379: aload           19
                //   381: invokeinterface android/view/WindowManager.getDefaultDisplay:()Landroid/view/Display;
                //   386: invokevirtual   android/view/Display.getHeight:()I
                //   389: invokestatic    com/kochava/android/tracker/Feature.access$12:(Lcom/kochava/android/tracker/Feature;I)V
                //   392: aload_0        
                //   393: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   396: aload           19
                //   398: invokeinterface android/view/WindowManager.getDefaultDisplay:()Landroid/view/Display;
                //   403: invokevirtual   android/view/Display.getWidth:()I
                //   406: invokestatic    com/kochava/android/tracker/Feature.access$13:(Lcom/kochava/android/tracker/Feature;I)V
                //   409: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
                //   412: ifeq            458
                //   415: ldc             "KochavaTracker"
                //   417: new             Ljava/lang/StringBuilder;
                //   420: dup            
                //   421: ldc             "Height: "
                //   423: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   426: aload_0        
                //   427: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   430: invokestatic    com/kochava/android/tracker/Feature.access$14:(Lcom/kochava/android/tracker/Feature;)I
                //   433: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
                //   436: ldc             " | Width: "
                //   438: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   441: aload_0        
                //   442: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   445: invokestatic    com/kochava/android/tracker/Feature.access$15:(Lcom/kochava/android/tracker/Feature;)I
                //   448: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
                //   451: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   454: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //   457: pop            
                //   458: aload_0        
                //   459: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   462: aload_0        
                //   463: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   466: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   469: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
                //   472: ldc             "android_id"
                //   474: invokestatic    android/provider/Settings$Secure.getString:(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
                //   477: invokestatic    com/kochava/android/tracker/Feature.access$16:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //   480: aload_0        
                //   481: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   484: aload_0        
                //   485: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   488: invokestatic    com/kochava/android/tracker/Feature.access$17:(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
                //   491: invokestatic    com/kochava/android/tracker/Feature.access$18:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //   494: aload_0        
                //   495: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   498: aload_0        
                //   499: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   502: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   505: ldc             "initPrefs"
                //   507: iconst_0       
                //   508: invokevirtual   android/content/Context.getSharedPreferences:(Ljava/lang/String;I)Landroid/content/SharedPreferences;
                //   511: invokestatic    com/kochava/android/tracker/Feature.access$19:(Lcom/kochava/android/tracker/Feature;Landroid/content/SharedPreferences;)V
                //   514: aload_0        
                //   515: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   518: invokestatic    com/kochava/android/tracker/Feature.access$20:(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;
                //   521: ldc_w           "initBool"
                //   524: ldc             ""
                //   526: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
                //   531: ldc             ""
                //   533: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
                //   536: ifeq            568
                //   539: aload_0        
                //   540: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   543: invokestatic    com/kochava/android/tracker/Feature.access$20:(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;
                //   546: invokeinterface android/content/SharedPreferences.edit:()Landroid/content/SharedPreferences$Editor;
                //   551: ldc_w           "initBool"
                //   554: ldc_w           "false"
                //   557: invokeinterface android/content/SharedPreferences$Editor.putString:(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
                //   562: invokeinterface android/content/SharedPreferences$Editor.commit:()Z
                //   567: pop            
                //   568: aload_0        
                //   569: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   572: invokestatic    com/kochava/android/tracker/Feature.access$20:(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;
                //   575: ldc_w           "kochavaappdata"
                //   578: aconst_null    
                //   579: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
                //   584: ifnull          1170
                //   587: aload_0        
                //   588: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   591: invokestatic    com/kochava/android/tracker/Feature.access$21:(Lcom/kochava/android/tracker/Feature;)Lcom/kochava/android/tracker/KochavaDbAdapter;
                //   594: aload_0        
                //   595: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   598: invokestatic    com/kochava/android/tracker/Feature.access$20:(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;
                //   601: ldc_w           "kochavaappdata"
                //   604: aconst_null    
                //   605: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
                //   610: invokevirtual   com/kochava/android/tracker/KochavaDbAdapter.getApplicationData:(Ljava/lang/String;)Ljava/lang/String;
                //   613: astore          13
                //   615: aload_0        
                //   616: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   619: invokestatic    com/kochava/android/tracker/Feature.access$22:(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
                //   622: astore          14
                //   624: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
                //   627: ifeq            678
                //   630: ldc             "KochavaTracker"
                //   632: new             Ljava/lang/StringBuilder;
                //   635: dup            
                //   636: ldc_w           "[KOCHAVA] Stored Data: "
                //   639: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   642: aload           13
                //   644: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   647: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   650: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //   653: pop            
                //   654: ldc             "KochavaTracker"
                //   656: new             Ljava/lang/StringBuilder;
                //   659: dup            
                //   660: ldc_w           "[KOCHAVA] Created Data: "
                //   663: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   666: aload           14
                //   668: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   671: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   674: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //   677: pop            
                //   678: aload           13
                //   680: ifnonnull       1103
                //   683: aload_0        
                //   684: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   687: invokestatic    com/kochava/android/tracker/Feature.access$21:(Lcom/kochava/android/tracker/Feature;)Lcom/kochava/android/tracker/KochavaDbAdapter;
                //   690: aload_0        
                //   691: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   694: invokestatic    com/kochava/android/tracker/Feature.access$20:(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;
                //   697: ldc_w           "kochavaappdata"
                //   700: aconst_null    
                //   701: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
                //   706: aload           14
                //   708: invokevirtual   com/kochava/android/tracker/KochavaDbAdapter.insertApplicationData:(Ljava/lang/String;Ljava/lang/String;)V
                //   711: iconst_1       
                //   712: invokestatic    com/kochava/android/tracker/Feature.access$23:(I)V
                //   715: aload_0        
                //   716: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   719: invokestatic    com/kochava/android/tracker/Feature.access$21:(Lcom/kochava/android/tracker/Feature;)Lcom/kochava/android/tracker/KochavaDbAdapter;
                //   722: invokestatic    java/lang/System.currentTimeMillis:()J
                //   725: ldc2_w          604800000
                //   728: lsub           
                //   729: invokevirtual   com/kochava/android/tracker/KochavaDbAdapter.cleanupEvents:(J)V
                //   732: aload_0        
                //   733: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   736: invokestatic    com/kochava/android/tracker/Feature.access$25:(Lcom/kochava/android/tracker/Feature;)Z
                //   739: ifne            793
                //   742: aload_0        
                //   743: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   746: invokestatic    com/kochava/android/tracker/Feature.access$20:(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;
                //   749: ldc_w           "initBool"
                //   752: ldc             ""
                //   754: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
                //   759: ldc             ""
                //   761: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
                //   764: ifne            819
                //   767: aload_0        
                //   768: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   771: invokestatic    com/kochava/android/tracker/Feature.access$20:(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;
                //   774: ldc_w           "initBool"
                //   777: ldc             ""
                //   779: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
                //   784: ldc_w           "false"
                //   787: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
                //   790: ifeq            819
                //   793: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
                //   796: ifeq            808
                //   799: ldc             "KochavaTracker"
                //   801: ldc_w           "Initial event has not yet been qued in the database, making initial call"
                //   804: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //   807: pop            
                //   808: aload_0        
                //   809: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   812: ldc_w           "initial"
                //   815: aconst_null    
                //   816: invokestatic    com/kochava/android/tracker/Feature.access$26:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;Ljava/util/Map;)V
                //   819: aload_0        
                //   820: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   823: new             Ljava/util/Timer;
                //   826: dup            
                //   827: invokespecial   java/util/Timer.<init>:()V
                //   830: invokestatic    com/kochava/android/tracker/Feature.access$27:(Lcom/kochava/android/tracker/Feature;Ljava/util/Timer;)V
                //   833: aload_0        
                //   834: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   837: invokestatic    com/kochava/android/tracker/Feature.access$28:(Lcom/kochava/android/tracker/Feature;)Ljava/util/Timer;
                //   840: new             Lcom/kochava/android/tracker/Feature$2$1;
                //   843: dup            
                //   844: aload_0        
                //   845: invokespecial   com/kochava/android/tracker/Feature$2$1.<init>:(Lcom/kochava/android/tracker/Feature$2;)V
                //   848: lconst_0       
                //   849: ldc2_w          60000
                //   852: invokevirtual   java/util/Timer.schedule:(Ljava/util/TimerTask;JJ)V
                //   855: aload_0        
                //   856: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   859: new             Ljava/util/Timer;
                //   862: dup            
                //   863: invokespecial   java/util/Timer.<init>:()V
                //   866: invokestatic    com/kochava/android/tracker/Feature.access$29:(Lcom/kochava/android/tracker/Feature;Ljava/util/Timer;)V
                //   869: iload_2        
                //   870: ifne            1181
                //   873: aload_0        
                //   874: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   877: invokestatic    com/kochava/android/tracker/Feature.access$30:(Lcom/kochava/android/tracker/Feature;)Ljava/util/Timer;
                //   880: new             Lcom/kochava/android/tracker/Feature$2$2;
                //   883: dup            
                //   884: aload_0        
                //   885: invokespecial   com/kochava/android/tracker/Feature$2$2.<init>:(Lcom/kochava/android/tracker/Feature$2;)V
                //   888: ldc2_w          600000
                //   891: invokevirtual   java/util/Timer.schedule:(Ljava/util/TimerTask;J)V
                //   894: return         
                //   895: astore          24
                //   897: getstatic       com/kochava/android/tracker/Global.DEBUGERROR:Z
                //   900: istore          25
                //   902: aconst_null    
                //   903: astore          26
                //   905: iload           25
                //   907: ifeq            145
                //   910: ldc             "KochavaTracker"
                //   912: new             Ljava/lang/StringBuilder;
                //   915: dup            
                //   916: ldc_w           "Error gathering app name "
                //   919: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   922: aload           24
                //   924: invokevirtual   android/content/pm/PackageManager$NameNotFoundException.toString:()Ljava/lang/String;
                //   927: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   930: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   933: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //   936: pop            
                //   937: aconst_null    
                //   938: astore          26
                //   940: goto            145
                //   943: astore          4
                //   945: getstatic       com/kochava/android/tracker/Global.DEBUGERROR:Z
                //   948: ifeq            209
                //   951: ldc             "KochavaTracker"
                //   953: new             Ljava/lang/StringBuilder;
                //   956: dup            
                //   957: ldc_w           "Error gathering app name "
                //   960: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   963: aload           4
                //   965: invokevirtual   java/lang/Exception.toString:()Ljava/lang/String;
                //   968: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   971: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   974: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //   977: pop            
                //   978: goto            209
                //   981: ldc_w           "(unknown)"
                //   984: astore          29
                //   986: goto            165
                //   989: astore          6
                //   991: getstatic       com/kochava/android/tracker/Global.DEBUGERROR:Z
                //   994: ifeq            290
                //   997: ldc             "KochavaTracker"
                //   999: new             Ljava/lang/StringBuilder;
                //  1002: dup            
                //  1003: ldc_w           "Error gathering app version code "
                //  1006: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //  1009: aload           6
                //  1011: invokevirtual   java/lang/Exception.toString:()Ljava/lang/String;
                //  1014: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //  1017: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //  1020: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //  1023: pop            
                //  1024: goto            290
                //  1027: astore          8
                //  1029: getstatic       com/kochava/android/tracker/Global.DEBUGERROR:Z
                //  1032: ifeq            358
                //  1035: ldc             "KochavaTracker"
                //  1037: new             Ljava/lang/StringBuilder;
                //  1040: dup            
                //  1041: ldc_w           "Error gathering app version name "
                //  1044: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //  1047: aload           8
                //  1049: invokevirtual   java/lang/Exception.toString:()Ljava/lang/String;
                //  1052: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //  1055: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //  1058: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //  1061: pop            
                //  1062: goto            358
                //  1065: astore          10
                //  1067: getstatic       com/kochava/android/tracker/Global.DEBUGERROR:Z
                //  1070: ifeq            458
                //  1073: ldc             "KochavaTracker"
                //  1075: new             Ljava/lang/StringBuilder;
                //  1078: dup            
                //  1079: ldc_w           "Error "
                //  1082: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //  1085: aload           10
                //  1087: invokevirtual   java/lang/Exception.toString:()Ljava/lang/String;
                //  1090: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //  1093: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //  1096: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //  1099: pop            
                //  1100: goto            458
                //  1103: aload           13
                //  1105: aload           14
                //  1107: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
                //  1110: ifne            1144
                //  1113: aload_0        
                //  1114: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //  1117: invokestatic    com/kochava/android/tracker/Feature.access$21:(Lcom/kochava/android/tracker/Feature;)Lcom/kochava/android/tracker/KochavaDbAdapter;
                //  1120: aload_0        
                //  1121: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //  1124: invokestatic    com/kochava/android/tracker/Feature.access$20:(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;
                //  1127: ldc_w           "kochavaappdata"
                //  1130: aconst_null    
                //  1131: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
                //  1136: aload           14
                //  1138: invokevirtual   com/kochava/android/tracker/KochavaDbAdapter.updateApplicationData:(Ljava/lang/String;Ljava/lang/String;)V
                //  1141: goto            715
                //  1144: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
                //  1147: ifeq            1159
                //  1150: ldc             "KochavaTracker"
                //  1152: ldc_w           "Set start of life to false"
                //  1155: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //  1158: pop            
                //  1159: aload_0        
                //  1160: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //  1163: iconst_0       
                //  1164: invokestatic    com/kochava/android/tracker/Feature.access$24:(Lcom/kochava/android/tracker/Feature;Z)V
                //  1167: goto            715
                //  1170: aload_0        
                //  1171: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //  1174: iconst_0       
                //  1175: invokestatic    com/kochava/android/tracker/Feature.access$24:(Lcom/kochava/android/tracker/Feature;Z)V
                //  1178: goto            715
                //  1181: aload_0        
                //  1182: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //  1185: invokestatic    com/kochava/android/tracker/Feature.access$30:(Lcom/kochava/android/tracker/Feature;)Ljava/util/Timer;
                //  1188: new             Lcom/kochava/android/tracker/Feature$2$3;
                //  1191: dup            
                //  1192: aload_0        
                //  1193: invokespecial   com/kochava/android/tracker/Feature$2$3.<init>:(Lcom/kochava/android/tracker/Feature$2;)V
                //  1196: ldc2_w          2000
                //  1199: invokevirtual   java/util/Timer.schedule:(Ljava/util/TimerTask;J)V
                //  1202: aload_0        
                //  1203: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //  1206: new             Ljava/util/Timer;
                //  1209: dup            
                //  1210: invokespecial   java/util/Timer.<init>:()V
                //  1213: invokestatic    com/kochava/android/tracker/Feature.access$32:(Lcom/kochava/android/tracker/Feature;Ljava/util/Timer;)V
                //  1216: aload_0        
                //  1217: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //  1220: invokestatic    com/kochava/android/tracker/Feature.access$33:(Lcom/kochava/android/tracker/Feature;)Ljava/util/Timer;
                //  1223: new             Lcom/kochava/android/tracker/Feature$2$4;
                //  1226: dup            
                //  1227: aload_0        
                //  1228: invokespecial   com/kochava/android/tracker/Feature$2$4.<init>:(Lcom/kochava/android/tracker/Feature$2;)V
                //  1231: ldc2_w          4000
                //  1234: invokevirtual   java/util/Timer.schedule:(Ljava/util/TimerTask;J)V
                //  1237: return         
                //    Exceptions:
                //  Try           Handler
                //  Start  End    Start  End    Type                                                     
                //  -----  -----  -----  -----  ---------------------------------------------------------
                //  108    123    943    981    Ljava/lang/Exception;
                //  123    141    895    943    Landroid/content/pm/PackageManager$NameNotFoundException;
                //  123    141    943    981    Ljava/lang/Exception;
                //  145    151    943    981    Ljava/lang/Exception;
                //  156    165    943    981    Ljava/lang/Exception;
                //  165    209    943    981    Ljava/lang/Exception;
                //  209    290    989    1027   Ljava/lang/Exception;
                //  290    358    1027   1065   Ljava/lang/Exception;
                //  358    458    1065   1103   Ljava/lang/Exception;
                //  897    902    943    981    Ljava/lang/Exception;
                //  910    937    943    981    Ljava/lang/Exception;
                // 
                // The error that occurred was:
                // 
                // java.lang.IndexOutOfBoundsException: Index: 507, Size: 507
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
                //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createConstructor(AstBuilder.java:692)
                //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:529)
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
        };
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        if (value != null && value.trim().length() != 0) {
            hashMap.put("kochava_app_id", value);
        }
        this.init(context, true, hashMap);
    }
    
    public Feature(final Context context, final String value, final String value2) {
        super();
        this.lastCallTime = 0L;
        this.startTime = 0L;
        this.mTestMode = false;
        this.mIsStartOfLife = true;
        this.badInit = false;
        this.canSendSession = true;
        this.requestAttributionData = false;
        this.executor = Executors.newFixedThreadPool(1);
        this.initHandler = new Handler() {
            public void handleMessage(final Message p0) {
                // 
                // This method could not be decompiled.
                // 
                // Original Bytecode:
                // 
                //     0: aload_1        
                //     1: invokevirtual   android/os/Message.getData:()Landroid/os/Bundle;
                //     4: ldc             "sendonstart"
                //     6: invokevirtual   android/os/Bundle.getBoolean:(Ljava/lang/String;)Z
                //     9: istore_2       
                //    10: new             Landroid/webkit/WebView;
                //    13: dup            
                //    14: aload_0        
                //    15: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //    18: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //    21: invokespecial   android/webkit/WebView.<init>:(Landroid/content/Context;)V
                //    24: astore_3       
                //    25: aload_0        
                //    26: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //    29: aload_3        
                //    30: invokevirtual   android/webkit/WebView.getSettings:()Landroid/webkit/WebSettings;
                //    33: invokevirtual   android/webkit/WebSettings.getUserAgentString:()Ljava/lang/String;
                //    36: invokestatic    com/kochava/android/tracker/Feature.access$1:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //    39: aload_3        
                //    40: invokevirtual   android/webkit/WebView.destroy:()V
                //    43: aload_0        
                //    44: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //    47: aload_0        
                //    48: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //    51: invokestatic    com/kochava/android/tracker/Feature.access$2:(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
                //    54: invokestatic    com/kochava/android/tracker/Feature.access$3:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //    57: aload_0        
                //    58: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //    61: aload_0        
                //    62: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //    65: invokestatic    com/kochava/android/tracker/Feature.access$4:(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
                //    68: invokestatic    com/kochava/android/tracker/Feature.access$5:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //    71: aload_0        
                //    72: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //    75: ldc             "Default"
                //    77: invokestatic    com/kochava/android/tracker/Feature.access$6:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //    80: aload_0        
                //    81: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //    84: ldc             "N/A"
                //    86: invokestatic    com/kochava/android/tracker/Feature.access$7:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //    89: aload_0        
                //    90: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //    93: ldc             ""
                //    95: invokestatic    com/kochava/android/tracker/Feature.access$8:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //    98: aload_0        
                //    99: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   102: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   105: invokestatic    com/kochava/android/util/OpenUDID.syncContext:(Landroid/content/Context;)V
                //   108: aload_0        
                //   109: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   112: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   115: invokevirtual   android/content/Context.getApplicationContext:()Landroid/content/Context;
                //   118: invokevirtual   android/content/Context.getPackageManager:()Landroid/content/pm/PackageManager;
                //   121: astore          23
                //   123: aload           23
                //   125: aload_0        
                //   126: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   129: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   132: invokevirtual   android/content/Context.getPackageName:()Ljava/lang/String;
                //   135: iconst_0       
                //   136: invokevirtual   android/content/pm/PackageManager.getApplicationInfo:(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
                //   139: astore          31
                //   141: aload           31
                //   143: astore          26
                //   145: aload_0        
                //   146: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   149: astore          28
                //   151: aload           26
                //   153: ifnull          981
                //   156: aload           23
                //   158: aload           26
                //   160: invokevirtual   android/content/pm/PackageManager.getApplicationLabel:(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
                //   163: astore          29
                //   165: aload           28
                //   167: aload           29
                //   169: checkcast       Ljava/lang/String;
                //   172: invokestatic    com/kochava/android/tracker/Feature.access$6:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //   175: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
                //   178: ifeq            209
                //   181: ldc             "KochavaTracker"
                //   183: new             Ljava/lang/StringBuilder;
                //   186: dup            
                //   187: ldc             "mAppName now: "
                //   189: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   192: aload_0        
                //   193: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   196: invokestatic    com/kochava/android/tracker/Feature.access$9:(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
                //   199: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   202: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   205: invokestatic    android/util/Log.i:(Ljava/lang/String;Ljava/lang/String;)I
                //   208: pop            
                //   209: aload_0        
                //   210: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   213: new             Ljava/lang/StringBuilder;
                //   216: dup            
                //   217: aload_0        
                //   218: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   221: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   224: invokevirtual   android/content/Context.getPackageManager:()Landroid/content/pm/PackageManager;
                //   227: aload_0        
                //   228: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   231: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   234: invokevirtual   android/content/Context.getPackageName:()Ljava/lang/String;
                //   237: iconst_0       
                //   238: invokevirtual   android/content/pm/PackageManager.getPackageInfo:(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
                //   241: getfield        android/content/pm/PackageInfo.versionCode:I
                //   244: invokestatic    java/lang/String.valueOf:(I)Ljava/lang/String;
                //   247: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   250: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   253: invokestatic    com/kochava/android/tracker/Feature.access$7:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //   256: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
                //   259: ifeq            290
                //   262: ldc             "KochavaTracker"
                //   264: new             Ljava/lang/StringBuilder;
                //   267: dup            
                //   268: ldc             "mAppVersionCode now: "
                //   270: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   273: aload_0        
                //   274: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   277: invokestatic    com/kochava/android/tracker/Feature.access$10:(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
                //   280: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   283: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   286: invokestatic    android/util/Log.i:(Ljava/lang/String;Ljava/lang/String;)I
                //   289: pop            
                //   290: aload_0        
                //   291: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   294: aload_0        
                //   295: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   298: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   301: invokevirtual   android/content/Context.getPackageManager:()Landroid/content/pm/PackageManager;
                //   304: aload_0        
                //   305: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   308: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   311: invokevirtual   android/content/Context.getPackageName:()Ljava/lang/String;
                //   314: iconst_0       
                //   315: invokevirtual   android/content/pm/PackageManager.getPackageInfo:(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
                //   318: getfield        android/content/pm/PackageInfo.versionName:Ljava/lang/String;
                //   321: invokestatic    com/kochava/android/tracker/Feature.access$8:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //   324: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
                //   327: ifeq            358
                //   330: ldc             "KochavaTracker"
                //   332: new             Ljava/lang/StringBuilder;
                //   335: dup            
                //   336: ldc             "mAppVersionName now: "
                //   338: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   341: aload_0        
                //   342: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   345: invokestatic    com/kochava/android/tracker/Feature.access$11:(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
                //   348: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   351: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   354: invokestatic    android/util/Log.i:(Ljava/lang/String;Ljava/lang/String;)I
                //   357: pop            
                //   358: aload_0        
                //   359: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   362: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   365: ldc             "window"
                //   367: invokevirtual   android/content/Context.getSystemService:(Ljava/lang/String;)Ljava/lang/Object;
                //   370: checkcast       Landroid/view/WindowManager;
                //   373: astore          19
                //   375: aload_0        
                //   376: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   379: aload           19
                //   381: invokeinterface android/view/WindowManager.getDefaultDisplay:()Landroid/view/Display;
                //   386: invokevirtual   android/view/Display.getHeight:()I
                //   389: invokestatic    com/kochava/android/tracker/Feature.access$12:(Lcom/kochava/android/tracker/Feature;I)V
                //   392: aload_0        
                //   393: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   396: aload           19
                //   398: invokeinterface android/view/WindowManager.getDefaultDisplay:()Landroid/view/Display;
                //   403: invokevirtual   android/view/Display.getWidth:()I
                //   406: invokestatic    com/kochava/android/tracker/Feature.access$13:(Lcom/kochava/android/tracker/Feature;I)V
                //   409: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
                //   412: ifeq            458
                //   415: ldc             "KochavaTracker"
                //   417: new             Ljava/lang/StringBuilder;
                //   420: dup            
                //   421: ldc             "Height: "
                //   423: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   426: aload_0        
                //   427: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   430: invokestatic    com/kochava/android/tracker/Feature.access$14:(Lcom/kochava/android/tracker/Feature;)I
                //   433: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
                //   436: ldc             " | Width: "
                //   438: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   441: aload_0        
                //   442: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   445: invokestatic    com/kochava/android/tracker/Feature.access$15:(Lcom/kochava/android/tracker/Feature;)I
                //   448: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
                //   451: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   454: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //   457: pop            
                //   458: aload_0        
                //   459: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   462: aload_0        
                //   463: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   466: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   469: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
                //   472: ldc             "android_id"
                //   474: invokestatic    android/provider/Settings$Secure.getString:(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
                //   477: invokestatic    com/kochava/android/tracker/Feature.access$16:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //   480: aload_0        
                //   481: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   484: aload_0        
                //   485: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   488: invokestatic    com/kochava/android/tracker/Feature.access$17:(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
                //   491: invokestatic    com/kochava/android/tracker/Feature.access$18:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //   494: aload_0        
                //   495: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   498: aload_0        
                //   499: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   502: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   505: ldc             "initPrefs"
                //   507: iconst_0       
                //   508: invokevirtual   android/content/Context.getSharedPreferences:(Ljava/lang/String;I)Landroid/content/SharedPreferences;
                //   511: invokestatic    com/kochava/android/tracker/Feature.access$19:(Lcom/kochava/android/tracker/Feature;Landroid/content/SharedPreferences;)V
                //   514: aload_0        
                //   515: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   518: invokestatic    com/kochava/android/tracker/Feature.access$20:(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;
                //   521: ldc_w           "initBool"
                //   524: ldc             ""
                //   526: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
                //   531: ldc             ""
                //   533: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
                //   536: ifeq            568
                //   539: aload_0        
                //   540: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   543: invokestatic    com/kochava/android/tracker/Feature.access$20:(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;
                //   546: invokeinterface android/content/SharedPreferences.edit:()Landroid/content/SharedPreferences$Editor;
                //   551: ldc_w           "initBool"
                //   554: ldc_w           "false"
                //   557: invokeinterface android/content/SharedPreferences$Editor.putString:(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
                //   562: invokeinterface android/content/SharedPreferences$Editor.commit:()Z
                //   567: pop            
                //   568: aload_0        
                //   569: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   572: invokestatic    com/kochava/android/tracker/Feature.access$20:(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;
                //   575: ldc_w           "kochavaappdata"
                //   578: aconst_null    
                //   579: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
                //   584: ifnull          1170
                //   587: aload_0        
                //   588: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   591: invokestatic    com/kochava/android/tracker/Feature.access$21:(Lcom/kochava/android/tracker/Feature;)Lcom/kochava/android/tracker/KochavaDbAdapter;
                //   594: aload_0        
                //   595: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   598: invokestatic    com/kochava/android/tracker/Feature.access$20:(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;
                //   601: ldc_w           "kochavaappdata"
                //   604: aconst_null    
                //   605: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
                //   610: invokevirtual   com/kochava/android/tracker/KochavaDbAdapter.getApplicationData:(Ljava/lang/String;)Ljava/lang/String;
                //   613: astore          13
                //   615: aload_0        
                //   616: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   619: invokestatic    com/kochava/android/tracker/Feature.access$22:(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
                //   622: astore          14
                //   624: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
                //   627: ifeq            678
                //   630: ldc             "KochavaTracker"
                //   632: new             Ljava/lang/StringBuilder;
                //   635: dup            
                //   636: ldc_w           "[KOCHAVA] Stored Data: "
                //   639: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   642: aload           13
                //   644: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   647: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   650: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //   653: pop            
                //   654: ldc             "KochavaTracker"
                //   656: new             Ljava/lang/StringBuilder;
                //   659: dup            
                //   660: ldc_w           "[KOCHAVA] Created Data: "
                //   663: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   666: aload           14
                //   668: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   671: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   674: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //   677: pop            
                //   678: aload           13
                //   680: ifnonnull       1103
                //   683: aload_0        
                //   684: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   687: invokestatic    com/kochava/android/tracker/Feature.access$21:(Lcom/kochava/android/tracker/Feature;)Lcom/kochava/android/tracker/KochavaDbAdapter;
                //   690: aload_0        
                //   691: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   694: invokestatic    com/kochava/android/tracker/Feature.access$20:(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;
                //   697: ldc_w           "kochavaappdata"
                //   700: aconst_null    
                //   701: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
                //   706: aload           14
                //   708: invokevirtual   com/kochava/android/tracker/KochavaDbAdapter.insertApplicationData:(Ljava/lang/String;Ljava/lang/String;)V
                //   711: iconst_1       
                //   712: invokestatic    com/kochava/android/tracker/Feature.access$23:(I)V
                //   715: aload_0        
                //   716: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   719: invokestatic    com/kochava/android/tracker/Feature.access$21:(Lcom/kochava/android/tracker/Feature;)Lcom/kochava/android/tracker/KochavaDbAdapter;
                //   722: invokestatic    java/lang/System.currentTimeMillis:()J
                //   725: ldc2_w          604800000
                //   728: lsub           
                //   729: invokevirtual   com/kochava/android/tracker/KochavaDbAdapter.cleanupEvents:(J)V
                //   732: aload_0        
                //   733: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   736: invokestatic    com/kochava/android/tracker/Feature.access$25:(Lcom/kochava/android/tracker/Feature;)Z
                //   739: ifne            793
                //   742: aload_0        
                //   743: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   746: invokestatic    com/kochava/android/tracker/Feature.access$20:(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;
                //   749: ldc_w           "initBool"
                //   752: ldc             ""
                //   754: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
                //   759: ldc             ""
                //   761: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
                //   764: ifne            819
                //   767: aload_0        
                //   768: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   771: invokestatic    com/kochava/android/tracker/Feature.access$20:(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;
                //   774: ldc_w           "initBool"
                //   777: ldc             ""
                //   779: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
                //   784: ldc_w           "false"
                //   787: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
                //   790: ifeq            819
                //   793: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
                //   796: ifeq            808
                //   799: ldc             "KochavaTracker"
                //   801: ldc_w           "Initial event has not yet been qued in the database, making initial call"
                //   804: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //   807: pop            
                //   808: aload_0        
                //   809: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   812: ldc_w           "initial"
                //   815: aconst_null    
                //   816: invokestatic    com/kochava/android/tracker/Feature.access$26:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;Ljava/util/Map;)V
                //   819: aload_0        
                //   820: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   823: new             Ljava/util/Timer;
                //   826: dup            
                //   827: invokespecial   java/util/Timer.<init>:()V
                //   830: invokestatic    com/kochava/android/tracker/Feature.access$27:(Lcom/kochava/android/tracker/Feature;Ljava/util/Timer;)V
                //   833: aload_0        
                //   834: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   837: invokestatic    com/kochava/android/tracker/Feature.access$28:(Lcom/kochava/android/tracker/Feature;)Ljava/util/Timer;
                //   840: new             Lcom/kochava/android/tracker/Feature$2$1;
                //   843: dup            
                //   844: aload_0        
                //   845: invokespecial   com/kochava/android/tracker/Feature$2$1.<init>:(Lcom/kochava/android/tracker/Feature$2;)V
                //   848: lconst_0       
                //   849: ldc2_w          60000
                //   852: invokevirtual   java/util/Timer.schedule:(Ljava/util/TimerTask;JJ)V
                //   855: aload_0        
                //   856: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   859: new             Ljava/util/Timer;
                //   862: dup            
                //   863: invokespecial   java/util/Timer.<init>:()V
                //   866: invokestatic    com/kochava/android/tracker/Feature.access$29:(Lcom/kochava/android/tracker/Feature;Ljava/util/Timer;)V
                //   869: iload_2        
                //   870: ifne            1181
                //   873: aload_0        
                //   874: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   877: invokestatic    com/kochava/android/tracker/Feature.access$30:(Lcom/kochava/android/tracker/Feature;)Ljava/util/Timer;
                //   880: new             Lcom/kochava/android/tracker/Feature$2$2;
                //   883: dup            
                //   884: aload_0        
                //   885: invokespecial   com/kochava/android/tracker/Feature$2$2.<init>:(Lcom/kochava/android/tracker/Feature$2;)V
                //   888: ldc2_w          600000
                //   891: invokevirtual   java/util/Timer.schedule:(Ljava/util/TimerTask;J)V
                //   894: return         
                //   895: astore          24
                //   897: getstatic       com/kochava/android/tracker/Global.DEBUGERROR:Z
                //   900: istore          25
                //   902: aconst_null    
                //   903: astore          26
                //   905: iload           25
                //   907: ifeq            145
                //   910: ldc             "KochavaTracker"
                //   912: new             Ljava/lang/StringBuilder;
                //   915: dup            
                //   916: ldc_w           "Error gathering app name "
                //   919: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   922: aload           24
                //   924: invokevirtual   android/content/pm/PackageManager$NameNotFoundException.toString:()Ljava/lang/String;
                //   927: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   930: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   933: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //   936: pop            
                //   937: aconst_null    
                //   938: astore          26
                //   940: goto            145
                //   943: astore          4
                //   945: getstatic       com/kochava/android/tracker/Global.DEBUGERROR:Z
                //   948: ifeq            209
                //   951: ldc             "KochavaTracker"
                //   953: new             Ljava/lang/StringBuilder;
                //   956: dup            
                //   957: ldc_w           "Error gathering app name "
                //   960: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   963: aload           4
                //   965: invokevirtual   java/lang/Exception.toString:()Ljava/lang/String;
                //   968: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   971: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   974: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //   977: pop            
                //   978: goto            209
                //   981: ldc_w           "(unknown)"
                //   984: astore          29
                //   986: goto            165
                //   989: astore          6
                //   991: getstatic       com/kochava/android/tracker/Global.DEBUGERROR:Z
                //   994: ifeq            290
                //   997: ldc             "KochavaTracker"
                //   999: new             Ljava/lang/StringBuilder;
                //  1002: dup            
                //  1003: ldc_w           "Error gathering app version code "
                //  1006: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //  1009: aload           6
                //  1011: invokevirtual   java/lang/Exception.toString:()Ljava/lang/String;
                //  1014: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //  1017: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //  1020: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //  1023: pop            
                //  1024: goto            290
                //  1027: astore          8
                //  1029: getstatic       com/kochava/android/tracker/Global.DEBUGERROR:Z
                //  1032: ifeq            358
                //  1035: ldc             "KochavaTracker"
                //  1037: new             Ljava/lang/StringBuilder;
                //  1040: dup            
                //  1041: ldc_w           "Error gathering app version name "
                //  1044: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //  1047: aload           8
                //  1049: invokevirtual   java/lang/Exception.toString:()Ljava/lang/String;
                //  1052: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //  1055: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //  1058: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //  1061: pop            
                //  1062: goto            358
                //  1065: astore          10
                //  1067: getstatic       com/kochava/android/tracker/Global.DEBUGERROR:Z
                //  1070: ifeq            458
                //  1073: ldc             "KochavaTracker"
                //  1075: new             Ljava/lang/StringBuilder;
                //  1078: dup            
                //  1079: ldc_w           "Error "
                //  1082: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //  1085: aload           10
                //  1087: invokevirtual   java/lang/Exception.toString:()Ljava/lang/String;
                //  1090: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //  1093: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //  1096: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //  1099: pop            
                //  1100: goto            458
                //  1103: aload           13
                //  1105: aload           14
                //  1107: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
                //  1110: ifne            1144
                //  1113: aload_0        
                //  1114: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //  1117: invokestatic    com/kochava/android/tracker/Feature.access$21:(Lcom/kochava/android/tracker/Feature;)Lcom/kochava/android/tracker/KochavaDbAdapter;
                //  1120: aload_0        
                //  1121: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //  1124: invokestatic    com/kochava/android/tracker/Feature.access$20:(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;
                //  1127: ldc_w           "kochavaappdata"
                //  1130: aconst_null    
                //  1131: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
                //  1136: aload           14
                //  1138: invokevirtual   com/kochava/android/tracker/KochavaDbAdapter.updateApplicationData:(Ljava/lang/String;Ljava/lang/String;)V
                //  1141: goto            715
                //  1144: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
                //  1147: ifeq            1159
                //  1150: ldc             "KochavaTracker"
                //  1152: ldc_w           "Set start of life to false"
                //  1155: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //  1158: pop            
                //  1159: aload_0        
                //  1160: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //  1163: iconst_0       
                //  1164: invokestatic    com/kochava/android/tracker/Feature.access$24:(Lcom/kochava/android/tracker/Feature;Z)V
                //  1167: goto            715
                //  1170: aload_0        
                //  1171: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //  1174: iconst_0       
                //  1175: invokestatic    com/kochava/android/tracker/Feature.access$24:(Lcom/kochava/android/tracker/Feature;Z)V
                //  1178: goto            715
                //  1181: aload_0        
                //  1182: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //  1185: invokestatic    com/kochava/android/tracker/Feature.access$30:(Lcom/kochava/android/tracker/Feature;)Ljava/util/Timer;
                //  1188: new             Lcom/kochava/android/tracker/Feature$2$3;
                //  1191: dup            
                //  1192: aload_0        
                //  1193: invokespecial   com/kochava/android/tracker/Feature$2$3.<init>:(Lcom/kochava/android/tracker/Feature$2;)V
                //  1196: ldc2_w          2000
                //  1199: invokevirtual   java/util/Timer.schedule:(Ljava/util/TimerTask;J)V
                //  1202: aload_0        
                //  1203: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //  1206: new             Ljava/util/Timer;
                //  1209: dup            
                //  1210: invokespecial   java/util/Timer.<init>:()V
                //  1213: invokestatic    com/kochava/android/tracker/Feature.access$32:(Lcom/kochava/android/tracker/Feature;Ljava/util/Timer;)V
                //  1216: aload_0        
                //  1217: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //  1220: invokestatic    com/kochava/android/tracker/Feature.access$33:(Lcom/kochava/android/tracker/Feature;)Ljava/util/Timer;
                //  1223: new             Lcom/kochava/android/tracker/Feature$2$4;
                //  1226: dup            
                //  1227: aload_0        
                //  1228: invokespecial   com/kochava/android/tracker/Feature$2$4.<init>:(Lcom/kochava/android/tracker/Feature$2;)V
                //  1231: ldc2_w          4000
                //  1234: invokevirtual   java/util/Timer.schedule:(Ljava/util/TimerTask;J)V
                //  1237: return         
                //    Exceptions:
                //  Try           Handler
                //  Start  End    Start  End    Type                                                     
                //  -----  -----  -----  -----  ---------------------------------------------------------
                //  108    123    943    981    Ljava/lang/Exception;
                //  123    141    895    943    Landroid/content/pm/PackageManager$NameNotFoundException;
                //  123    141    943    981    Ljava/lang/Exception;
                //  145    151    943    981    Ljava/lang/Exception;
                //  156    165    943    981    Ljava/lang/Exception;
                //  165    209    943    981    Ljava/lang/Exception;
                //  209    290    989    1027   Ljava/lang/Exception;
                //  290    358    1027   1065   Ljava/lang/Exception;
                //  358    458    1065   1103   Ljava/lang/Exception;
                //  897    902    943    981    Ljava/lang/Exception;
                //  910    937    943    981    Ljava/lang/Exception;
                // 
                // The error that occurred was:
                // 
                // java.lang.IndexOutOfBoundsException: Index: 507, Size: 507
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
                //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createConstructor(AstBuilder.java:692)
                //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:529)
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
        };
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        if (value != null && value.trim().length() != 0) {
            hashMap.put("kochava_app_id", value);
        }
        if (value2 != null && value2.trim().length() != 0) {
            hashMap.put("currency", value2);
        }
        this.init(context, true, hashMap);
    }
    
    public Feature(final Context context, final String value, final boolean b) {
        super();
        this.lastCallTime = 0L;
        this.startTime = 0L;
        this.mTestMode = false;
        this.mIsStartOfLife = true;
        this.badInit = false;
        this.canSendSession = true;
        this.requestAttributionData = false;
        this.executor = Executors.newFixedThreadPool(1);
        this.initHandler = new Handler() {
            public void handleMessage(final Message p0) {
                // 
                // This method could not be decompiled.
                // 
                // Original Bytecode:
                // 
                //     0: aload_1        
                //     1: invokevirtual   android/os/Message.getData:()Landroid/os/Bundle;
                //     4: ldc             "sendonstart"
                //     6: invokevirtual   android/os/Bundle.getBoolean:(Ljava/lang/String;)Z
                //     9: istore_2       
                //    10: new             Landroid/webkit/WebView;
                //    13: dup            
                //    14: aload_0        
                //    15: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //    18: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //    21: invokespecial   android/webkit/WebView.<init>:(Landroid/content/Context;)V
                //    24: astore_3       
                //    25: aload_0        
                //    26: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //    29: aload_3        
                //    30: invokevirtual   android/webkit/WebView.getSettings:()Landroid/webkit/WebSettings;
                //    33: invokevirtual   android/webkit/WebSettings.getUserAgentString:()Ljava/lang/String;
                //    36: invokestatic    com/kochava/android/tracker/Feature.access$1:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //    39: aload_3        
                //    40: invokevirtual   android/webkit/WebView.destroy:()V
                //    43: aload_0        
                //    44: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //    47: aload_0        
                //    48: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //    51: invokestatic    com/kochava/android/tracker/Feature.access$2:(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
                //    54: invokestatic    com/kochava/android/tracker/Feature.access$3:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //    57: aload_0        
                //    58: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //    61: aload_0        
                //    62: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //    65: invokestatic    com/kochava/android/tracker/Feature.access$4:(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
                //    68: invokestatic    com/kochava/android/tracker/Feature.access$5:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //    71: aload_0        
                //    72: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //    75: ldc             "Default"
                //    77: invokestatic    com/kochava/android/tracker/Feature.access$6:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //    80: aload_0        
                //    81: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //    84: ldc             "N/A"
                //    86: invokestatic    com/kochava/android/tracker/Feature.access$7:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //    89: aload_0        
                //    90: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //    93: ldc             ""
                //    95: invokestatic    com/kochava/android/tracker/Feature.access$8:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //    98: aload_0        
                //    99: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   102: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   105: invokestatic    com/kochava/android/util/OpenUDID.syncContext:(Landroid/content/Context;)V
                //   108: aload_0        
                //   109: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   112: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   115: invokevirtual   android/content/Context.getApplicationContext:()Landroid/content/Context;
                //   118: invokevirtual   android/content/Context.getPackageManager:()Landroid/content/pm/PackageManager;
                //   121: astore          23
                //   123: aload           23
                //   125: aload_0        
                //   126: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   129: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   132: invokevirtual   android/content/Context.getPackageName:()Ljava/lang/String;
                //   135: iconst_0       
                //   136: invokevirtual   android/content/pm/PackageManager.getApplicationInfo:(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
                //   139: astore          31
                //   141: aload           31
                //   143: astore          26
                //   145: aload_0        
                //   146: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   149: astore          28
                //   151: aload           26
                //   153: ifnull          981
                //   156: aload           23
                //   158: aload           26
                //   160: invokevirtual   android/content/pm/PackageManager.getApplicationLabel:(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
                //   163: astore          29
                //   165: aload           28
                //   167: aload           29
                //   169: checkcast       Ljava/lang/String;
                //   172: invokestatic    com/kochava/android/tracker/Feature.access$6:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //   175: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
                //   178: ifeq            209
                //   181: ldc             "KochavaTracker"
                //   183: new             Ljava/lang/StringBuilder;
                //   186: dup            
                //   187: ldc             "mAppName now: "
                //   189: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   192: aload_0        
                //   193: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   196: invokestatic    com/kochava/android/tracker/Feature.access$9:(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
                //   199: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   202: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   205: invokestatic    android/util/Log.i:(Ljava/lang/String;Ljava/lang/String;)I
                //   208: pop            
                //   209: aload_0        
                //   210: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   213: new             Ljava/lang/StringBuilder;
                //   216: dup            
                //   217: aload_0        
                //   218: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   221: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   224: invokevirtual   android/content/Context.getPackageManager:()Landroid/content/pm/PackageManager;
                //   227: aload_0        
                //   228: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   231: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   234: invokevirtual   android/content/Context.getPackageName:()Ljava/lang/String;
                //   237: iconst_0       
                //   238: invokevirtual   android/content/pm/PackageManager.getPackageInfo:(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
                //   241: getfield        android/content/pm/PackageInfo.versionCode:I
                //   244: invokestatic    java/lang/String.valueOf:(I)Ljava/lang/String;
                //   247: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   250: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   253: invokestatic    com/kochava/android/tracker/Feature.access$7:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //   256: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
                //   259: ifeq            290
                //   262: ldc             "KochavaTracker"
                //   264: new             Ljava/lang/StringBuilder;
                //   267: dup            
                //   268: ldc             "mAppVersionCode now: "
                //   270: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   273: aload_0        
                //   274: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   277: invokestatic    com/kochava/android/tracker/Feature.access$10:(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
                //   280: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   283: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   286: invokestatic    android/util/Log.i:(Ljava/lang/String;Ljava/lang/String;)I
                //   289: pop            
                //   290: aload_0        
                //   291: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   294: aload_0        
                //   295: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   298: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   301: invokevirtual   android/content/Context.getPackageManager:()Landroid/content/pm/PackageManager;
                //   304: aload_0        
                //   305: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   308: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   311: invokevirtual   android/content/Context.getPackageName:()Ljava/lang/String;
                //   314: iconst_0       
                //   315: invokevirtual   android/content/pm/PackageManager.getPackageInfo:(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
                //   318: getfield        android/content/pm/PackageInfo.versionName:Ljava/lang/String;
                //   321: invokestatic    com/kochava/android/tracker/Feature.access$8:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //   324: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
                //   327: ifeq            358
                //   330: ldc             "KochavaTracker"
                //   332: new             Ljava/lang/StringBuilder;
                //   335: dup            
                //   336: ldc             "mAppVersionName now: "
                //   338: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   341: aload_0        
                //   342: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   345: invokestatic    com/kochava/android/tracker/Feature.access$11:(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
                //   348: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   351: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   354: invokestatic    android/util/Log.i:(Ljava/lang/String;Ljava/lang/String;)I
                //   357: pop            
                //   358: aload_0        
                //   359: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   362: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   365: ldc             "window"
                //   367: invokevirtual   android/content/Context.getSystemService:(Ljava/lang/String;)Ljava/lang/Object;
                //   370: checkcast       Landroid/view/WindowManager;
                //   373: astore          19
                //   375: aload_0        
                //   376: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   379: aload           19
                //   381: invokeinterface android/view/WindowManager.getDefaultDisplay:()Landroid/view/Display;
                //   386: invokevirtual   android/view/Display.getHeight:()I
                //   389: invokestatic    com/kochava/android/tracker/Feature.access$12:(Lcom/kochava/android/tracker/Feature;I)V
                //   392: aload_0        
                //   393: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   396: aload           19
                //   398: invokeinterface android/view/WindowManager.getDefaultDisplay:()Landroid/view/Display;
                //   403: invokevirtual   android/view/Display.getWidth:()I
                //   406: invokestatic    com/kochava/android/tracker/Feature.access$13:(Lcom/kochava/android/tracker/Feature;I)V
                //   409: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
                //   412: ifeq            458
                //   415: ldc             "KochavaTracker"
                //   417: new             Ljava/lang/StringBuilder;
                //   420: dup            
                //   421: ldc             "Height: "
                //   423: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   426: aload_0        
                //   427: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   430: invokestatic    com/kochava/android/tracker/Feature.access$14:(Lcom/kochava/android/tracker/Feature;)I
                //   433: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
                //   436: ldc             " | Width: "
                //   438: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   441: aload_0        
                //   442: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   445: invokestatic    com/kochava/android/tracker/Feature.access$15:(Lcom/kochava/android/tracker/Feature;)I
                //   448: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
                //   451: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   454: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //   457: pop            
                //   458: aload_0        
                //   459: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   462: aload_0        
                //   463: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   466: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   469: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
                //   472: ldc             "android_id"
                //   474: invokestatic    android/provider/Settings$Secure.getString:(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
                //   477: invokestatic    com/kochava/android/tracker/Feature.access$16:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //   480: aload_0        
                //   481: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   484: aload_0        
                //   485: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   488: invokestatic    com/kochava/android/tracker/Feature.access$17:(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
                //   491: invokestatic    com/kochava/android/tracker/Feature.access$18:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //   494: aload_0        
                //   495: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   498: aload_0        
                //   499: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   502: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   505: ldc             "initPrefs"
                //   507: iconst_0       
                //   508: invokevirtual   android/content/Context.getSharedPreferences:(Ljava/lang/String;I)Landroid/content/SharedPreferences;
                //   511: invokestatic    com/kochava/android/tracker/Feature.access$19:(Lcom/kochava/android/tracker/Feature;Landroid/content/SharedPreferences;)V
                //   514: aload_0        
                //   515: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   518: invokestatic    com/kochava/android/tracker/Feature.access$20:(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;
                //   521: ldc_w           "initBool"
                //   524: ldc             ""
                //   526: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
                //   531: ldc             ""
                //   533: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
                //   536: ifeq            568
                //   539: aload_0        
                //   540: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   543: invokestatic    com/kochava/android/tracker/Feature.access$20:(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;
                //   546: invokeinterface android/content/SharedPreferences.edit:()Landroid/content/SharedPreferences$Editor;
                //   551: ldc_w           "initBool"
                //   554: ldc_w           "false"
                //   557: invokeinterface android/content/SharedPreferences$Editor.putString:(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
                //   562: invokeinterface android/content/SharedPreferences$Editor.commit:()Z
                //   567: pop            
                //   568: aload_0        
                //   569: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   572: invokestatic    com/kochava/android/tracker/Feature.access$20:(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;
                //   575: ldc_w           "kochavaappdata"
                //   578: aconst_null    
                //   579: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
                //   584: ifnull          1170
                //   587: aload_0        
                //   588: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   591: invokestatic    com/kochava/android/tracker/Feature.access$21:(Lcom/kochava/android/tracker/Feature;)Lcom/kochava/android/tracker/KochavaDbAdapter;
                //   594: aload_0        
                //   595: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   598: invokestatic    com/kochava/android/tracker/Feature.access$20:(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;
                //   601: ldc_w           "kochavaappdata"
                //   604: aconst_null    
                //   605: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
                //   610: invokevirtual   com/kochava/android/tracker/KochavaDbAdapter.getApplicationData:(Ljava/lang/String;)Ljava/lang/String;
                //   613: astore          13
                //   615: aload_0        
                //   616: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   619: invokestatic    com/kochava/android/tracker/Feature.access$22:(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
                //   622: astore          14
                //   624: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
                //   627: ifeq            678
                //   630: ldc             "KochavaTracker"
                //   632: new             Ljava/lang/StringBuilder;
                //   635: dup            
                //   636: ldc_w           "[KOCHAVA] Stored Data: "
                //   639: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   642: aload           13
                //   644: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   647: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   650: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //   653: pop            
                //   654: ldc             "KochavaTracker"
                //   656: new             Ljava/lang/StringBuilder;
                //   659: dup            
                //   660: ldc_w           "[KOCHAVA] Created Data: "
                //   663: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   666: aload           14
                //   668: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   671: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   674: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //   677: pop            
                //   678: aload           13
                //   680: ifnonnull       1103
                //   683: aload_0        
                //   684: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   687: invokestatic    com/kochava/android/tracker/Feature.access$21:(Lcom/kochava/android/tracker/Feature;)Lcom/kochava/android/tracker/KochavaDbAdapter;
                //   690: aload_0        
                //   691: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   694: invokestatic    com/kochava/android/tracker/Feature.access$20:(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;
                //   697: ldc_w           "kochavaappdata"
                //   700: aconst_null    
                //   701: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
                //   706: aload           14
                //   708: invokevirtual   com/kochava/android/tracker/KochavaDbAdapter.insertApplicationData:(Ljava/lang/String;Ljava/lang/String;)V
                //   711: iconst_1       
                //   712: invokestatic    com/kochava/android/tracker/Feature.access$23:(I)V
                //   715: aload_0        
                //   716: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   719: invokestatic    com/kochava/android/tracker/Feature.access$21:(Lcom/kochava/android/tracker/Feature;)Lcom/kochava/android/tracker/KochavaDbAdapter;
                //   722: invokestatic    java/lang/System.currentTimeMillis:()J
                //   725: ldc2_w          604800000
                //   728: lsub           
                //   729: invokevirtual   com/kochava/android/tracker/KochavaDbAdapter.cleanupEvents:(J)V
                //   732: aload_0        
                //   733: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   736: invokestatic    com/kochava/android/tracker/Feature.access$25:(Lcom/kochava/android/tracker/Feature;)Z
                //   739: ifne            793
                //   742: aload_0        
                //   743: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   746: invokestatic    com/kochava/android/tracker/Feature.access$20:(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;
                //   749: ldc_w           "initBool"
                //   752: ldc             ""
                //   754: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
                //   759: ldc             ""
                //   761: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
                //   764: ifne            819
                //   767: aload_0        
                //   768: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   771: invokestatic    com/kochava/android/tracker/Feature.access$20:(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;
                //   774: ldc_w           "initBool"
                //   777: ldc             ""
                //   779: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
                //   784: ldc_w           "false"
                //   787: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
                //   790: ifeq            819
                //   793: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
                //   796: ifeq            808
                //   799: ldc             "KochavaTracker"
                //   801: ldc_w           "Initial event has not yet been qued in the database, making initial call"
                //   804: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //   807: pop            
                //   808: aload_0        
                //   809: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   812: ldc_w           "initial"
                //   815: aconst_null    
                //   816: invokestatic    com/kochava/android/tracker/Feature.access$26:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;Ljava/util/Map;)V
                //   819: aload_0        
                //   820: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   823: new             Ljava/util/Timer;
                //   826: dup            
                //   827: invokespecial   java/util/Timer.<init>:()V
                //   830: invokestatic    com/kochava/android/tracker/Feature.access$27:(Lcom/kochava/android/tracker/Feature;Ljava/util/Timer;)V
                //   833: aload_0        
                //   834: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   837: invokestatic    com/kochava/android/tracker/Feature.access$28:(Lcom/kochava/android/tracker/Feature;)Ljava/util/Timer;
                //   840: new             Lcom/kochava/android/tracker/Feature$2$1;
                //   843: dup            
                //   844: aload_0        
                //   845: invokespecial   com/kochava/android/tracker/Feature$2$1.<init>:(Lcom/kochava/android/tracker/Feature$2;)V
                //   848: lconst_0       
                //   849: ldc2_w          60000
                //   852: invokevirtual   java/util/Timer.schedule:(Ljava/util/TimerTask;JJ)V
                //   855: aload_0        
                //   856: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   859: new             Ljava/util/Timer;
                //   862: dup            
                //   863: invokespecial   java/util/Timer.<init>:()V
                //   866: invokestatic    com/kochava/android/tracker/Feature.access$29:(Lcom/kochava/android/tracker/Feature;Ljava/util/Timer;)V
                //   869: iload_2        
                //   870: ifne            1181
                //   873: aload_0        
                //   874: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   877: invokestatic    com/kochava/android/tracker/Feature.access$30:(Lcom/kochava/android/tracker/Feature;)Ljava/util/Timer;
                //   880: new             Lcom/kochava/android/tracker/Feature$2$2;
                //   883: dup            
                //   884: aload_0        
                //   885: invokespecial   com/kochava/android/tracker/Feature$2$2.<init>:(Lcom/kochava/android/tracker/Feature$2;)V
                //   888: ldc2_w          600000
                //   891: invokevirtual   java/util/Timer.schedule:(Ljava/util/TimerTask;J)V
                //   894: return         
                //   895: astore          24
                //   897: getstatic       com/kochava/android/tracker/Global.DEBUGERROR:Z
                //   900: istore          25
                //   902: aconst_null    
                //   903: astore          26
                //   905: iload           25
                //   907: ifeq            145
                //   910: ldc             "KochavaTracker"
                //   912: new             Ljava/lang/StringBuilder;
                //   915: dup            
                //   916: ldc_w           "Error gathering app name "
                //   919: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   922: aload           24
                //   924: invokevirtual   android/content/pm/PackageManager$NameNotFoundException.toString:()Ljava/lang/String;
                //   927: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   930: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   933: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //   936: pop            
                //   937: aconst_null    
                //   938: astore          26
                //   940: goto            145
                //   943: astore          4
                //   945: getstatic       com/kochava/android/tracker/Global.DEBUGERROR:Z
                //   948: ifeq            209
                //   951: ldc             "KochavaTracker"
                //   953: new             Ljava/lang/StringBuilder;
                //   956: dup            
                //   957: ldc_w           "Error gathering app name "
                //   960: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   963: aload           4
                //   965: invokevirtual   java/lang/Exception.toString:()Ljava/lang/String;
                //   968: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   971: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   974: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //   977: pop            
                //   978: goto            209
                //   981: ldc_w           "(unknown)"
                //   984: astore          29
                //   986: goto            165
                //   989: astore          6
                //   991: getstatic       com/kochava/android/tracker/Global.DEBUGERROR:Z
                //   994: ifeq            290
                //   997: ldc             "KochavaTracker"
                //   999: new             Ljava/lang/StringBuilder;
                //  1002: dup            
                //  1003: ldc_w           "Error gathering app version code "
                //  1006: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //  1009: aload           6
                //  1011: invokevirtual   java/lang/Exception.toString:()Ljava/lang/String;
                //  1014: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //  1017: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //  1020: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //  1023: pop            
                //  1024: goto            290
                //  1027: astore          8
                //  1029: getstatic       com/kochava/android/tracker/Global.DEBUGERROR:Z
                //  1032: ifeq            358
                //  1035: ldc             "KochavaTracker"
                //  1037: new             Ljava/lang/StringBuilder;
                //  1040: dup            
                //  1041: ldc_w           "Error gathering app version name "
                //  1044: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //  1047: aload           8
                //  1049: invokevirtual   java/lang/Exception.toString:()Ljava/lang/String;
                //  1052: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //  1055: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //  1058: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //  1061: pop            
                //  1062: goto            358
                //  1065: astore          10
                //  1067: getstatic       com/kochava/android/tracker/Global.DEBUGERROR:Z
                //  1070: ifeq            458
                //  1073: ldc             "KochavaTracker"
                //  1075: new             Ljava/lang/StringBuilder;
                //  1078: dup            
                //  1079: ldc_w           "Error "
                //  1082: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //  1085: aload           10
                //  1087: invokevirtual   java/lang/Exception.toString:()Ljava/lang/String;
                //  1090: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //  1093: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //  1096: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //  1099: pop            
                //  1100: goto            458
                //  1103: aload           13
                //  1105: aload           14
                //  1107: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
                //  1110: ifne            1144
                //  1113: aload_0        
                //  1114: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //  1117: invokestatic    com/kochava/android/tracker/Feature.access$21:(Lcom/kochava/android/tracker/Feature;)Lcom/kochava/android/tracker/KochavaDbAdapter;
                //  1120: aload_0        
                //  1121: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //  1124: invokestatic    com/kochava/android/tracker/Feature.access$20:(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;
                //  1127: ldc_w           "kochavaappdata"
                //  1130: aconst_null    
                //  1131: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
                //  1136: aload           14
                //  1138: invokevirtual   com/kochava/android/tracker/KochavaDbAdapter.updateApplicationData:(Ljava/lang/String;Ljava/lang/String;)V
                //  1141: goto            715
                //  1144: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
                //  1147: ifeq            1159
                //  1150: ldc             "KochavaTracker"
                //  1152: ldc_w           "Set start of life to false"
                //  1155: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //  1158: pop            
                //  1159: aload_0        
                //  1160: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //  1163: iconst_0       
                //  1164: invokestatic    com/kochava/android/tracker/Feature.access$24:(Lcom/kochava/android/tracker/Feature;Z)V
                //  1167: goto            715
                //  1170: aload_0        
                //  1171: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //  1174: iconst_0       
                //  1175: invokestatic    com/kochava/android/tracker/Feature.access$24:(Lcom/kochava/android/tracker/Feature;Z)V
                //  1178: goto            715
                //  1181: aload_0        
                //  1182: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //  1185: invokestatic    com/kochava/android/tracker/Feature.access$30:(Lcom/kochava/android/tracker/Feature;)Ljava/util/Timer;
                //  1188: new             Lcom/kochava/android/tracker/Feature$2$3;
                //  1191: dup            
                //  1192: aload_0        
                //  1193: invokespecial   com/kochava/android/tracker/Feature$2$3.<init>:(Lcom/kochava/android/tracker/Feature$2;)V
                //  1196: ldc2_w          2000
                //  1199: invokevirtual   java/util/Timer.schedule:(Ljava/util/TimerTask;J)V
                //  1202: aload_0        
                //  1203: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //  1206: new             Ljava/util/Timer;
                //  1209: dup            
                //  1210: invokespecial   java/util/Timer.<init>:()V
                //  1213: invokestatic    com/kochava/android/tracker/Feature.access$32:(Lcom/kochava/android/tracker/Feature;Ljava/util/Timer;)V
                //  1216: aload_0        
                //  1217: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //  1220: invokestatic    com/kochava/android/tracker/Feature.access$33:(Lcom/kochava/android/tracker/Feature;)Ljava/util/Timer;
                //  1223: new             Lcom/kochava/android/tracker/Feature$2$4;
                //  1226: dup            
                //  1227: aload_0        
                //  1228: invokespecial   com/kochava/android/tracker/Feature$2$4.<init>:(Lcom/kochava/android/tracker/Feature$2;)V
                //  1231: ldc2_w          4000
                //  1234: invokevirtual   java/util/Timer.schedule:(Ljava/util/TimerTask;J)V
                //  1237: return         
                //    Exceptions:
                //  Try           Handler
                //  Start  End    Start  End    Type                                                     
                //  -----  -----  -----  -----  ---------------------------------------------------------
                //  108    123    943    981    Ljava/lang/Exception;
                //  123    141    895    943    Landroid/content/pm/PackageManager$NameNotFoundException;
                //  123    141    943    981    Ljava/lang/Exception;
                //  145    151    943    981    Ljava/lang/Exception;
                //  156    165    943    981    Ljava/lang/Exception;
                //  165    209    943    981    Ljava/lang/Exception;
                //  209    290    989    1027   Ljava/lang/Exception;
                //  290    358    1027   1065   Ljava/lang/Exception;
                //  358    458    1065   1103   Ljava/lang/Exception;
                //  897    902    943    981    Ljava/lang/Exception;
                //  910    937    943    981    Ljava/lang/Exception;
                // 
                // The error that occurred was:
                // 
                // java.lang.IndexOutOfBoundsException: Index: 507, Size: 507
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
                //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createConstructor(AstBuilder.java:692)
                //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:529)
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
        };
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        if (value != null && value.trim().length() != 0) {
            hashMap.put("kochava_app_id", value);
        }
        this.init(context, b, hashMap);
    }
    
    public Feature(final Context context, final String value, final boolean b, final String value2) {
        super();
        this.lastCallTime = 0L;
        this.startTime = 0L;
        this.mTestMode = false;
        this.mIsStartOfLife = true;
        this.badInit = false;
        this.canSendSession = true;
        this.requestAttributionData = false;
        this.executor = Executors.newFixedThreadPool(1);
        this.initHandler = new Handler() {
            public void handleMessage(final Message p0) {
                // 
                // This method could not be decompiled.
                // 
                // Original Bytecode:
                // 
                //     0: aload_1        
                //     1: invokevirtual   android/os/Message.getData:()Landroid/os/Bundle;
                //     4: ldc             "sendonstart"
                //     6: invokevirtual   android/os/Bundle.getBoolean:(Ljava/lang/String;)Z
                //     9: istore_2       
                //    10: new             Landroid/webkit/WebView;
                //    13: dup            
                //    14: aload_0        
                //    15: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //    18: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //    21: invokespecial   android/webkit/WebView.<init>:(Landroid/content/Context;)V
                //    24: astore_3       
                //    25: aload_0        
                //    26: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //    29: aload_3        
                //    30: invokevirtual   android/webkit/WebView.getSettings:()Landroid/webkit/WebSettings;
                //    33: invokevirtual   android/webkit/WebSettings.getUserAgentString:()Ljava/lang/String;
                //    36: invokestatic    com/kochava/android/tracker/Feature.access$1:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //    39: aload_3        
                //    40: invokevirtual   android/webkit/WebView.destroy:()V
                //    43: aload_0        
                //    44: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //    47: aload_0        
                //    48: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //    51: invokestatic    com/kochava/android/tracker/Feature.access$2:(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
                //    54: invokestatic    com/kochava/android/tracker/Feature.access$3:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //    57: aload_0        
                //    58: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //    61: aload_0        
                //    62: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //    65: invokestatic    com/kochava/android/tracker/Feature.access$4:(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
                //    68: invokestatic    com/kochava/android/tracker/Feature.access$5:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //    71: aload_0        
                //    72: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //    75: ldc             "Default"
                //    77: invokestatic    com/kochava/android/tracker/Feature.access$6:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //    80: aload_0        
                //    81: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //    84: ldc             "N/A"
                //    86: invokestatic    com/kochava/android/tracker/Feature.access$7:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //    89: aload_0        
                //    90: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //    93: ldc             ""
                //    95: invokestatic    com/kochava/android/tracker/Feature.access$8:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //    98: aload_0        
                //    99: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   102: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   105: invokestatic    com/kochava/android/util/OpenUDID.syncContext:(Landroid/content/Context;)V
                //   108: aload_0        
                //   109: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   112: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   115: invokevirtual   android/content/Context.getApplicationContext:()Landroid/content/Context;
                //   118: invokevirtual   android/content/Context.getPackageManager:()Landroid/content/pm/PackageManager;
                //   121: astore          23
                //   123: aload           23
                //   125: aload_0        
                //   126: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   129: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   132: invokevirtual   android/content/Context.getPackageName:()Ljava/lang/String;
                //   135: iconst_0       
                //   136: invokevirtual   android/content/pm/PackageManager.getApplicationInfo:(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
                //   139: astore          31
                //   141: aload           31
                //   143: astore          26
                //   145: aload_0        
                //   146: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   149: astore          28
                //   151: aload           26
                //   153: ifnull          981
                //   156: aload           23
                //   158: aload           26
                //   160: invokevirtual   android/content/pm/PackageManager.getApplicationLabel:(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
                //   163: astore          29
                //   165: aload           28
                //   167: aload           29
                //   169: checkcast       Ljava/lang/String;
                //   172: invokestatic    com/kochava/android/tracker/Feature.access$6:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //   175: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
                //   178: ifeq            209
                //   181: ldc             "KochavaTracker"
                //   183: new             Ljava/lang/StringBuilder;
                //   186: dup            
                //   187: ldc             "mAppName now: "
                //   189: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   192: aload_0        
                //   193: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   196: invokestatic    com/kochava/android/tracker/Feature.access$9:(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
                //   199: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   202: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   205: invokestatic    android/util/Log.i:(Ljava/lang/String;Ljava/lang/String;)I
                //   208: pop            
                //   209: aload_0        
                //   210: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   213: new             Ljava/lang/StringBuilder;
                //   216: dup            
                //   217: aload_0        
                //   218: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   221: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   224: invokevirtual   android/content/Context.getPackageManager:()Landroid/content/pm/PackageManager;
                //   227: aload_0        
                //   228: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   231: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   234: invokevirtual   android/content/Context.getPackageName:()Ljava/lang/String;
                //   237: iconst_0       
                //   238: invokevirtual   android/content/pm/PackageManager.getPackageInfo:(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
                //   241: getfield        android/content/pm/PackageInfo.versionCode:I
                //   244: invokestatic    java/lang/String.valueOf:(I)Ljava/lang/String;
                //   247: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   250: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   253: invokestatic    com/kochava/android/tracker/Feature.access$7:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //   256: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
                //   259: ifeq            290
                //   262: ldc             "KochavaTracker"
                //   264: new             Ljava/lang/StringBuilder;
                //   267: dup            
                //   268: ldc             "mAppVersionCode now: "
                //   270: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   273: aload_0        
                //   274: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   277: invokestatic    com/kochava/android/tracker/Feature.access$10:(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
                //   280: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   283: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   286: invokestatic    android/util/Log.i:(Ljava/lang/String;Ljava/lang/String;)I
                //   289: pop            
                //   290: aload_0        
                //   291: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   294: aload_0        
                //   295: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   298: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   301: invokevirtual   android/content/Context.getPackageManager:()Landroid/content/pm/PackageManager;
                //   304: aload_0        
                //   305: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   308: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   311: invokevirtual   android/content/Context.getPackageName:()Ljava/lang/String;
                //   314: iconst_0       
                //   315: invokevirtual   android/content/pm/PackageManager.getPackageInfo:(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
                //   318: getfield        android/content/pm/PackageInfo.versionName:Ljava/lang/String;
                //   321: invokestatic    com/kochava/android/tracker/Feature.access$8:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //   324: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
                //   327: ifeq            358
                //   330: ldc             "KochavaTracker"
                //   332: new             Ljava/lang/StringBuilder;
                //   335: dup            
                //   336: ldc             "mAppVersionName now: "
                //   338: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   341: aload_0        
                //   342: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   345: invokestatic    com/kochava/android/tracker/Feature.access$11:(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
                //   348: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   351: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   354: invokestatic    android/util/Log.i:(Ljava/lang/String;Ljava/lang/String;)I
                //   357: pop            
                //   358: aload_0        
                //   359: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   362: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   365: ldc             "window"
                //   367: invokevirtual   android/content/Context.getSystemService:(Ljava/lang/String;)Ljava/lang/Object;
                //   370: checkcast       Landroid/view/WindowManager;
                //   373: astore          19
                //   375: aload_0        
                //   376: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   379: aload           19
                //   381: invokeinterface android/view/WindowManager.getDefaultDisplay:()Landroid/view/Display;
                //   386: invokevirtual   android/view/Display.getHeight:()I
                //   389: invokestatic    com/kochava/android/tracker/Feature.access$12:(Lcom/kochava/android/tracker/Feature;I)V
                //   392: aload_0        
                //   393: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   396: aload           19
                //   398: invokeinterface android/view/WindowManager.getDefaultDisplay:()Landroid/view/Display;
                //   403: invokevirtual   android/view/Display.getWidth:()I
                //   406: invokestatic    com/kochava/android/tracker/Feature.access$13:(Lcom/kochava/android/tracker/Feature;I)V
                //   409: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
                //   412: ifeq            458
                //   415: ldc             "KochavaTracker"
                //   417: new             Ljava/lang/StringBuilder;
                //   420: dup            
                //   421: ldc             "Height: "
                //   423: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   426: aload_0        
                //   427: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   430: invokestatic    com/kochava/android/tracker/Feature.access$14:(Lcom/kochava/android/tracker/Feature;)I
                //   433: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
                //   436: ldc             " | Width: "
                //   438: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   441: aload_0        
                //   442: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   445: invokestatic    com/kochava/android/tracker/Feature.access$15:(Lcom/kochava/android/tracker/Feature;)I
                //   448: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
                //   451: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   454: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //   457: pop            
                //   458: aload_0        
                //   459: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   462: aload_0        
                //   463: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   466: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   469: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
                //   472: ldc             "android_id"
                //   474: invokestatic    android/provider/Settings$Secure.getString:(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
                //   477: invokestatic    com/kochava/android/tracker/Feature.access$16:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //   480: aload_0        
                //   481: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   484: aload_0        
                //   485: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   488: invokestatic    com/kochava/android/tracker/Feature.access$17:(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
                //   491: invokestatic    com/kochava/android/tracker/Feature.access$18:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //   494: aload_0        
                //   495: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   498: aload_0        
                //   499: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   502: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   505: ldc             "initPrefs"
                //   507: iconst_0       
                //   508: invokevirtual   android/content/Context.getSharedPreferences:(Ljava/lang/String;I)Landroid/content/SharedPreferences;
                //   511: invokestatic    com/kochava/android/tracker/Feature.access$19:(Lcom/kochava/android/tracker/Feature;Landroid/content/SharedPreferences;)V
                //   514: aload_0        
                //   515: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   518: invokestatic    com/kochava/android/tracker/Feature.access$20:(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;
                //   521: ldc_w           "initBool"
                //   524: ldc             ""
                //   526: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
                //   531: ldc             ""
                //   533: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
                //   536: ifeq            568
                //   539: aload_0        
                //   540: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   543: invokestatic    com/kochava/android/tracker/Feature.access$20:(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;
                //   546: invokeinterface android/content/SharedPreferences.edit:()Landroid/content/SharedPreferences$Editor;
                //   551: ldc_w           "initBool"
                //   554: ldc_w           "false"
                //   557: invokeinterface android/content/SharedPreferences$Editor.putString:(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
                //   562: invokeinterface android/content/SharedPreferences$Editor.commit:()Z
                //   567: pop            
                //   568: aload_0        
                //   569: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   572: invokestatic    com/kochava/android/tracker/Feature.access$20:(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;
                //   575: ldc_w           "kochavaappdata"
                //   578: aconst_null    
                //   579: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
                //   584: ifnull          1170
                //   587: aload_0        
                //   588: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   591: invokestatic    com/kochava/android/tracker/Feature.access$21:(Lcom/kochava/android/tracker/Feature;)Lcom/kochava/android/tracker/KochavaDbAdapter;
                //   594: aload_0        
                //   595: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   598: invokestatic    com/kochava/android/tracker/Feature.access$20:(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;
                //   601: ldc_w           "kochavaappdata"
                //   604: aconst_null    
                //   605: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
                //   610: invokevirtual   com/kochava/android/tracker/KochavaDbAdapter.getApplicationData:(Ljava/lang/String;)Ljava/lang/String;
                //   613: astore          13
                //   615: aload_0        
                //   616: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   619: invokestatic    com/kochava/android/tracker/Feature.access$22:(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
                //   622: astore          14
                //   624: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
                //   627: ifeq            678
                //   630: ldc             "KochavaTracker"
                //   632: new             Ljava/lang/StringBuilder;
                //   635: dup            
                //   636: ldc_w           "[KOCHAVA] Stored Data: "
                //   639: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   642: aload           13
                //   644: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   647: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   650: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //   653: pop            
                //   654: ldc             "KochavaTracker"
                //   656: new             Ljava/lang/StringBuilder;
                //   659: dup            
                //   660: ldc_w           "[KOCHAVA] Created Data: "
                //   663: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   666: aload           14
                //   668: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   671: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   674: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //   677: pop            
                //   678: aload           13
                //   680: ifnonnull       1103
                //   683: aload_0        
                //   684: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   687: invokestatic    com/kochava/android/tracker/Feature.access$21:(Lcom/kochava/android/tracker/Feature;)Lcom/kochava/android/tracker/KochavaDbAdapter;
                //   690: aload_0        
                //   691: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   694: invokestatic    com/kochava/android/tracker/Feature.access$20:(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;
                //   697: ldc_w           "kochavaappdata"
                //   700: aconst_null    
                //   701: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
                //   706: aload           14
                //   708: invokevirtual   com/kochava/android/tracker/KochavaDbAdapter.insertApplicationData:(Ljava/lang/String;Ljava/lang/String;)V
                //   711: iconst_1       
                //   712: invokestatic    com/kochava/android/tracker/Feature.access$23:(I)V
                //   715: aload_0        
                //   716: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   719: invokestatic    com/kochava/android/tracker/Feature.access$21:(Lcom/kochava/android/tracker/Feature;)Lcom/kochava/android/tracker/KochavaDbAdapter;
                //   722: invokestatic    java/lang/System.currentTimeMillis:()J
                //   725: ldc2_w          604800000
                //   728: lsub           
                //   729: invokevirtual   com/kochava/android/tracker/KochavaDbAdapter.cleanupEvents:(J)V
                //   732: aload_0        
                //   733: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   736: invokestatic    com/kochava/android/tracker/Feature.access$25:(Lcom/kochava/android/tracker/Feature;)Z
                //   739: ifne            793
                //   742: aload_0        
                //   743: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   746: invokestatic    com/kochava/android/tracker/Feature.access$20:(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;
                //   749: ldc_w           "initBool"
                //   752: ldc             ""
                //   754: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
                //   759: ldc             ""
                //   761: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
                //   764: ifne            819
                //   767: aload_0        
                //   768: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   771: invokestatic    com/kochava/android/tracker/Feature.access$20:(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;
                //   774: ldc_w           "initBool"
                //   777: ldc             ""
                //   779: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
                //   784: ldc_w           "false"
                //   787: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
                //   790: ifeq            819
                //   793: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
                //   796: ifeq            808
                //   799: ldc             "KochavaTracker"
                //   801: ldc_w           "Initial event has not yet been qued in the database, making initial call"
                //   804: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //   807: pop            
                //   808: aload_0        
                //   809: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   812: ldc_w           "initial"
                //   815: aconst_null    
                //   816: invokestatic    com/kochava/android/tracker/Feature.access$26:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;Ljava/util/Map;)V
                //   819: aload_0        
                //   820: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   823: new             Ljava/util/Timer;
                //   826: dup            
                //   827: invokespecial   java/util/Timer.<init>:()V
                //   830: invokestatic    com/kochava/android/tracker/Feature.access$27:(Lcom/kochava/android/tracker/Feature;Ljava/util/Timer;)V
                //   833: aload_0        
                //   834: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   837: invokestatic    com/kochava/android/tracker/Feature.access$28:(Lcom/kochava/android/tracker/Feature;)Ljava/util/Timer;
                //   840: new             Lcom/kochava/android/tracker/Feature$2$1;
                //   843: dup            
                //   844: aload_0        
                //   845: invokespecial   com/kochava/android/tracker/Feature$2$1.<init>:(Lcom/kochava/android/tracker/Feature$2;)V
                //   848: lconst_0       
                //   849: ldc2_w          60000
                //   852: invokevirtual   java/util/Timer.schedule:(Ljava/util/TimerTask;JJ)V
                //   855: aload_0        
                //   856: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   859: new             Ljava/util/Timer;
                //   862: dup            
                //   863: invokespecial   java/util/Timer.<init>:()V
                //   866: invokestatic    com/kochava/android/tracker/Feature.access$29:(Lcom/kochava/android/tracker/Feature;Ljava/util/Timer;)V
                //   869: iload_2        
                //   870: ifne            1181
                //   873: aload_0        
                //   874: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   877: invokestatic    com/kochava/android/tracker/Feature.access$30:(Lcom/kochava/android/tracker/Feature;)Ljava/util/Timer;
                //   880: new             Lcom/kochava/android/tracker/Feature$2$2;
                //   883: dup            
                //   884: aload_0        
                //   885: invokespecial   com/kochava/android/tracker/Feature$2$2.<init>:(Lcom/kochava/android/tracker/Feature$2;)V
                //   888: ldc2_w          600000
                //   891: invokevirtual   java/util/Timer.schedule:(Ljava/util/TimerTask;J)V
                //   894: return         
                //   895: astore          24
                //   897: getstatic       com/kochava/android/tracker/Global.DEBUGERROR:Z
                //   900: istore          25
                //   902: aconst_null    
                //   903: astore          26
                //   905: iload           25
                //   907: ifeq            145
                //   910: ldc             "KochavaTracker"
                //   912: new             Ljava/lang/StringBuilder;
                //   915: dup            
                //   916: ldc_w           "Error gathering app name "
                //   919: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   922: aload           24
                //   924: invokevirtual   android/content/pm/PackageManager$NameNotFoundException.toString:()Ljava/lang/String;
                //   927: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   930: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   933: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //   936: pop            
                //   937: aconst_null    
                //   938: astore          26
                //   940: goto            145
                //   943: astore          4
                //   945: getstatic       com/kochava/android/tracker/Global.DEBUGERROR:Z
                //   948: ifeq            209
                //   951: ldc             "KochavaTracker"
                //   953: new             Ljava/lang/StringBuilder;
                //   956: dup            
                //   957: ldc_w           "Error gathering app name "
                //   960: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   963: aload           4
                //   965: invokevirtual   java/lang/Exception.toString:()Ljava/lang/String;
                //   968: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   971: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   974: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //   977: pop            
                //   978: goto            209
                //   981: ldc_w           "(unknown)"
                //   984: astore          29
                //   986: goto            165
                //   989: astore          6
                //   991: getstatic       com/kochava/android/tracker/Global.DEBUGERROR:Z
                //   994: ifeq            290
                //   997: ldc             "KochavaTracker"
                //   999: new             Ljava/lang/StringBuilder;
                //  1002: dup            
                //  1003: ldc_w           "Error gathering app version code "
                //  1006: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //  1009: aload           6
                //  1011: invokevirtual   java/lang/Exception.toString:()Ljava/lang/String;
                //  1014: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //  1017: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //  1020: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //  1023: pop            
                //  1024: goto            290
                //  1027: astore          8
                //  1029: getstatic       com/kochava/android/tracker/Global.DEBUGERROR:Z
                //  1032: ifeq            358
                //  1035: ldc             "KochavaTracker"
                //  1037: new             Ljava/lang/StringBuilder;
                //  1040: dup            
                //  1041: ldc_w           "Error gathering app version name "
                //  1044: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //  1047: aload           8
                //  1049: invokevirtual   java/lang/Exception.toString:()Ljava/lang/String;
                //  1052: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //  1055: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //  1058: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //  1061: pop            
                //  1062: goto            358
                //  1065: astore          10
                //  1067: getstatic       com/kochava/android/tracker/Global.DEBUGERROR:Z
                //  1070: ifeq            458
                //  1073: ldc             "KochavaTracker"
                //  1075: new             Ljava/lang/StringBuilder;
                //  1078: dup            
                //  1079: ldc_w           "Error "
                //  1082: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //  1085: aload           10
                //  1087: invokevirtual   java/lang/Exception.toString:()Ljava/lang/String;
                //  1090: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //  1093: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //  1096: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //  1099: pop            
                //  1100: goto            458
                //  1103: aload           13
                //  1105: aload           14
                //  1107: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
                //  1110: ifne            1144
                //  1113: aload_0        
                //  1114: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //  1117: invokestatic    com/kochava/android/tracker/Feature.access$21:(Lcom/kochava/android/tracker/Feature;)Lcom/kochava/android/tracker/KochavaDbAdapter;
                //  1120: aload_0        
                //  1121: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //  1124: invokestatic    com/kochava/android/tracker/Feature.access$20:(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;
                //  1127: ldc_w           "kochavaappdata"
                //  1130: aconst_null    
                //  1131: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
                //  1136: aload           14
                //  1138: invokevirtual   com/kochava/android/tracker/KochavaDbAdapter.updateApplicationData:(Ljava/lang/String;Ljava/lang/String;)V
                //  1141: goto            715
                //  1144: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
                //  1147: ifeq            1159
                //  1150: ldc             "KochavaTracker"
                //  1152: ldc_w           "Set start of life to false"
                //  1155: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //  1158: pop            
                //  1159: aload_0        
                //  1160: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //  1163: iconst_0       
                //  1164: invokestatic    com/kochava/android/tracker/Feature.access$24:(Lcom/kochava/android/tracker/Feature;Z)V
                //  1167: goto            715
                //  1170: aload_0        
                //  1171: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //  1174: iconst_0       
                //  1175: invokestatic    com/kochava/android/tracker/Feature.access$24:(Lcom/kochava/android/tracker/Feature;Z)V
                //  1178: goto            715
                //  1181: aload_0        
                //  1182: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //  1185: invokestatic    com/kochava/android/tracker/Feature.access$30:(Lcom/kochava/android/tracker/Feature;)Ljava/util/Timer;
                //  1188: new             Lcom/kochava/android/tracker/Feature$2$3;
                //  1191: dup            
                //  1192: aload_0        
                //  1193: invokespecial   com/kochava/android/tracker/Feature$2$3.<init>:(Lcom/kochava/android/tracker/Feature$2;)V
                //  1196: ldc2_w          2000
                //  1199: invokevirtual   java/util/Timer.schedule:(Ljava/util/TimerTask;J)V
                //  1202: aload_0        
                //  1203: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //  1206: new             Ljava/util/Timer;
                //  1209: dup            
                //  1210: invokespecial   java/util/Timer.<init>:()V
                //  1213: invokestatic    com/kochava/android/tracker/Feature.access$32:(Lcom/kochava/android/tracker/Feature;Ljava/util/Timer;)V
                //  1216: aload_0        
                //  1217: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //  1220: invokestatic    com/kochava/android/tracker/Feature.access$33:(Lcom/kochava/android/tracker/Feature;)Ljava/util/Timer;
                //  1223: new             Lcom/kochava/android/tracker/Feature$2$4;
                //  1226: dup            
                //  1227: aload_0        
                //  1228: invokespecial   com/kochava/android/tracker/Feature$2$4.<init>:(Lcom/kochava/android/tracker/Feature$2;)V
                //  1231: ldc2_w          4000
                //  1234: invokevirtual   java/util/Timer.schedule:(Ljava/util/TimerTask;J)V
                //  1237: return         
                //    Exceptions:
                //  Try           Handler
                //  Start  End    Start  End    Type                                                     
                //  -----  -----  -----  -----  ---------------------------------------------------------
                //  108    123    943    981    Ljava/lang/Exception;
                //  123    141    895    943    Landroid/content/pm/PackageManager$NameNotFoundException;
                //  123    141    943    981    Ljava/lang/Exception;
                //  145    151    943    981    Ljava/lang/Exception;
                //  156    165    943    981    Ljava/lang/Exception;
                //  165    209    943    981    Ljava/lang/Exception;
                //  209    290    989    1027   Ljava/lang/Exception;
                //  290    358    1027   1065   Ljava/lang/Exception;
                //  358    458    1065   1103   Ljava/lang/Exception;
                //  897    902    943    981    Ljava/lang/Exception;
                //  910    937    943    981    Ljava/lang/Exception;
                // 
                // The error that occurred was:
                // 
                // java.lang.IndexOutOfBoundsException: Index: 507, Size: 507
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
                //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createConstructor(AstBuilder.java:692)
                //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:529)
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
        };
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        if (value != null && value.trim().length() != 0) {
            hashMap.put("kochava_app_id", value);
        }
        if (value2 != null && value2.trim().length() != 0) {
            hashMap.put("currency", value2);
        }
        this.init(context, b, hashMap);
    }
    
    public Feature(final Context context, final HashMap<String, String> hashMap) {
        super();
        this.lastCallTime = 0L;
        this.startTime = 0L;
        this.mTestMode = false;
        this.mIsStartOfLife = true;
        this.badInit = false;
        this.canSendSession = true;
        this.requestAttributionData = false;
        this.executor = Executors.newFixedThreadPool(1);
        this.initHandler = new Handler() {
            public void handleMessage(final Message p0) {
                // 
                // This method could not be decompiled.
                // 
                // Original Bytecode:
                // 
                //     0: aload_1        
                //     1: invokevirtual   android/os/Message.getData:()Landroid/os/Bundle;
                //     4: ldc             "sendonstart"
                //     6: invokevirtual   android/os/Bundle.getBoolean:(Ljava/lang/String;)Z
                //     9: istore_2       
                //    10: new             Landroid/webkit/WebView;
                //    13: dup            
                //    14: aload_0        
                //    15: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //    18: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //    21: invokespecial   android/webkit/WebView.<init>:(Landroid/content/Context;)V
                //    24: astore_3       
                //    25: aload_0        
                //    26: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //    29: aload_3        
                //    30: invokevirtual   android/webkit/WebView.getSettings:()Landroid/webkit/WebSettings;
                //    33: invokevirtual   android/webkit/WebSettings.getUserAgentString:()Ljava/lang/String;
                //    36: invokestatic    com/kochava/android/tracker/Feature.access$1:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //    39: aload_3        
                //    40: invokevirtual   android/webkit/WebView.destroy:()V
                //    43: aload_0        
                //    44: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //    47: aload_0        
                //    48: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //    51: invokestatic    com/kochava/android/tracker/Feature.access$2:(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
                //    54: invokestatic    com/kochava/android/tracker/Feature.access$3:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //    57: aload_0        
                //    58: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //    61: aload_0        
                //    62: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //    65: invokestatic    com/kochava/android/tracker/Feature.access$4:(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
                //    68: invokestatic    com/kochava/android/tracker/Feature.access$5:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //    71: aload_0        
                //    72: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //    75: ldc             "Default"
                //    77: invokestatic    com/kochava/android/tracker/Feature.access$6:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //    80: aload_0        
                //    81: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //    84: ldc             "N/A"
                //    86: invokestatic    com/kochava/android/tracker/Feature.access$7:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //    89: aload_0        
                //    90: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //    93: ldc             ""
                //    95: invokestatic    com/kochava/android/tracker/Feature.access$8:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //    98: aload_0        
                //    99: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   102: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   105: invokestatic    com/kochava/android/util/OpenUDID.syncContext:(Landroid/content/Context;)V
                //   108: aload_0        
                //   109: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   112: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   115: invokevirtual   android/content/Context.getApplicationContext:()Landroid/content/Context;
                //   118: invokevirtual   android/content/Context.getPackageManager:()Landroid/content/pm/PackageManager;
                //   121: astore          23
                //   123: aload           23
                //   125: aload_0        
                //   126: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   129: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   132: invokevirtual   android/content/Context.getPackageName:()Ljava/lang/String;
                //   135: iconst_0       
                //   136: invokevirtual   android/content/pm/PackageManager.getApplicationInfo:(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
                //   139: astore          31
                //   141: aload           31
                //   143: astore          26
                //   145: aload_0        
                //   146: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   149: astore          28
                //   151: aload           26
                //   153: ifnull          981
                //   156: aload           23
                //   158: aload           26
                //   160: invokevirtual   android/content/pm/PackageManager.getApplicationLabel:(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
                //   163: astore          29
                //   165: aload           28
                //   167: aload           29
                //   169: checkcast       Ljava/lang/String;
                //   172: invokestatic    com/kochava/android/tracker/Feature.access$6:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //   175: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
                //   178: ifeq            209
                //   181: ldc             "KochavaTracker"
                //   183: new             Ljava/lang/StringBuilder;
                //   186: dup            
                //   187: ldc             "mAppName now: "
                //   189: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   192: aload_0        
                //   193: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   196: invokestatic    com/kochava/android/tracker/Feature.access$9:(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
                //   199: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   202: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   205: invokestatic    android/util/Log.i:(Ljava/lang/String;Ljava/lang/String;)I
                //   208: pop            
                //   209: aload_0        
                //   210: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   213: new             Ljava/lang/StringBuilder;
                //   216: dup            
                //   217: aload_0        
                //   218: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   221: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   224: invokevirtual   android/content/Context.getPackageManager:()Landroid/content/pm/PackageManager;
                //   227: aload_0        
                //   228: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   231: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   234: invokevirtual   android/content/Context.getPackageName:()Ljava/lang/String;
                //   237: iconst_0       
                //   238: invokevirtual   android/content/pm/PackageManager.getPackageInfo:(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
                //   241: getfield        android/content/pm/PackageInfo.versionCode:I
                //   244: invokestatic    java/lang/String.valueOf:(I)Ljava/lang/String;
                //   247: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   250: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   253: invokestatic    com/kochava/android/tracker/Feature.access$7:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //   256: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
                //   259: ifeq            290
                //   262: ldc             "KochavaTracker"
                //   264: new             Ljava/lang/StringBuilder;
                //   267: dup            
                //   268: ldc             "mAppVersionCode now: "
                //   270: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   273: aload_0        
                //   274: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   277: invokestatic    com/kochava/android/tracker/Feature.access$10:(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
                //   280: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   283: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   286: invokestatic    android/util/Log.i:(Ljava/lang/String;Ljava/lang/String;)I
                //   289: pop            
                //   290: aload_0        
                //   291: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   294: aload_0        
                //   295: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   298: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   301: invokevirtual   android/content/Context.getPackageManager:()Landroid/content/pm/PackageManager;
                //   304: aload_0        
                //   305: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   308: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   311: invokevirtual   android/content/Context.getPackageName:()Ljava/lang/String;
                //   314: iconst_0       
                //   315: invokevirtual   android/content/pm/PackageManager.getPackageInfo:(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
                //   318: getfield        android/content/pm/PackageInfo.versionName:Ljava/lang/String;
                //   321: invokestatic    com/kochava/android/tracker/Feature.access$8:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //   324: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
                //   327: ifeq            358
                //   330: ldc             "KochavaTracker"
                //   332: new             Ljava/lang/StringBuilder;
                //   335: dup            
                //   336: ldc             "mAppVersionName now: "
                //   338: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   341: aload_0        
                //   342: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   345: invokestatic    com/kochava/android/tracker/Feature.access$11:(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
                //   348: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   351: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   354: invokestatic    android/util/Log.i:(Ljava/lang/String;Ljava/lang/String;)I
                //   357: pop            
                //   358: aload_0        
                //   359: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   362: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   365: ldc             "window"
                //   367: invokevirtual   android/content/Context.getSystemService:(Ljava/lang/String;)Ljava/lang/Object;
                //   370: checkcast       Landroid/view/WindowManager;
                //   373: astore          19
                //   375: aload_0        
                //   376: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   379: aload           19
                //   381: invokeinterface android/view/WindowManager.getDefaultDisplay:()Landroid/view/Display;
                //   386: invokevirtual   android/view/Display.getHeight:()I
                //   389: invokestatic    com/kochava/android/tracker/Feature.access$12:(Lcom/kochava/android/tracker/Feature;I)V
                //   392: aload_0        
                //   393: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   396: aload           19
                //   398: invokeinterface android/view/WindowManager.getDefaultDisplay:()Landroid/view/Display;
                //   403: invokevirtual   android/view/Display.getWidth:()I
                //   406: invokestatic    com/kochava/android/tracker/Feature.access$13:(Lcom/kochava/android/tracker/Feature;I)V
                //   409: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
                //   412: ifeq            458
                //   415: ldc             "KochavaTracker"
                //   417: new             Ljava/lang/StringBuilder;
                //   420: dup            
                //   421: ldc             "Height: "
                //   423: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   426: aload_0        
                //   427: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   430: invokestatic    com/kochava/android/tracker/Feature.access$14:(Lcom/kochava/android/tracker/Feature;)I
                //   433: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
                //   436: ldc             " | Width: "
                //   438: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   441: aload_0        
                //   442: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   445: invokestatic    com/kochava/android/tracker/Feature.access$15:(Lcom/kochava/android/tracker/Feature;)I
                //   448: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
                //   451: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   454: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //   457: pop            
                //   458: aload_0        
                //   459: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   462: aload_0        
                //   463: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   466: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   469: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
                //   472: ldc             "android_id"
                //   474: invokestatic    android/provider/Settings$Secure.getString:(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
                //   477: invokestatic    com/kochava/android/tracker/Feature.access$16:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //   480: aload_0        
                //   481: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   484: aload_0        
                //   485: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   488: invokestatic    com/kochava/android/tracker/Feature.access$17:(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
                //   491: invokestatic    com/kochava/android/tracker/Feature.access$18:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //   494: aload_0        
                //   495: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   498: aload_0        
                //   499: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   502: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   505: ldc             "initPrefs"
                //   507: iconst_0       
                //   508: invokevirtual   android/content/Context.getSharedPreferences:(Ljava/lang/String;I)Landroid/content/SharedPreferences;
                //   511: invokestatic    com/kochava/android/tracker/Feature.access$19:(Lcom/kochava/android/tracker/Feature;Landroid/content/SharedPreferences;)V
                //   514: aload_0        
                //   515: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   518: invokestatic    com/kochava/android/tracker/Feature.access$20:(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;
                //   521: ldc_w           "initBool"
                //   524: ldc             ""
                //   526: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
                //   531: ldc             ""
                //   533: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
                //   536: ifeq            568
                //   539: aload_0        
                //   540: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   543: invokestatic    com/kochava/android/tracker/Feature.access$20:(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;
                //   546: invokeinterface android/content/SharedPreferences.edit:()Landroid/content/SharedPreferences$Editor;
                //   551: ldc_w           "initBool"
                //   554: ldc_w           "false"
                //   557: invokeinterface android/content/SharedPreferences$Editor.putString:(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
                //   562: invokeinterface android/content/SharedPreferences$Editor.commit:()Z
                //   567: pop            
                //   568: aload_0        
                //   569: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   572: invokestatic    com/kochava/android/tracker/Feature.access$20:(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;
                //   575: ldc_w           "kochavaappdata"
                //   578: aconst_null    
                //   579: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
                //   584: ifnull          1170
                //   587: aload_0        
                //   588: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   591: invokestatic    com/kochava/android/tracker/Feature.access$21:(Lcom/kochava/android/tracker/Feature;)Lcom/kochava/android/tracker/KochavaDbAdapter;
                //   594: aload_0        
                //   595: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   598: invokestatic    com/kochava/android/tracker/Feature.access$20:(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;
                //   601: ldc_w           "kochavaappdata"
                //   604: aconst_null    
                //   605: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
                //   610: invokevirtual   com/kochava/android/tracker/KochavaDbAdapter.getApplicationData:(Ljava/lang/String;)Ljava/lang/String;
                //   613: astore          13
                //   615: aload_0        
                //   616: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   619: invokestatic    com/kochava/android/tracker/Feature.access$22:(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
                //   622: astore          14
                //   624: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
                //   627: ifeq            678
                //   630: ldc             "KochavaTracker"
                //   632: new             Ljava/lang/StringBuilder;
                //   635: dup            
                //   636: ldc_w           "[KOCHAVA] Stored Data: "
                //   639: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   642: aload           13
                //   644: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   647: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   650: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //   653: pop            
                //   654: ldc             "KochavaTracker"
                //   656: new             Ljava/lang/StringBuilder;
                //   659: dup            
                //   660: ldc_w           "[KOCHAVA] Created Data: "
                //   663: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   666: aload           14
                //   668: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   671: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   674: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //   677: pop            
                //   678: aload           13
                //   680: ifnonnull       1103
                //   683: aload_0        
                //   684: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   687: invokestatic    com/kochava/android/tracker/Feature.access$21:(Lcom/kochava/android/tracker/Feature;)Lcom/kochava/android/tracker/KochavaDbAdapter;
                //   690: aload_0        
                //   691: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   694: invokestatic    com/kochava/android/tracker/Feature.access$20:(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;
                //   697: ldc_w           "kochavaappdata"
                //   700: aconst_null    
                //   701: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
                //   706: aload           14
                //   708: invokevirtual   com/kochava/android/tracker/KochavaDbAdapter.insertApplicationData:(Ljava/lang/String;Ljava/lang/String;)V
                //   711: iconst_1       
                //   712: invokestatic    com/kochava/android/tracker/Feature.access$23:(I)V
                //   715: aload_0        
                //   716: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   719: invokestatic    com/kochava/android/tracker/Feature.access$21:(Lcom/kochava/android/tracker/Feature;)Lcom/kochava/android/tracker/KochavaDbAdapter;
                //   722: invokestatic    java/lang/System.currentTimeMillis:()J
                //   725: ldc2_w          604800000
                //   728: lsub           
                //   729: invokevirtual   com/kochava/android/tracker/KochavaDbAdapter.cleanupEvents:(J)V
                //   732: aload_0        
                //   733: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   736: invokestatic    com/kochava/android/tracker/Feature.access$25:(Lcom/kochava/android/tracker/Feature;)Z
                //   739: ifne            793
                //   742: aload_0        
                //   743: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   746: invokestatic    com/kochava/android/tracker/Feature.access$20:(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;
                //   749: ldc_w           "initBool"
                //   752: ldc             ""
                //   754: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
                //   759: ldc             ""
                //   761: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
                //   764: ifne            819
                //   767: aload_0        
                //   768: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   771: invokestatic    com/kochava/android/tracker/Feature.access$20:(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;
                //   774: ldc_w           "initBool"
                //   777: ldc             ""
                //   779: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
                //   784: ldc_w           "false"
                //   787: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
                //   790: ifeq            819
                //   793: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
                //   796: ifeq            808
                //   799: ldc             "KochavaTracker"
                //   801: ldc_w           "Initial event has not yet been qued in the database, making initial call"
                //   804: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //   807: pop            
                //   808: aload_0        
                //   809: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   812: ldc_w           "initial"
                //   815: aconst_null    
                //   816: invokestatic    com/kochava/android/tracker/Feature.access$26:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;Ljava/util/Map;)V
                //   819: aload_0        
                //   820: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   823: new             Ljava/util/Timer;
                //   826: dup            
                //   827: invokespecial   java/util/Timer.<init>:()V
                //   830: invokestatic    com/kochava/android/tracker/Feature.access$27:(Lcom/kochava/android/tracker/Feature;Ljava/util/Timer;)V
                //   833: aload_0        
                //   834: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   837: invokestatic    com/kochava/android/tracker/Feature.access$28:(Lcom/kochava/android/tracker/Feature;)Ljava/util/Timer;
                //   840: new             Lcom/kochava/android/tracker/Feature$2$1;
                //   843: dup            
                //   844: aload_0        
                //   845: invokespecial   com/kochava/android/tracker/Feature$2$1.<init>:(Lcom/kochava/android/tracker/Feature$2;)V
                //   848: lconst_0       
                //   849: ldc2_w          60000
                //   852: invokevirtual   java/util/Timer.schedule:(Ljava/util/TimerTask;JJ)V
                //   855: aload_0        
                //   856: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   859: new             Ljava/util/Timer;
                //   862: dup            
                //   863: invokespecial   java/util/Timer.<init>:()V
                //   866: invokestatic    com/kochava/android/tracker/Feature.access$29:(Lcom/kochava/android/tracker/Feature;Ljava/util/Timer;)V
                //   869: iload_2        
                //   870: ifne            1181
                //   873: aload_0        
                //   874: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   877: invokestatic    com/kochava/android/tracker/Feature.access$30:(Lcom/kochava/android/tracker/Feature;)Ljava/util/Timer;
                //   880: new             Lcom/kochava/android/tracker/Feature$2$2;
                //   883: dup            
                //   884: aload_0        
                //   885: invokespecial   com/kochava/android/tracker/Feature$2$2.<init>:(Lcom/kochava/android/tracker/Feature$2;)V
                //   888: ldc2_w          600000
                //   891: invokevirtual   java/util/Timer.schedule:(Ljava/util/TimerTask;J)V
                //   894: return         
                //   895: astore          24
                //   897: getstatic       com/kochava/android/tracker/Global.DEBUGERROR:Z
                //   900: istore          25
                //   902: aconst_null    
                //   903: astore          26
                //   905: iload           25
                //   907: ifeq            145
                //   910: ldc             "KochavaTracker"
                //   912: new             Ljava/lang/StringBuilder;
                //   915: dup            
                //   916: ldc_w           "Error gathering app name "
                //   919: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   922: aload           24
                //   924: invokevirtual   android/content/pm/PackageManager$NameNotFoundException.toString:()Ljava/lang/String;
                //   927: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   930: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   933: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //   936: pop            
                //   937: aconst_null    
                //   938: astore          26
                //   940: goto            145
                //   943: astore          4
                //   945: getstatic       com/kochava/android/tracker/Global.DEBUGERROR:Z
                //   948: ifeq            209
                //   951: ldc             "KochavaTracker"
                //   953: new             Ljava/lang/StringBuilder;
                //   956: dup            
                //   957: ldc_w           "Error gathering app name "
                //   960: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   963: aload           4
                //   965: invokevirtual   java/lang/Exception.toString:()Ljava/lang/String;
                //   968: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   971: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   974: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //   977: pop            
                //   978: goto            209
                //   981: ldc_w           "(unknown)"
                //   984: astore          29
                //   986: goto            165
                //   989: astore          6
                //   991: getstatic       com/kochava/android/tracker/Global.DEBUGERROR:Z
                //   994: ifeq            290
                //   997: ldc             "KochavaTracker"
                //   999: new             Ljava/lang/StringBuilder;
                //  1002: dup            
                //  1003: ldc_w           "Error gathering app version code "
                //  1006: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //  1009: aload           6
                //  1011: invokevirtual   java/lang/Exception.toString:()Ljava/lang/String;
                //  1014: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //  1017: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //  1020: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //  1023: pop            
                //  1024: goto            290
                //  1027: astore          8
                //  1029: getstatic       com/kochava/android/tracker/Global.DEBUGERROR:Z
                //  1032: ifeq            358
                //  1035: ldc             "KochavaTracker"
                //  1037: new             Ljava/lang/StringBuilder;
                //  1040: dup            
                //  1041: ldc_w           "Error gathering app version name "
                //  1044: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //  1047: aload           8
                //  1049: invokevirtual   java/lang/Exception.toString:()Ljava/lang/String;
                //  1052: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //  1055: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //  1058: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //  1061: pop            
                //  1062: goto            358
                //  1065: astore          10
                //  1067: getstatic       com/kochava/android/tracker/Global.DEBUGERROR:Z
                //  1070: ifeq            458
                //  1073: ldc             "KochavaTracker"
                //  1075: new             Ljava/lang/StringBuilder;
                //  1078: dup            
                //  1079: ldc_w           "Error "
                //  1082: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //  1085: aload           10
                //  1087: invokevirtual   java/lang/Exception.toString:()Ljava/lang/String;
                //  1090: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //  1093: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //  1096: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //  1099: pop            
                //  1100: goto            458
                //  1103: aload           13
                //  1105: aload           14
                //  1107: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
                //  1110: ifne            1144
                //  1113: aload_0        
                //  1114: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //  1117: invokestatic    com/kochava/android/tracker/Feature.access$21:(Lcom/kochava/android/tracker/Feature;)Lcom/kochava/android/tracker/KochavaDbAdapter;
                //  1120: aload_0        
                //  1121: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //  1124: invokestatic    com/kochava/android/tracker/Feature.access$20:(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;
                //  1127: ldc_w           "kochavaappdata"
                //  1130: aconst_null    
                //  1131: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
                //  1136: aload           14
                //  1138: invokevirtual   com/kochava/android/tracker/KochavaDbAdapter.updateApplicationData:(Ljava/lang/String;Ljava/lang/String;)V
                //  1141: goto            715
                //  1144: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
                //  1147: ifeq            1159
                //  1150: ldc             "KochavaTracker"
                //  1152: ldc_w           "Set start of life to false"
                //  1155: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //  1158: pop            
                //  1159: aload_0        
                //  1160: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //  1163: iconst_0       
                //  1164: invokestatic    com/kochava/android/tracker/Feature.access$24:(Lcom/kochava/android/tracker/Feature;Z)V
                //  1167: goto            715
                //  1170: aload_0        
                //  1171: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //  1174: iconst_0       
                //  1175: invokestatic    com/kochava/android/tracker/Feature.access$24:(Lcom/kochava/android/tracker/Feature;Z)V
                //  1178: goto            715
                //  1181: aload_0        
                //  1182: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //  1185: invokestatic    com/kochava/android/tracker/Feature.access$30:(Lcom/kochava/android/tracker/Feature;)Ljava/util/Timer;
                //  1188: new             Lcom/kochava/android/tracker/Feature$2$3;
                //  1191: dup            
                //  1192: aload_0        
                //  1193: invokespecial   com/kochava/android/tracker/Feature$2$3.<init>:(Lcom/kochava/android/tracker/Feature$2;)V
                //  1196: ldc2_w          2000
                //  1199: invokevirtual   java/util/Timer.schedule:(Ljava/util/TimerTask;J)V
                //  1202: aload_0        
                //  1203: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //  1206: new             Ljava/util/Timer;
                //  1209: dup            
                //  1210: invokespecial   java/util/Timer.<init>:()V
                //  1213: invokestatic    com/kochava/android/tracker/Feature.access$32:(Lcom/kochava/android/tracker/Feature;Ljava/util/Timer;)V
                //  1216: aload_0        
                //  1217: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //  1220: invokestatic    com/kochava/android/tracker/Feature.access$33:(Lcom/kochava/android/tracker/Feature;)Ljava/util/Timer;
                //  1223: new             Lcom/kochava/android/tracker/Feature$2$4;
                //  1226: dup            
                //  1227: aload_0        
                //  1228: invokespecial   com/kochava/android/tracker/Feature$2$4.<init>:(Lcom/kochava/android/tracker/Feature$2;)V
                //  1231: ldc2_w          4000
                //  1234: invokevirtual   java/util/Timer.schedule:(Ljava/util/TimerTask;J)V
                //  1237: return         
                //    Exceptions:
                //  Try           Handler
                //  Start  End    Start  End    Type                                                     
                //  -----  -----  -----  -----  ---------------------------------------------------------
                //  108    123    943    981    Ljava/lang/Exception;
                //  123    141    895    943    Landroid/content/pm/PackageManager$NameNotFoundException;
                //  123    141    943    981    Ljava/lang/Exception;
                //  145    151    943    981    Ljava/lang/Exception;
                //  156    165    943    981    Ljava/lang/Exception;
                //  165    209    943    981    Ljava/lang/Exception;
                //  209    290    989    1027   Ljava/lang/Exception;
                //  290    358    1027   1065   Ljava/lang/Exception;
                //  358    458    1065   1103   Ljava/lang/Exception;
                //  897    902    943    981    Ljava/lang/Exception;
                //  910    937    943    981    Ljava/lang/Exception;
                // 
                // The error that occurred was:
                // 
                // java.lang.IndexOutOfBoundsException: Index: 507, Size: 507
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
                //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createConstructor(AstBuilder.java:692)
                //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:529)
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
        };
        this.init(context, true, hashMap);
    }
    
    public Feature(final Context context, final boolean b, final HashMap<String, String> hashMap) {
        super();
        this.lastCallTime = 0L;
        this.startTime = 0L;
        this.mTestMode = false;
        this.mIsStartOfLife = true;
        this.badInit = false;
        this.canSendSession = true;
        this.requestAttributionData = false;
        this.executor = Executors.newFixedThreadPool(1);
        this.initHandler = new Handler() {
            public void handleMessage(final Message p0) {
                // 
                // This method could not be decompiled.
                // 
                // Original Bytecode:
                // 
                //     0: aload_1        
                //     1: invokevirtual   android/os/Message.getData:()Landroid/os/Bundle;
                //     4: ldc             "sendonstart"
                //     6: invokevirtual   android/os/Bundle.getBoolean:(Ljava/lang/String;)Z
                //     9: istore_2       
                //    10: new             Landroid/webkit/WebView;
                //    13: dup            
                //    14: aload_0        
                //    15: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //    18: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //    21: invokespecial   android/webkit/WebView.<init>:(Landroid/content/Context;)V
                //    24: astore_3       
                //    25: aload_0        
                //    26: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //    29: aload_3        
                //    30: invokevirtual   android/webkit/WebView.getSettings:()Landroid/webkit/WebSettings;
                //    33: invokevirtual   android/webkit/WebSettings.getUserAgentString:()Ljava/lang/String;
                //    36: invokestatic    com/kochava/android/tracker/Feature.access$1:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //    39: aload_3        
                //    40: invokevirtual   android/webkit/WebView.destroy:()V
                //    43: aload_0        
                //    44: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //    47: aload_0        
                //    48: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //    51: invokestatic    com/kochava/android/tracker/Feature.access$2:(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
                //    54: invokestatic    com/kochava/android/tracker/Feature.access$3:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //    57: aload_0        
                //    58: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //    61: aload_0        
                //    62: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //    65: invokestatic    com/kochava/android/tracker/Feature.access$4:(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
                //    68: invokestatic    com/kochava/android/tracker/Feature.access$5:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //    71: aload_0        
                //    72: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //    75: ldc             "Default"
                //    77: invokestatic    com/kochava/android/tracker/Feature.access$6:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //    80: aload_0        
                //    81: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //    84: ldc             "N/A"
                //    86: invokestatic    com/kochava/android/tracker/Feature.access$7:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //    89: aload_0        
                //    90: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //    93: ldc             ""
                //    95: invokestatic    com/kochava/android/tracker/Feature.access$8:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //    98: aload_0        
                //    99: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   102: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   105: invokestatic    com/kochava/android/util/OpenUDID.syncContext:(Landroid/content/Context;)V
                //   108: aload_0        
                //   109: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   112: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   115: invokevirtual   android/content/Context.getApplicationContext:()Landroid/content/Context;
                //   118: invokevirtual   android/content/Context.getPackageManager:()Landroid/content/pm/PackageManager;
                //   121: astore          23
                //   123: aload           23
                //   125: aload_0        
                //   126: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   129: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   132: invokevirtual   android/content/Context.getPackageName:()Ljava/lang/String;
                //   135: iconst_0       
                //   136: invokevirtual   android/content/pm/PackageManager.getApplicationInfo:(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
                //   139: astore          31
                //   141: aload           31
                //   143: astore          26
                //   145: aload_0        
                //   146: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   149: astore          28
                //   151: aload           26
                //   153: ifnull          981
                //   156: aload           23
                //   158: aload           26
                //   160: invokevirtual   android/content/pm/PackageManager.getApplicationLabel:(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
                //   163: astore          29
                //   165: aload           28
                //   167: aload           29
                //   169: checkcast       Ljava/lang/String;
                //   172: invokestatic    com/kochava/android/tracker/Feature.access$6:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //   175: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
                //   178: ifeq            209
                //   181: ldc             "KochavaTracker"
                //   183: new             Ljava/lang/StringBuilder;
                //   186: dup            
                //   187: ldc             "mAppName now: "
                //   189: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   192: aload_0        
                //   193: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   196: invokestatic    com/kochava/android/tracker/Feature.access$9:(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
                //   199: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   202: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   205: invokestatic    android/util/Log.i:(Ljava/lang/String;Ljava/lang/String;)I
                //   208: pop            
                //   209: aload_0        
                //   210: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   213: new             Ljava/lang/StringBuilder;
                //   216: dup            
                //   217: aload_0        
                //   218: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   221: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   224: invokevirtual   android/content/Context.getPackageManager:()Landroid/content/pm/PackageManager;
                //   227: aload_0        
                //   228: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   231: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   234: invokevirtual   android/content/Context.getPackageName:()Ljava/lang/String;
                //   237: iconst_0       
                //   238: invokevirtual   android/content/pm/PackageManager.getPackageInfo:(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
                //   241: getfield        android/content/pm/PackageInfo.versionCode:I
                //   244: invokestatic    java/lang/String.valueOf:(I)Ljava/lang/String;
                //   247: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   250: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   253: invokestatic    com/kochava/android/tracker/Feature.access$7:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //   256: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
                //   259: ifeq            290
                //   262: ldc             "KochavaTracker"
                //   264: new             Ljava/lang/StringBuilder;
                //   267: dup            
                //   268: ldc             "mAppVersionCode now: "
                //   270: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   273: aload_0        
                //   274: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   277: invokestatic    com/kochava/android/tracker/Feature.access$10:(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
                //   280: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   283: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   286: invokestatic    android/util/Log.i:(Ljava/lang/String;Ljava/lang/String;)I
                //   289: pop            
                //   290: aload_0        
                //   291: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   294: aload_0        
                //   295: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   298: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   301: invokevirtual   android/content/Context.getPackageManager:()Landroid/content/pm/PackageManager;
                //   304: aload_0        
                //   305: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   308: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   311: invokevirtual   android/content/Context.getPackageName:()Ljava/lang/String;
                //   314: iconst_0       
                //   315: invokevirtual   android/content/pm/PackageManager.getPackageInfo:(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
                //   318: getfield        android/content/pm/PackageInfo.versionName:Ljava/lang/String;
                //   321: invokestatic    com/kochava/android/tracker/Feature.access$8:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //   324: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
                //   327: ifeq            358
                //   330: ldc             "KochavaTracker"
                //   332: new             Ljava/lang/StringBuilder;
                //   335: dup            
                //   336: ldc             "mAppVersionName now: "
                //   338: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   341: aload_0        
                //   342: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   345: invokestatic    com/kochava/android/tracker/Feature.access$11:(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
                //   348: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   351: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   354: invokestatic    android/util/Log.i:(Ljava/lang/String;Ljava/lang/String;)I
                //   357: pop            
                //   358: aload_0        
                //   359: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   362: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   365: ldc             "window"
                //   367: invokevirtual   android/content/Context.getSystemService:(Ljava/lang/String;)Ljava/lang/Object;
                //   370: checkcast       Landroid/view/WindowManager;
                //   373: astore          19
                //   375: aload_0        
                //   376: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   379: aload           19
                //   381: invokeinterface android/view/WindowManager.getDefaultDisplay:()Landroid/view/Display;
                //   386: invokevirtual   android/view/Display.getHeight:()I
                //   389: invokestatic    com/kochava/android/tracker/Feature.access$12:(Lcom/kochava/android/tracker/Feature;I)V
                //   392: aload_0        
                //   393: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   396: aload           19
                //   398: invokeinterface android/view/WindowManager.getDefaultDisplay:()Landroid/view/Display;
                //   403: invokevirtual   android/view/Display.getWidth:()I
                //   406: invokestatic    com/kochava/android/tracker/Feature.access$13:(Lcom/kochava/android/tracker/Feature;I)V
                //   409: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
                //   412: ifeq            458
                //   415: ldc             "KochavaTracker"
                //   417: new             Ljava/lang/StringBuilder;
                //   420: dup            
                //   421: ldc             "Height: "
                //   423: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   426: aload_0        
                //   427: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   430: invokestatic    com/kochava/android/tracker/Feature.access$14:(Lcom/kochava/android/tracker/Feature;)I
                //   433: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
                //   436: ldc             " | Width: "
                //   438: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   441: aload_0        
                //   442: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   445: invokestatic    com/kochava/android/tracker/Feature.access$15:(Lcom/kochava/android/tracker/Feature;)I
                //   448: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
                //   451: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   454: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //   457: pop            
                //   458: aload_0        
                //   459: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   462: aload_0        
                //   463: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   466: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   469: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
                //   472: ldc             "android_id"
                //   474: invokestatic    android/provider/Settings$Secure.getString:(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
                //   477: invokestatic    com/kochava/android/tracker/Feature.access$16:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //   480: aload_0        
                //   481: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   484: aload_0        
                //   485: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   488: invokestatic    com/kochava/android/tracker/Feature.access$17:(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
                //   491: invokestatic    com/kochava/android/tracker/Feature.access$18:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
                //   494: aload_0        
                //   495: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   498: aload_0        
                //   499: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   502: invokestatic    com/kochava/android/tracker/Feature.access$0:(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
                //   505: ldc             "initPrefs"
                //   507: iconst_0       
                //   508: invokevirtual   android/content/Context.getSharedPreferences:(Ljava/lang/String;I)Landroid/content/SharedPreferences;
                //   511: invokestatic    com/kochava/android/tracker/Feature.access$19:(Lcom/kochava/android/tracker/Feature;Landroid/content/SharedPreferences;)V
                //   514: aload_0        
                //   515: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   518: invokestatic    com/kochava/android/tracker/Feature.access$20:(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;
                //   521: ldc_w           "initBool"
                //   524: ldc             ""
                //   526: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
                //   531: ldc             ""
                //   533: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
                //   536: ifeq            568
                //   539: aload_0        
                //   540: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   543: invokestatic    com/kochava/android/tracker/Feature.access$20:(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;
                //   546: invokeinterface android/content/SharedPreferences.edit:()Landroid/content/SharedPreferences$Editor;
                //   551: ldc_w           "initBool"
                //   554: ldc_w           "false"
                //   557: invokeinterface android/content/SharedPreferences$Editor.putString:(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
                //   562: invokeinterface android/content/SharedPreferences$Editor.commit:()Z
                //   567: pop            
                //   568: aload_0        
                //   569: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   572: invokestatic    com/kochava/android/tracker/Feature.access$20:(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;
                //   575: ldc_w           "kochavaappdata"
                //   578: aconst_null    
                //   579: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
                //   584: ifnull          1170
                //   587: aload_0        
                //   588: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   591: invokestatic    com/kochava/android/tracker/Feature.access$21:(Lcom/kochava/android/tracker/Feature;)Lcom/kochava/android/tracker/KochavaDbAdapter;
                //   594: aload_0        
                //   595: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   598: invokestatic    com/kochava/android/tracker/Feature.access$20:(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;
                //   601: ldc_w           "kochavaappdata"
                //   604: aconst_null    
                //   605: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
                //   610: invokevirtual   com/kochava/android/tracker/KochavaDbAdapter.getApplicationData:(Ljava/lang/String;)Ljava/lang/String;
                //   613: astore          13
                //   615: aload_0        
                //   616: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   619: invokestatic    com/kochava/android/tracker/Feature.access$22:(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
                //   622: astore          14
                //   624: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
                //   627: ifeq            678
                //   630: ldc             "KochavaTracker"
                //   632: new             Ljava/lang/StringBuilder;
                //   635: dup            
                //   636: ldc_w           "[KOCHAVA] Stored Data: "
                //   639: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   642: aload           13
                //   644: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   647: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   650: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //   653: pop            
                //   654: ldc             "KochavaTracker"
                //   656: new             Ljava/lang/StringBuilder;
                //   659: dup            
                //   660: ldc_w           "[KOCHAVA] Created Data: "
                //   663: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   666: aload           14
                //   668: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   671: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   674: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //   677: pop            
                //   678: aload           13
                //   680: ifnonnull       1103
                //   683: aload_0        
                //   684: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   687: invokestatic    com/kochava/android/tracker/Feature.access$21:(Lcom/kochava/android/tracker/Feature;)Lcom/kochava/android/tracker/KochavaDbAdapter;
                //   690: aload_0        
                //   691: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   694: invokestatic    com/kochava/android/tracker/Feature.access$20:(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;
                //   697: ldc_w           "kochavaappdata"
                //   700: aconst_null    
                //   701: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
                //   706: aload           14
                //   708: invokevirtual   com/kochava/android/tracker/KochavaDbAdapter.insertApplicationData:(Ljava/lang/String;Ljava/lang/String;)V
                //   711: iconst_1       
                //   712: invokestatic    com/kochava/android/tracker/Feature.access$23:(I)V
                //   715: aload_0        
                //   716: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   719: invokestatic    com/kochava/android/tracker/Feature.access$21:(Lcom/kochava/android/tracker/Feature;)Lcom/kochava/android/tracker/KochavaDbAdapter;
                //   722: invokestatic    java/lang/System.currentTimeMillis:()J
                //   725: ldc2_w          604800000
                //   728: lsub           
                //   729: invokevirtual   com/kochava/android/tracker/KochavaDbAdapter.cleanupEvents:(J)V
                //   732: aload_0        
                //   733: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   736: invokestatic    com/kochava/android/tracker/Feature.access$25:(Lcom/kochava/android/tracker/Feature;)Z
                //   739: ifne            793
                //   742: aload_0        
                //   743: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   746: invokestatic    com/kochava/android/tracker/Feature.access$20:(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;
                //   749: ldc_w           "initBool"
                //   752: ldc             ""
                //   754: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
                //   759: ldc             ""
                //   761: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
                //   764: ifne            819
                //   767: aload_0        
                //   768: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   771: invokestatic    com/kochava/android/tracker/Feature.access$20:(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;
                //   774: ldc_w           "initBool"
                //   777: ldc             ""
                //   779: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
                //   784: ldc_w           "false"
                //   787: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
                //   790: ifeq            819
                //   793: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
                //   796: ifeq            808
                //   799: ldc             "KochavaTracker"
                //   801: ldc_w           "Initial event has not yet been qued in the database, making initial call"
                //   804: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //   807: pop            
                //   808: aload_0        
                //   809: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   812: ldc_w           "initial"
                //   815: aconst_null    
                //   816: invokestatic    com/kochava/android/tracker/Feature.access$26:(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;Ljava/util/Map;)V
                //   819: aload_0        
                //   820: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   823: new             Ljava/util/Timer;
                //   826: dup            
                //   827: invokespecial   java/util/Timer.<init>:()V
                //   830: invokestatic    com/kochava/android/tracker/Feature.access$27:(Lcom/kochava/android/tracker/Feature;Ljava/util/Timer;)V
                //   833: aload_0        
                //   834: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   837: invokestatic    com/kochava/android/tracker/Feature.access$28:(Lcom/kochava/android/tracker/Feature;)Ljava/util/Timer;
                //   840: new             Lcom/kochava/android/tracker/Feature$2$1;
                //   843: dup            
                //   844: aload_0        
                //   845: invokespecial   com/kochava/android/tracker/Feature$2$1.<init>:(Lcom/kochava/android/tracker/Feature$2;)V
                //   848: lconst_0       
                //   849: ldc2_w          60000
                //   852: invokevirtual   java/util/Timer.schedule:(Ljava/util/TimerTask;JJ)V
                //   855: aload_0        
                //   856: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   859: new             Ljava/util/Timer;
                //   862: dup            
                //   863: invokespecial   java/util/Timer.<init>:()V
                //   866: invokestatic    com/kochava/android/tracker/Feature.access$29:(Lcom/kochava/android/tracker/Feature;Ljava/util/Timer;)V
                //   869: iload_2        
                //   870: ifne            1181
                //   873: aload_0        
                //   874: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //   877: invokestatic    com/kochava/android/tracker/Feature.access$30:(Lcom/kochava/android/tracker/Feature;)Ljava/util/Timer;
                //   880: new             Lcom/kochava/android/tracker/Feature$2$2;
                //   883: dup            
                //   884: aload_0        
                //   885: invokespecial   com/kochava/android/tracker/Feature$2$2.<init>:(Lcom/kochava/android/tracker/Feature$2;)V
                //   888: ldc2_w          600000
                //   891: invokevirtual   java/util/Timer.schedule:(Ljava/util/TimerTask;J)V
                //   894: return         
                //   895: astore          24
                //   897: getstatic       com/kochava/android/tracker/Global.DEBUGERROR:Z
                //   900: istore          25
                //   902: aconst_null    
                //   903: astore          26
                //   905: iload           25
                //   907: ifeq            145
                //   910: ldc             "KochavaTracker"
                //   912: new             Ljava/lang/StringBuilder;
                //   915: dup            
                //   916: ldc_w           "Error gathering app name "
                //   919: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   922: aload           24
                //   924: invokevirtual   android/content/pm/PackageManager$NameNotFoundException.toString:()Ljava/lang/String;
                //   927: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   930: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   933: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //   936: pop            
                //   937: aconst_null    
                //   938: astore          26
                //   940: goto            145
                //   943: astore          4
                //   945: getstatic       com/kochava/android/tracker/Global.DEBUGERROR:Z
                //   948: ifeq            209
                //   951: ldc             "KochavaTracker"
                //   953: new             Ljava/lang/StringBuilder;
                //   956: dup            
                //   957: ldc_w           "Error gathering app name "
                //   960: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   963: aload           4
                //   965: invokevirtual   java/lang/Exception.toString:()Ljava/lang/String;
                //   968: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   971: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   974: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //   977: pop            
                //   978: goto            209
                //   981: ldc_w           "(unknown)"
                //   984: astore          29
                //   986: goto            165
                //   989: astore          6
                //   991: getstatic       com/kochava/android/tracker/Global.DEBUGERROR:Z
                //   994: ifeq            290
                //   997: ldc             "KochavaTracker"
                //   999: new             Ljava/lang/StringBuilder;
                //  1002: dup            
                //  1003: ldc_w           "Error gathering app version code "
                //  1006: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //  1009: aload           6
                //  1011: invokevirtual   java/lang/Exception.toString:()Ljava/lang/String;
                //  1014: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //  1017: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //  1020: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //  1023: pop            
                //  1024: goto            290
                //  1027: astore          8
                //  1029: getstatic       com/kochava/android/tracker/Global.DEBUGERROR:Z
                //  1032: ifeq            358
                //  1035: ldc             "KochavaTracker"
                //  1037: new             Ljava/lang/StringBuilder;
                //  1040: dup            
                //  1041: ldc_w           "Error gathering app version name "
                //  1044: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //  1047: aload           8
                //  1049: invokevirtual   java/lang/Exception.toString:()Ljava/lang/String;
                //  1052: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //  1055: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //  1058: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //  1061: pop            
                //  1062: goto            358
                //  1065: astore          10
                //  1067: getstatic       com/kochava/android/tracker/Global.DEBUGERROR:Z
                //  1070: ifeq            458
                //  1073: ldc             "KochavaTracker"
                //  1075: new             Ljava/lang/StringBuilder;
                //  1078: dup            
                //  1079: ldc_w           "Error "
                //  1082: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //  1085: aload           10
                //  1087: invokevirtual   java/lang/Exception.toString:()Ljava/lang/String;
                //  1090: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //  1093: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //  1096: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //  1099: pop            
                //  1100: goto            458
                //  1103: aload           13
                //  1105: aload           14
                //  1107: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
                //  1110: ifne            1144
                //  1113: aload_0        
                //  1114: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //  1117: invokestatic    com/kochava/android/tracker/Feature.access$21:(Lcom/kochava/android/tracker/Feature;)Lcom/kochava/android/tracker/KochavaDbAdapter;
                //  1120: aload_0        
                //  1121: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //  1124: invokestatic    com/kochava/android/tracker/Feature.access$20:(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;
                //  1127: ldc_w           "kochavaappdata"
                //  1130: aconst_null    
                //  1131: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
                //  1136: aload           14
                //  1138: invokevirtual   com/kochava/android/tracker/KochavaDbAdapter.updateApplicationData:(Ljava/lang/String;Ljava/lang/String;)V
                //  1141: goto            715
                //  1144: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
                //  1147: ifeq            1159
                //  1150: ldc             "KochavaTracker"
                //  1152: ldc_w           "Set start of life to false"
                //  1155: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                //  1158: pop            
                //  1159: aload_0        
                //  1160: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //  1163: iconst_0       
                //  1164: invokestatic    com/kochava/android/tracker/Feature.access$24:(Lcom/kochava/android/tracker/Feature;Z)V
                //  1167: goto            715
                //  1170: aload_0        
                //  1171: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //  1174: iconst_0       
                //  1175: invokestatic    com/kochava/android/tracker/Feature.access$24:(Lcom/kochava/android/tracker/Feature;Z)V
                //  1178: goto            715
                //  1181: aload_0        
                //  1182: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //  1185: invokestatic    com/kochava/android/tracker/Feature.access$30:(Lcom/kochava/android/tracker/Feature;)Ljava/util/Timer;
                //  1188: new             Lcom/kochava/android/tracker/Feature$2$3;
                //  1191: dup            
                //  1192: aload_0        
                //  1193: invokespecial   com/kochava/android/tracker/Feature$2$3.<init>:(Lcom/kochava/android/tracker/Feature$2;)V
                //  1196: ldc2_w          2000
                //  1199: invokevirtual   java/util/Timer.schedule:(Ljava/util/TimerTask;J)V
                //  1202: aload_0        
                //  1203: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //  1206: new             Ljava/util/Timer;
                //  1209: dup            
                //  1210: invokespecial   java/util/Timer.<init>:()V
                //  1213: invokestatic    com/kochava/android/tracker/Feature.access$32:(Lcom/kochava/android/tracker/Feature;Ljava/util/Timer;)V
                //  1216: aload_0        
                //  1217: getfield        com/kochava/android/tracker/Feature$2.this$0:Lcom/kochava/android/tracker/Feature;
                //  1220: invokestatic    com/kochava/android/tracker/Feature.access$33:(Lcom/kochava/android/tracker/Feature;)Ljava/util/Timer;
                //  1223: new             Lcom/kochava/android/tracker/Feature$2$4;
                //  1226: dup            
                //  1227: aload_0        
                //  1228: invokespecial   com/kochava/android/tracker/Feature$2$4.<init>:(Lcom/kochava/android/tracker/Feature$2;)V
                //  1231: ldc2_w          4000
                //  1234: invokevirtual   java/util/Timer.schedule:(Ljava/util/TimerTask;J)V
                //  1237: return         
                //    Exceptions:
                //  Try           Handler
                //  Start  End    Start  End    Type                                                     
                //  -----  -----  -----  -----  ---------------------------------------------------------
                //  108    123    943    981    Ljava/lang/Exception;
                //  123    141    895    943    Landroid/content/pm/PackageManager$NameNotFoundException;
                //  123    141    943    981    Ljava/lang/Exception;
                //  145    151    943    981    Ljava/lang/Exception;
                //  156    165    943    981    Ljava/lang/Exception;
                //  165    209    943    981    Ljava/lang/Exception;
                //  209    290    989    1027   Ljava/lang/Exception;
                //  290    358    1027   1065   Ljava/lang/Exception;
                //  358    458    1065   1103   Ljava/lang/Exception;
                //  897    902    943    981    Ljava/lang/Exception;
                //  910    937    943    981    Ljava/lang/Exception;
                // 
                // The error that occurred was:
                // 
                // java.lang.IndexOutOfBoundsException: Index: 507, Size: 507
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
                //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createConstructor(AstBuilder.java:692)
                //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:529)
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
        };
        this.init(context, b, hashMap);
    }
    
    private JSONObject addGlobalProperties(final JSONObject jsonObject) {
        if (jsonObject != null) {
            try {
                jsonObject.put("usertime", (Object)new StringBuilder(String.valueOf(System.currentTimeMillis() / 1000L)).toString());
                jsonObject.put("uptime", (Object)new StringBuilder(String.valueOf(System.currentTimeMillis() / 1000L - this.startTime)).toString());
                if (this.lastCallTime != 0L) {
                    jsonObject.put("updelta", (Object)new StringBuilder(String.valueOf(System.currentTimeMillis() / 1000L - this.lastCallTime)).toString());
                }
                else {
                    jsonObject.put("updelta", (Object)"0");
                }
                this.lastCallTime = System.currentTimeMillis() / 1000L;
                this.prefs = this.mContext.getSharedPreferences("initPrefs", 0);
                if (!this.prefs.getString("mylat", "").equals("")) {
                    jsonObject.put("geo_lat", (Object)this.prefs.getString("mylat", ""));
                    jsonObject.put("geo_lon", (Object)this.prefs.getString("mylong", ""));
                    return jsonObject;
                }
            }
            catch (Exception ex) {
                if (Global.DEBUG) {
                    Log.e("KochavaTracker", "Error adding time properties to a JSON object");
                }
            }
        }
        return jsonObject;
    }
    
    private String createAppData() {
        return String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf("")).append(this.getDeviceId()).append(":::").toString())).append(this.getModel()).append(":::").toString())).append(this.getCarrier()).append(":::").toString())).append(this.getIMEI()).append(":::").toString())).append(this.getAppVersion()).append(":::").toString()) + this.getOSVersion();
    }
    
    private HttpClient createHttpClient(final boolean b) {
        if (Global.DEBUG) {
            Log.e("KochavaTracker", "Creating https client.");
        }
        final BasicHttpParams basicHttpParams = new BasicHttpParams();
        HttpProtocolParams.setVersion((HttpParams)basicHttpParams, (ProtocolVersion)HttpVersion.HTTP_1_1);
        HttpProtocolParams.setContentCharset((HttpParams)basicHttpParams, "ISO-8859-1");
        HttpProtocolParams.setUseExpectContinue((HttpParams)basicHttpParams, true);
        if (b) {
            HttpConnectionParams.setConnectionTimeout((HttpParams)basicHttpParams, 10000);
        }
        final SchemeRegistry schemeRegistry = new SchemeRegistry();
        schemeRegistry.register(new Scheme("http", (SocketFactory)PlainSocketFactory.getSocketFactory(), 80));
        schemeRegistry.register(new Scheme("https", (SocketFactory)SSLSocketFactory.getSocketFactory(), 443));
        return (HttpClient)new DefaultHttpClient((ClientConnectionManager)new ThreadSafeClientConnManager((HttpParams)basicHttpParams, schemeRegistry), (HttpParams)basicHttpParams);
    }
    
    public static void enableDebug(final boolean debug) {
        Global.DEBUG = debug;
    }
    
    private void eventSession(final String s) {
        if (Global.DEBUG) {
            Log.e("KochavaTracker", "Got event " + s);
        }
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("state", s);
        this.fireEvent("session", hashMap);
    }
    
    private void fireEvent(final String str, final Map<String, String> obj) {
        if (Global.DEBUG) {
            Log.e("KochavaTracker", "FIRE EVENT*** action:" + str);
        }
        if (Global.DEBUG) {
            Log.e("KochavaTracker", "FIRE EVENT*** properties:" + obj);
        }
        final JSONObject jsonObject = new JSONObject();
        try {
            jsonObject.put("kochava_app_id", (Object)this.mAppId);
            jsonObject.put("kochava_device_id", (Object)this.getDeviceId());
            jsonObject.put("action", (Object)str);
            jsonObject.put("dev_id_strategy", (Object)this.mKochDevIDStrategy);
            jsonObject.put("last_post_time", 0);
            this.prefs = this.mContext.getSharedPreferences("initPrefs", 0);
            jsonObject.put("currency", (Object)this.prefs.getString("currency", "USD"));
            final JSONObject addGlobalProperties = this.addGlobalProperties(new JSONObject());
            if (Global.DEBUG) {
                Log.i("KochavaTracker", "fireEvent with properties: " + jsonObject);
            }
            if (!str.equals("initial")) {
                goto Label_0757;
            }
            if (Global.DEBUG) {
                Log.e("KochavaTracker", "Event is initial, or initial did not get que'd on first load");
            }
            try {
                jsonObject.put("sdk_version", (Object)"Android20130808");
                addGlobalProperties.put("first_run", (Object)new StringBuilder(String.valueOf(Feature.first_run)).toString());
                addGlobalProperties.put("device", (Object)(String.valueOf(this.getModel()) + "-" + this.getCarrier()));
                if (Feature.paramRestrictions.get("imei")) {
                    addGlobalProperties.put("imei", (Object)this.getIMEI());
                }
                addGlobalProperties.put("disp_h", this.mDisplayHeight);
                addGlobalProperties.put("disp_w", this.mDisplayWidth);
                addGlobalProperties.put("package_name", (Object)this.getAppPackageName());
                addGlobalProperties.put("app_version", (Object)this.getAppVersion());
                if (!this.mAppVersionName.equals("")) {
                    addGlobalProperties.put("app_short_string", (Object)this.mAppVersionName);
                }
                if (Feature.paramRestrictions.get("android_id")) {
                    addGlobalProperties.put("android_id", (Object)this.mAndroidID);
                }
                addGlobalProperties.put("env_hash", (Object)this.mEnvDeviceID);
                addGlobalProperties.put("os_version", (Object)this.getOSVersion());
                if (Feature.paramRestrictions.get("odin")) {
                    addGlobalProperties.put("odin", (Object)this.getOdin());
                }
                if (Feature.paramRestrictions.get("mac")) {
                    addGlobalProperties.put("mac", (Object)this.mMacAddr);
                }
                if (Feature.paramRestrictions.get("open_udid")) {
                    addGlobalProperties.put("open_udid", (Object)this.getOpenUDID());
                }
                if (Feature.paramRestrictions.get("fb_attribution_id")) {
                    this.mFbId = getAttributionId(this.mContext.getContentResolver());
                    if (this.mFbId == null) {
                        addGlobalProperties.put("fb_attribution_id", (Object)"");
                    }
                    else {
                        addGlobalProperties.put("fb_attribution_id", (Object)this.mFbId);
                    }
                }
                ((WindowManager)this.mContext.getSystemService("window")).getDefaultDisplay().getMetrics(new DisplayMetrics());
                this.initialPropertiesObject = addGlobalProperties;
                this.initialObject = jsonObject;
                if (Global.DEBUG) {
                    Log.e("KochavaTracker", "Initial Event, saving until next event. ");
                }
            }
            catch (JSONException ex) {
                ex.printStackTrace();
                if (Global.DEBUG) {
                    Log.e("KochavaTracker", "event", (Throwable)ex);
                }
            }
            catch (Exception ex2) {
                if (Global.DEBUGERROR) {
                    Log.e("KochavaTracker", "Error during fireEvent - Please review stack trace");
                }
                ex2.printStackTrace();
            }
            catch (UnsupportedEncodingException ex3) {}
            catch (NoSuchAlgorithmException ex4) {}
        }
        catch (JSONException ex5) {}
    }
    
    private void getAd(final WebView webView, final Activity activity, final int n, final int n2) {
        if (this.badInit) {
            if (Global.DEBUGERROR) {
                Log.e("KochavaTracker", "Kochava library was not initialized properly (Unexpected parameters). Until it is, this method cannot be used.");
            }
            return;
        }
        final ComponentName componentName = new ComponentName(this.mContext, (Class)KochavaWebAdView.class);
        while (true) {
            try {
                this.mContext.getPackageManager().getActivityInfo(componentName, 0);
                if (Global.DEBUG) {
                    Log.e("KochavaTracker", "Ad activity registered.");
                }
                new Thread() {
                    @SuppressLint({ "NewApi" })
                    @Override
                    public void run() {
                        // 
                        // This method could not be decompiled.
                        // 
                        // Original Bytecode:
                        // 
                        //     0: ldc             ""
                        //     2: astore_1       
                        //     3: aload_0        
                        //     4: getfield        com/kochava/android/tracker/Feature$5.val$context:Landroid/app/Activity;
                        //     7: invokevirtual   android/app/Activity.getPackageManager:()Landroid/content/pm/PackageManager;
                        //    10: astore_2       
                        //    11: aload_2        
                        //    12: aload_0        
                        //    13: getfield        com/kochava/android/tracker/Feature$5.this$0:Lcom/kochava/android/tracker/Feature;
                        //    16: invokestatic    com/kochava/android/tracker/Feature.access$45:(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
                        //    19: iconst_0       
                        //    20: invokevirtual   android/content/pm/PackageManager.getApplicationInfo:(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
                        //    23: astore          33
                        //    25: aload           33
                        //    27: astore          4
                        //    29: aload           4
                        //    31: ifnull          400
                        //    34: aload_2        
                        //    35: aload           4
                        //    37: invokevirtual   android/content/pm/PackageManager.getApplicationLabel:(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
                        //    40: astore          5
                        //    42: aload           5
                        //    44: checkcast       Ljava/lang/String;
                        //    47: astore          6
                        //    49: aload_0        
                        //    50: getfield        com/kochava/android/tracker/Feature$5.this$0:Lcom/kochava/android/tracker/Feature;
                        //    53: iconst_0       
                        //    54: invokestatic    com/kochava/android/tracker/Feature.access$35:(Lcom/kochava/android/tracker/Feature;Z)Lorg/apache/http/client/HttpClient;
                        //    57: astore          7
                        //    59: new             Lorg/apache/http/client/methods/HttpGet;
                        //    62: dup            
                        //    63: new             Ljava/lang/StringBuilder;
                        //    66: dup            
                        //    67: ldc             "http://bidder.kochava.com/adserver/request/?w="
                        //    69: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                        //    72: aload_0        
                        //    73: getfield        com/kochava/android/tracker/Feature$5.val$width:I
                        //    76: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
                        //    79: ldc             "&h="
                        //    81: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                        //    84: aload_0        
                        //    85: getfield        com/kochava/android/tracker/Feature$5.val$height:I
                        //    88: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
                        //    91: ldc             "&odin="
                        //    93: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                        //    96: aload_0        
                        //    97: getfield        com/kochava/android/tracker/Feature$5.this$0:Lcom/kochava/android/tracker/Feature;
                        //   100: invokestatic    com/kochava/android/tracker/Feature.access$46:(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
                        //   103: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                        //   106: ldc             "&open_udid="
                        //   108: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                        //   111: aload_0        
                        //   112: getfield        com/kochava/android/tracker/Feature$5.this$0:Lcom/kochava/android/tracker/Feature;
                        //   115: invokevirtual   com/kochava/android/tracker/Feature.getOpenUDID:()Ljava/lang/String;
                        //   118: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                        //   121: ldc             "&aid="
                        //   123: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                        //   126: aload_0        
                        //   127: getfield        com/kochava/android/tracker/Feature$5.this$0:Lcom/kochava/android/tracker/Feature;
                        //   130: invokestatic    com/kochava/android/tracker/Feature.access$44:(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
                        //   133: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                        //   136: ldc             "&an="
                        //   138: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                        //   141: aload           6
                        //   143: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                        //   146: ldc             "&av="
                        //   148: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                        //   151: ldc             "Android20130808"
                        //   153: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                        //   156: ldc             "&kochava_device_id="
                        //   158: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                        //   161: aload_0        
                        //   162: getfield        com/kochava/android/tracker/Feature$5.this$0:Lcom/kochava/android/tracker/Feature;
                        //   165: invokestatic    com/kochava/android/tracker/Feature.access$17:(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
                        //   168: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                        //   171: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                        //   174: invokespecial   org/apache/http/client/methods/HttpGet.<init>:(Ljava/lang/String;)V
                        //   177: astore          8
                        //   179: aload           7
                        //   181: aload           8
                        //   183: invokeinterface org/apache/http/client/HttpClient.execute:(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
                        //   188: invokeinterface org/apache/http/HttpResponse.getEntity:()Lorg/apache/http/HttpEntity;
                        //   193: astore          23
                        //   195: aload           23
                        //   197: ifnull          263
                        //   200: aload           23
                        //   202: invokeinterface org/apache/http/HttpEntity.getContent:()Ljava/io/InputStream;
                        //   207: astore          24
                        //   209: new             Ljava/io/InputStreamReader;
                        //   212: dup            
                        //   213: aload           24
                        //   215: ldc             "ISO-8859-1"
                        //   217: invokespecial   java/io/InputStreamReader.<init>:(Ljava/io/InputStream;Ljava/lang/String;)V
                        //   220: astore          25
                        //   222: new             Ljava/lang/StringBuilder;
                        //   225: dup            
                        //   226: invokespecial   java/lang/StringBuilder.<init>:()V
                        //   229: astore          26
                        //   231: sipush          1024
                        //   234: newarray        C
                        //   236: astore          29
                        //   238: aload           25
                        //   240: aload           29
                        //   242: invokevirtual   java/io/Reader.read:([C)I
                        //   245: istore          30
                        //   247: iload           30
                        //   249: iconst_m1      
                        //   250: if_icmpne       407
                        //   253: aload           26
                        //   255: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                        //   258: astore          31
                        //   260: aload           31
                        //   262: astore_1       
                        //   263: ldc             ""
                        //   265: astore          11
                        //   267: ldc             ""
                        //   269: astore          12
                        //   271: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
                        //   274: ifeq            299
                        //   277: ldc             "KochavaAds"
                        //   279: new             Ljava/lang/StringBuilder;
                        //   282: dup            
                        //   283: ldc             "Response:"
                        //   285: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                        //   288: aload_1        
                        //   289: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                        //   292: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                        //   295: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                        //   298: pop            
                        //   299: ldc             "href='(.*?)'"
                        //   301: invokestatic    java/util/regex/Pattern.compile:(Ljava/lang/String;)Ljava/util/regex/Pattern;
                        //   304: aload_1        
                        //   305: invokevirtual   java/util/regex/Pattern.matcher:(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
                        //   308: astore          13
                        //   310: aload           13
                        //   312: invokevirtual   java/util/regex/Matcher.find:()Z
                        //   315: ifeq            326
                        //   318: aload           13
                        //   320: iconst_1       
                        //   321: invokevirtual   java/util/regex/Matcher.group:(I)Ljava/lang/String;
                        //   324: astore          11
                        //   326: aload           11
                        //   328: astore          14
                        //   330: ldc             "src='(.*?)'"
                        //   332: invokestatic    java/util/regex/Pattern.compile:(Ljava/lang/String;)Ljava/util/regex/Pattern;
                        //   335: aload_1        
                        //   336: invokevirtual   java/util/regex/Pattern.matcher:(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
                        //   339: astore          15
                        //   341: aload           15
                        //   343: invokevirtual   java/util/regex/Matcher.find:()Z
                        //   346: ifeq            357
                        //   349: aload           15
                        //   351: iconst_1       
                        //   352: invokevirtual   java/util/regex/Matcher.group:(I)Ljava/lang/String;
                        //   355: astore          12
                        //   357: aload           12
                        //   359: astore          16
                        //   361: new             Lcom/kochava/android/tracker/Feature$5$1;
                        //   364: dup            
                        //   365: aload_0        
                        //   366: aload_0        
                        //   367: getfield        com/kochava/android/tracker/Feature$5.val$adWebview:Landroid/webkit/WebView;
                        //   370: aload           16
                        //   372: aload_0        
                        //   373: getfield        com/kochava/android/tracker/Feature$5.val$context:Landroid/app/Activity;
                        //   376: aload           14
                        //   378: invokespecial   com/kochava/android/tracker/Feature$5$1.<init>:(Lcom/kochava/android/tracker/Feature$5;Landroid/webkit/WebView;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V
                        //   381: astore          17
                        //   383: aload_0        
                        //   384: getfield        com/kochava/android/tracker/Feature$5.val$context:Landroid/app/Activity;
                        //   387: aload           17
                        //   389: invokevirtual   android/app/Activity.runOnUiThread:(Ljava/lang/Runnable;)V
                        //   392: return         
                        //   393: astore_3       
                        //   394: aconst_null    
                        //   395: astore          4
                        //   397: goto            29
                        //   400: ldc             "(unknown)"
                        //   402: astore          5
                        //   404: goto            42
                        //   407: aload           26
                        //   409: aload           29
                        //   411: iconst_0       
                        //   412: iload           30
                        //   414: invokevirtual   java/lang/StringBuilder.append:([CII)Ljava/lang/StringBuilder;
                        //   417: pop            
                        //   418: goto            238
                        //   421: astore          28
                        //   423: aload           28
                        //   425: astore          10
                        //   427: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
                        //   430: ifeq            459
                        //   433: ldc             "KochavaAds"
                        //   435: new             Ljava/lang/StringBuilder;
                        //   438: dup            
                        //   439: ldc             "Problem grabbing ad: "
                        //   441: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                        //   444: aload           10
                        //   446: invokevirtual   java/io/IOException.getMessage:()Ljava/lang/String;
                        //   449: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                        //   452: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                        //   455: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                        //   458: pop            
                        //   459: aload           10
                        //   461: invokevirtual   java/io/IOException.printStackTrace:()V
                        //   464: goto            263
                        //   467: astore          20
                        //   469: aload           20
                        //   471: astore          21
                        //   473: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
                        //   476: ifeq            505
                        //   479: ldc             "KochavaAds"
                        //   481: new             Ljava/lang/StringBuilder;
                        //   484: dup            
                        //   485: ldc             "Problem grabbing ad: "
                        //   487: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                        //   490: aload           21
                        //   492: invokevirtual   java/security/NoSuchAlgorithmException.getMessage:()Ljava/lang/String;
                        //   495: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                        //   498: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                        //   501: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
                        //   504: pop            
                        //   505: aload           21
                        //   507: invokevirtual   java/security/NoSuchAlgorithmException.printStackTrace:()V
                        //   510: goto            263
                        //   513: astore          27
                        //   515: aload           27
                        //   517: astore          21
                        //   519: goto            473
                        //   522: astore          9
                        //   524: aload           9
                        //   526: astore          10
                        //   528: goto            427
                        //    Exceptions:
                        //  Try           Handler
                        //  Start  End    Start  End    Type                                                     
                        //  -----  -----  -----  -----  ---------------------------------------------------------
                        //  11     25     393    400    Landroid/content/pm/PackageManager$NameNotFoundException;
                        //  59     195    522    531    Ljava/io/IOException;
                        //  59     195    467    473    Ljava/security/NoSuchAlgorithmException;
                        //  200    222    522    531    Ljava/io/IOException;
                        //  200    222    467    473    Ljava/security/NoSuchAlgorithmException;
                        //  222    238    421    427    Ljava/io/IOException;
                        //  222    238    513    522    Ljava/security/NoSuchAlgorithmException;
                        //  238    247    421    427    Ljava/io/IOException;
                        //  238    247    513    522    Ljava/security/NoSuchAlgorithmException;
                        //  253    260    421    427    Ljava/io/IOException;
                        //  253    260    513    522    Ljava/security/NoSuchAlgorithmException;
                        //  407    418    421    427    Ljava/io/IOException;
                        //  407    418    513    522    Ljava/security/NoSuchAlgorithmException;
                        // 
                        // The error that occurred was:
                        // 
                        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0238:
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
                        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.transformCall(AstMethodBodyBuilder.java:1163)
                        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.transformByteCode(AstMethodBodyBuilder.java:1010)
                        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.transformExpression(AstMethodBodyBuilder.java:540)
                        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.transformByteCode(AstMethodBodyBuilder.java:554)
                        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.transformExpression(AstMethodBodyBuilder.java:540)
                        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.transformNode(AstMethodBodyBuilder.java:392)
                        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.transformBlock(AstMethodBodyBuilder.java:333)
                        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.transformNode(AstMethodBodyBuilder.java:494)
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
                }.start();
            }
            catch (PackageManager$NameNotFoundException ex) {
                if (Global.DEBUGERROR) {
                    Log.e("KochavaRequirements", "KOCHAVAWEBADVIEW ACTIVITY REGISTRATION MISSING: com.kochava.android.tracker.KochavaWebAdView");
                }
                if (Global.DEBUGERROR) {
                    Log.e("KochavaRequirements", "**NOTICE** It appears you are trying to use Kochava ads but have not registered our ad view activity. Please refer to the Kochava documentation for instructions on how to do this.");
                }
                continue;
            }
            break;
        }
    }
    
    private String getAppPackageName() {
        if (this.mAppPackageName != null) {
            return this.mAppPackageName;
        }
        return "Unknown";
    }
    
    private String getAppVersion() {
        return String.valueOf(this.mAppName) + " " + this.mAppVersionCode;
    }
    
    protected static String getAttributionId(final ContentResolver contentResolver) {
        try {
            final Cursor query = contentResolver.query(Feature.ATTRIBUTION_ID_CONTENT_URI, new String[] { "aid" }, (String)null, (String[])null, (String)null);
            if (query != null) {
                if (query.moveToFirst()) {
                    return query.getString(query.getColumnIndex("aid"));
                }
            }
        }
        catch (Exception ex) {
            final boolean debug = Global.DEBUG;
            String string = null;
            if (debug) {
                Log.e("KochavaTracker", "Problem getting FB attribution ID " + ex.toString());
                string = null;
                return string;
            }
            return string;
        }
        return null;
    }
    
    private String getCarrier() {
        return Build.BRAND;
    }
    
    private String getDeviceId() {
        if (this.mMacAddr != null && !"".equals(this.mMacAddr)) {
            this.mKochDevIDStrategy = "1";
            try {
                final String replaceFirst = this.mMacAddr.replaceFirst(":", "k").replaceFirst(":", "o").replaceFirst(":", "c").replaceFirst(":", "h").replaceFirst(":", "a");
                final MessageDigest instance = MessageDigest.getInstance("MD5");
                instance.reset();
                instance.update(replaceFirst.getBytes());
                String s;
                for (s = new BigInteger(1, instance.digest()).toString(16); s.length() < 32; s = "0" + s) {}
                return "KV" + s;
            }
            catch (NoSuchAlgorithmException ex) {
                return this.mMacAddr;
            }
        }
        if (this.mIMEI == null || "".equals(this.mIMEI)) {
            this.mKochDevIDStrategy = "3";
            return this.mEnvDeviceID;
        }
        this.mKochDevIDStrategy = "2";
        if ("000000000000000".equals(this.mIMEI)) {
            return "00" + this.mIMEI;
        }
        return this.mIMEI;
    }
    
    private String getIMEI() {
        return this.mIMEI;
    }
    
    private String getModel() {
        return Build.MODEL;
    }
    
    private String getOSVersion() {
        return "Android " + Build$VERSION.RELEASE;
    }
    
    private String getOdin() throws NoSuchAlgorithmException, UnsupportedEncodingException {
        if (this.mMacAddr != null && !"".equals(this.mMacAddr)) {
            final MessageDigest instance = MessageDigest.getInstance("SHA-1");
            final byte[] array = new byte[40];
            instance.update(this.mMacAddr.getBytes("iso-8859-1"), 0, this.mMacAddr.length());
            final byte[] digest = instance.digest();
            final StringBuffer sb = new StringBuffer();
            for (int i = 0; i < digest.length; ++i) {
                int n = 0xF & digest[i] >>> 4;
                int n2 = 0;
                while (true) {
                    if (n >= 0 && n <= 9) {
                        sb.append((char)(n + 48));
                    }
                    else {
                        sb.append((char)(97 + (n - 10)));
                    }
                    n = (0xF & digest[i]);
                    final int n3 = n2 + 1;
                    if (n2 >= 1) {
                        break;
                    }
                    n2 = n3;
                }
            }
            return sb.toString();
        }
        return "";
    }
    
    private boolean haveAttributionData() {
        return this.attributionDataPrefs != null && !this.attributionDataPrefs.getAll().isEmpty();
    }
    
    private void init(final Context p0, final boolean p1, final HashMap<String, String> p2) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
        //     3: ifeq            15
        //     6: ldc             "KochavaTracker"
        //     8: ldc_w           "Feature initialization"
        //    11: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //    14: pop            
        //    15: aload_1        
        //    16: ifnull          303
        //    19: aload_0        
        //    20: aload_1        
        //    21: putfield        com/kochava/android/tracker/Feature.mContext:Landroid/content/Context;
        //    24: aload_0        
        //    25: aload_0        
        //    26: getfield        com/kochava/android/tracker/Feature.mContext:Landroid/content/Context;
        //    29: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //    32: invokestatic    com/kochava/android/tracker/Feature.getAttributionId:(Landroid/content/ContentResolver;)Ljava/lang/String;
        //    35: putfield        com/kochava/android/tracker/Feature.mFbId:Ljava/lang/String;
        //    38: aload_0        
        //    39: new             Lcom/kochava/android/tracker/KochavaDbAdapter;
        //    42: dup            
        //    43: aload_0        
        //    44: getfield        com/kochava/android/tracker/Feature.mContext:Landroid/content/Context;
        //    47: invokespecial   com/kochava/android/tracker/KochavaDbAdapter.<init>:(Landroid/content/Context;)V
        //    50: putfield        com/kochava/android/tracker/Feature.kDbAdapter:Lcom/kochava/android/tracker/KochavaDbAdapter;
        //    53: aload_0        
        //    54: aload_0        
        //    55: getfield        com/kochava/android/tracker/Feature.mContext:Landroid/content/Context;
        //    58: invokevirtual   android/content/Context.getPackageManager:()Landroid/content/pm/PackageManager;
        //    61: aload_0        
        //    62: getfield        com/kochava/android/tracker/Feature.mContext:Landroid/content/Context;
        //    65: invokevirtual   android/content/Context.getPackageName:()Ljava/lang/String;
        //    68: iconst_0       
        //    69: invokevirtual   android/content/pm/PackageManager.getPackageInfo:(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
        //    72: getfield        android/content/pm/PackageInfo.packageName:Ljava/lang/String;
        //    75: putfield        com/kochava/android/tracker/Feature.mAppPackageName:Ljava/lang/String;
        //    78: aload_0        
        //    79: new             Lorg/json/JSONObject;
        //    82: dup            
        //    83: invokespecial   org/json/JSONObject.<init>:()V
        //    86: putfield        com/kochava/android/tracker/Feature.kvinitdata:Lorg/json/JSONObject;
        //    89: aload_0        
        //    90: new             Lorg/json/JSONObject;
        //    93: dup            
        //    94: invokespecial   org/json/JSONObject.<init>:()V
        //    97: putfield        com/kochava/android/tracker/Feature.kvinitdataholder:Lorg/json/JSONObject;
        //   100: aload_0        
        //   101: new             Lorg/json/JSONObject;
        //   104: dup            
        //   105: invokespecial   org/json/JSONObject.<init>:()V
        //   108: putfield        com/kochava/android/tracker/Feature.kvinitorigdata:Lorg/json/JSONObject;
        //   111: aload_3        
        //   112: ldc_w           "partner_id"
        //   115: invokevirtual   java/util/HashMap.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //   118: checkcast       Ljava/lang/String;
        //   121: astore          7
        //   123: aload_3        
        //   124: ldc_w           "partner_name"
        //   127: invokevirtual   java/util/HashMap.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //   130: checkcast       Ljava/lang/String;
        //   133: astore          8
        //   135: aload_3        
        //   136: ldc             "kochava_app_id"
        //   138: invokevirtual   java/util/HashMap.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //   141: checkcast       Ljava/lang/String;
        //   144: astore          9
        //   146: aload_3        
        //   147: ldc             "currency"
        //   149: invokevirtual   java/util/HashMap.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //   152: checkcast       Ljava/lang/String;
        //   155: astore          10
        //   157: aload_3        
        //   158: ldc_w           "request_attribution"
        //   161: invokevirtual   java/util/HashMap.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //   164: checkcast       Ljava/lang/String;
        //   167: astore          11
        //   169: aload           10
        //   171: ifnull          188
        //   174: aload           10
        //   176: invokevirtual   java/lang/String.length:()I
        //   179: ifeq            188
        //   182: aload_0        
        //   183: aload           10
        //   185: invokespecial   com/kochava/android/tracker/Feature.setCurrency:(Ljava/lang/String;)V
        //   188: aload_0        
        //   189: aload_0        
        //   190: getfield        com/kochava/android/tracker/Feature.mContext:Landroid/content/Context;
        //   193: ldc             "initPrefs"
        //   195: iconst_0       
        //   196: invokevirtual   android/content/Context.getSharedPreferences:(Ljava/lang/String;I)Landroid/content/SharedPreferences;
        //   199: putfield        com/kochava/android/tracker/Feature.prefs:Landroid/content/SharedPreferences;
        //   202: aload           11
        //   204: ifnull          225
        //   207: aload           11
        //   209: invokevirtual   java/lang/String.toLowerCase:()Ljava/lang/String;
        //   212: ldc             "true"
        //   214: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   217: ifeq            225
        //   220: aload_0        
        //   221: iconst_1       
        //   222: invokevirtual   com/kochava/android/tracker/Feature.setRequestAttributionData:(Z)V
        //   225: aload_0        
        //   226: aload_0        
        //   227: getfield        com/kochava/android/tracker/Feature.mContext:Landroid/content/Context;
        //   230: ldc             "attributionPref"
        //   232: iconst_0       
        //   233: invokevirtual   android/content/Context.getSharedPreferences:(Ljava/lang/String;I)Landroid/content/SharedPreferences;
        //   236: putfield        com/kochava/android/tracker/Feature.attributionDataPrefs:Landroid/content/SharedPreferences;
        //   239: aload           7
        //   241: ifnull          255
        //   244: aload           7
        //   246: invokevirtual   java/lang/String.trim:()Ljava/lang/String;
        //   249: invokevirtual   java/lang/String.length:()I
        //   252: ifne            1199
        //   255: aload           8
        //   257: ifnull          271
        //   260: aload           8
        //   262: invokevirtual   java/lang/String.trim:()Ljava/lang/String;
        //   265: invokevirtual   java/lang/String.length:()I
        //   268: ifne            1199
        //   271: aload           9
        //   273: ifnull          287
        //   276: aload           9
        //   278: invokevirtual   java/lang/String.trim:()Ljava/lang/String;
        //   281: invokevirtual   java/lang/String.length:()I
        //   284: ifne            319
        //   287: getstatic       com/kochava/android/tracker/Global.DEBUGERROR:Z
        //   290: ifeq            302
        //   293: ldc             "KochavaTracker"
        //   295: ldc_w           "Kochava requires that you pass either a kochava app id, or a partner id and a partner name into the datamap during initialization."
        //   298: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //   301: pop            
        //   302: return         
        //   303: getstatic       com/kochava/android/tracker/Global.DEBUGERROR:Z
        //   306: ifeq            302
        //   309: ldc             "KochavaTracker"
        //   311: ldc_w           "Context you passed was null, cannot initialize."
        //   314: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //   317: pop            
        //   318: return         
        //   319: aload_0        
        //   320: aload           9
        //   322: putfield        com/kochava/android/tracker/Feature.mAppId:Ljava/lang/String;
        //   325: aload_0        
        //   326: getfield        com/kochava/android/tracker/Feature.kvinitdataholder:Lorg/json/JSONObject;
        //   329: ldc             "kochava_app_id"
        //   331: aload           9
        //   333: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
        //   336: pop            
        //   337: aload_0        
        //   338: getfield        com/kochava/android/tracker/Feature.kvinitorigdata:Lorg/json/JSONObject;
        //   341: ldc             "kochava_app_id"
        //   343: aload           9
        //   345: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
        //   348: pop            
        //   349: aload_0        
        //   350: getfield        com/kochava/android/tracker/Feature.prefs:Landroid/content/SharedPreferences;
        //   353: ldc             "kochavaappdata"
        //   355: ldc_w           ""
        //   358: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //   363: ldc_w           ""
        //   366: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   369: ifeq            396
        //   372: aload_0        
        //   373: getfield        com/kochava/android/tracker/Feature.prefs:Landroid/content/SharedPreferences;
        //   376: invokeinterface android/content/SharedPreferences.edit:()Landroid/content/SharedPreferences$Editor;
        //   381: ldc             "kochavaappdata"
        //   383: aload           9
        //   385: invokeinterface android/content/SharedPreferences$Editor.putString:(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
        //   390: invokeinterface android/content/SharedPreferences$Editor.commit:()Z
        //   395: pop            
        //   396: aload_0        
        //   397: getfield        com/kochava/android/tracker/Feature.kvinitdata:Lorg/json/JSONObject;
        //   400: ldc_w           "package"
        //   403: aload_0        
        //   404: invokespecial   com/kochava/android/tracker/Feature.getAppPackageName:()Ljava/lang/String;
        //   407: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
        //   410: pop            
        //   411: aload_0        
        //   412: getfield        com/kochava/android/tracker/Feature.kvinitdata:Lorg/json/JSONObject;
        //   415: ldc_w           "platform"
        //   418: ldc_w           "android"
        //   421: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
        //   424: pop            
        //   425: aload_0        
        //   426: getfield        com/kochava/android/tracker/Feature.kvinitdata:Lorg/json/JSONObject;
        //   429: ldc_w           "session_tracking"
        //   432: ldc_w           "full"
        //   435: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
        //   438: pop            
        //   439: aload_0        
        //   440: getfield        com/kochava/android/tracker/Feature.kvinitdata:Lorg/json/JSONObject;
        //   443: ldc             "currency"
        //   445: aload_0        
        //   446: getfield        com/kochava/android/tracker/Feature.prefs:Landroid/content/SharedPreferences;
        //   449: ldc             "currency"
        //   451: ldc_w           "USD"
        //   454: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //   459: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
        //   462: pop            
        //   463: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
        //   466: ifeq            495
        //   469: ldc             "KochavaTracker"
        //   471: new             Ljava/lang/StringBuilder;
        //   474: dup            
        //   475: ldc_w           "Do we have attribution data? "
        //   478: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   481: aload_0        
        //   482: invokespecial   com/kochava/android/tracker/Feature.haveAttributionData:()Z
        //   485: invokevirtual   java/lang/StringBuilder.append:(Z)Ljava/lang/StringBuilder;
        //   488: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   491: invokestatic    android/util/Log.i:(Ljava/lang/String;Ljava/lang/String;)I
        //   494: pop            
        //   495: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
        //   498: ifeq            527
        //   501: ldc             "KochavaTracker"
        //   503: new             Ljava/lang/StringBuilder;
        //   506: dup            
        //   507: ldc_w           "Did we request attribution data? "
        //   510: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   513: aload_0        
        //   514: getfield        com/kochava/android/tracker/Feature.requestAttributionData:Z
        //   517: invokevirtual   java/lang/StringBuilder.append:(Z)Ljava/lang/StringBuilder;
        //   520: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   523: invokestatic    android/util/Log.i:(Ljava/lang/String;Ljava/lang/String;)I
        //   526: pop            
        //   527: aload_0        
        //   528: invokespecial   com/kochava/android/tracker/Feature.haveAttributionData:()Z
        //   531: ifne            569
        //   534: aload_0        
        //   535: getfield        com/kochava/android/tracker/Feature.requestAttributionData:Z
        //   538: ifeq            569
        //   541: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
        //   544: ifeq            556
        //   547: ldc             "KochavaTracker"
        //   549: ldc_w           "Requesting attribution data..."
        //   552: invokestatic    android/util/Log.i:(Ljava/lang/String;Ljava/lang/String;)I
        //   555: pop            
        //   556: aload_0        
        //   557: getfield        com/kochava/android/tracker/Feature.kvinitdata:Lorg/json/JSONObject;
        //   560: ldc_w           "request_attribution"
        //   563: ldc             "true"
        //   565: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
        //   568: pop            
        //   569: aload_0        
        //   570: getfield        com/kochava/android/tracker/Feature.kvinitorigdata:Lorg/json/JSONObject;
        //   573: ldc             "currency"
        //   575: aload_0        
        //   576: getfield        com/kochava/android/tracker/Feature.prefs:Landroid/content/SharedPreferences;
        //   579: ldc             "currency"
        //   581: ldc_w           "USD"
        //   584: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //   589: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
        //   592: pop            
        //   593: aload_0        
        //   594: getfield        com/kochava/android/tracker/Feature.kvinitorigdata:Lorg/json/JSONObject;
        //   597: ldc_w           "session_tracking"
        //   600: ldc_w           "full"
        //   603: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
        //   606: pop            
        //   607: aload_0        
        //   608: getfield        com/kochava/android/tracker/Feature.kvinitorigdata:Lorg/json/JSONObject;
        //   611: ldc             "currency"
        //   613: aload_0        
        //   614: getfield        com/kochava/android/tracker/Feature.prefs:Landroid/content/SharedPreferences;
        //   617: ldc             "currency"
        //   619: ldc_w           "USD"
        //   622: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //   627: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
        //   630: pop            
        //   631: aload_0        
        //   632: getfield        com/kochava/android/tracker/Feature.kvinitdataholder:Lorg/json/JSONObject;
        //   635: ldc_w           "sdk_version"
        //   638: ldc_w           "Android20130808"
        //   641: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
        //   644: pop            
        //   645: aload_0        
        //   646: getfield        com/kochava/android/tracker/Feature.kvinitdataholder:Lorg/json/JSONObject;
        //   649: ldc_w           "sdk_protocol"
        //   652: ldc_w           "3"
        //   655: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
        //   658: pop            
        //   659: aload_0        
        //   660: getfield        com/kochava/android/tracker/Feature.kvinitdataholder:Lorg/json/JSONObject;
        //   663: ldc_w           "data"
        //   666: aload_0        
        //   667: getfield        com/kochava/android/tracker/Feature.kvinitdata:Lorg/json/JSONObject;
        //   670: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
        //   673: pop            
        //   674: aload_0        
        //   675: getfield        com/kochava/android/tracker/Feature.kvinitdataholder:Lorg/json/JSONObject;
        //   678: ldc_w           "data_orig"
        //   681: aload_0        
        //   682: getfield        com/kochava/android/tracker/Feature.kvinitorigdata:Lorg/json/JSONObject;
        //   685: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
        //   688: pop            
        //   689: getstatic       com/kochava/android/tracker/Feature.appContext:Landroid/content/Context;
        //   692: ifnonnull       702
        //   695: aload_1        
        //   696: invokevirtual   android/content/Context.getApplicationContext:()Landroid/content/Context;
        //   699: putstatic       com/kochava/android/tracker/Feature.appContext:Landroid/content/Context;
        //   702: aload_0        
        //   703: invokestatic    java/lang/System.currentTimeMillis:()J
        //   706: ldc2_w          1000
        //   709: ldiv           
        //   710: putfield        com/kochava/android/tracker/Feature.startTime:J
        //   713: ldc_w           ""
        //   716: astore          14
        //   718: new             Landroid/content/ComponentName;
        //   721: dup            
        //   722: aload_0        
        //   723: getfield        com/kochava/android/tracker/Feature.mContext:Landroid/content/Context;
        //   726: ldc_w           Lcom/kochava/android/tracker/ReferralCapture;.class
        //   729: invokespecial   android/content/ComponentName.<init>:(Landroid/content/Context;Ljava/lang/Class;)V
        //   732: astore          15
        //   734: aload_0        
        //   735: getfield        com/kochava/android/tracker/Feature.mContext:Landroid/content/Context;
        //   738: invokevirtual   android/content/Context.getPackageManager:()Landroid/content/pm/PackageManager;
        //   741: aload           15
        //   743: iconst_0       
        //   744: invokevirtual   android/content/pm/PackageManager.getReceiverInfo:(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
        //   747: pop            
        //   748: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
        //   751: istore          27
        //   753: iconst_0       
        //   754: istore          17
        //   756: iload           27
        //   758: ifeq            770
        //   761: ldc             "KochavaTracker"
        //   763: ldc_w           "Receiver registered."
        //   766: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //   769: pop            
        //   770: aload_0        
        //   771: getfield        com/kochava/android/tracker/Feature.mContext:Landroid/content/Context;
        //   774: invokevirtual   android/content/Context.getPackageManager:()Landroid/content/pm/PackageManager;
        //   777: ldc_w           "android.permission.ACCESS_NETWORK_STATE"
        //   780: aload_0        
        //   781: getfield        com/kochava/android/tracker/Feature.mContext:Landroid/content/Context;
        //   784: invokevirtual   android/content/Context.getPackageName:()Ljava/lang/String;
        //   787: invokevirtual   android/content/pm/PackageManager.checkPermission:(Ljava/lang/String;Ljava/lang/String;)I
        //   790: ifge            819
        //   793: iconst_1       
        //   794: istore          17
        //   796: new             Ljava/lang/StringBuilder;
        //   799: dup            
        //   800: aload           14
        //   802: invokestatic    java/lang/String.valueOf:(Ljava/lang/Object;)Ljava/lang/String;
        //   805: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   808: ldc_w           "\n    PERMMISION MISSING: android.permission.ACCESS_NETWORK_STATE"
        //   811: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   814: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   817: astore          14
        //   819: aload_0        
        //   820: getfield        com/kochava/android/tracker/Feature.mContext:Landroid/content/Context;
        //   823: invokevirtual   android/content/Context.getPackageManager:()Landroid/content/pm/PackageManager;
        //   826: ldc_w           "android.permission.INTERNET"
        //   829: aload_0        
        //   830: getfield        com/kochava/android/tracker/Feature.mContext:Landroid/content/Context;
        //   833: invokevirtual   android/content/Context.getPackageName:()Ljava/lang/String;
        //   836: invokevirtual   android/content/pm/PackageManager.checkPermission:(Ljava/lang/String;Ljava/lang/String;)I
        //   839: ifge            868
        //   842: iconst_1       
        //   843: istore          17
        //   845: new             Ljava/lang/StringBuilder;
        //   848: dup            
        //   849: aload           14
        //   851: invokestatic    java/lang/String.valueOf:(Ljava/lang/Object;)Ljava/lang/String;
        //   854: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   857: ldc_w           "\n    PERMMISION MISSING: android.permission.INTERNET"
        //   860: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   863: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   866: astore          14
        //   868: aload_0        
        //   869: getfield        com/kochava/android/tracker/Feature.mContext:Landroid/content/Context;
        //   872: invokevirtual   android/content/Context.getPackageManager:()Landroid/content/pm/PackageManager;
        //   875: ldc_w           "android.permission.ACCESS_WIFI_STATE"
        //   878: aload_0        
        //   879: getfield        com/kochava/android/tracker/Feature.mContext:Landroid/content/Context;
        //   882: invokevirtual   android/content/Context.getPackageName:()Ljava/lang/String;
        //   885: invokevirtual   android/content/pm/PackageManager.checkPermission:(Ljava/lang/String;Ljava/lang/String;)I
        //   888: ifge            917
        //   891: iconst_1       
        //   892: istore          17
        //   894: new             Ljava/lang/StringBuilder;
        //   897: dup            
        //   898: aload           14
        //   900: invokestatic    java/lang/String.valueOf:(Ljava/lang/Object;)Ljava/lang/String;
        //   903: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   906: ldc_w           "\n    PERMMISION MISSING: android.permission.ACCESS_WIFI_STATET"
        //   909: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   912: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   915: astore          14
        //   917: iload           17
        //   919: ifeq            951
        //   922: getstatic       com/kochava/android/tracker/Global.DEBUGERROR:Z
        //   925: ifeq            937
        //   928: ldc             "KochavaRequirements"
        //   930: ldc_w           "**NOTICE** The following items may not have been implemented correctly. Please refer to the Kochava SDK documentation to resolve these issues:"
        //   933: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //   936: pop            
        //   937: getstatic       com/kochava/android/tracker/Global.DEBUGERROR:Z
        //   940: ifeq            951
        //   943: ldc             "KochavaRequirements"
        //   945: aload           14
        //   947: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //   950: pop            
        //   951: aload_0        
        //   952: aload_0        
        //   953: getfield        com/kochava/android/tracker/Feature.mContext:Landroid/content/Context;
        //   956: ldc_w           "phone"
        //   959: invokevirtual   android/content/Context.getSystemService:(Ljava/lang/String;)Ljava/lang/Object;
        //   962: checkcast       Landroid/telephony/TelephonyManager;
        //   965: invokevirtual   android/telephony/TelephonyManager.getDeviceId:()Ljava/lang/String;
        //   968: putfield        com/kochava/android/tracker/Feature.mIMEI:Ljava/lang/String;
        //   971: aload_0        
        //   972: aload_0        
        //   973: getfield        com/kochava/android/tracker/Feature.mContext:Landroid/content/Context;
        //   976: ldc_w           "wifi"
        //   979: invokevirtual   android/content/Context.getSystemService:(Ljava/lang/String;)Ljava/lang/Object;
        //   982: checkcast       Landroid/net/wifi/WifiManager;
        //   985: invokevirtual   android/net/wifi/WifiManager.getConnectionInfo:()Landroid/net/wifi/WifiInfo;
        //   988: invokevirtual   android/net/wifi/WifiInfo.getMacAddress:()Ljava/lang/String;
        //   991: putfield        com/kochava/android/tracker/Feature.mMacAddr:Ljava/lang/String;
        //   994: aload_0        
        //   995: new             Ljava/lang/StringBuilder;
        //   998: dup            
        //   999: ldc_w           "35"
        //  1002: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //  1005: getstatic       android/os/Build.BOARD:Ljava/lang/String;
        //  1008: invokevirtual   java/lang/String.length:()I
        //  1011: bipush          10
        //  1013: irem           
        //  1014: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //  1017: getstatic       android/os/Build.BRAND:Ljava/lang/String;
        //  1020: invokevirtual   java/lang/String.length:()I
        //  1023: bipush          10
        //  1025: irem           
        //  1026: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //  1029: getstatic       android/os/Build.CPU_ABI:Ljava/lang/String;
        //  1032: invokevirtual   java/lang/String.length:()I
        //  1035: bipush          10
        //  1037: irem           
        //  1038: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //  1041: getstatic       android/os/Build.DEVICE:Ljava/lang/String;
        //  1044: invokevirtual   java/lang/String.length:()I
        //  1047: bipush          10
        //  1049: irem           
        //  1050: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //  1053: getstatic       android/os/Build.DISPLAY:Ljava/lang/String;
        //  1056: invokevirtual   java/lang/String.length:()I
        //  1059: bipush          10
        //  1061: irem           
        //  1062: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //  1065: getstatic       android/os/Build.HOST:Ljava/lang/String;
        //  1068: invokevirtual   java/lang/String.length:()I
        //  1071: bipush          10
        //  1073: irem           
        //  1074: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //  1077: getstatic       android/os/Build.ID:Ljava/lang/String;
        //  1080: invokevirtual   java/lang/String.length:()I
        //  1083: bipush          10
        //  1085: irem           
        //  1086: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //  1089: getstatic       android/os/Build.MANUFACTURER:Ljava/lang/String;
        //  1092: invokevirtual   java/lang/String.length:()I
        //  1095: bipush          10
        //  1097: irem           
        //  1098: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //  1101: getstatic       android/os/Build.MODEL:Ljava/lang/String;
        //  1104: invokevirtual   java/lang/String.length:()I
        //  1107: bipush          10
        //  1109: irem           
        //  1110: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //  1113: getstatic       android/os/Build.PRODUCT:Ljava/lang/String;
        //  1116: invokevirtual   java/lang/String.length:()I
        //  1119: bipush          10
        //  1121: irem           
        //  1122: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //  1125: getstatic       android/os/Build.TAGS:Ljava/lang/String;
        //  1128: invokevirtual   java/lang/String.length:()I
        //  1131: bipush          10
        //  1133: irem           
        //  1134: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //  1137: getstatic       android/os/Build.TYPE:Ljava/lang/String;
        //  1140: invokevirtual   java/lang/String.length:()I
        //  1143: bipush          10
        //  1145: irem           
        //  1146: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //  1149: getstatic       android/os/Build.USER:Ljava/lang/String;
        //  1152: invokevirtual   java/lang/String.length:()I
        //  1155: bipush          10
        //  1157: irem           
        //  1158: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //  1161: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  1164: putfield        com/kochava/android/tracker/Feature.mEnvDeviceID:Ljava/lang/String;
        //  1167: aload_0        
        //  1168: getfield        com/kochava/android/tracker/Feature.kvinitdataholder:Lorg/json/JSONObject;
        //  1171: ldc_w           "kochava_device_id"
        //  1174: aload_0        
        //  1175: invokespecial   com/kochava/android/tracker/Feature.getDeviceId:()Ljava/lang/String;
        //  1178: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
        //  1181: pop            
        //  1182: new             Lcom/kochava/android/tracker/Feature$3;
        //  1185: dup            
        //  1186: aload_0        
        //  1187: iload_2        
        //  1188: invokespecial   com/kochava/android/tracker/Feature$3.<init>:(Lcom/kochava/android/tracker/Feature;Z)V
        //  1191: astore          22
        //  1193: aload           22
        //  1195: invokevirtual   java/lang/Thread.start:()V
        //  1198: return         
        //  1199: aload           7
        //  1201: ifnull          1231
        //  1204: aload           7
        //  1206: invokevirtual   java/lang/String.trim:()Ljava/lang/String;
        //  1209: invokevirtual   java/lang/String.length:()I
        //  1212: ifeq            1231
        //  1215: aload           8
        //  1217: ifnull          1231
        //  1220: aload           8
        //  1222: invokevirtual   java/lang/String.trim:()Ljava/lang/String;
        //  1225: invokevirtual   java/lang/String.length:()I
        //  1228: ifne            1285
        //  1231: getstatic       com/kochava/android/tracker/Global.DEBUGERROR:Z
        //  1234: ifeq            302
        //  1237: ldc             "KochavaTracker"
        //  1239: ldc_w           "Please make sure that you have passed both a partner id and a partner name."
        //  1242: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //  1245: pop            
        //  1246: return         
        //  1247: astore          12
        //  1249: getstatic       com/kochava/android/tracker/Global.DEBUGERROR:Z
        //  1252: ifeq            689
        //  1255: ldc             "KochavaTracker"
        //  1257: new             Ljava/lang/StringBuilder;
        //  1260: dup            
        //  1261: ldc_w           "Error building KVinit json object: "
        //  1264: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //  1267: aload           12
        //  1269: invokevirtual   org/json/JSONException.toString:()Ljava/lang/String;
        //  1272: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  1275: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  1278: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //  1281: pop            
        //  1282: goto            689
        //  1285: aload_0        
        //  1286: getfield        com/kochava/android/tracker/Feature.kvinitdata:Lorg/json/JSONObject;
        //  1289: ldc_w           "partner_id"
        //  1292: aload           7
        //  1294: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
        //  1297: pop            
        //  1298: aload_0        
        //  1299: getfield        com/kochava/android/tracker/Feature.kvinitdata:Lorg/json/JSONObject;
        //  1302: ldc_w           "partner_name"
        //  1305: aload           8
        //  1307: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
        //  1310: pop            
        //  1311: aload_0        
        //  1312: getfield        com/kochava/android/tracker/Feature.prefs:Landroid/content/SharedPreferences;
        //  1315: ldc             "kochavaappdata"
        //  1317: ldc_w           ""
        //  1320: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //  1325: ldc_w           ""
        //  1328: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //  1331: ifeq            1376
        //  1334: aload_0        
        //  1335: getfield        com/kochava/android/tracker/Feature.prefs:Landroid/content/SharedPreferences;
        //  1338: invokeinterface android/content/SharedPreferences.edit:()Landroid/content/SharedPreferences$Editor;
        //  1343: ldc             "kochavaappdata"
        //  1345: new             Ljava/lang/StringBuilder;
        //  1348: dup            
        //  1349: aload           7
        //  1351: invokestatic    java/lang/String.valueOf:(Ljava/lang/Object;)Ljava/lang/String;
        //  1354: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //  1357: aload           8
        //  1359: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  1362: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  1365: invokeinterface android/content/SharedPreferences$Editor.putString:(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
        //  1370: invokeinterface android/content/SharedPreferences$Editor.commit:()Z
        //  1375: pop            
        //  1376: aload           9
        //  1378: ifnull          1425
        //  1381: aload           9
        //  1383: invokevirtual   java/lang/String.trim:()Ljava/lang/String;
        //  1386: invokevirtual   java/lang/String.length:()I
        //  1389: ifeq            1425
        //  1392: aload_0        
        //  1393: aload           9
        //  1395: putfield        com/kochava/android/tracker/Feature.mAppId:Ljava/lang/String;
        //  1398: aload_0        
        //  1399: getfield        com/kochava/android/tracker/Feature.kvinitdataholder:Lorg/json/JSONObject;
        //  1402: ldc             "kochava_app_id"
        //  1404: aload           9
        //  1406: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
        //  1409: pop            
        //  1410: aload_0        
        //  1411: getfield        com/kochava/android/tracker/Feature.kvinitorigdata:Lorg/json/JSONObject;
        //  1414: ldc             "kochava_app_id"
        //  1416: aload           9
        //  1418: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
        //  1421: pop            
        //  1422: goto            396
        //  1425: aload_0        
        //  1426: new             Ljava/lang/StringBuilder;
        //  1429: dup            
        //  1430: ldc_w           "_p:"
        //  1433: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //  1436: aload           8
        //  1438: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  1441: ldc_w           ":"
        //  1444: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  1447: aload           7
        //  1449: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  1452: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  1455: putfield        com/kochava/android/tracker/Feature.mAppId:Ljava/lang/String;
        //  1458: goto            396
        //  1461: astore          16
        //  1463: iconst_1       
        //  1464: istore          17
        //  1466: new             Ljava/lang/StringBuilder;
        //  1469: dup            
        //  1470: aload           14
        //  1472: invokestatic    java/lang/String.valueOf:(Ljava/lang/Object;)Ljava/lang/String;
        //  1475: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //  1478: ldc_w           "\n    BROADCAST RECEIVER REGISTRATION MISSING: com.android.kochava.tracker.ReferralCapture"
        //  1481: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  1484: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  1487: astore          14
        //  1489: goto            770
        //  1492: astore          18
        //  1494: getstatic       com/kochava/android/tracker/Global.DEBUGERROR:Z
        //  1497: ifeq            971
        //  1500: ldc             "KochavaTracker"
        //  1502: new             Ljava/lang/StringBuilder;
        //  1505: dup            
        //  1506: ldc_w           "Couldn't gather IMEI: "
        //  1509: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //  1512: aload           18
        //  1514: invokevirtual   java/lang/Exception.toString:()Ljava/lang/String;
        //  1517: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  1520: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  1523: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //  1526: pop            
        //  1527: goto            971
        //  1530: astore          21
        //  1532: aload           21
        //  1534: invokevirtual   org/json/JSONException.printStackTrace:()V
        //  1537: goto            1182
        //  1540: astore          20
        //  1542: goto            994
        //  1545: astore          6
        //  1547: goto            78
        //  1550: astore          5
        //  1552: goto            38
        //    Signature:
        //  (Landroid/content/Context;ZLjava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;)V
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                                     
        //  -----  -----  -----  -----  ---------------------------------------------------------
        //  24     38     1550   1555   Ljava/lang/Exception;
        //  53     78     1545   1550   Ljava/lang/Exception;
        //  244    255    1247   1285   Lorg/json/JSONException;
        //  260    271    1247   1285   Lorg/json/JSONException;
        //  276    287    1247   1285   Lorg/json/JSONException;
        //  287    302    1247   1285   Lorg/json/JSONException;
        //  319    396    1247   1285   Lorg/json/JSONException;
        //  396    495    1247   1285   Lorg/json/JSONException;
        //  495    527    1247   1285   Lorg/json/JSONException;
        //  527    556    1247   1285   Lorg/json/JSONException;
        //  556    569    1247   1285   Lorg/json/JSONException;
        //  569    689    1247   1285   Lorg/json/JSONException;
        //  734    753    1461   1492   Landroid/content/pm/PackageManager$NameNotFoundException;
        //  761    770    1461   1492   Landroid/content/pm/PackageManager$NameNotFoundException;
        //  951    971    1492   1530   Ljava/lang/Exception;
        //  971    994    1540   1545   Ljava/lang/Exception;
        //  1167   1182   1530   1540   Lorg/json/JSONException;
        //  1204   1215   1247   1285   Lorg/json/JSONException;
        //  1220   1231   1247   1285   Lorg/json/JSONException;
        //  1231   1246   1247   1285   Lorg/json/JSONException;
        //  1285   1376   1247   1285   Lorg/json/JSONException;
        //  1381   1422   1247   1285   Lorg/json/JSONException;
        //  1425   1458   1247   1285   Lorg/json/JSONException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 653, Size: 653
        //     at java.util.ArrayList.rangeCheck(ArrayList.java:635)
        //     at java.util.ArrayList.get(ArrayList.java:411)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3305)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3419)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3419)
        //     at com.strobel.decompiler.ast.AstBuilder.build(AstBuilder.java:114)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:210)
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
    
    private String postEvent() {
        final String generateDataString = this.kDbAdapter.generateDataString();
        if (generateDataString == null) {
            return "";
        }
        final StringTokenizer stringTokenizer = new StringTokenizer(generateDataString, "=");
        final long long1 = Long.parseLong(stringTokenizer.nextToken());
        String s = stringTokenizer.nextToken();
        if (s.startsWith("[")) {
            s = s.substring(1);
        }
        if (s.endsWith("]")) {
            s = s.substring(0, s.length() - 1);
        }
        if (Global.DEBUG) {
            Log.e("KochavaTracker", "Post The Data 3>>>>>>" + s);
        }
        final boolean contains = s.contains("\"action\":\"initial\"");
        boolean b = false;
        if (contains) {
            if (Global.DEBUG) {
                Log.e("KochavaTracker", "Post Data: Event is initial, look at response");
            }
            b = true;
        }
        final HttpClient httpClient = this.createHttpClient(false);
        HttpProtocolParams.setUserAgent(httpClient.getParams(), this.mUserAgent);
        final HttpPost httpPost = new HttpPost("https://control.kochava.com/track/kvTracker.php");
        String inputStreamToString;
        try {
            final boolean contains2 = s.contains("identityLink");
            boolean b2 = false;
            if (contains2) {
                b2 = true;
            }
            final StringEntity entity = new StringEntity("[" + s + "]", "UTF-8");
            final BasicHeader contentType = new BasicHeader("Content-Type", "application/xml");
            httpPost.getParams().setBooleanParameter("http.protocol.expect-continue", false);
            entity.setContentType((Header)contentType);
            httpPost.setEntity((HttpEntity)entity);
            if (Global.DEBUG) {
                Log.e("KochavaTracker", "Trying to post an event.");
            }
            final HttpEntity entity2 = httpClient.execute((HttpUriRequest)httpPost).getEntity();
            if (entity2 == null) {
                return "";
            }
            try {
                if (Global.DEBUG) {
                    Log.e("KochavaTracker", "Grabbing Result...");
                }
                inputStreamToString = StringUtils.inputStreamToString(entity2.getContent());
                if (Global.DEBUG) {
                    Log.e("KochavaTracker", "Result: " + inputStreamToString);
                }
                if (b) {
                    if (inputStreamToString.contains("\"success\":\"1\"")) {
                        if (Global.DEBUG) {
                            Log.i("KochavaTracker", "Got success response, cleaning database.");
                        }
                        this.kDbAdapter.cleanupEvents(long1);
                    }
                }
                else {
                    this.kDbAdapter.cleanupEvents(long1);
                }
                if (!b2) {
                    return inputStreamToString;
                }
                final boolean contains3 = inputStreamToString.contains("\"success\":\"1\"");
                if (Feature.linkIdentityHandler != null) {
                    final Message obtain = Message.obtain();
                    final Bundle data = new Bundle();
                    data.putBoolean("linkIdentityBool", contains3);
                    obtain.setData(data);
                    Feature.linkIdentityHandler.sendMessage(obtain);
                    return inputStreamToString;
                }
                return inputStreamToString;
            }
            catch (IOException ex) {
                if (Global.DEBUG) {
                    Log.e("KochavaTracker", "TrackTask", (Throwable)ex);
                }
                return "";
            }
            catch (OutOfMemoryError outOfMemoryError) {
                if (Global.DEBUG) {
                    Log.e("KochavaTracker", "TrackTask", (Throwable)outOfMemoryError);
                }
                return "";
            }
        }
        catch (ClientProtocolException ex2) {
            if (Global.DEBUG) {
                Log.e("KochavaTracker", "TrackTask", (Throwable)ex2);
            }
            return "";
        }
        catch (IOException ex3) {
            if (Global.DEBUG) {
                Log.e("KochavaTracker", "TrackTask", (Throwable)ex3);
            }
            return "";
        }
        return inputStreamToString;
    }
    
    private void queInitial(final boolean b) {
        if (this.prefs.getString("initBool", "").equals("false") && this.initialPropertiesObject != null && this.initialObject != null) {
            try {
                if (Global.DEBUG) {
                    Log.e("KochavaTracker", "Initial properties: " + this.initialPropertiesObject);
                }
                if (Global.DEBUG) {
                    Log.e("KochavaTracker", "Initital Oject: " + this.initialObject);
                }
                if (!this.prefs.getString("initData", "noData").equals("noData")) {
                    this.initialPropertiesObject.put("conversion_type", (Object)"gplay");
                    this.initialPropertiesObject.put("conversion_data", (Object)this.prefs.getString("initData", ""));
                    if (Global.DEBUG) {
                        Log.e("KochavaTracker", "Got referral, attaching: " + this.prefs.getString("initData", ""));
                    }
                }
                else if (Global.DEBUG) {
                    Log.e("KochavaTracker", "Did not get referral data.");
                }
                this.initialObject.put("data", (Object)this.initialPropertiesObject);
                this.kDbAdapter.addEvent(this.initialObject);
                if (Global.DEBUG) {
                    Log.e("KochavaTracker", "Sending Initial");
                }
                this.prefs.edit().putString("initBool", "true").commit();
                if (b) {
                    this.initTimer.cancel();
                }
            }
            catch (JSONException ex) {
                if (Global.DEBUG) {
                    Log.e("KochavaTracker", "An error occured during que initial.", (Throwable)ex);
                }
                ex.printStackTrace();
            }
        }
    }
    
    public static void setAttributionHandler(final Handler attributionDataHandler) {
        Feature.attributionDataHandler = attributionDataHandler;
    }
    
    private void setCurrency(final String str) {
        if (str != null && Global.CURRENCYLIST.contains(str)) {
            this.prefs = this.mContext.getSharedPreferences("initPrefs", 0);
            this.prefs.edit().putString("currency", str).commit();
        }
        else if (Global.DEBUGERROR) {
            Log.e("KochavaTracker", "Trying to set currency, but " + str + " is not a valid currency.");
        }
    }
    
    public static void setErrorDebug(final boolean debugerror) {
        Global.DEBUGERROR = debugerror;
    }
    
    public void clearSuperProperties() {
        if (this.badInit) {
            if (Global.DEBUGERROR) {
                Log.e("KochavaTracker", "Kochava library was not initialized properly (Unexpected parameters). Until it is, this method cannot be used.");
            }
            return;
        }
        if (Global.DEBUG) {
            Log.e("KochavaTracker", "clearSuperProperties");
        }
        this.mSuperProperties = null;
    }
    
    public void enableTestMode() {
        if (this.badInit) {
            if (Global.DEBUGERROR) {
                Log.e("KochavaTracker", "Kochava library was not initialized properly (Unexpected parameters). Until it is, this method cannot be used.");
            }
            return;
        }
        if (Global.DEBUG) {
            Log.e("KochavaTracker", "enableTestMode");
        }
        this.mTestMode = true;
    }
    
    public void endSession() {
        if (this.badInit) {
            if (Global.DEBUGERROR) {
                Log.e("KochavaTracker", "Kochava library was not initialized properly (Unexpected parameters). Until it is, this method cannot be used.");
            }
        }
        else {
            if (Global.DEBUG) {
                Log.e("KochavaTracker", "Called End");
            }
            if (this.canSendSession) {
                this.eventSession("exit");
                return;
            }
            if (Global.DEBUG) {
                Log.e("KochavaTracker", "Session events disabled by server.");
            }
        }
    }
    
    public void event(final String s, final String value) {
        if (this.badInit) {
            if (Global.DEBUGERROR) {
                Log.e("KochavaTracker", "Kochava library was not initialized properly (Unexpected parameters). Until it is, this method cannot be used.");
            }
        }
        else {
            try {
                if (Global.DEBUG) {
                    Log.e("KochavaTracker", "Got event " + s);
                }
                final HashMap<String, String> hashMap = new HashMap<String, String>();
                hashMap.put("event_name", s);
                hashMap.put("event_data", value);
                this.fireEvent("event", hashMap);
            }
            catch (Exception obj) {
                if (Global.DEBUG) {
                    Log.e("KochavaTracker", "Error in event call: " + obj);
                }
            }
        }
    }
    
    public void eventSpatial(final String s, final double number, final double number2, final double number3, final String value) {
        if (this.badInit) {
            if (Global.DEBUGERROR) {
                Log.e("KochavaTracker", "Kochava library was not initialized properly (Unexpected parameters). Until it is, this method cannot be used.");
            }
        }
        else {
            try {
                if (Global.DEBUG) {
                    Log.e("KochavaTracker", "Got event " + s);
                }
                final HashMap<String, String> hashMap = new HashMap<String, String>();
                hashMap.put("event_name", s);
                final DecimalFormat decimalFormat = new DecimalFormat("#.##");
                hashMap.put("x", Double.valueOf(decimalFormat.format(number)).toString());
                hashMap.put("y", Double.valueOf(decimalFormat.format(number2)).toString());
                hashMap.put("z", Double.valueOf(decimalFormat.format(number3)).toString());
                hashMap.put("event_data", value);
                this.fireEvent("spatial", hashMap);
            }
            catch (Exception obj) {
                if (Global.DEBUG) {
                    Log.e("KochavaTracker", "Error in event call: " + obj);
                }
            }
        }
    }
    
    public void flush() {
        if (this.badInit) {
            Log.e("KochavaTracker", "Kochava library was not initialized properly (Unexpected parameters). Until it is, this method cannot be used.");
            return;
        }
        if (Global.DEBUG) {
            Log.e("KochavaTracker", "flush");
        }
        this.executor.submit(new TrackTask((TrackTask)null));
    }
    
    public String getAttributionData() {
        if (this.attributionDataPrefs != null) {
            return this.attributionDataPrefs.getString("attributionData", "");
        }
        return "";
    }
    
    protected String getOpenUDID() {
        final String openUDIDInContext = OpenUDID.getOpenUDIDInContext();
        if (openUDIDInContext != null) {
            return openUDIDInContext;
        }
        return "error";
    }
    
    public void linkIdentity(final Map<String, String> map) {
        if (this.badInit) {
            if (Global.DEBUGERROR) {
                Log.e("KochavaTracker", "Kochava library was not initialized properly (Unexpected parameters). Until it is, this method cannot be used.");
            }
            return;
        }
        if (Global.DEBUG) {
            Log.e("KochavaTracker", "Mapping identity");
        }
        this.fireEvent("identityLink", map);
    }
    
    public void linkIdentity(final Map<String, String> map, final Handler linkIdentityHandler) {
        if (this.badInit) {
            if (Global.DEBUGERROR) {
                Log.e("KochavaTracker", "Kochava library was not initialized properly (Unexpected parameters). Until it is, this method cannot be used.");
            }
            return;
        }
        if (Global.DEBUG) {
            Log.e("KochavaTracker", "Mapping identity");
        }
        this.fireEvent("identityLink", map);
        Feature.linkIdentityHandler = linkIdentityHandler;
    }
    
    public void registerSuperProperties(final Map<String, String> mSuperProperties) {
        if (this.badInit) {
            if (Global.DEBUGERROR) {
                Log.e("KochavaTracker", "Kochava library was not initialized properly (Unexpected parameters). Until it is, this method cannot be used.");
            }
        }
        else {
            if (Global.DEBUG) {
                Log.e("KochavaTracker", "registerSuperProperties");
            }
            if (this.mSuperProperties == null) {
                this.mSuperProperties = mSuperProperties;
                return;
            }
            for (final Map.Entry<String, String> entry : mSuperProperties.entrySet()) {
                this.mSuperProperties.put(entry.getKey(), entry.getValue());
            }
        }
    }
    
    public void setAppLimitTracking(final boolean b) {
        new Thread() {
            @SuppressLint({ "NewApi" })
            @Override
            public void run() {
                try {
                    final JSONObject jsonObject = new JSONObject();
                    jsonObject.put("action", (Object)"options");
                    final JSONObject jsonObject2 = new JSONObject();
                    if (b) {
                        jsonObject2.put("app_limit_tracking", (Object)"1");
                    }
                    else {
                        jsonObject2.put("app_limit_tracking", (Object)"0");
                    }
                    jsonObject2.put("device_limit_tracking", (Object)"0");
                    jsonObject.put("data", (Object)jsonObject2);
                    jsonObject.put("kochava_app_id", (Object)Feature.this.mAppId);
                    jsonObject.put("kochava_device_id", (Object)Feature.this.getDeviceId());
                    if (Global.DEBUG) {
                        Log.i("KochavaTracker", "kv_options thread started.");
                    }
                    if (Global.DEBUG) {
                        Log.i("KochavaTracker", "kv_options post: " + jsonObject.toString());
                    }
                    final HttpClient access$35 = Feature.this.createHttpClient(true);
                    HttpProtocolParams.setUserAgent(access$35.getParams(), Feature.this.mUserAgent);
                    final HttpPost httpPost = new HttpPost("https://control.kochava.com/track/kv_options.php");
                    final StringEntity entity = new StringEntity(jsonObject.toString(), "UTF-8");
                    final BasicHeader contentType = new BasicHeader("Content-Type", "application/xml");
                    httpPost.getParams().setBooleanParameter("http.protocol.expect-continue", false);
                    entity.setContentType((Header)contentType);
                    httpPost.setEntity((HttpEntity)entity);
                    if (Global.DEBUG) {
                        Log.e("KochavaTracker", "Trying to post to kv_options.");
                    }
                    if (access$35.execute((HttpUriRequest)httpPost).getEntity() != null) {
                        goto Label_0311;
                    }
                    if (Global.DEBUGERROR) {
                        Log.e("KochavaTracker", "Could not get a response entity from kv_options.");
                    }
                }
                catch (ClientProtocolException ex) {
                    if (Global.DEBUG) {
                        Log.e("KochavaTracker", "TrackTask", (Throwable)ex);
                    }
                }
                catch (IOException ex2) {
                    if (Global.DEBUG) {
                        Log.e("KochavaTracker", "TrackTask", (Throwable)ex2);
                    }
                }
                catch (Exception ex3) {
                    if (Global.DEBUGERROR) {
                        Log.e("KochavaTracker", "Unexpected error during kv_options communication.", (Throwable)ex3);
                    }
                }
            }
        }.start();
    }
    
    public void setLatlong(final String s, final String s2) {
        if (s == null || s2 == null) {
            if (Global.DEBUGERROR) {
                Log.e("KochavaTracker", "Trying to set lat/long, but one/both of the parameters where null.");
            }
            return;
        }
        this.prefs = this.mContext.getSharedPreferences("initPrefs", 0);
        this.prefs.edit().putString("mylat", s).commit();
        this.prefs.edit().putString("mylong", s2).commit();
    }
    
    public void setRequestAttributionData(final boolean requestAttributionData) {
        this.requestAttributionData = requestAttributionData;
    }
    
    public void setVersion(final String mAppVersionName) {
        this.mAppVersionName = mAppVersionName;
    }
    
    public void startSession() {
        if (this.badInit) {
            if (Global.DEBUGERROR) {
                Log.e("KochavaTracker", "Kochava library was not initialized properly (Unexpected parameters). Until it is, this method cannot be used.");
            }
        }
        else {
            if (Global.DEBUG) {
                Log.e("KochavaTracker", "Called Start");
            }
            this.startTime = System.currentTimeMillis() / 1000L;
            if (this.canSendSession) {
                this.eventSession("launch");
                return;
            }
            if (Global.DEBUG) {
                Log.e("KochavaTracker", "Session events disabled by server.");
            }
        }
    }
    
    public final class CURRENCIES
    {
        public static final String AED = "AED";
        public static final String AUD = "AUD";
        public static final String CAD = "CAD";
        public static final String CHF = "CHF";
        public static final String CNY = "CNY";
        public static final String DKK = "DKK";
        public static final String EUR = "EUR";
        public static final String GBP = "GBP";
        public static final String IDR = "IDR";
        public static final String ILS = "ILS";
        public static final String INR = "INR";
        public static final String MXP = "MXP";
        public static final String NOK = "NOK";
        public static final String NZD = "NZD";
        public static final String RUB = "RUB";
        public static final String SAR = "SAR";
        public static final String SEK = "SEK";
        public static final String TRY = "TRY";
        public static final String USD = "USD";
        public static final String YEN = "YEN";
        public static final String ZAR = "ZAR";
    }
    
    public final class INPUTITEMS
    {
        public static final String CURRENCY = "currency";
        public static final String KOCHAVA_APP_ID = "kochava_app_id";
        public static final String PARTNER_ID = "partner_id";
        public static final String PARTNER_NAME = "partner_name";
        public static final String REQUEST_ATTRIBUTION = "request_attribution";
    }
    
    public final class PARAMS
    {
        public static final String ANDROID_ID = "android_id";
        public static final String FB_ATTRIBUTION_ID = "fb_attribution_id";
        public static final String IMEI = "imei";
        public static final String MAC = "mac";
        public static final String ODIN = "odin";
        public static final String OPEN_UDID = "open_udid";
    }
    
    private class TrackTask implements Runnable
    {
        @Override
        public void run() {
            Feature.this.postEvent();
        }
    }
}
