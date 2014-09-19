package com.inmobi.adtracker.androidsdk.impl.net;

import org.apache.http.message.*;
import com.inmobi.commons.*;
import android.os.*;
import org.apache.http.client.utils.*;
import java.util.*;
import com.inmobi.commons.internal.*;
import android.content.pm.*;
import com.inmobi.adtracker.androidsdk.impl.*;
import org.apache.http.impl.client.*;
import org.apache.http.client.methods.*;
import org.apache.http.client.*;

public class HTTPRequestResponseBuilder
{
    private static String a;
    
    static {
        HTTPRequestResponseBuilder.a = null;
    }
    
    protected static String formHTTPRequest(final String s, final String s2, final String s3, final String s4, final int i, final String s5) {
        final LinkedList<BasicNameValuePair> list = new LinkedList<BasicNameValuePair>();
        if (s != null && s.trim() != "") {
            list.add(new BasicNameValuePair("appId", s));
        }
        if (s2 != null && s3 != null && s2.trim() != "" && s3.trim() != "") {
            final String string = Integer.toString(new Random().nextInt());
            list.add(new BasicNameValuePair("u-id-map", InternalSDKUtil.getUIDMap(null, null, s2, s3, 1, string)));
            list.add(new BasicNameValuePair("u-id-key", string));
            list.add(new BasicNameValuePair("u-key-ver", InternalSDKUtil.getRSAKeyVersion()));
        }
        if (s4 != null && s4.trim() != "") {
            list.add(new BasicNameValuePair("goalName", s4));
        }
        list.add(new BasicNameValuePair("src", "and"));
        if (i > 0) {
            list.add(new BasicNameValuePair("goalCount", Integer.toString(i)));
        }
        list.add(new BasicNameValuePair("sdkVer", "2.5.1"));
        list.add(new BasicNameValuePair("sdkRelVer", IMCommonUtil.getReleaseVersion()));
        while (true) {
            try {
                final String versionName = Utils.getAppContext().getPackageManager().getPackageInfo(Utils.getAppContext().getPackageName(), 0).versionName;
                if (versionName != null && versionName.trim() != "") {
                    list.add(new BasicNameValuePair("appVer", versionName));
                }
                if (s5 != null && s5.trim() != "") {
                    list.add(new BasicNameValuePair("iat_ids", s5));
                }
                list.add(new BasicNameValuePair("timeStamp", Long.toString(SystemClock.uptimeMillis())));
                return URLEncodedUtils.format((List)list, "utf-8");
            }
            catch (PackageManager$NameNotFoundException ex) {
                IMLog.internal("IMAdTrackerSDK_V_2_5_1", "Cant get appversion", (Throwable)ex);
                final String versionName = null;
                continue;
            }
            break;
        }
    }
    
    public static String getWebViewRequestParam() {
        return HTTPRequestResponseBuilder.a;
    }
    
    public static void saveWebviewRequestParam(final String s, final String s2, final String s3, final String s4, final int n) {
        HTTPRequestResponseBuilder.a = formHTTPRequest(s, s2, s3, s4, n, null);
    }
    
