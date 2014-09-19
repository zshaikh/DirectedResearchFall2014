package com.chartboost.sdk.impl;

import org.apache.http.client.*;
import android.app.*;
import java.util.*;
import android.content.pm.*;
import com.chartboost.sdk.*;
import org.apache.http.impl.client.*;
import org.apache.http.conn.ssl.*;
import org.apache.http.conn.*;
import org.apache.http.conn.scheme.*;
import org.apache.http.impl.conn.tsccm.*;
import org.apache.http.params.*;
import com.chartboost.sdk.Libraries.*;
import android.util.*;
import org.json.*;
import android.content.*;
import android.os.*;
import java.io.*;

public class j
{
    private static int g;
    private static HttpClient h;
    public String a;
    public c b;
    public String c;
    public SparseArray<b> d;
    public int e;
    public String f;
    
    static {
        j.g = 0;
        j.h = null;
    }
    
    public j(final String s, final c b, final String c) {
        super();
        this.e = 1;
        this.f = "Loading...";
        String a;
        if (s == null) {
            a = "https://www.chartboost.com";
        }
        else {
            a = s;
        }
        this.a = a;
        this.b = b;
        this.c = c;
        this.d = (SparseArray<b>)new SparseArray();
    }
    
    private static String b(final Application application, final String str) {
        try {
            final String versionName = application.getPackageManager().getPackageInfo(application.getPackageName(), 0).versionName;
            final StringBuilder sb = new StringBuilder();
            sb.append(application.getPackageName());
            sb.append("/");
            sb.append(versionName);
            sb.append(" (");
            sb.append("Linux; U; Android ");
            sb.append(Build$VERSION.RELEASE);
            sb.append("; ");
            sb.append(Locale.getDefault());
            sb.append("; ");
            sb.append(Build.PRODUCT);
            sb.append(")");
            if (str != null) {
                sb.append(" ");
                sb.append(str);
            }
            return sb.toString();
        }
        catch (PackageManager$NameNotFoundException cause) {
            throw new RuntimeException((Throwable)cause);
        }
    }
    
    public static HttpClient b() {
        if (j.h != null) {
            return j.h;
        }
        try {
            return j.h = (HttpClient)new DefaultHttpClient() {
                private final /* synthetic */ Application a = (Application)Chartboost.sharedChartboost().getContext().getApplicationContext();
                
                protected SocketFactory a() {
                    try {
                        final Class<?> forName = Class.forName("android.net.SSLSessionCache");
                        return (SocketFactory)Class.forName("android.net.SSLCertificateSocketFactory").getMethod("getHttpSocketFactory", Integer.TYPE, forName).invoke(null, Chartboost.sharedChartboost().getTimeout(), forName.getConstructor(Context.class).newInstance(this.a));
                    }
                    catch (Exception ex) {
                        return (SocketFactory)SSLSocketFactory.getSocketFactory();
                    }
                }
                
                protected ClientConnectionManager createClientConnectionManager() {
                    final SchemeRegistry schemeRegistry = new SchemeRegistry();
                    schemeRegistry.register(new Scheme("http", (SocketFactory)PlainSocketFactory.getSocketFactory(), 80));
                    schemeRegistry.register(new Scheme("https", this.a(), 443));
                    final HttpParams params = this.getParams();
                    HttpConnectionParams.setConnectionTimeout(params, Chartboost.sharedChartboost().getTimeout());
                    HttpConnectionParams.setSoTimeout(params, Chartboost.sharedChartboost().getTimeout());
                    HttpProtocolParams.setUserAgent(params, b(this.a, HttpProtocolParams.getUserAgent(params)));
                    return (ClientConnectionManager)new ThreadSafeClientConnManager(params, schemeRegistry);
                }
            };
        }
        catch (Exception ex) {
            try {
                final DefaultHttpClient defaultHttpClient = new DefaultHttpClient();
                final ClientConnectionManager connectionManager = ((HttpClient)defaultHttpClient).getConnectionManager();
                final HttpParams params = ((HttpClient)defaultHttpClient).getParams();
                return j.h = (HttpClient)new DefaultHttpClient((ClientConnectionManager)new ThreadSafeClientConnManager(params, connectionManager.getSchemeRegistry()), params);
            }
            catch (Exception ex2) {
                return j.h = (HttpClient)new DefaultHttpClient();
            }
        }
    }
    
