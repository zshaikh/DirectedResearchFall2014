package com.AdX.tag;

import android.net.*;
import android.util.*;
import javax.xml.parsers.*;
import java.io.*;
import android.content.*;
import android.content.pm.*;
import android.database.*;
import org.w3c.dom.*;
import java.util.concurrent.*;
import android.os.*;

public final class AdXConnect
{
    public static final String ATTRIBUTION_ID_COLUMN_NAME = "aid";
    public static final Uri ATTRIBUTION_ID_CONTENT_URI;
    private static AdXConnect AdXConnectEventInstance;
    private static AdXConnect AdXConnectInstance;
    private static AdXURLConnection AdXURLConnection;
    private static String AdX_PREFERENCE;
    public static boolean DEBUG;
    public static int LOGLEVEL;
    private static String MODREFERRAL;
    private static String RECEIVER_DONE;
    private static String REFERRAL_URL;
    private static String UPDATE;
    public static boolean WARN;
    private static String referralURL;
    private static final ScheduledExecutorService scheduledExecutor;
    private String AdXClickURL;
    private String SEND_TAG;
    private String androidID;
    private String appID;
    private String appVersion;
    private String clientID;
    private ConnectEventTask connectEventTask;
    private ConnectTask connectTask;
    private Context context;
    private String deviceCountryCode;
    private String deviceID;
    private String deviceLanguage;
    private String deviceName;
    private String deviceOSVersion;
    private String deviceScreenDensity;
    private String deviceScreenLayoutSize;
    private String deviceType;
    private String fbattribution;
    private boolean isDataSent;
    private String libraryVersion;
    private String macAddress;
    private String sdkType;
    private String storeAppID;
    private String tagVersion;
    private String urlParams;
    private String userAgent;
    
    static {
        AdXConnect.AdXConnectInstance = null;
        AdXConnect.AdXConnectEventInstance = null;
        AdXConnect.AdXURLConnection = null;
        scheduledExecutor = Executors.newScheduledThreadPool(1);
        ATTRIBUTION_ID_CONTENT_URI = Uri.parse("content://com.facebook.katana.provider.AttributionIdProvider");
        AdXConnect.referralURL = "";
        AdXConnect.AdX_PREFERENCE = "AdXPrefrences";
        AdXConnect.MODREFERRAL = "AdXReferral";
        AdXConnect.RECEIVER_DONE = "ReceiverDone";
        AdXConnect.UPDATE = "AdXUpdate";
        AdXConnect.REFERRAL_URL = "InstallReferral";
        AdXConnect.LOGLEVEL = 1;
        AdXConnect.WARN = (AdXConnect.LOGLEVEL > 1);
        AdXConnect.DEBUG = (AdXConnect.LOGLEVEL > 0);
    }
    
    private AdXConnect(final Context context, final int i) {
        super();
        this.connectTask = null;
        this.connectEventTask = null;
        this.context = null;
        this.deviceID = "";
        this.deviceName = "";
        this.deviceType = "";
        this.deviceOSVersion = "";
        this.deviceCountryCode = "";
        this.deviceLanguage = "";
        this.androidID = "";
        this.appID = "";
        this.clientID = "";
        this.appVersion = "";
        this.libraryVersion = "";
        this.deviceScreenDensity = "";
        this.deviceScreenLayoutSize = "";
        this.macAddress = "";
        this.tagVersion = "2.4.3";
        this.urlParams = "";
        this.sdkType = "";
        this.userAgent = "";
        this.storeAppID = "";
        this.fbattribution = "";
        this.isDataSent = false;
        this.AdXClickURL = "";
        this.SEND_TAG = "SendTag";
        this.context = context;
        final String string = this.context.getSharedPreferences(AdXConnect.AdX_PREFERENCE, 0).getString(this.SEND_TAG, (String)null);
        if (string != null && string.equals("stop")) {
            if (AdXConnect.DEBUG) {
                Log.i("AdXAppTracker", "SendTag is set to stop ");
            }
            return;
        }
        this.getApplicationData();
        this.fbattribution = getFacebookAttributionId(this.context);
        this.urlParams = String.valueOf(this.urlParams) + "udid=" + this.deviceID + "&";
        this.urlParams = String.valueOf(this.urlParams) + "androidID=" + this.androidID + "&";
        this.urlParams = String.valueOf(this.urlParams) + "macAddress=" + this.macAddress + "&";
        this.urlParams = String.valueOf(this.urlParams) + "type=" + this.sdkType + "&";
        this.urlParams = String.valueOf(this.urlParams) + "storeAppID=" + this.storeAppID + "&";
        this.urlParams = String.valueOf(this.urlParams) + "device_name=" + this.deviceName + "&";
        this.urlParams = String.valueOf(this.urlParams) + "device_type=" + this.deviceType + "&";
        this.urlParams = String.valueOf(this.urlParams) + "os_version=" + this.deviceOSVersion + "&";
        this.urlParams = String.valueOf(this.urlParams) + "country_code=" + this.deviceCountryCode + "&";
        this.urlParams = String.valueOf(this.urlParams) + "language=" + this.deviceLanguage + "&";
        this.urlParams = String.valueOf(this.urlParams) + "app_id=" + this.appID + "&";
        this.urlParams = String.valueOf(this.urlParams) + "clientid=" + this.clientID + "&";
        this.urlParams = String.valueOf(this.urlParams) + "app_version=" + this.appVersion + "&";
        this.urlParams = String.valueOf(this.urlParams) + "tag_version=" + this.tagVersion + "&";
        this.urlParams = String.valueOf(this.urlParams) + "fbattribution=" + this.fbattribution + "&";
        this.urlParams = String.valueOf(this.urlParams) + "uagent=" + this.userAgent + "&";
        this.urlParams = String.valueOf(this.urlParams) + "update=" + i;
        if (this.deviceScreenDensity.length() > 0 && this.deviceScreenLayoutSize.length() > 0) {
            this.urlParams = String.valueOf(this.urlParams) + "&";
            this.urlParams = String.valueOf(this.urlParams) + "screen_density=" + this.deviceScreenDensity + "&";
            this.urlParams = String.valueOf(this.urlParams) + "screen_layout_size=" + this.deviceScreenLayoutSize;
        }
        (this.connectTask = new ConnectTask((ConnectTask)null)).execute((Object[])new Void[0]);
    }
    