    public static ConfigConstants.StatusCode sendHTTPRequest(final String p0, final String p1, final String p2, final String p3, final int p4, final String p5) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: getstatic       com/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode.APP_ANALYTICS_UPLOAD_FAILURE:Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;
        //     3: astore          6
        //     5: new             Lorg/apache/http/impl/client/DefaultHttpClient;
        //     8: dup            
        //     9: invokespecial   org/apache/http/impl/client/DefaultHttpClient.<init>:()V
        //    12: astore          7
        //    14: aload_0        
        //    15: aload_1        
        //    16: aload_2        
        //    17: aload_3        
        //    18: iload           4
        //    20: aload           5
        //    22: invokestatic    com/inmobi/adtracker/androidsdk/impl/net/HTTPRequestResponseBuilder.formHTTPRequest:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
        //    25: astore          10
        //    27: getstatic       com/inmobi/adtracker/androidsdk/impl/ConfigConstants.TestMode:Z
        //    30: ifne            186
        //    33: new             Ljava/lang/StringBuilder;
        //    36: dup            
        //    37: ldc             "https://d.appsdt.com/download/tracker/?"
        //    39: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //    42: aload           10
        //    44: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    47: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    50: astore          11
        //    52: ldc             "IMAdTrackerSDK_V_2_5_1"
        //    54: aload           11
        //    56: invokestatic    com/inmobi/commons/internal/IMLog.debug:(Ljava/lang/String;Ljava/lang/String;)V
        //    59: aload           7
        //    61: new             Lorg/apache/http/client/methods/HttpGet;
        //    64: dup            
        //    65: aload           11
        //    67: invokespecial   org/apache/http/client/methods/HttpGet.<init>:(Ljava/lang/String;)V
        //    70: invokeinterface org/apache/http/client/HttpClient.execute:(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
        //    75: astore          12
        //    77: aload           12
        //    79: invokeinterface org/apache/http/HttpResponse.getStatusLine:()Lorg/apache/http/StatusLine;
        //    84: invokeinterface org/apache/http/StatusLine.getStatusCode:()I
        //    89: sipush          200
        //    92: if_icmpne       331
        //    95: aload           12
        //    97: invokeinterface org/apache/http/HttpResponse.getEntity:()Lorg/apache/http/HttpEntity;
        //   102: invokestatic    org/apache/http/util/EntityUtils.toString:(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
        //   105: astore          13
        //   107: ldc             "IMAdTrackerSDK_V_2_5_1"
        //   109: new             Ljava/lang/StringBuilder;
        //   112: dup            
        //   113: ldc             "RESPONSE: "
        //   115: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   118: aload           13
        //   120: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   123: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   126: invokestatic    com/inmobi/commons/internal/IMLog.internal:(Ljava/lang/String;Ljava/lang/String;)V
        //   129: new             Lorg/json/JSONObject;
        //   132: dup            
        //   133: aload           13
        //   135: invokespecial   org/json/JSONObject.<init>:(Ljava/lang/String;)V
        //   138: astore          14
        //   140: aload           14
        //   142: ldc             "errmsg"
        //   144: invokevirtual   org/json/JSONObject.getString:(Ljava/lang/String;)Ljava/lang/String;
        //   147: astore          15
        //   149: aload           14
        //   151: ldc             "errcode"
        //   153: invokevirtual   org/json/JSONObject.getInt:(Ljava/lang/String;)I
        //   156: istore          16
        //   158: sipush          6000
        //   161: iload           16
        //   163: if_icmpne       212
        //   166: getstatic       com/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode.APP_ANALYTICS_UPLOAD_SUCCESS:Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;
        //   169: astore          17
        //   171: getstatic       com/inmobi/adtracker/androidsdk/impl/ConfigConstants.TestMode:Z
        //   174: ifeq            183
        //   177: iload           16
        //   179: invokestatic    com/inmobi/adtracker/androidsdk/impl/Utils.sendBroadcastMessage:(I)Z
        //   182: pop            
        //   183: aload           17
        //   185: areturn        
        //   186: new             Ljava/lang/StringBuilder;
        //   189: dup            
        //   190: getstatic       com/inmobi/adtracker/androidsdk/impl/ConfigConstants.testDownloadServerURL:Ljava/lang/String;
        //   193: invokestatic    java/lang/String.valueOf:(Ljava/lang/Object;)Ljava/lang/String;
        //   196: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   199: aload           10
        //   201: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   204: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   207: astore          11
        //   209: goto            52
        //   212: sipush          6001
        //   215: iload           16
        //   217: if_icmpne       282
        //   220: ldc             "IMAdTrackerSDK_V_2_5_1"
        //   222: new             Ljava/lang/StringBuilder;
        //   225: dup            
        //   226: ldc             "Error uploading ping "
        //   228: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   231: aload           15
        //   233: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   236: ldc             "\nReloading webview"
        //   238: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   241: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   244: invokestatic    com/inmobi/commons/internal/IMLog.debug:(Ljava/lang/String;Ljava/lang/String;)V
        //   247: getstatic       com/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode.RELOAD_WEBVIEW_ERROR:Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;
        //   250: astore          20
        //   252: invokestatic    com/inmobi/adtracker/androidsdk/impl/Utils.getAppContext:()Landroid/content/Context;
        //   255: ldc_w           "IMAdTrackerStatusUpload"
        //   258: ldc             "iat_ids"
        //   260: aconst_null    
        //   261: invokestatic    com/inmobi/commons/internal/IMFileOperations.setPreferences:(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
        //   264: pop            
        //   265: aload_0        
        //   266: aload_1        
        //   267: aload_2        
        //   268: aload_3        
        //   269: iload           4
        //   271: lconst_0       
        //   272: invokestatic    com/inmobi/adtracker/androidsdk/impl/net/NetworkInterface.reportUsingWebview:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V
        //   275: aload           20
        //   277: astore          17
        //   279: goto            171
        //   282: getstatic       com/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode.APP_ANALYTICS_UPLOAD_FAILURE:Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;
        //   285: astore          17
        //   287: goto            171
        //   290: astore          8
        //   292: aload           6
        //   294: astore          9
        //   296: ldc             "IMAdTrackerSDK_V_2_5_1"
        //   298: ldc_w           "Error uploading Goal Ping"
        //   301: aload           8
        //   303: invokestatic    com/inmobi/commons/internal/IMLog.internal:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
        //   306: aload           9
        //   308: areturn        
        //   309: astore          8
        //   311: aload           20
        //   313: astore          9
        //   315: goto            296
        //   318: astore          18
        //   320: aload           17
        //   322: astore          9
        //   324: aload           18
        //   326: astore          8
        //   328: goto            296
        //   331: aload           6
        //   333: areturn        
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  5      52     290    296    Ljava/lang/Exception;
        //  52     158    290    296    Ljava/lang/Exception;
        //  166    171    290    296    Ljava/lang/Exception;
        //  171    183    318    331    Ljava/lang/Exception;
        //  186    209    290    296    Ljava/lang/Exception;
        //  220    252    290    296    Ljava/lang/Exception;
        //  252    275    309    318    Ljava/lang/Exception;
        //  282    287    290    296    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0171:
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
    
    public static boolean serverReachable(final String s) {
        try {
            if (((HttpClient)new DefaultHttpClient()).execute((HttpUriRequest)new HttpGet(s)).getStatusLine().getStatusCode() == 200) {
                return true;
            }
        }
        catch (Exception ex) {
            IMLog.debug("IMAdTrackerSDK_V_2_5_1", "Server not reachable..Logging events");
        }
        return false;
    }
}