    private void b(final k k) {
        if (k.i && this.c != null) {
            while (true) {
                final SharedPreferences a = com.chartboost.sdk.Libraries.d.a();
                final String string = "CBQueuedRequests-" + this.c;
                while (true) {
                    try {
                        final JSONObject d = k.d();
                        if (d == null) {
                            break;
                        }
                        final String string2 = a.getString(string, (String)null);
                        if (string2 != null) {
                            try {
                                final JSONArray jsonArray = new JSONArray(new JSONTokener(string2));
                                jsonArray.put((Object)d);
                                final SharedPreferences$Editor edit = a.edit();
                                edit.putString(string, jsonArray.toString());
                                edit.commit();
                                return;
                            }
                            catch (Exception ex) {
                                Log.w("Chartboost", "Failure reading saved request list");
                                final JSONArray jsonArray = new JSONArray();
                            }
                        }
                    }
                    catch (Exception ex2) {
                        Log.w("Chartboost", "Unable to save failed request");
                        return;
                    }
                    final JSONArray jsonArray = new JSONArray();
                    continue;
                }
            }
        }
        else if (this.b != null) {
            this.b.a(k);
        }
    }
    
    public void a() {
        if (l.a()) {
            final SharedPreferences a = com.chartboost.sdk.Libraries.d.a();
            final String string = "CBQueuedRequests-" + this.c;
            final String string2 = a.getString(string, (String)null);
            if (string2 != null) {
                final SharedPreferences$Editor edit = a.edit();
                edit.putString(string, (String)null);
                edit.commit();
                try {
                    final JSONArray jsonArray = new JSONArray(new JSONTokener(string2));
                    int i = 0;
                    while (i < jsonArray.length()) {
                        try {
                            final k a2 = k.a(jsonArray.getJSONObject(i));
                            if (a2 != null) {
                                this.a(a2);
                            }
                            ++i;
                        }
                        catch (Exception ex) {
                            Log.w("Chartboost", "Retrying request failed");
                        }
                    }
                }
                catch (Exception ex2) {
                    Log.w("Chartboost", "Retrying request list failed");
                }
            }
        }
    }
    
    public void a(final k k) {
        if (!l.a()) {
            this.b(k);
            return;
        }
        final int i = this.e++;
        final b b = new b(k, null);
        b.c = i;
        this.d.put(i, (Object)b);
        new a().execute((Object[])new b[] { b });
    }
    
