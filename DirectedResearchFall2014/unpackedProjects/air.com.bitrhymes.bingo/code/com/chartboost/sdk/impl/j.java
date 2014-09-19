package com.chartboost.sdk.impl;

import android.os.*;
import com.chartboost.sdk.*;
import com.chartboost.sdk.Libraries.*;
import android.util.*;
import android.content.*;
import java.io.*;
import org.json.*;

public class j
{
    public static e.a a;
    private static int g;
    private String b;
    private String c;
    private SparseArray<a> d;
    private int e;
    private Handler f;
    
    static {
        j.a = e.a(e.a(), new e.c() {
            @Override
            public String a() {
                return "Must be a valid status code (>=200 && <300)";
            }
            
            @Override
            public boolean a(final Object o) {
                final int intValue = ((Number)o).intValue();
                return intValue >= 200 && intValue < 300;
            }
        });
        j.g = 0;
    }
    
    public j(final String s, final String c) {
        super();
        this.f = Chartboost.sharedChartboost().getHandler();
        String b;
        if (s == null) {
            b = "https://live.chartboost.com";
        }
        else {
            b = s;
        }
        this.b = b;
        this.c = c;
        this.d = (SparseArray<a>)new SparseArray();
        this.e = 1;
    }
    
    public void a() {
        if (m.a()) {
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
        this.a(k, null);
    }
    
    public void a(final k k, final b b) {
        final int n = this.e++;
        final a a = new a(n, k, b);
        if (!m.a()) {
            a.a("network unreachable");
            return;
        }
        this.d.put(n, (Object)a);
        l.a().execute(new d(a));
    }
    
    private class a implements Serializable
    {
        private k b;
        private JSONObject c;
        private Integer d;
        private b e;
        
        public a(final int i, final k b, final b e) {
            super();
            this.d = i;
            this.b = b;
            this.e = e;
            this.c = null;
        }
        
        public void a(final String s) {
            Label_0159: {
                if (!this.b.f() || j.this.c == null) {
                    break Label_0159;
                }
                final SharedPreferences a = com.chartboost.sdk.Libraries.d.a();
                final String string = "CBQueuedRequests-" + j.this.c;
                try {
                    final JSONObject h = this.b.h();
                    if (h != null) {
                        final String string2 = a.getString(string, (String)null);
                        while (true) {
                            Label_0147: {
                                if (string2 == null) {
                                    break Label_0147;
                                }
                                try {
                                    final JSONArray jsonArray = new JSONArray(new JSONTokener(string2));
                                    jsonArray.put((Object)h);
                                    final SharedPreferences$Editor edit = a.edit();
                                    edit.putString(string, jsonArray.toString());
                                    edit.commit();
                                    return;
                                }
                                catch (Exception ex) {
                                    final JSONArray jsonArray = new JSONArray();
                                    continue;
                                }
                            }
                            final JSONArray jsonArray = new JSONArray();
                            continue;
                        }
                    }
                    Label_0180: {
                        return;
                    }
                    // iftrue(Label_0180:, this.e == null)
                    this.e.a(this.b, s);
                }
                catch (Exception ex2) {}
            }
        }
    }
    
    public interface b
    {
        void a(k p0, String p1);
        
        void a(JSONObject p0, k p1);
    }
    
    public abstract static class c implements b
    {
        @Override
        public void a(final k k, final String s) {
        }
    }
    
    private class d implements Runnable
    {
        private a b;
        
        public d(final a b) {
            super();
            this.b = b;
        }
        
        private void a(final boolean b, final String s) {
            j.this.f.post((Runnable)new Runnable() {
                @Override
                public void run() {
                    final a a = d.this.b;
                    if (b && a.c != null) {
                        if (a.e != null) {
                            a.e.a(a.c, a.b);
                        }
                        return;
                    }
                    a.a(s);
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
            //     0: aload_0        
            //     1: getfield        com/chartboost/sdk/impl/j$d.b:Lcom/chartboost/sdk/impl/j$a;
            //     4: invokestatic    com/chartboost/sdk/impl/j$a.a:(Lcom/chartboost/sdk/impl/j$a;)Lcom/chartboost/sdk/impl/k;
            //     7: astore_1       
            //     8: new             Lorg/apache/http/client/methods/HttpPost;
            //    11: dup            
            //    12: new             Ljava/lang/StringBuilder;
            //    15: dup            
            //    16: aload_0        
            //    17: getfield        com/chartboost/sdk/impl/j$d.a:Lcom/chartboost/sdk/impl/j;
            //    20: invokestatic    com/chartboost/sdk/impl/j.b:(Lcom/chartboost/sdk/impl/j;)Ljava/lang/String;
            //    23: invokestatic    java/lang/String.valueOf:(Ljava/lang/Object;)Ljava/lang/String;
            //    26: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
            //    29: aload_1        
            //    30: invokevirtual   com/chartboost/sdk/impl/k.a:()Ljava/lang/String;
            //    33: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //    36: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
            //    39: invokespecial   org/apache/http/client/methods/HttpPost.<init>:(Ljava/lang/String;)V
            //    42: astore_2       
            //    43: aload_2        
            //    44: ldc             "Content-Type"
            //    46: ldc             "application/json; charset=UTF-8"
            //    48: invokevirtual   org/apache/http/client/methods/HttpPost.setHeader:(Ljava/lang/String;Ljava/lang/String;)V
            //    51: aload_2        
            //    52: ldc             "Accept"
            //    54: ldc             "application/json; charset=UTF-8"
            //    56: invokevirtual   org/apache/http/client/methods/HttpPost.setHeader:(Ljava/lang/String;Ljava/lang/String;)V
            //    59: aload_2        
            //    60: ldc             "X-Chartboost-Client"
            //    62: ldc             "Chartboost-Android-SDK 3.3.0"
            //    64: invokevirtual   org/apache/http/client/methods/HttpPost.setHeader:(Ljava/lang/String;Ljava/lang/String;)V
            //    67: aload_2        
            //    68: ldc             "X-Chartboost-API"
            //    70: ldc             "3.1.0"
            //    72: invokevirtual   org/apache/http/client/methods/HttpPost.setHeader:(Ljava/lang/String;Ljava/lang/String;)V
            //    75: aload_1        
            //    76: invokevirtual   com/chartboost/sdk/impl/k.e:()Ljava/util/Map;
            //    79: astore_3       
            //    80: aload_3        
            //    81: ifnull          107
            //    84: aload_3        
            //    85: invokeinterface java/util/Map.entrySet:()Ljava/util/Set;
            //    90: invokeinterface java/util/Set.iterator:()Ljava/util/Iterator;
            //    95: astore          33
            //    97: aload           33
            //    99: invokeinterface java/util/Iterator.hasNext:()Z
            //   104: ifne            434
            //   107: aload_0        
            //   108: getfield        com/chartboost/sdk/impl/j$d.a:Lcom/chartboost/sdk/impl/j;
            //   111: astore          4
            //   113: aload           4
            //   115: monitorenter   
            //   116: iconst_1       
            //   117: invokestatic    com/chartboost/sdk/impl/j.b:()I
            //   120: iadd           
            //   121: istore          6
            //   123: iload           6
            //   125: invokestatic    com/chartboost/sdk/impl/j.a:(I)V
            //   128: aload           4
            //   130: monitorexit    
            //   131: aload_1        
            //   132: invokevirtual   com/chartboost/sdk/impl/k.d:()Lorg/json/JSONObject;
            //   135: ifnull          481
            //   138: new             Lorg/apache/http/entity/StringEntity;
            //   141: dup            
            //   142: aload_1        
            //   143: invokevirtual   com/chartboost/sdk/impl/k.d:()Lorg/json/JSONObject;
            //   146: invokevirtual   org/json/JSONObject.toString:()Ljava/lang/String;
            //   149: invokespecial   org/apache/http/entity/StringEntity.<init>:(Ljava/lang/String;)V
            //   152: astore          13
            //   154: aload           13
            //   156: new             Lorg/apache/http/message/BasicHeader;
            //   159: dup            
            //   160: ldc             "Content-Type"
            //   162: ldc             "application/json"
            //   164: invokespecial   org/apache/http/message/BasicHeader.<init>:(Ljava/lang/String;Ljava/lang/String;)V
            //   167: invokevirtual   org/apache/http/entity/StringEntity.setContentType:(Lorg/apache/http/Header;)V
            //   170: aload_2        
            //   171: aload           13
            //   173: invokevirtual   org/apache/http/client/methods/HttpPost.setEntity:(Lorg/apache/http/HttpEntity;)V
            //   176: invokestatic    com/chartboost/sdk/impl/l.b:()Lorg/apache/http/client/HttpClient;
            //   179: aload_2        
            //   180: invokeinterface org/apache/http/client/HttpClient.execute:(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
            //   185: astore          14
            //   187: aload           14
            //   189: invokeinterface org/apache/http/HttpResponse.getStatusLine:()Lorg/apache/http/StatusLine;
            //   194: invokeinterface org/apache/http/StatusLine.getStatusCode:()I
            //   199: istore          16
            //   201: aload           14
            //   203: invokeinterface org/apache/http/HttpResponse.getEntity:()Lorg/apache/http/HttpEntity;
            //   208: astore          17
            //   210: aload           17
            //   212: invokeinterface org/apache/http/HttpEntity.getContent:()Ljava/io/InputStream;
            //   217: astore          26
            //   219: new             Ljava/io/BufferedReader;
            //   222: dup            
            //   223: new             Ljava/io/InputStreamReader;
            //   226: dup            
            //   227: aload           26
            //   229: ldc             "UTF-8"
            //   231: invokespecial   java/io/InputStreamReader.<init>:(Ljava/io/InputStream;Ljava/lang/String;)V
            //   234: sipush          2048
            //   237: invokespecial   java/io/BufferedReader.<init>:(Ljava/io/Reader;I)V
            //   240: astore          27
            //   242: new             Ljava/lang/StringBuilder;
            //   245: dup            
            //   246: aload           26
            //   248: invokevirtual   java/io/InputStream.available:()I
            //   251: invokespecial   java/lang/StringBuilder.<init>:(I)V
            //   254: astore          28
            //   256: aload           27
            //   258: invokevirtual   java/io/BufferedReader.readLine:()Ljava/lang/String;
            //   261: astore          29
            //   263: aload           29
            //   265: ifnonnull       587
            //   268: aload           27
            //   270: invokevirtual   java/io/BufferedReader.close:()V
            //   273: aload           28
            //   275: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
            //   278: astore          30
            //   280: aload           30
            //   282: astore          19
            //   284: iload           16
            //   286: sipush          300
            //   289: if_icmpge       631
            //   292: iload           16
            //   294: sipush          200
            //   297: if_icmplt       631
            //   300: aload           19
            //   302: ifnull          749
            //   305: new             Lorg/json/JSONObject;
            //   308: dup            
            //   309: new             Lorg/json/JSONTokener;
            //   312: dup            
            //   313: aload           19
            //   315: invokespecial   org/json/JSONTokener.<init>:(Ljava/lang/String;)V
            //   318: invokespecial   org/json/JSONObject.<init>:(Lorg/json/JSONTokener;)V
            //   321: astore          23
            //   323: aload_0        
            //   324: getfield        com/chartboost/sdk/impl/j$d.b:Lcom/chartboost/sdk/impl/j$a;
            //   327: invokestatic    com/chartboost/sdk/impl/j$a.a:(Lcom/chartboost/sdk/impl/j$a;)Lcom/chartboost/sdk/impl/k;
            //   330: invokevirtual   com/chartboost/sdk/impl/k.g:()Lcom/chartboost/sdk/Libraries/e$a;
            //   333: astore          24
            //   335: new             Ljava/lang/StringBuilder;
            //   338: dup            
            //   339: invokespecial   java/lang/StringBuilder.<init>:()V
            //   342: astore          25
            //   344: aload           24
            //   346: ifnull          616
            //   349: aload           24
            //   351: aload           23
            //   353: aload           25
            //   355: invokevirtual   com/chartboost/sdk/Libraries/e$a.a:(Ljava/lang/Object;Ljava/lang/StringBuilder;)Z
            //   358: ifne            616
            //   361: new             Ljava/lang/StringBuilder;
            //   364: dup            
            //   365: ldc             "Json response failed validation: "
            //   367: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
            //   370: aload           25
            //   372: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
            //   375: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   378: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
            //   381: astore          22
            //   383: aload           17
            //   385: invokestatic    com/chartboost/sdk/Libraries/d.a:(Lorg/apache/http/HttpEntity;)V
            //   388: aload           22
            //   390: astore          10
            //   392: aload_0        
            //   393: getfield        com/chartboost/sdk/impl/j$d.a:Lcom/chartboost/sdk/impl/j;
            //   396: invokestatic    com/chartboost/sdk/impl/j.c:(Lcom/chartboost/sdk/impl/j;)Landroid/util/SparseArray;
            //   399: aload_0        
            //   400: getfield        com/chartboost/sdk/impl/j$d.b:Lcom/chartboost/sdk/impl/j$a;
            //   403: invokestatic    com/chartboost/sdk/impl/j$a.b:(Lcom/chartboost/sdk/impl/j$a;)Ljava/lang/Integer;
            //   406: invokevirtual   java/lang/Integer.intValue:()I
            //   409: invokevirtual   android/util/SparseArray.remove:(I)V
            //   412: aload_0        
            //   413: getfield        com/chartboost/sdk/impl/j$d.b:Lcom/chartboost/sdk/impl/j$a;
            //   416: invokestatic    com/chartboost/sdk/impl/j$a.c:(Lcom/chartboost/sdk/impl/j$a;)Lorg/json/JSONObject;
            //   419: ifnull          730
            //   422: iconst_1       
            //   423: istore          12
            //   425: aload_0        
            //   426: iload           12
            //   428: aload           10
            //   430: invokespecial   com/chartboost/sdk/impl/j$d.a:(ZLjava/lang/String;)V
            //   433: return         
            //   434: aload           33
            //   436: invokeinterface java/util/Iterator.next:()Ljava/lang/Object;
            //   441: checkcast       Ljava/util/Map$Entry;
            //   444: astore          34
            //   446: aload_2        
            //   447: aload           34
            //   449: invokeinterface java/util/Map$Entry.getKey:()Ljava/lang/Object;
            //   454: checkcast       Ljava/lang/String;
            //   457: aload           34
            //   459: invokeinterface java/util/Map$Entry.getValue:()Ljava/lang/Object;
            //   464: invokevirtual   java/lang/Object.toString:()Ljava/lang/String;
            //   467: invokevirtual   org/apache/http/client/methods/HttpPost.setHeader:(Ljava/lang/String;Ljava/lang/String;)V
            //   470: goto            97
            //   473: astore          5
            //   475: aload           4
            //   477: monitorexit    
            //   478: aload           5
            //   480: athrow         
            //   481: new             Ljava/lang/StringBuilder;
            //   484: dup            
            //   485: ldc_w           "HTTP Request Body "
            //   488: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
            //   491: iload           6
            //   493: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
            //   496: ldc_w           " "
            //   499: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   502: aload_1        
            //   503: invokevirtual   com/chartboost/sdk/impl/k.c:()Ljava/lang/String;
            //   506: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   509: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
            //   512: ldc_w           "<empty>"
            //   515: invokestatic    android/util/Log.i:(Ljava/lang/String;Ljava/lang/String;)I
            //   518: pop            
            //   519: goto            176
            //   522: astore          8
            //   524: aconst_null    
            //   525: astore          9
            //   527: new             Ljava/lang/StringBuilder;
            //   530: dup            
            //   531: ldc_w           "Exception on http request: "
            //   534: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
            //   537: aload           8
            //   539: invokevirtual   java/lang/Exception.getLocalizedMessage:()Ljava/lang/String;
            //   542: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   545: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
            //   548: astore          10
            //   550: ldc_w           "Chartboost"
            //   553: aload           10
            //   555: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
            //   558: pop            
            //   559: aload           9
            //   561: invokestatic    com/chartboost/sdk/Libraries/d.a:(Lorg/apache/http/HttpResponse;)V
            //   564: aload_0        
            //   565: getfield        com/chartboost/sdk/impl/j$d.a:Lcom/chartboost/sdk/impl/j;
            //   568: invokestatic    com/chartboost/sdk/impl/j.c:(Lcom/chartboost/sdk/impl/j;)Landroid/util/SparseArray;
            //   571: aload_0        
            //   572: getfield        com/chartboost/sdk/impl/j$d.b:Lcom/chartboost/sdk/impl/j$a;
            //   575: invokestatic    com/chartboost/sdk/impl/j$a.b:(Lcom/chartboost/sdk/impl/j$a;)Ljava/lang/Integer;
            //   578: invokevirtual   java/lang/Integer.intValue:()I
            //   581: invokevirtual   android/util/SparseArray.remove:(I)V
            //   584: goto            412
            //   587: aload           28
            //   589: aload           29
            //   591: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   594: ldc_w           "\n"
            //   597: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   600: pop            
            //   601: goto            256
            //   604: astore          18
            //   606: aload           14
            //   608: invokevirtual   java/lang/Object.toString:()Ljava/lang/String;
            //   611: astore          19
            //   613: goto            284
            //   616: aload_0        
            //   617: getfield        com/chartboost/sdk/impl/j$d.b:Lcom/chartboost/sdk/impl/j$a;
            //   620: aload           23
            //   622: invokestatic    com/chartboost/sdk/impl/j$a.a:(Lcom/chartboost/sdk/impl/j$a;Lorg/json/JSONObject;)V
            //   625: aconst_null    
            //   626: astore          22
            //   628: goto            383
            //   631: ldc_w           "Chartboost"
            //   634: new             Ljava/lang/StringBuilder;
            //   637: dup            
            //   638: ldc_w           "Request failed. Response code: "
            //   641: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
            //   644: iload           16
            //   646: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
            //   649: ldc_w           ", body: "
            //   652: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   655: aload           19
            //   657: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   660: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
            //   663: invokestatic    android/util/Log.w:(Ljava/lang/String;Ljava/lang/String;)I
            //   666: pop            
            //   667: aload           17
            //   669: invokestatic    com/chartboost/sdk/Libraries/d.a:(Lorg/apache/http/HttpEntity;)V
            //   672: new             Ljava/lang/StringBuilder;
            //   675: dup            
            //   676: ldc_w           "Request failed. Response code: "
            //   679: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
            //   682: iload           16
            //   684: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
            //   687: ldc_w           " is not valid (>=200 and <300)"
            //   690: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   693: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
            //   696: astore          21
            //   698: aload           21
            //   700: astore          10
            //   702: goto            392
            //   705: astore          7
            //   707: aload_0        
            //   708: getfield        com/chartboost/sdk/impl/j$d.a:Lcom/chartboost/sdk/impl/j;
            //   711: invokestatic    com/chartboost/sdk/impl/j.c:(Lcom/chartboost/sdk/impl/j;)Landroid/util/SparseArray;
            //   714: aload_0        
            //   715: getfield        com/chartboost/sdk/impl/j$d.b:Lcom/chartboost/sdk/impl/j$a;
            //   718: invokestatic    com/chartboost/sdk/impl/j$a.b:(Lcom/chartboost/sdk/impl/j$a;)Ljava/lang/Integer;
            //   721: invokevirtual   java/lang/Integer.intValue:()I
            //   724: invokevirtual   android/util/SparseArray.remove:(I)V
            //   727: aload           7
            //   729: athrow         
            //   730: iconst_0       
            //   731: istore          12
            //   733: goto            425
            //   736: astore          15
            //   738: aload           14
            //   740: astore          9
            //   742: aload           15
            //   744: astore          8
            //   746: goto            527
            //   749: ldc_w           "Response is not a valid json object"
            //   752: astore          22
            //   754: goto            383
            //    Exceptions:
            //  Try           Handler
            //  Start  End    Start  End    Type                 
            //  -----  -----  -----  -----  ---------------------
            //  116    131    473    481    Any
            //  131    176    522    527    Ljava/lang/Exception;
            //  131    176    705    730    Any
            //  176    187    522    527    Ljava/lang/Exception;
            //  176    187    705    730    Any
            //  187    210    736    749    Ljava/lang/Exception;
            //  187    210    705    730    Any
            //  210    256    604    616    Ljava/lang/Exception;
            //  210    256    705    730    Any
            //  256    263    604    616    Ljava/lang/Exception;
            //  256    263    705    730    Any
            //  268    280    604    616    Ljava/lang/Exception;
            //  268    280    705    730    Any
            //  305    344    736    749    Ljava/lang/Exception;
            //  305    344    705    730    Any
            //  349    383    736    749    Ljava/lang/Exception;
            //  349    383    705    730    Any
            //  383    388    736    749    Ljava/lang/Exception;
            //  383    388    705    730    Any
            //  475    478    473    481    Any
            //  481    519    522    527    Ljava/lang/Exception;
            //  481    519    705    730    Any
            //  527    564    705    730    Any
            //  587    601    604    616    Ljava/lang/Exception;
            //  587    601    705    730    Any
            //  606    613    736    749    Ljava/lang/Exception;
            //  606    613    705    730    Any
            //  616    625    736    749    Ljava/lang/Exception;
            //  616    625    705    730    Any
            //  631    698    736    749    Ljava/lang/Exception;
            //  631    698    705    730    Any
            // 
            // The error that occurred was:
            // 
            // java.lang.IndexOutOfBoundsException: Index: 318, Size: 318
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
    }
}