    private AdXConnect(final Context context, final String str, final String str2, final String str3) {
        super();
        this.connectTask = null;
        this.connectEventTask = null;
        this.context = null;
        this.deviceID = "";
        this.deviceName = "";
        this.deviceType = "";
        this.deviceOSVersion = "";
        this.deviceCountryCode = "";
        this.deviceLanguage = "";
        this.androidID = "";
        this.appID = "";
        this.clientID = "";
        this.appVersion = "";
        this.libraryVersion = "";
        this.deviceScreenDensity = "";
        this.deviceScreenLayoutSize = "";
        this.macAddress = "";
        this.tagVersion = "2.4.3";
        this.urlParams = "";
        this.sdkType = "";
        this.userAgent = "";
        this.storeAppID = "";
        this.fbattribution = "";
        this.isDataSent = false;
        this.AdXClickURL = "";
        this.SEND_TAG = "SendTag";
        this.context = context;
        if (AdXConnect.DEBUG) {
            Log.i("AdXAppTracker", "In Constructor ");
        }
        this.getApplicationData();
        if (AdXConnect.DEBUG) {
            Log.i("AdXAppTracker", "Got Application Data ");
        }
        this.urlParams = String.valueOf(this.urlParams) + "udid=" + this.deviceID + "&";
        this.urlParams = String.valueOf(this.urlParams) + "androidID=" + this.androidID + "&";
        this.urlParams = String.valueOf(this.urlParams) + "macAddress=" + this.macAddress + "&";
        this.urlParams = String.valueOf(this.urlParams) + "type=" + this.sdkType + "&";
        this.urlParams = String.valueOf(this.urlParams) + "storeAppID=" + this.storeAppID + "&";
        this.urlParams = String.valueOf(this.urlParams) + "device_name=" + this.deviceName + "&";
        this.urlParams = String.valueOf(this.urlParams) + "device_type=" + this.deviceType + "&";
        this.urlParams = String.valueOf(this.urlParams) + "os_version=" + this.deviceOSVersion + "&";
        this.urlParams = String.valueOf(this.urlParams) + "country_code=" + this.deviceCountryCode + "&";
        this.urlParams = String.valueOf(this.urlParams) + "language=" + this.deviceLanguage + "&";
        this.urlParams = String.valueOf(this.urlParams) + "app_id=" + this.appID + "&";
        this.urlParams = String.valueOf(this.urlParams) + "event=" + str + "&";
        this.urlParams = String.valueOf(this.urlParams) + "data=" + str2 + "&";
        this.urlParams = String.valueOf(this.urlParams) + "uagent=" + this.userAgent + "&";
        this.urlParams = String.valueOf(this.urlParams) + "currency=" + str3;
        if (!this.AdXClickURL.equals("")) {
            this.urlParams = String.valueOf(this.urlParams) + "AdXClickURL=" + this.AdXClickURL;
        }
        (this.connectEventTask = new ConnectEventTask((ConnectEventTask)null)).execute((Object[])new Void[0]);
    }
    
    static /* synthetic */ void access$5(final AdXURLConnection adXURLConnection) {
        AdXConnect.AdXURLConnection = adXURLConnection;
    }
    
    static /* synthetic */ void access$8(final AdXConnect adXConnectInstance) {
        AdXConnect.AdXConnectInstance = adXConnectInstance;
    }
    
    private Document buildDocument(final String s) {
        try {
            return DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(new ByteArrayInputStream(s.getBytes("UTF-8")));
        }
        catch (Exception ex) {
            final boolean debug = AdXConnect.DEBUG;
            final Document parse = null;
            if (debug) {
                Log.e("AdXAppTracker", "buildDocument exception: " + ex.toString());
                return null;
            }
            return parse;
        }
    }
    
    public static void doBroadcastConnectInstance(final Context context) {
        if (AdXConnect.AdXURLConnection == null) {
            AdXConnect.AdXURLConnection = new AdXURLConnection();
        }
        if (AdXConnect.AdXConnectInstance == null) {
            AdXConnect.AdXConnectInstance = new AdXConnect(context, 0);
        }
        if (AdXConnect.DEBUG) {
            Log.i("AdXAppTracker", "Broadcast Receiver - sending to AdX.");
        }
        final SharedPreferences$Editor edit = context.getSharedPreferences(AdXConnect.AdX_PREFERENCE, 0).edit();
        edit.putString(AdXConnect.RECEIVER_DONE, "done");
        edit.commit();
    }
    
    public static void getAdXConnectEventInstance(final Context context, final String s, final String s2, final String s3) {
        if (AdXConnect.AdXURLConnection == null) {
            AdXConnect.AdXURLConnection = new AdXURLConnection();
        }
        if (AdXConnect.AdXConnectEventInstance != null) {
            AdXConnect.AdXConnectEventInstance = null;
        }
        AdXConnect.AdXConnectEventInstance = new AdXConnect(context, s, s2, s3);
    }
    