    protected class a extends AsyncTask<b, Void, b>
    {
        protected b a(final b... p0) {
            // 
            // This method could not be decompiled.
            // 
            // Original Bytecode:
            // 
            //     0: aload_1        
            //     1: iconst_0       
            //     2: aaload         
            //     3: astore_2       
            //     4: aload_2        
            //     5: getfield        com/chartboost/sdk/impl/j$b.a:Lcom/chartboost/sdk/impl/k;
            //     8: astore_3       
            //     9: new             Lorg/apache/http/client/methods/HttpPost;
            //    12: dup            
            //    13: new             Ljava/lang/StringBuilder;
            //    16: dup            
            //    17: aload_0        
            //    18: getfield        com/chartboost/sdk/impl/j$a.a:Lcom/chartboost/sdk/impl/j;
            //    21: getfield        com/chartboost/sdk/impl/j.a:Ljava/lang/String;
            //    24: invokestatic    java/lang/String.valueOf:(Ljava/lang/Object;)Ljava/lang/String;
            //    27: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
            //    30: aload_3        
            //    31: invokevirtual   com/chartboost/sdk/impl/k.a:()Ljava/lang/String;
            //    34: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //    37: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
            //    40: invokespecial   org/apache/http/client/methods/HttpPost.<init>:(Ljava/lang/String;)V
            //    43: astore          4
            //    45: aload           4
            //    47: ldc             "Content-Type"
            //    49: ldc             "application/json; charset=UTF-8"
            //    51: invokevirtual   org/apache/http/client/methods/HttpPost.setHeader:(Ljava/lang/String;Ljava/lang/String;)V
            //    54: aload           4
            //    56: ldc             "Accept"
            //    58: ldc             "application/json; charset=UTF-8"
            //    60: invokevirtual   org/apache/http/client/methods/HttpPost.setHeader:(Ljava/lang/String;Ljava/lang/String;)V
            //    63: aload           4
            //    65: ldc             "X-Chartboost-Client"
            //    67: ldc             "Chartboost-Android-SDK 3.1.5"
            //    69: invokevirtual   org/apache/http/client/methods/HttpPost.setHeader:(Ljava/lang/String;Ljava/lang/String;)V
            //    72: aload           4
            //    74: ldc             "X-Chartboost-API"
            //    76: ldc             "3.1.5"
            //    78: invokevirtual   org/apache/http/client/methods/HttpPost.setHeader:(Ljava/lang/String;Ljava/lang/String;)V
            //    81: aload_3        
            //    82: invokevirtual   com/chartboost/sdk/impl/k.c:()Ljava/util/Map;
            //    85: astore          5
            //    87: aload           5
            //    89: ifnull          116
            //    92: aload           5
            //    94: invokeinterface java/util/Map.keySet:()Ljava/util/Set;
            //    99: invokeinterface java/util/Set.iterator:()Ljava/util/Iterator;
            //   104: astore          24
            //   106: aload           24
            //   108: invokeinterface java/util/Iterator.hasNext:()Z
            //   113: ifne            324
            //   116: aload_0        
            //   117: getfield        com/chartboost/sdk/impl/j$a.a:Lcom/chartboost/sdk/impl/j;
            //   120: astore          6
            //   122: aload           6
            //   124: monitorenter   
            //   125: iconst_1       
            //   126: invokestatic    com/chartboost/sdk/impl/j.c:()I
            //   129: iadd           
            //   130: istore          8
            //   132: iload           8
            //   134: invokestatic    com/chartboost/sdk/impl/j.a:(I)V
            //   137: aload           6
            //   139: monitorexit    
            //   140: aload_3        
            //   141: getfield        com/chartboost/sdk/impl/k.e:Lorg/json/JSONObject;
            //   144: ifnull          366
            //   147: new             Lorg/apache/http/entity/StringEntity;
            //   150: dup            
            //   151: aload_3        
            //   152: getfield        com/chartboost/sdk/impl/k.e:Lorg/json/JSONObject;
            //   155: invokevirtual   org/json/JSONObject.toString:()Ljava/lang/String;
            //   158: invokespecial   org/apache/http/entity/StringEntity.<init>:(Ljava/lang/String;)V
            //   161: astore          14
            //   163: aload           14
            //   165: new             Lorg/apache/http/message/BasicHeader;
            //   168: dup            
            //   169: ldc             "Content-Type"
            //   171: ldc             "application/json"
            //   173: invokespecial   org/apache/http/message/BasicHeader.<init>:(Ljava/lang/String;Ljava/lang/String;)V
            //   176: invokevirtual   org/apache/http/entity/StringEntity.setContentType:(Lorg/apache/http/Header;)V
            //   179: aload           4
            //   181: aload           14
            //   183: invokevirtual   org/apache/http/client/methods/HttpPost.setEntity:(Lorg/apache/http/HttpEntity;)V
            //   186: invokestatic    com/chartboost/sdk/impl/j.b:()Lorg/apache/http/client/HttpClient;
            //   189: aload           4
            //   191: invokeinterface org/apache/http/client/HttpClient.execute:(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
            //   196: astore          15
            //   198: aload           15
            //   200: invokeinterface org/apache/http/HttpResponse.getStatusLine:()Lorg/apache/http/StatusLine;
            //   205: invokeinterface org/apache/http/StatusLine.getStatusCode:()I
            //   210: istore          17
            //   212: iload           17
            //   214: sipush          300
            //   217: if_icmpge       484
            //   220: iload           17
            //   222: sipush          200
            //   225: if_icmplt       484
            //   228: new             Ljava/io/BufferedReader;
            //   231: dup            
            //   232: new             Ljava/io/InputStreamReader;
            //   235: dup            
            //   236: aload           15
            //   238: invokeinterface org/apache/http/HttpResponse.getEntity:()Lorg/apache/http/HttpEntity;
            //   243: invokeinterface org/apache/http/HttpEntity.getContent:()Ljava/io/InputStream;
            //   248: ldc             "UTF-8"
            //   250: invokespecial   java/io/InputStreamReader.<init>:(Ljava/io/InputStream;Ljava/lang/String;)V
            //   253: sipush          2048
            //   256: invokespecial   java/io/BufferedReader.<init>:(Ljava/io/Reader;I)V
            //   259: astore          19
            //   261: new             Ljava/lang/StringBuilder;
            //   264: dup            
            //   265: invokespecial   java/lang/StringBuilder.<init>:()V
            //   268: astore          20
            //   270: aload           19
            //   272: invokevirtual   java/io/BufferedReader.readLine:()Ljava/lang/String;
            //   275: astore          21
            //   277: aload           21
            //   279: ifnonnull       468
            //   282: aload           19
            //   284: invokevirtual   java/io/BufferedReader.close:()V
            //   287: aload_3        
            //   288: new             Lorg/json/JSONObject;
            //   291: dup            
            //   292: new             Lorg/json/JSONTokener;
            //   295: dup            
            //   296: aload           20
            //   298: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
            //   301: invokespecial   org/json/JSONTokener.<init>:(Ljava/lang/String;)V
            //   304: invokespecial   org/json/JSONObject.<init>:(Lorg/json/JSONTokener;)V
            //   307: putfield        com/chartboost/sdk/impl/k.j:Lorg/json/JSONObject;
            //   310: aload           15
            //   312: invokeinterface org/apache/http/HttpResponse.getEntity:()Lorg/apache/http/HttpEntity;
            //   317: invokeinterface org/apache/http/HttpEntity.consumeContent:()V
            //   322: aload_2        
            //   323: areturn        
            //   324: aload           24
            //   326: invokeinterface java/util/Iterator.next:()Ljava/lang/Object;
            //   331: checkcast       Ljava/lang/String;
            //   334: astore          25
            //   336: aload           4
            //   338: aload           25
            //   340: aload           5
            //   342: aload           25
            //   344: invokeinterface java/util/Map.get:(Ljava/lang/Object;)Ljava/lang/Object;
            //   349: checkcast       Ljava/lang/String;
            //   352: invokevirtual   org/apache/http/client/methods/HttpPost.setHeader:(Ljava/lang/String;Ljava/lang/String;)V
            //   355: goto            106
            //   358: astore          7
            //   360: aload           6
            //   362: monitorexit    
            //   363: aload           7
            //   365: athrow         
            //   366: new             Ljava/lang/StringBuilder;
            //   369: dup            
            //   370: ldc             "HTTP Request Body "
            //   372: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
            //   375: iload           8
            //   377: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
            //   380: ldc             " "
            //   382: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   385: aload_3        
            //   386: getfield        com/chartboost/sdk/impl/k.b:Ljava/lang/String;
            //   389: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   392: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
            //   395: ldc             "<empty>"
            //   397: invokestatic    android/util/Log.i:(Ljava/lang/String;Ljava/lang/String;)I
            //   400: pop            
            //   401: goto            186
            //   404: astore          9
            //   406: aconst_null    
            //   407: astore          10
            //   409: aload           9
            //   411: astore          11
            //   413: ldc             "Chartboost"
            //   415: new             Ljava/lang/StringBuilder;
            //   418: dup            
            //   419: ldc             "Exception on http request: "
            //   421: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
            //   424: aload           11
            //   426: invokevirtual   java/lang/Exception.getLocalizedMessage:()Ljava/lang/String;
            //   429: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   432: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
            //   435: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
            //   438: pop            
            //   439: aload           10
            //   441: ifnull          466
            //   444: aload           10
            //   446: invokeinterface org/apache/http/HttpResponse.getEntity:()Lorg/apache/http/HttpEntity;
            //   451: ifnull          466
            //   454: aload           10
            //   456: invokeinterface org/apache/http/HttpResponse.getEntity:()Lorg/apache/http/HttpEntity;
            //   461: invokeinterface org/apache/http/HttpEntity.consumeContent:()V
            //   466: aload_2        
            //   467: areturn        
            //   468: aload           20
            //   470: aload           21
            //   472: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   475: ldc             "\n"
            //   477: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   480: pop            
            //   481: goto            270
            //   484: ldc             "Chartboost"
            //   486: new             Ljava/lang/StringBuilder;
            //   489: dup            
            //   490: ldc             "Request failed. Response code: "
            //   492: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
            //   495: iload           17
            //   497: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
            //   500: ldc             ", body: "
            //   502: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   505: aload           15
            //   507: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
            //   510: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
            //   513: invokestatic    android/util/Log.w:(Ljava/lang/String;Ljava/lang/String;)I
            //   516: pop            
            //   517: aload           15
            //   519: invokeinterface org/apache/http/HttpResponse.getEntity:()Lorg/apache/http/HttpEntity;
            //   524: invokeinterface org/apache/http/HttpEntity.consumeContent:()V
            //   529: aload_2        
            //   530: areturn        
            //   531: astore          13
            //   533: goto            466
            //   536: astore          16
            //   538: aload           15
            //   540: astore          10
            //   542: aload           16
            //   544: astore          11
            //   546: goto            413
            //    Exceptions:
            //  Try           Handler
            //  Start  End    Start  End    Type                 
            //  -----  -----  -----  -----  ---------------------
            //  125    140    358    366    Any
            //  140    186    404    413    Ljava/lang/Exception;
            //  186    198    404    413    Ljava/lang/Exception;
            //  198    212    536    549    Ljava/lang/Exception;
            //  228    270    536    549    Ljava/lang/Exception;
            //  270    277    536    549    Ljava/lang/Exception;
            //  282    322    536    549    Ljava/lang/Exception;
            //  360    363    358    366    Any
            //  366    401    404    413    Ljava/lang/Exception;
            //  444    466    531    536    Ljava/lang/Exception;
            //  468    481    536    549    Ljava/lang/Exception;
            //  484    529    536    549    Ljava/lang/Exception;
            // 
            // The error that occurred was:
            // 
            // java.lang.IndexOutOfBoundsException: Index: 228, Size: 228
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
            //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:556)
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
        
        protected void a(final b b) {
            j.this.d.remove((int)b.c);
            if (b.a.j != null) {
                if (j.this.b != null) {
                    j.this.b.a(b.a.j, b.a);
                }
                return;
            }
            j.this.b(b.a);
        }
        
        protected void onPreExecute() {
        }
    }
    
    protected class b implements Serializable
    {
        public k a;
        public JSONObject b;
        public Integer c;
        
        public b(final k a, final JSONObject b) {
            super();
            this.a = a;
            this.b = b;
        }
    }
    
    public interface c
    {
        void a(k p0);
        
        void a(JSONObject p0, k p1);
    }
}
