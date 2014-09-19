package com.fusepowered.m1.android;

import org.apache.http.client.*;
import org.apache.http.params.*;
import org.apache.http.impl.client.*;
import java.io.*;
import org.apache.http.*;
import android.text.*;
import org.apache.http.client.methods.*;
import java.net.*;
import java.util.*;

class HttpGetRequest
{
    private HttpClient client;
    private HttpGet getRequest;
    
    HttpGetRequest() {
        super();
        final BasicHttpParams basicHttpParams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout((HttpParams)basicHttpParams, 10000);
        this.client = (HttpClient)new DefaultHttpClient((HttpParams)basicHttpParams);
        this.getRequest = new HttpGet();
    }
    
    HttpGetRequest(final int n) {
        super();
        final BasicHttpParams basicHttpParams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout((HttpParams)basicHttpParams, 10000);
        HttpConnectionParams.setSoTimeout((HttpParams)basicHttpParams, n);
        this.client = (HttpClient)new DefaultHttpClient((HttpParams)basicHttpParams);
        this.getRequest = new HttpGet();
    }
    
    static String convertStreamToString(final InputStream p0) throws IOException {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aconst_null    
        //     1: astore_1       
        //     2: aload_0        
        //     3: ifnonnull       16
        //     6: new             Ljava/io/IOException;
        //     9: dup            
        //    10: ldc             "Stream is null."
        //    12: invokespecial   java/io/IOException.<init>:(Ljava/lang/String;)V
        //    15: athrow         
        //    16: new             Ljava/io/BufferedReader;
        //    19: dup            
        //    20: new             Ljava/io/InputStreamReader;
        //    23: dup            
        //    24: aload_0        
        //    25: invokespecial   java/io/InputStreamReader.<init>:(Ljava/io/InputStream;)V
        //    28: sipush          4096
        //    31: invokespecial   java/io/BufferedReader.<init>:(Ljava/io/Reader;I)V
        //    34: astore_2       
        //    35: new             Ljava/lang/StringBuilder;
        //    38: dup            
        //    39: invokespecial   java/lang/StringBuilder.<init>:()V
        //    42: astore_3       
        //    43: aload_2        
        //    44: invokevirtual   java/io/BufferedReader.readLine:()Ljava/lang/String;
        //    47: astore          8
        //    49: aload           8
        //    51: ifnull          118
        //    54: aload_3        
        //    55: new             Ljava/lang/StringBuilder;
        //    58: dup            
        //    59: invokespecial   java/lang/StringBuilder.<init>:()V
        //    62: aload           8
        //    64: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    67: ldc             "\n"
        //    69: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    72: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    75: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    78: pop            
        //    79: goto            43
        //    82: astore          6
        //    84: aload           6
        //    86: astore          7
        //    88: aload_2        
        //    89: astore_1       
        //    90: aload           7
        //    92: invokestatic    com/fusepowered/m1/android/MMSDK$Log.d:(Ljava/lang/Throwable;)V
        //    95: new             Ljava/io/IOException;
        //    98: dup            
        //    99: ldc             "Out of memory."
        //   101: invokespecial   java/io/IOException.<init>:(Ljava/lang/String;)V
        //   104: athrow         
        //   105: astore          4
        //   107: aload_1        
        //   108: ifnull          115
        //   111: aload_1        
        //   112: invokevirtual   java/io/BufferedReader.close:()V
        //   115: aload           4
        //   117: athrow         
        //   118: aload_2        
        //   119: ifnull          126
        //   122: aload_2        
        //   123: invokevirtual   java/io/BufferedReader.close:()V
        //   126: aload_3        
        //   127: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   130: areturn        
        //   131: astore          10
        //   133: aload           10
        //   135: invokestatic    com/fusepowered/m1/android/MMSDK$Log.d:(Ljava/lang/Throwable;)V
        //   138: goto            126
        //   141: astore          5
        //   143: aload           5
        //   145: invokestatic    com/fusepowered/m1/android/MMSDK$Log.d:(Ljava/lang/Throwable;)V
        //   148: goto            115
        //   151: astore          4
        //   153: aload_2        
        //   154: astore_1       
        //   155: goto            107
        //   158: astore          11
        //   160: aload           11
        //   162: astore          7
        //   164: aconst_null    
        //   165: astore_1       
        //   166: goto            90
        //    Exceptions:
        //  throws java.io.IOException
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                        
        //  -----  -----  -----  -----  ----------------------------
        //  16     35     158    169    Ljava/lang/OutOfMemoryError;
        //  16     35     105    107    Any
        //  35     43     82     90     Ljava/lang/OutOfMemoryError;
        //  35     43     151    158    Any
        //  43     49     82     90     Ljava/lang/OutOfMemoryError;
        //  43     49     151    158    Any
        //  54     79     82     90     Ljava/lang/OutOfMemoryError;
        //  54     79     151    158    Any
        //  90     105    105    107    Any
        //  111    115    141    151    Ljava/io/IOException;
        //  122    126    131    141    Ljava/io/IOException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0115:
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
    
    static void log(final String[] array) {
        if (array != null && array.length > 0) {
            Utils.ThreadUtils.execute(new Runnable() {
                @Override
                public void run() {
                    final String[] val$urls = array;
                    final int length = val$urls.length;
                    int i = 0;
                Label_0047_Outer:
                    while (i < length) {
                        final String s = val$urls[i];
                        MMSDK.Log.v("Logging event to: %s", s);
                        while (true) {
                            try {
                                new HttpGetRequest().get(s);
                                ++i;
                                continue Label_0047_Outer;
                            }
                            catch (Exception ex) {
                                MMSDK.Log.v(ex.getMessage());
                                continue;
                            }
                            break;
                        }
                        break;
                    }
                }
            });
        }
    }
    
    HttpResponse get(final String str) throws Exception {
        final boolean empty = TextUtils.isEmpty((CharSequence)str);
        HttpResponse execute = null;
        if (empty) {
            return execute;
        }
        try {
            this.getRequest.setURI(new URI(str));
            execute = this.client.execute((HttpUriRequest)this.getRequest);
            return execute;
        }
        catch (OutOfMemoryError outOfMemoryError) {
            MMSDK.Log.e("Out of memory!");
            return null;
        }
        catch (Exception ex) {
            if (ex != null) {
                MMSDK.Log.e("Error connecting:" + ex.getMessage());
            }
            return null;
        }
    }
    
    void trackConversion(final String str, final boolean b, final long n, final TreeMap<String, String> treeMap) throws Exception {
        while (true) {
            Label_0216: {
                if (!b) {
                    break Label_0216;
                }
                final int i = 1;
                StringBuilder sb = null;
                Label_0222: {
                    try {
                        sb = new StringBuilder("http://cvt.mydas.mobi/handleConversion?firstlaunch=" + i);
                        if (str != null) {
                            sb.append("&goalId=" + str);
                        }
                        if (n > 0L) {
                            sb.append("&installtime=" + n / 1000L);
                        }
                        if (treeMap != null) {
                            for (final Map.Entry<String, String> entry : treeMap.entrySet()) {
                                sb.append(String.format("&%s=%s", entry.getKey(), URLEncoder.encode(entry.getValue(), "UTF-8")));
                            }
                        }
                        break Label_0222;
                    }
                    catch (IOException ex) {
                        MMSDK.Log.e("Conversion tracking error: %s", ex.getMessage());
                        return;
                    }
                    break Label_0216;
                }
                final String string = sb.toString();
                MMSDK.Log.d("Sending conversion tracker report: %s", string);
                this.getRequest.setURI(new URI(string));
                final HttpResponse execute = this.client.execute((HttpUriRequest)this.getRequest);
                if (execute.getStatusLine().getStatusCode() == 200) {
                    MMSDK.Log.v("Successful conversion tracking event: %d", execute.getStatusLine().getStatusCode());
                    return;
                }
                MMSDK.Log.e("Conversion tracking error: %d", execute.getStatusLine().getStatusCode());
                return;
            }
            final int i = 0;
            continue;
        }
    }
}