    public static AdXConnect getAdXConnectInstance(final Context context, final boolean b, final int loglevel) {
        AdXConnect.LOGLEVEL = loglevel;
        final SharedPreferences sharedPreferences = context.getSharedPreferences(AdXConnect.AdX_PREFERENCE, 0);
        final SharedPreferences$Editor edit = sharedPreferences.edit();
        final int int1 = sharedPreferences.getInt(AdXConnect.UPDATE, -1);
        int n = 0;
        Label_0091: {
            if (int1 >= 0) {
                n = int1;
                break Label_0091;
            }
            Label_0386: {
                if (!b) {
                    break Label_0386;
                }
                edit.putInt(AdXConnect.UPDATE, 1);
                int i = 1;
            Label_0298_Outer:
                while (true) {
                    if (AdXConnect.DEBUG) {
                        Log.i("AdXAppTracker", "Update flag set to " + i);
                    }
                    n = i;
                    while (true) {
                        try {
                            final ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
                            final String string = applicationInfo.metaData.getString("OTHERSTORE");
                            Log.i("AdXAppTracker", "SELF HOST VALUE IS " + string);
                            if (string != null && !string.equals("")) {
                                edit.putString(AdXConnect.RECEIVER_DONE, "done");
                                edit.commit();
                            }
                            final String string2 = applicationInfo.metaData.getString("NETWORK");
                            if (string2 != null && !string2.equals("")) {
                                edit.putString(AdXConnect.REFERRAL_URL, "referrer=utm_source%3D" + string2.trim() + "%26utm_medium%3Dcpc%26utm_campaign%3D" + applicationInfo.metaData.getString("REFERENCE").trim());
                                edit.putString(AdXConnect.RECEIVER_DONE, "done");
                                edit.commit();
                            }
                            final String string3 = sharedPreferences.getString(AdXConnect.RECEIVER_DONE, (String)null);
                            if (n == 1 || (string3 != null && string3.equals("done"))) {
                                if (AdXConnect.DEBUG) {
                                    Log.i("AdXAppTracker", "Sending to AdX");
                                }
                                if (AdXConnect.AdXURLConnection == null) {
                                    AdXConnect.AdXURLConnection = new AdXURLConnection();
                                }
                                if (AdXConnect.AdXConnectInstance == null) {
                                    AdXConnect.AdXConnectInstance = new AdXConnect(context, n);
                                }
                                return AdXConnect.AdXConnectInstance;
                            }
                            break Label_0091;
                            edit.putInt(AdXConnect.UPDATE, 0);
                            i = 0;
                            continue Label_0298_Outer;
                        }
                        catch (Exception ex) {
                            if (AdXConnect.WARN) {
                                Log.i("AdXAppTracker", "Exception " + ex.getMessage());
                            }
                            continue;
                        }
                        break;
                    }
                    break;
                }
            }
        }
        if (AdXConnect.DEBUG) {
            Log.i("AdXAppTracker", "Re Referral yet - deferring..");
        }
        edit.putString(AdXConnect.RECEIVER_DONE, "done");
        edit.commit();
        schedule(new Runnable() {
            @Override
            public void run() {
                Looper.prepare();
                if (AdXConnect.DEBUG) {
                    Log.i("AdXAppTracker", "10 seconds is up sending to AdX");
                }
                if (AdXConnect.AdXURLConnection == null) {
                    AdXConnect.access$5(new AdXURLConnection());
                }
                if (AdXConnect.AdXConnectInstance == null) {
                    AdXConnect.access$8(new AdXConnect(context, n, null));
                }
            }
        }, 12L);
        return null;
    }
    
    public static String getAdXReferral(final Context context, final int n) {
        final SharedPreferences sharedPreferences = context.getSharedPreferences(AdXConnect.AdX_PREFERENCE, 0);
        String str = sharedPreferences.getString(AdXConnect.MODREFERRAL, (String)null);
        int i = 0;
        while (i < n && (str == null || str.equals(""))) {
            try {
                Thread.sleep(1000L);
                ++i;
                try {
                    str = sharedPreferences.getString(AdXConnect.MODREFERRAL, (String)null);
                    if (!AdXConnect.DEBUG) {
                        continue;
                    }
                    Log.i("AdXAppTracker", "Count " + i + " " + str);
                }
                catch (Exception ex) {}
            }
            catch (Exception) {}
        }
        return str;
    }
    
    private void getApplicationData() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: getfield        com/AdX/tag/AdXConnect.context:Landroid/content/Context;
        //     4: invokevirtual   android/content/Context.getPackageManager:()Landroid/content/pm/PackageManager;
        //     7: astore_1       
        //     8: aload_0        
        //     9: aload_0        
        //    10: getfield        com/AdX/tag/AdXConnect.context:Landroid/content/Context;
        //    13: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //    16: ldc_w           "android_id"
        //    19: invokestatic    android/provider/Settings$Secure.getString:(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
        //    22: putfield        com/AdX/tag/AdXConnect.androidID:Ljava/lang/String;
        //    25: aload_1        
        //    26: aload_0        
        //    27: getfield        com/AdX/tag/AdXConnect.context:Landroid/content/Context;
        //    30: invokevirtual   android/content/Context.getPackageName:()Ljava/lang/String;
        //    33: sipush          128
        //    36: invokevirtual   android/content/pm/PackageManager.getApplicationInfo:(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
        //    39: astore          4
        //    41: aload           4
        //    43: ifnull          1254
        //    46: aload           4
        //    48: getfield        android/content/pm/ApplicationInfo.metaData:Landroid/os/Bundle;
        //    51: ifnull          1254
        //    54: aload           4
        //    56: getfield        android/content/pm/ApplicationInfo.metaData:Landroid/os/Bundle;
        //    59: ldc_w           "APP_NAME"
        //    62: invokevirtual   android/os/Bundle.getString:(Ljava/lang/String;)Ljava/lang/String;
        //    65: astore          6
        //    67: aload           6
        //    69: ifnull          796
        //    72: aload           6
        //    74: ldc             ""
        //    76: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //    79: ifne            796
        //    82: aload_0        
        //    83: aload           6
        //    85: invokevirtual   java/lang/String.trim:()Ljava/lang/String;
        //    88: putfield        com/AdX/tag/AdXConnect.appID:Ljava/lang/String;
        //    91: aload           4
        //    93: getfield        android/content/pm/ApplicationInfo.metaData:Landroid/os/Bundle;
        //    96: ldc_w           "ADX_CLIENT_ID"
        //    99: invokevirtual   android/os/Bundle.getString:(Ljava/lang/String;)Ljava/lang/String;
        //   102: astore          8
        //   104: aload           8
        //   106: ifnull          829
        //   109: aload           8
        //   111: ldc             ""
        //   113: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   116: ifne            829
        //   119: aload_0        
        //   120: aload           8
        //   122: invokevirtual   java/lang/String.trim:()Ljava/lang/String;
        //   125: putfield        com/AdX/tag/AdXConnect.clientID:Ljava/lang/String;
        //   128: aload           4
        //   130: getfield        android/content/pm/ApplicationInfo.metaData:Landroid/os/Bundle;
        //   133: ldc_w           "OTHERSTORE"
        //   136: invokevirtual   android/os/Bundle.getString:(Ljava/lang/String;)Ljava/lang/String;
        //   139: astore          10
        //   141: aload           10
        //   143: ifnull          187
        //   146: aload           10
        //   148: ldc             ""
        //   150: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   153: ifne            187
        //   156: aload_0        
        //   157: aload           10
        //   159: putfield        com/AdX/tag/AdXConnect.sdkType:Ljava/lang/String;
        //   162: new             Landroid/webkit/WebView;
        //   165: dup            
        //   166: aload_0        
        //   167: getfield        com/AdX/tag/AdXConnect.context:Landroid/content/Context;
        //   170: invokespecial   android/webkit/WebView.<init>:(Landroid/content/Context;)V
        //   173: astore          44
        //   175: aload_0        
        //   176: aload           44
        //   178: invokevirtual   android/webkit/WebView.getSettings:()Landroid/webkit/WebSettings;
        //   181: invokevirtual   android/webkit/WebSettings.getUserAgentString:()Ljava/lang/String;
        //   184: putfield        com/AdX/tag/AdXConnect.userAgent:Ljava/lang/String;
        //   187: aload           4
        //   189: getfield        android/content/pm/ApplicationInfo.metaData:Landroid/os/Bundle;
        //   192: ldc_w           "STOREAPPID"
        //   195: invokevirtual   android/os/Bundle.getString:(Ljava/lang/String;)Ljava/lang/String;
        //   198: astore          11
        //   200: aload           11
        //   202: ifnull          221
        //   205: aload           11
        //   207: ldc             ""
        //   209: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   212: ifne            221
        //   215: aload_0        
        //   216: aload           11
        //   218: putfield        com/AdX/tag/AdXConnect.storeAppID:Ljava/lang/String;
        //   221: aload_0        
        //   222: aload_1        
        //   223: aload_0        
        //   224: getfield        com/AdX/tag/AdXConnect.context:Landroid/content/Context;
        //   227: invokevirtual   android/content/Context.getPackageName:()Ljava/lang/String;
        //   230: iconst_0       
        //   231: invokevirtual   android/content/pm/PackageManager.getPackageInfo:(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
        //   234: getfield        android/content/pm/PackageInfo.versionName:Ljava/lang/String;
        //   237: putfield        com/AdX/tag/AdXConnect.appVersion:Ljava/lang/String;
        //   240: aload_0        
        //   241: ldc_w           "android"
        //   244: putfield        com/AdX/tag/AdXConnect.deviceType:Ljava/lang/String;
        //   247: aload_0        
        //   248: getstatic       android/os/Build.MODEL:Ljava/lang/String;
        //   251: putfield        com/AdX/tag/AdXConnect.deviceName:Ljava/lang/String;
        //   254: aload_0        
        //   255: getstatic       android/os/Build$VERSION.RELEASE:Ljava/lang/String;
        //   258: putfield        com/AdX/tag/AdXConnect.deviceOSVersion:Ljava/lang/String;
        //   261: aload_0        
        //   262: invokestatic    java/util/Locale.getDefault:()Ljava/util/Locale;
        //   265: invokevirtual   java/util/Locale.getCountry:()Ljava/lang/String;
        //   268: putfield        com/AdX/tag/AdXConnect.deviceCountryCode:Ljava/lang/String;
        //   271: aload_0        
        //   272: invokestatic    java/util/Locale.getDefault:()Ljava/util/Locale;
        //   275: invokevirtual   java/util/Locale.getLanguage:()Ljava/lang/String;
        //   278: putfield        com/AdX/tag/AdXConnect.deviceLanguage:Ljava/lang/String;
        //   281: aload_0        
        //   282: aload_0        
        //   283: getfield        com/AdX/tag/AdXConnect.tagVersion:Ljava/lang/String;
        //   286: putfield        com/AdX/tag/AdXConnect.libraryVersion:Ljava/lang/String;
        //   289: aload_0        
        //   290: getfield        com/AdX/tag/AdXConnect.context:Landroid/content/Context;
        //   293: getstatic       com/AdX/tag/AdXConnect.AdX_PREFERENCE:Ljava/lang/String;
        //   296: iconst_0       
        //   297: invokevirtual   android/content/Context.getSharedPreferences:(Ljava/lang/String;I)Landroid/content/SharedPreferences;
        //   300: astore          12
        //   302: aload           4
        //   304: getfield        android/content/pm/ApplicationInfo.metaData:Landroid/os/Bundle;
        //   307: ldc_w           "DEVICE_ID"
        //   310: invokevirtual   android/os/Bundle.getString:(Ljava/lang/String;)Ljava/lang/String;
        //   313: astore          13
        //   315: aload           13
        //   317: ifnull          845
        //   320: aload           13
        //   322: ldc             ""
        //   324: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   327: ifne            845
        //   330: aload_0        
        //   331: aload           13
        //   333: putfield        com/AdX/tag/AdXConnect.deviceID:Ljava/lang/String;
        //   336: new             Landroid/util/DisplayMetrics;
        //   339: dup            
        //   340: invokespecial   android/util/DisplayMetrics.<init>:()V
        //   343: astore          15
        //   345: aload_0        
        //   346: getfield        com/AdX/tag/AdXConnect.context:Landroid/content/Context;
        //   349: ldc_w           "window"
        //   352: invokevirtual   android/content/Context.getSystemService:(Ljava/lang/String;)Ljava/lang/Object;
        //   355: checkcast       Landroid/view/WindowManager;
        //   358: invokeinterface android/view/WindowManager.getDefaultDisplay:()Landroid/view/Display;
        //   363: aload           15
        //   365: invokevirtual   android/view/Display.getMetrics:(Landroid/util/DisplayMetrics;)V
        //   368: aload           12
        //   370: getstatic       com/AdX/tag/AdXConnect.REFERRAL_URL:Ljava/lang/String;
        //   373: aconst_null    
        //   374: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //   379: astore          18
        //   381: aload           18
        //   383: ifnull          401
        //   386: aload           18
        //   388: ldc             ""
        //   390: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   393: ifne            401
        //   396: aload           18
        //   398: putstatic       com/AdX/tag/AdXConnect.referralURL:Ljava/lang/String;
        //   401: getstatic       com/AdX/tag/AdXConnect.DEBUG:Z
        //   404: ifeq            416
        //   407: ldc             "AdXAppTracker"
        //   409: ldc_w           "Metadata successfully loaded"
        //   412: invokestatic    android/util/Log.i:(Ljava/lang/String;Ljava/lang/String;)I
        //   415: pop            
        //   416: getstatic       com/AdX/tag/AdXConnect.DEBUG:Z
        //   419: ifeq            454
        //   422: ldc             "AdXAppTracker"
        //   424: new             Ljava/lang/StringBuilder;
        //   427: dup            
        //   428: ldc_w           "APP_ID = ["
        //   431: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   434: aload_0        
        //   435: getfield        com/AdX/tag/AdXConnect.appID:Ljava/lang/String;
        //   438: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   441: ldc_w           "]"
        //   444: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   447: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   450: invokestatic    android/util/Log.i:(Ljava/lang/String;Ljava/lang/String;)I
        //   453: pop            
        //   454: getstatic       com/AdX/tag/AdXConnect.DEBUG:Z
        //   457: ifeq            492
        //   460: ldc             "AdXAppTracker"
        //   462: new             Ljava/lang/StringBuilder;
        //   465: dup            
        //   466: ldc_w           "deviceName: ["
        //   469: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   472: aload_0        
        //   473: getfield        com/AdX/tag/AdXConnect.deviceName:Ljava/lang/String;
        //   476: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   479: ldc_w           "]"
        //   482: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   485: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   488: invokestatic    android/util/Log.i:(Ljava/lang/String;Ljava/lang/String;)I
        //   491: pop            
        //   492: getstatic       com/AdX/tag/AdXConnect.DEBUG:Z
        //   495: ifeq            530
        //   498: ldc             "AdXAppTracker"
        //   500: new             Ljava/lang/StringBuilder;
        //   503: dup            
        //   504: ldc_w           "deviceType: ["
        //   507: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   510: aload_0        
        //   511: getfield        com/AdX/tag/AdXConnect.deviceType:Ljava/lang/String;
        //   514: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   517: ldc_w           "]"
        //   520: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   523: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   526: invokestatic    android/util/Log.i:(Ljava/lang/String;Ljava/lang/String;)I
        //   529: pop            
        //   530: getstatic       com/AdX/tag/AdXConnect.DEBUG:Z
        //   533: ifeq            568
        //   536: ldc             "AdXAppTracker"
        //   538: new             Ljava/lang/StringBuilder;
        //   541: dup            
        //   542: ldc_w           "libraryVersion: ["
        //   545: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   548: aload_0        
        //   549: getfield        com/AdX/tag/AdXConnect.libraryVersion:Ljava/lang/String;
        //   552: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   555: ldc_w           "]"
        //   558: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   561: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   564: invokestatic    android/util/Log.i:(Ljava/lang/String;Ljava/lang/String;)I
        //   567: pop            
        //   568: getstatic       com/AdX/tag/AdXConnect.DEBUG:Z
        //   571: ifeq            606
        //   574: ldc             "AdXAppTracker"
        //   576: new             Ljava/lang/StringBuilder;
        //   579: dup            
        //   580: ldc_w           "deviceOSVersion: ["
        //   583: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   586: aload_0        
        //   587: getfield        com/AdX/tag/AdXConnect.deviceOSVersion:Ljava/lang/String;
        //   590: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   593: ldc_w           "]"
        //   596: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   599: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   602: invokestatic    android/util/Log.i:(Ljava/lang/String;Ljava/lang/String;)I
        //   605: pop            
        //   606: getstatic       com/AdX/tag/AdXConnect.DEBUG:Z
        //   609: ifeq            644
        //   612: ldc             "AdXAppTracker"
        //   614: new             Ljava/lang/StringBuilder;
        //   617: dup            
        //   618: ldc_w           "COUNTRY_CODE: ["
        //   621: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   624: aload_0        
        //   625: getfield        com/AdX/tag/AdXConnect.deviceCountryCode:Ljava/lang/String;
        //   628: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   631: ldc_w           "]"
        //   634: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   637: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   640: invokestatic    android/util/Log.i:(Ljava/lang/String;Ljava/lang/String;)I
        //   643: pop            
        //   644: getstatic       com/AdX/tag/AdXConnect.DEBUG:Z
        //   647: ifeq            682
        //   650: ldc             "AdXAppTracker"
        //   652: new             Ljava/lang/StringBuilder;
        //   655: dup            
        //   656: ldc_w           "LANGUAGE_CODE: ["
        //   659: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   662: aload_0        
        //   663: getfield        com/AdX/tag/AdXConnect.deviceLanguage:Ljava/lang/String;
        //   666: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   669: ldc_w           "]"
        //   672: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   675: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   678: invokestatic    android/util/Log.i:(Ljava/lang/String;Ljava/lang/String;)I
        //   681: pop            
        //   682: getstatic       com/AdX/tag/AdXConnect.DEBUG:Z
        //   685: ifeq            720
        //   688: ldc             "AdXAppTracker"
        //   690: new             Ljava/lang/StringBuilder;
        //   693: dup            
        //   694: ldc_w           "density: ["
        //   697: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   700: aload_0        
        //   701: getfield        com/AdX/tag/AdXConnect.deviceScreenDensity:Ljava/lang/String;
        //   704: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   707: ldc_w           "]"
        //   710: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   713: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   716: invokestatic    android/util/Log.i:(Ljava/lang/String;Ljava/lang/String;)I
        //   719: pop            
        //   720: getstatic       com/AdX/tag/AdXConnect.DEBUG:Z
        //   723: ifeq            758
        //   726: ldc             "AdXAppTracker"
        //   728: new             Ljava/lang/StringBuilder;
        //   731: dup            
        //   732: ldc_w           "screen_layout: ["
        //   735: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   738: aload_0        
        //   739: getfield        com/AdX/tag/AdXConnect.deviceScreenLayoutSize:Ljava/lang/String;
        //   742: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   745: ldc_w           "]"
        //   748: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   751: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   754: invokestatic    android/util/Log.i:(Ljava/lang/String;Ljava/lang/String;)I
        //   757: pop            
        //   758: getstatic       com/AdX/tag/AdXConnect.DEBUG:Z
        //   761: ifeq            1269
        //   764: ldc             "AdXAppTracker"
        //   766: new             Ljava/lang/StringBuilder;
        //   769: dup            
        //   770: ldc_w           "referralURL: ["
        //   773: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   776: getstatic       com/AdX/tag/AdXConnect.referralURL:Ljava/lang/String;
        //   779: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   782: ldc_w           "]"
        //   785: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   788: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   791: invokestatic    android/util/Log.i:(Ljava/lang/String;Ljava/lang/String;)I
        //   794: pop            
        //   795: return         
        //   796: getstatic       com/AdX/tag/AdXConnect.WARN:Z
        //   799: ifeq            1269
        //   802: ldc             "AdXAppTracker"
        //   804: ldc_w           "APP_NAME can't be empty."
        //   807: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //   810: pop            
        //   811: return         
        //   812: astore_2       
        //   813: getstatic       com/AdX/tag/AdXConnect.WARN:Z
        //   816: ifeq            1269
        //   819: ldc             "AdXAppTracker"
        //   821: ldc_w           "Add APP_ID to AndroidManifest.xml file. For more detail integration document."
        //   824: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //   827: pop            
        //   828: return         
        //   829: getstatic       com/AdX/tag/AdXConnect.WARN:Z
        //   832: ifeq            1269
        //   835: ldc             "AdXAppTracker"
        //   837: ldc_w           "ADX_CLIENT_ID can't be empty."
        //   840: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //   843: pop            
        //   844: return         
        //   845: aload_0        
        //   846: aload_0        
        //   847: getfield        com/AdX/tag/AdXConnect.context:Landroid/content/Context;
        //   850: ldc_w           "wifi"
        //   853: invokevirtual   android/content/Context.getSystemService:(Ljava/lang/String;)Ljava/lang/Object;
        //   856: checkcast       Landroid/net/wifi/WifiManager;
        //   859: invokevirtual   android/net/wifi/WifiManager.getConnectionInfo:()Landroid/net/wifi/WifiInfo;
        //   862: invokevirtual   android/net/wifi/WifiInfo.getMacAddress:()Ljava/lang/String;
        //   865: putfield        com/AdX/tag/AdXConnect.macAddress:Ljava/lang/String;
        //   868: aload           4
        //   870: getfield        android/content/pm/ApplicationInfo.metaData:Landroid/os/Bundle;
        //   873: ldc_w           "NOIMEI"
        //   876: invokevirtual   android/os/Bundle.getString:(Ljava/lang/String;)Ljava/lang/String;
        //   879: astore          31
        //   881: aload           31
        //   883: ifnull          1030
        //   886: aload           31
        //   888: ldc             ""
        //   890: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   893: ifne            1030
        //   896: aload_0        
        //   897: aconst_null    
        //   898: putfield        com/AdX/tag/AdXConnect.deviceID:Ljava/lang/String;
        //   901: aload_0        
        //   902: getfield        com/AdX/tag/AdXConnect.deviceID:Ljava/lang/String;
        //   905: ifnonnull       1062
        //   908: getstatic       com/AdX/tag/AdXConnect.DEBUG:Z
        //   911: ifeq            1270
        //   914: ldc             "AdXAppTracker"
        //   916: ldc_w           "Device id is null."
        //   919: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //   922: pop            
        //   923: goto            1270
        //   926: iload           33
        //   928: ifeq            336
        //   931: new             Ljava/lang/StringBuffer;
        //   934: dup            
        //   935: invokespecial   java/lang/StringBuffer.<init>:()V
        //   938: astore          34
        //   940: aload           34
        //   942: aload_0        
        //   943: getfield        com/AdX/tag/AdXConnect.androidID:Ljava/lang/String;
        //   946: invokevirtual   java/lang/StringBuffer.append:(Ljava/lang/String;)Ljava/lang/StringBuffer;
        //   949: pop            
        //   950: aload           12
        //   952: ldc_w           "emulatorDeviceId"
        //   955: aconst_null    
        //   956: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //   961: astore          36
        //   963: aload           36
        //   965: ifnull          1282
        //   968: aload           36
        //   970: ldc             ""
        //   972: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   975: ifne            1282
        //   978: aload_0        
        //   979: aload           36
        //   981: putfield        com/AdX/tag/AdXConnect.deviceID:Ljava/lang/String;
        //   984: goto            336
        //   987: astore          14
        //   989: getstatic       com/AdX/tag/AdXConnect.DEBUG:Z
        //   992: ifeq            1022
        //   995: ldc             "AdXAppTracker"
        //   997: new             Ljava/lang/StringBuilder;
        //  1000: dup            
        //  1001: ldc_w           "Error getting deviceID. e: "
        //  1004: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //  1007: aload           14
        //  1009: invokevirtual   java/lang/Exception.toString:()Ljava/lang/String;
        //  1012: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  1015: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  1018: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //  1021: pop            
        //  1022: aload_0        
        //  1023: aconst_null    
        //  1024: putfield        com/AdX/tag/AdXConnect.deviceID:Ljava/lang/String;
        //  1027: goto            336
        //  1030: aload_0        
        //  1031: getfield        com/AdX/tag/AdXConnect.context:Landroid/content/Context;
        //  1034: ldc_w           "phone"
        //  1037: invokevirtual   android/content/Context.getSystemService:(Ljava/lang/String;)Ljava/lang/Object;
        //  1040: checkcast       Landroid/telephony/TelephonyManager;
        //  1043: astore          32
        //  1045: aload           32
        //  1047: ifnull          901
        //  1050: aload_0        
        //  1051: aload           32
        //  1053: invokevirtual   android/telephony/TelephonyManager.getDeviceId:()Ljava/lang/String;
        //  1056: putfield        com/AdX/tag/AdXConnect.deviceID:Ljava/lang/String;
        //  1059: goto            901
        //  1062: aload_0        
        //  1063: getfield        com/AdX/tag/AdXConnect.deviceID:Ljava/lang/String;
        //  1066: invokevirtual   java/lang/String.length:()I
        //  1069: ifeq            1098
        //  1072: aload_0        
        //  1073: getfield        com/AdX/tag/AdXConnect.deviceID:Ljava/lang/String;
        //  1076: ldc_w           "000000000000000"
        //  1079: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //  1082: ifne            1098
        //  1085: aload_0        
        //  1086: getfield        com/AdX/tag/AdXConnect.deviceID:Ljava/lang/String;
        //  1089: ldc_w           "0"
        //  1092: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //  1095: ifeq            1116
        //  1098: getstatic       com/AdX/tag/AdXConnect.DEBUG:Z
        //  1101: ifeq            1276
        //  1104: ldc             "AdXAppTracker"
        //  1106: ldc_w           "Device id is empty or an emulator."
        //  1109: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //  1112: pop            
        //  1113: goto            1276
        //  1116: aload_0        
        //  1117: aload_0        
        //  1118: getfield        com/AdX/tag/AdXConnect.deviceID:Ljava/lang/String;
        //  1121: invokevirtual   java/lang/String.toLowerCase:()Ljava/lang/String;
        //  1124: putfield        com/AdX/tag/AdXConnect.deviceID:Ljava/lang/String;
        //  1127: iconst_0       
        //  1128: istore          33
        //  1130: goto            926
        //  1133: iload           37
        //  1135: bipush          16
        //  1137: if_icmplt       1187
        //  1140: aload_0        
        //  1141: aload           34
        //  1143: invokevirtual   java/lang/StringBuffer.toString:()Ljava/lang/String;
        //  1146: invokevirtual   java/lang/String.toLowerCase:()Ljava/lang/String;
        //  1149: putfield        com/AdX/tag/AdXConnect.deviceID:Ljava/lang/String;
        //  1152: aload           12
        //  1154: invokeinterface android/content/SharedPreferences.edit:()Landroid/content/SharedPreferences$Editor;
        //  1159: astore          38
        //  1161: aload           38
        //  1163: ldc_w           "emulatorDeviceId"
        //  1166: aload_0        
        //  1167: getfield        com/AdX/tag/AdXConnect.deviceID:Ljava/lang/String;
        //  1170: invokeinterface android/content/SharedPreferences$Editor.putString:(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
        //  1175: pop            
        //  1176: aload           38
        //  1178: invokeinterface android/content/SharedPreferences$Editor.commit:()Z
        //  1183: pop            
        //  1184: goto            336
        //  1187: aload           34
        //  1189: ldc_w           "1234567890abcdefghijklmnopqrstuvw"
        //  1192: ldc2_w          100.0
        //  1195: invokestatic    java/lang/Math.random:()D
        //  1198: dmul           
        //  1199: d2i            
        //  1200: bipush          30
        //  1202: irem           
        //  1203: invokevirtual   java/lang/String.charAt:(I)C
        //  1206: invokevirtual   java/lang/StringBuffer.append:(C)Ljava/lang/StringBuffer;
        //  1209: pop            
        //  1210: iinc            37, 1
        //  1213: goto            1133
        //  1216: astore          16
        //  1218: getstatic       com/AdX/tag/AdXConnect.DEBUG:Z
        //  1221: ifeq            368
        //  1224: ldc             "AdXAppTracker"
        //  1226: new             Ljava/lang/StringBuilder;
        //  1229: dup            
        //  1230: ldc_w           "Error getting screen density/dimensions/layout: "
        //  1233: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //  1236: aload           16
        //  1238: invokevirtual   java/lang/Exception.toString:()Ljava/lang/String;
        //  1241: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  1244: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  1247: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //  1250: pop            
        //  1251: goto            368
        //  1254: getstatic       com/AdX/tag/AdXConnect.WARN:Z
        //  1257: ifeq            1269
        //  1260: ldc             "AdXAppTracker"
        //  1262: ldc_w           "Add APP_ID to AndroidManifest.xml file. For more detail integration document."
        //  1265: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //  1268: pop            
        //  1269: return         
        //  1270: iconst_1       
        //  1271: istore          33
        //  1273: goto            926
        //  1276: iconst_1       
        //  1277: istore          33
        //  1279: goto            926
        //  1282: iconst_0       
        //  1283: istore          37
        //  1285: goto            1133
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                                     
        //  -----  -----  -----  -----  ---------------------------------------------------------
        //  8      41     812    829    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  46     67     812    829    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  72     104    812    829    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  109    141    812    829    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  146    187    812    829    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  187    200    812    829    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  205    221    812    829    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  221    315    812    829    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  320    336    812    829    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  336    368    1216   1254   Ljava/lang/Exception;
        //  336    368    812    829    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  368    381    812    829    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  386    401    812    829    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  401    416    812    829    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  416    454    812    829    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  454    492    812    829    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  492    530    812    829    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  530    568    812    829    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  568    606    812    829    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  606    644    812    829    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  644    682    812    829    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  682    720    812    829    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  720    758    812    829    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  758    795    812    829    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  796    811    812    829    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  829    844    812    829    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  845    881    987    1030   Ljava/lang/Exception;
        //  845    881    812    829    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  886    901    987    1030   Ljava/lang/Exception;
        //  886    901    812    829    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  901    923    987    1030   Ljava/lang/Exception;
        //  901    923    812    829    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  931    963    987    1030   Ljava/lang/Exception;
        //  931    963    812    829    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  968    984    987    1030   Ljava/lang/Exception;
        //  968    984    812    829    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  989    1022   812    829    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  1022   1027   812    829    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  1030   1045   987    1030   Ljava/lang/Exception;
        //  1030   1045   812    829    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  1050   1059   987    1030   Ljava/lang/Exception;
        //  1050   1059   812    829    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  1062   1098   987    1030   Ljava/lang/Exception;
        //  1062   1098   812    829    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  1098   1113   987    1030   Ljava/lang/Exception;
        //  1098   1113   812    829    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  1116   1127   987    1030   Ljava/lang/Exception;
        //  1116   1127   812    829    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  1140   1184   987    1030   Ljava/lang/Exception;
        //  1140   1184   812    829    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  1187   1210   987    1030   Ljava/lang/Exception;
        //  1187   1210   812    829    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  1218   1251   812    829    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  1254   1269   812    829    Landroid/content/pm/PackageManager$NameNotFoundException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0336:
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
    
    public static String getFacebookAttributionId(final Context context) {
        final String[] array = { "aid" };
        String s = "";
        try {
            final Cursor query = context.getContentResolver().query(AdXConnect.ATTRIBUTION_ID_CONTENT_URI, array, (String)null, (String[])null, (String)null);
            if (query != null) {
                if (query.moveToFirst()) {
                    s = query.getString(query.getColumnIndex("aid"));
                    return s;
                }
            }
        }
        catch (Exception ex) {
            if (AdXConnect.WARN) {
                Log.i("AdXAppTracker", ex.getMessage());
            }
            if (AdXConnect.WARN) {
                Log.i("AdXAppTracker", "Retry");
            }
            try {
                final Cursor query2 = context.getContentResolver().query(AdXConnect.ATTRIBUTION_ID_CONTENT_URI, array, (String)null, (String[])null, (String)null);
                if (query2 == null || !query2.moveToFirst()) {
                    return null;
                }
                s = query2.getString(query2.getColumnIndex("aid"));
            }
            catch (Exception ex2) {
                if (AdXConnect.WARN) {
                    Log.i("AdXAppTracker", ex2.getMessage());
                }
            }
            return s;
        }
        return null;
    }
    
    private String getNodeTrimValue(final NodeList list) {
        final Element element = (Element)list.item(0);
        String string = "";
        if (element == null) {
            return null;
        }
        final NodeList childNodes = element.getChildNodes();
        for (int length = childNodes.getLength(), i = 0; i < length; ++i) {
            final Node item = childNodes.item(i);
            if (item != null) {
                string = String.valueOf(string) + item.getNodeValue();
            }
        }
        if (string != null && !string.equals("")) {
            return string.trim();
        }
        return null;
    }
    
    private boolean handleConnectResponse(final String s) {
        final Document buildDocument = this.buildDocument(s);
        if (buildDocument != null) {
            final String nodeTrimValue = this.getNodeTrimValue(buildDocument.getElementsByTagName("Referral"));
            if (nodeTrimValue != null) {
                if (AdXConnect.DEBUG) {
                    Log.i("AdXAppTracker", "Successfully get returned referral " + nodeTrimValue);
                }
                final SharedPreferences$Editor edit = this.context.getSharedPreferences(AdXConnect.AdX_PREFERENCE, 0).edit();
                edit.putString(AdXConnect.MODREFERRAL, nodeTrimValue);
                edit.commit();
            }
            final String nodeTrimValue2 = this.getNodeTrimValue(buildDocument.getElementsByTagName("Success"));
            if (nodeTrimValue2 != null && nodeTrimValue2.equals("true")) {
                if (AdXConnect.DEBUG) {
                    Log.i("AdXAppTracker", "Successfully connected to AdX site.");
                }
                return true;
            }
            if (nodeTrimValue2 != null && nodeTrimValue2.equals("stop")) {
                if (AdXConnect.DEBUG) {
                    Log.i("AdXAppTracker", "Successfully connected to AdX site - stopping tags from now on.");
                }
                final SharedPreferences$Editor edit2 = this.context.getSharedPreferences(AdXConnect.AdX_PREFERENCE, 0).edit();
                edit2.putString(this.SEND_TAG, "stop");
                edit2.commit();
                return true;
            }
            if (AdXConnect.DEBUG) {
                Log.e("AdXAppTracker", "AdX Connect call failed.");
            }
        }
        return false;
    }
    
    public static void schedule(final Runnable runnable, final Long n) {
        AdXConnect.scheduledExecutor.schedule(runnable, n, TimeUnit.SECONDS);
    }
    
    public void finalize() {
    }
    
    private class ConnectEventTask extends AsyncTask<Void, Void, Boolean>
    {
        protected Boolean doInBackground(final Void... array) {
            final String connectToURL = com.AdX.tag.AdXURLConnection.connectToURL("http://ad-x.co.uk/API/androidevent.php?oursecret=" + AdXConnect.this.clientID + "&", AdXConnect.this.urlParams);
            boolean access$2 = false;
            if (connectToURL != null) {
                access$2 = AdXConnect.this.handleConnectResponse(connectToURL);
            }
            return access$2;
        }
    }
    
    private class ConnectTask extends AsyncTask<Void, Void, Boolean>
    {
        protected Boolean doInBackground(final Void... array) {
            String obj = AdXConnect.this.urlParams;
            if (!AdXConnect.referralURL.equals("")) {
                obj = String.valueOf(obj) + "&" + AdXConnect.referralURL;
            }
            final String connectToURL = com.AdX.tag.AdXURLConnection.connectToURL("http://ad-x.co.uk/atrk/andrdapp?", obj);
            boolean access$2 = false;
            if (connectToURL != null) {
                access$2 = AdXConnect.this.handleConnectResponse(connectToURL);
            }
            return access$2;
        }
    }
}
