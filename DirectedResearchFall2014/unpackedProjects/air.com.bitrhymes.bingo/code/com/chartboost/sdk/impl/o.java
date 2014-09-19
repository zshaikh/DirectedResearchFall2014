package com.chartboost.sdk.impl;

import com.chartboost.sdk.Libraries.*;
import com.chartboost.sdk.*;
import android.widget.*;
import android.graphics.*;
import java.lang.ref.*;
import android.graphics.drawable.*;
import android.content.*;
import android.os.*;
import java.io.*;

public class o
{
    private static o a;
    private d b;
    private com.chartboost.sdk.Libraries.a c;
    
    static {
        o.a = null;
    }
    
    private o() {
        super();
        this.b = new d(Chartboost.sharedChartboost().getContext());
        this.c = new com.chartboost.sdk.Libraries.a();
    }
    
    public static o a() {
        synchronized (o.class) {
            if (o.a == null) {
                o.a = new o();
            }
            return o.a;
        }
    }
    
    private static a b(final ImageView imageView) {
        if (imageView != null) {
            final Drawable drawable = imageView.getDrawable();
            if (drawable instanceof c) {
                return ((c)drawable).a();
            }
        }
        return null;
    }
    
    protected com.chartboost.sdk.Libraries.a.a a(final String obj) throws IOException {
        final File a = this.b.a(String.valueOf(obj) + ".png");
        if (a == null) {
            return null;
        }
        if (!a.exists()) {
            return null;
        }
        final BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(a));
        final long length = a.length();
        Label_0087: {
            if (length <= 2147483647L) {
                break Label_0087;
            }
            try {
                bufferedInputStream.close();
                throw new IOException("Cannot read files larger than 2147483647 bytes");
                // iftrue(Label_0207:, bitmapFactory$Options.inSampleSize < 32)
                Label_0200: {
                    BitmapFactory$Options bitmapFactory$Options;
                    Bitmap decodeByteArray;
                    while (true) {
                        Block_5: {
                            break Block_5;
                            final int len = (int)length;
                            final byte[] b = new byte[len];
                            bufferedInputStream.read(b, 0, len);
                            bufferedInputStream.close();
                            final BitmapFactory$Options bitmapFactory$Options2 = new BitmapFactory$Options();
                            bitmapFactory$Options2.inJustDecodeBounds = true;
                            BitmapFactory.decodeByteArray(b, 0, b.length, bitmapFactory$Options2);
                            bitmapFactory$Options = new BitmapFactory$Options();
                            bitmapFactory$Options.inJustDecodeBounds = false;
                            bitmapFactory$Options.inDither = false;
                            bitmapFactory$Options.inPurgeable = true;
                            bitmapFactory$Options.inInputShareable = true;
                            bitmapFactory$Options.inTempStorage = new byte[32768];
                            bitmapFactory$Options.inSampleSize = 1;
                            continue;
                            Label_0248: {
                                return new com.chartboost.sdk.Libraries.a.a(decodeByteArray, bitmapFactory$Options.inSampleSize);
                            }
                        }
                        decodeByteArray = null;
                        break Label_0200;
                        try {
                            Label_0207: {
                                final byte[] b;
                                decodeByteArray = BitmapFactory.decodeByteArray(b, 0, b.length, bitmapFactory$Options);
                            }
                            break Label_0200;
                        }
                        catch (Exception ex) {
                            return null;
                        }
                        catch (OutOfMemoryError outOfMemoryError) {
                            bitmapFactory$Options.inSampleSize *= 2;
                            continue;
                        }
                        break;
                    }
                    return new com.chartboost.sdk.Libraries.a.a(decodeByteArray, bitmapFactory$Options.inSampleSize);
                }
                // iftrue(Label_0248:, decodeByteArray != null)
                return null;
            }
            catch (IOException ex2) {
                throw new IOException("Cannot read files larger than 2147483647 bytes");
            }
        }
    }
    
    public void a(final String p0, final String p1, final b p2, final ImageView p3, final Bundle p4) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload           5
        //     2: ifnull          118
        //     5: aload           5
        //     7: ldc             "paramNoMemoryCache"
        //     9: invokevirtual   android/os/Bundle.getBoolean:(Ljava/lang/String;)Z
        //    12: istore          6
        //    14: aconst_null    
        //    15: astore          7
        //    17: iload           6
        //    19: ifne            36
        //    22: aload_0        
        //    23: getfield        com/chartboost/sdk/impl/o.c:Lcom/chartboost/sdk/Libraries/a;
        //    26: aload_2        
        //    27: invokevirtual   com/chartboost/sdk/Libraries/a.a:(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/a$a;
        //    30: astore          14
        //    32: aload           14
        //    34: astore          7
        //    36: aload           7
        //    38: ifnonnull       83
        //    41: aload_0        
        //    42: aload_2        
        //    43: invokevirtual   com/chartboost/sdk/impl/o.a:(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/a$a;
        //    46: astore          7
        //    48: aload           7
        //    50: ifnull          83
        //    53: iload           6
        //    55: ifeq            124
        //    58: iconst_0       
        //    59: istore          12
        //    61: aload           7
        //    63: iload           12
        //    65: invokevirtual   com/chartboost/sdk/Libraries/a$a.a:(Z)V
        //    68: iload           6
        //    70: ifne            83
        //    73: aload_0        
        //    74: getfield        com/chartboost/sdk/impl/o.c:Lcom/chartboost/sdk/Libraries/a;
        //    77: aload_2        
        //    78: aload           7
        //    80: invokevirtual   com/chartboost/sdk/Libraries/a.a:(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/a$a;)V
        //    83: aload           7
        //    85: ifnull          151
        //    88: aload           4
        //    90: ifnull          103
        //    93: aload           4
        //    95: aload           7
        //    97: invokevirtual   com/chartboost/sdk/Libraries/a$a.b:()Landroid/graphics/Bitmap;
        //   100: invokevirtual   android/widget/ImageView.setImageBitmap:(Landroid/graphics/Bitmap;)V
        //   103: aload_3        
        //   104: ifnull          117
        //   107: aload_3        
        //   108: aload           7
        //   110: aload           5
        //   112: invokeinterface com/chartboost/sdk/impl/o$b.a:(Lcom/chartboost/sdk/Libraries/a$a;Landroid/os/Bundle;)V
        //   117: return         
        //   118: iconst_0       
        //   119: istore          6
        //   121: goto            14
        //   124: iconst_1       
        //   125: istore          12
        //   127: goto            61
        //   130: astore          13
        //   132: aconst_null    
        //   133: astore          10
        //   135: aload           13
        //   137: astore          11
        //   139: aload           11
        //   141: invokevirtual   java/lang/Exception.printStackTrace:()V
        //   144: aload           10
        //   146: astore          7
        //   148: goto            83
        //   151: new             Lcom/chartboost/sdk/impl/o$a;
        //   154: dup            
        //   155: aload_0        
        //   156: aload           4
        //   158: aload_3        
        //   159: aload_2        
        //   160: aload           5
        //   162: aload_1        
        //   163: invokespecial   com/chartboost/sdk/impl/o$a.<init>:(Lcom/chartboost/sdk/impl/o;Landroid/widget/ImageView;Lcom/chartboost/sdk/impl/o$b;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
        //   166: astore          8
        //   168: invokestatic    com/chartboost/sdk/impl/l.a:()Ljava/util/concurrent/ExecutorService;
        //   171: aload           8
        //   173: invokeinterface java/util/concurrent/ExecutorService.execute:(Ljava/lang/Runnable;)V
        //   178: return         
        //   179: astore          9
        //   181: aload           7
        //   183: astore          10
        //   185: aload           9
        //   187: astore          11
        //   189: goto            139
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  22     32     130    139    Ljava/lang/Exception;
        //  41     48     179    192    Ljava/lang/Exception;
        //  61     68     179    192    Ljava/lang/Exception;
        //  73     83     179    192    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0061:
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
    
    protected boolean a(final String p0, final e p1) throws IOException {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: getfield        com/chartboost/sdk/impl/o.b:Lcom/chartboost/sdk/impl/o$d;
        //     4: new             Ljava/lang/StringBuilder;
        //     7: dup            
        //     8: aload_1        
        //     9: invokestatic    java/lang/String.valueOf:(Ljava/lang/Object;)Ljava/lang/String;
        //    12: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //    15: ldc             ".png"
        //    17: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    20: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    23: invokevirtual   com/chartboost/sdk/impl/o$d.a:(Ljava/lang/String;)Ljava/io/File;
        //    26: astore_3       
        //    27: aload_3        
        //    28: ifnonnull       33
        //    31: iconst_0       
        //    32: ireturn        
        //    33: aconst_null    
        //    34: astore          4
        //    36: new             Ljava/io/FileOutputStream;
        //    39: dup            
        //    40: aload_3        
        //    41: invokespecial   java/io/FileOutputStream.<init>:(Ljava/io/File;)V
        //    44: astore          5
        //    46: sipush          4096
        //    49: newarray        B
        //    51: astore          11
        //    53: aload_2        
        //    54: aload           11
        //    56: invokevirtual   com/chartboost/sdk/impl/o$e.read:([B)I
        //    59: istore          12
        //    61: iload           12
        //    63: iconst_m1      
        //    64: if_icmpne       79
        //    67: aload           5
        //    69: ifnull          77
        //    72: aload           5
        //    74: invokevirtual   java/io/FileOutputStream.close:()V
        //    77: iconst_1       
        //    78: ireturn        
        //    79: aload           5
        //    81: aload           11
        //    83: iconst_0       
        //    84: iload           12
        //    86: invokevirtual   java/io/FileOutputStream.write:([BII)V
        //    89: goto            53
        //    92: astore          8
        //    94: aload           5
        //    96: astore          9
        //    98: aload           9
        //   100: ifnull          108
        //   103: aload           9
        //   105: invokevirtual   java/io/FileOutputStream.close:()V
        //   108: iconst_0       
        //   109: ireturn        
        //   110: astore          6
        //   112: aload           4
        //   114: ifnull          122
        //   117: aload           4
        //   119: invokevirtual   java/io/FileOutputStream.close:()V
        //   122: aload           6
        //   124: athrow         
        //   125: astore          13
        //   127: goto            77
        //   130: astore          10
        //   132: goto            108
        //   135: astore          7
        //   137: goto            122
        //   140: astore          6
        //   142: aload           5
        //   144: astore          4
        //   146: goto            112
        //   149: astore          14
        //   151: aconst_null    
        //   152: astore          9
        //   154: goto            98
        //    Exceptions:
        //  throws java.io.IOException
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  36     46     149    157    Ljava/lang/Exception;
        //  36     46     110    112    Any
        //  46     53     92     98     Ljava/lang/Exception;
        //  46     53     140    149    Any
        //  53     61     92     98     Ljava/lang/Exception;
        //  53     61     140    149    Any
        //  72     77     125    130    Ljava/lang/Exception;
        //  79     89     92     98     Ljava/lang/Exception;
        //  79     89     140    149    Any
        //  103    108    130    135    Ljava/lang/Exception;
        //  117    122    135    140    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 75, Size: 75
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
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addType(AstBuilder.java:105)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.buildAst(JavaLanguage.java:71)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.decompileType(JavaLanguage.java:59)
        //     at com.strobel.decompiler.DecompilerDriver.decompileType(DecompilerDriver.java:304)
        //     at com.strobel.decompiler.DecompilerDriver.decompileJar(DecompilerDriver.java:225)
        //     at com.strobel.decompiler.DecompilerDriver.main(DecompilerDriver.java:110)
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
    
    public void b() {
        this.b.a();
        this.c.a();
    }
    
    private class a implements Runnable
    {
        private String b;
        private final WeakReference<ImageView> c;
        private b d;
        private String e;
        private Bundle f;
        
        public a(final ImageView referent, final b d, final String e, final Bundle f, final String b) {
            super();
            this.c = new WeakReference<ImageView>(referent);
            final c imageDrawable = new c(this);
            if (referent != null) {
                referent.setImageDrawable((Drawable)imageDrawable);
            }
            this.e = e;
            this.d = d;
            this.f = f;
            this.b = b;
        }
        
        public void a(final com.chartboost.sdk.Libraries.a.a a) {
            Chartboost.sharedChartboost().getHandler().post((Runnable)new Runnable() {
                @Override
                public void run() {
                    Label_0142: {
                        if (o.a.this.f == null) {
                            break Label_0142;
                        }
                        int boolean1 = o.a.this.f.getBoolean("paramNoMemoryCache") ? 1 : 0;
                        while (true) {
                            try {
                                while (true) {
                                    if (a != null && boolean1 == 0) {
                                        o.this.c.a(o.a.this.e, a);
                                    }
                                    if (o.a.this.c != null) {
                                        final ImageView imageView = (ImageView)o.a.this.c.get();
                                        if (o.a.this == b(imageView)) {
                                            imageView.setImageBitmap(a.b());
                                        }
                                    }
                                    if (o.a.this.d != null) {
                                        o.a.this.d.a(a, o.a.this.f);
                                    }
                                    return;
                                    boolean1 = 0;
                                    continue;
                                }
                            }
                            catch (Exception ex) {
                                ex.printStackTrace();
                                continue;
                            }
                            break;
                        }
                    }
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
            //     1: getfield        com/chartboost/sdk/impl/o$a.f:Landroid/os/Bundle;
            //     4: ifnull          65
            //     7: aload_0        
            //     8: getfield        com/chartboost/sdk/impl/o$a.f:Landroid/os/Bundle;
            //    11: ldc             "paramNoMemoryCache"
            //    13: invokevirtual   android/os/Bundle.getBoolean:(Ljava/lang/String;)Z
            //    16: istore_1       
            //    17: aload_0        
            //    18: getfield        com/chartboost/sdk/impl/o$a.a:Lcom/chartboost/sdk/impl/o;
            //    21: aload_0        
            //    22: getfield        com/chartboost/sdk/impl/o$a.e:Ljava/lang/String;
            //    25: invokevirtual   com/chartboost/sdk/impl/o.a:(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/a$a;
            //    28: astore          35
            //    30: aload           35
            //    32: astore          4
            //    34: aload           4
            //    36: ifnull          53
            //    39: iload_1        
            //    40: ifeq            70
            //    43: iconst_0       
            //    44: istore          36
            //    46: aload           4
            //    48: iload           36
            //    50: invokevirtual   com/chartboost/sdk/Libraries/a$a.a:(Z)V
            //    53: aload           4
            //    55: ifnull          89
            //    58: aload_0        
            //    59: aload           4
            //    61: invokevirtual   com/chartboost/sdk/impl/o$a.a:(Lcom/chartboost/sdk/Libraries/a$a;)V
            //    64: return         
            //    65: iconst_0       
            //    66: istore_1       
            //    67: goto            17
            //    70: iconst_1       
            //    71: istore          36
            //    73: goto            46
            //    76: astore_2       
            //    77: aconst_null    
            //    78: astore_3       
            //    79: aload_2        
            //    80: invokevirtual   java/lang/Exception.printStackTrace:()V
            //    83: aload_3        
            //    84: astore          4
            //    86: goto            53
            //    89: invokestatic    com/chartboost/sdk/impl/l.b:()Lorg/apache/http/client/HttpClient;
            //    92: astore          5
            //    94: new             Lorg/apache/http/client/methods/HttpGet;
            //    97: dup            
            //    98: aload_0        
            //    99: getfield        com/chartboost/sdk/impl/o$a.b:Ljava/lang/String;
            //   102: invokespecial   org/apache/http/client/methods/HttpGet.<init>:(Ljava/lang/String;)V
            //   105: astore          6
            //   107: aload           5
            //   109: aload           6
            //   111: invokeinterface org/apache/http/client/HttpClient.execute:(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
            //   116: astore          19
            //   118: aload           19
            //   120: invokeinterface org/apache/http/HttpResponse.getStatusLine:()Lorg/apache/http/StatusLine;
            //   125: invokeinterface org/apache/http/StatusLine.getStatusCode:()I
            //   130: istore          21
            //   132: iload           21
            //   134: sipush          200
            //   137: if_icmpeq       244
            //   140: ldc             "ImageDownloader"
            //   142: new             Ljava/lang/StringBuilder;
            //   145: dup            
            //   146: ldc             "Error "
            //   148: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
            //   151: iload           21
            //   153: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
            //   156: ldc             " while retrieving bitmap from "
            //   158: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   161: aload_0        
            //   162: getfield        com/chartboost/sdk/impl/o$a.b:Ljava/lang/String;
            //   165: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   168: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
            //   171: invokestatic    android/util/Log.w:(Ljava/lang/String;Ljava/lang/String;)I
            //   174: pop            
            //   175: aload           19
            //   177: invokestatic    com/chartboost/sdk/Libraries/d.a:(Lorg/apache/http/HttpResponse;)V
            //   180: aload_0        
            //   181: aconst_null    
            //   182: invokevirtual   com/chartboost/sdk/impl/o$a.a:(Lcom/chartboost/sdk/Libraries/a$a;)V
            //   185: return         
            //   186: astore          7
            //   188: aload           4
            //   190: astore          8
            //   192: aload           19
            //   194: astore          9
            //   196: aload           6
            //   198: invokevirtual   org/apache/http/client/methods/HttpGet.abort:()V
            //   201: aload           9
            //   203: invokestatic    com/chartboost/sdk/Libraries/d.a:(Lorg/apache/http/HttpResponse;)V
            //   206: ldc             "CBWebImageCache"
            //   208: new             Ljava/lang/StringBuilder;
            //   211: dup            
            //   212: ldc             "I/O error while retrieving bitmap from "
            //   214: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
            //   217: aload_0        
            //   218: getfield        com/chartboost/sdk/impl/o$a.b:Ljava/lang/String;
            //   221: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   224: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
            //   227: aload           7
            //   229: invokestatic    android/util/Log.w:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
            //   232: pop            
            //   233: aload           8
            //   235: astore          11
            //   237: aload_0        
            //   238: aload           11
            //   240: invokevirtual   com/chartboost/sdk/impl/o$a.a:(Lcom/chartboost/sdk/Libraries/a$a;)V
            //   243: return         
            //   244: aload           19
            //   246: invokeinterface org/apache/http/HttpResponse.getEntity:()Lorg/apache/http/HttpEntity;
            //   251: astore          23
            //   253: aload           23
            //   255: ifnull          653
            //   258: aload           23
            //   260: invokeinterface org/apache/http/HttpEntity.getContent:()Ljava/io/InputStream;
            //   265: astore          28
            //   267: aload_0        
            //   268: getfield        com/chartboost/sdk/impl/o$a.a:Lcom/chartboost/sdk/impl/o;
            //   271: aload_0        
            //   272: getfield        com/chartboost/sdk/impl/o$a.e:Ljava/lang/String;
            //   275: new             Lcom/chartboost/sdk/impl/o$e;
            //   278: dup            
            //   279: aload           28
            //   281: invokespecial   com/chartboost/sdk/impl/o$e.<init>:(Ljava/io/InputStream;)V
            //   284: invokevirtual   com/chartboost/sdk/impl/o.a:(Ljava/lang/String;Lcom/chartboost/sdk/impl/o$e;)Z
            //   287: pop            
            //   288: aload_0        
            //   289: getfield        com/chartboost/sdk/impl/o$a.a:Lcom/chartboost/sdk/impl/o;
            //   292: aload_0        
            //   293: getfield        com/chartboost/sdk/impl/o$a.e:Ljava/lang/String;
            //   296: invokevirtual   com/chartboost/sdk/impl/o.a:(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/a$a;
            //   299: astore          4
            //   301: aload           4
            //   303: ifnull          646
            //   306: iload_1        
            //   307: ifeq            374
            //   310: iconst_0       
            //   311: istore          34
            //   313: aload           4
            //   315: iload           34
            //   317: invokevirtual   com/chartboost/sdk/Libraries/a$a.a:(Z)V
            //   320: iload_1        
            //   321: ifne            646
            //   324: aload_0        
            //   325: getfield        com/chartboost/sdk/impl/o$a.a:Lcom/chartboost/sdk/impl/o;
            //   328: invokestatic    com/chartboost/sdk/impl/o.a:(Lcom/chartboost/sdk/impl/o;)Lcom/chartboost/sdk/Libraries/a;
            //   331: aload_0        
            //   332: getfield        com/chartboost/sdk/impl/o$a.e:Ljava/lang/String;
            //   335: aload           4
            //   337: invokevirtual   com/chartboost/sdk/Libraries/a.a:(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/a$a;)V
            //   340: aload           4
            //   342: astore          11
            //   344: aload           28
            //   346: ifnull          476
            //   349: aload           28
            //   351: invokevirtual   java/io/InputStream.close:()V
            //   354: goto            237
            //   357: astore          33
            //   359: aload           19
            //   361: astore          9
            //   363: aload           11
            //   365: astore          8
            //   367: aload           33
            //   369: astore          7
            //   371: goto            196
            //   374: iconst_1       
            //   375: istore          34
            //   377: goto            313
            //   380: astore          30
            //   382: aload           30
            //   384: invokevirtual   java/lang/Exception.printStackTrace:()V
            //   387: aload           4
            //   389: astore          11
            //   391: goto            344
            //   394: astore          24
            //   396: aload           4
            //   398: astore          25
            //   400: aconst_null    
            //   401: astore          26
            //   403: aload           26
            //   405: ifnull          416
            //   408: aload           26
            //   410: invokevirtual   java/io/InputStream.close:()V
            //   413: aload           24
            //   415: athrow         
            //   416: aload           23
            //   418: invokestatic    com/chartboost/sdk/Libraries/d.a:(Lorg/apache/http/HttpEntity;)V
            //   421: goto            413
            //   424: astore          27
            //   426: aload           19
            //   428: astore          13
            //   430: aload           25
            //   432: astore          4
            //   434: aload           6
            //   436: invokevirtual   org/apache/http/client/methods/HttpGet.abort:()V
            //   439: aload           13
            //   441: invokestatic    com/chartboost/sdk/Libraries/d.a:(Lorg/apache/http/HttpResponse;)V
            //   444: ldc             "CBWebImageCache"
            //   446: new             Ljava/lang/StringBuilder;
            //   449: dup            
            //   450: ldc             "Incorrect URL: "
            //   452: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
            //   455: aload_0        
            //   456: getfield        com/chartboost/sdk/impl/o$a.b:Ljava/lang/String;
            //   459: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   462: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
            //   465: invokestatic    android/util/Log.w:(Ljava/lang/String;Ljava/lang/String;)I
            //   468: pop            
            //   469: aload           4
            //   471: astore          11
            //   473: goto            237
            //   476: aload           23
            //   478: invokestatic    com/chartboost/sdk/Libraries/d.a:(Lorg/apache/http/HttpEntity;)V
            //   481: goto            237
            //   484: astore          32
            //   486: aload           11
            //   488: astore          4
            //   490: aload           19
            //   492: astore          13
            //   494: goto            434
            //   497: astore          15
            //   499: aload           4
            //   501: astore          16
            //   503: aconst_null    
            //   504: astore          17
            //   506: aload           6
            //   508: invokevirtual   org/apache/http/client/methods/HttpGet.abort:()V
            //   511: aload           17
            //   513: invokestatic    com/chartboost/sdk/Libraries/d.a:(Lorg/apache/http/HttpResponse;)V
            //   516: ldc             "CBWebImageCache"
            //   518: new             Ljava/lang/StringBuilder;
            //   521: dup            
            //   522: ldc             "Error while retrieving bitmap from "
            //   524: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
            //   527: aload_0        
            //   528: getfield        com/chartboost/sdk/impl/o$a.b:Ljava/lang/String;
            //   531: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   534: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
            //   537: aload           15
            //   539: invokestatic    android/util/Log.w:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
            //   542: pop            
            //   543: aload           16
            //   545: astore          11
            //   547: goto            237
            //   550: astore          15
            //   552: aload           4
            //   554: astore          16
            //   556: aload           19
            //   558: astore          17
            //   560: goto            506
            //   563: astore          15
            //   565: aload           19
            //   567: astore          17
            //   569: aload           25
            //   571: astore          16
            //   573: goto            506
            //   576: astore          31
            //   578: aload           19
            //   580: astore          17
            //   582: aload           11
            //   584: astore          16
            //   586: aload           31
            //   588: astore          15
            //   590: goto            506
            //   593: astore          12
            //   595: aconst_null    
            //   596: astore          13
            //   598: goto            434
            //   601: astore          20
            //   603: aload           19
            //   605: astore          13
            //   607: goto            434
            //   610: astore          7
            //   612: aload           4
            //   614: astore          8
            //   616: aconst_null    
            //   617: astore          9
            //   619: goto            196
            //   622: astore          24
            //   624: aload           4
            //   626: astore          25
            //   628: aload           28
            //   630: astore          26
            //   632: goto            403
            //   635: astore          37
            //   637: aload           4
            //   639: astore_3       
            //   640: aload           37
            //   642: astore_2       
            //   643: goto            79
            //   646: aload           4
            //   648: astore          11
            //   650: goto            344
            //   653: aload           4
            //   655: astore          11
            //   657: goto            237
            //   660: astore          7
            //   662: aload           19
            //   664: astore          9
            //   666: aload           25
            //   668: astore          8
            //   670: goto            196
            //    Exceptions:
            //  Try           Handler
            //  Start  End    Start  End    Type                             
            //  -----  -----  -----  -----  ---------------------------------
            //  17     30     76     79     Ljava/lang/Exception;
            //  46     53     635    646    Ljava/lang/Exception;
            //  107    118    610    622    Ljava/io/IOException;
            //  107    118    593    601    Ljava/lang/IllegalStateException;
            //  107    118    497    506    Ljava/lang/Throwable;
            //  118    132    186    196    Ljava/io/IOException;
            //  118    132    601    610    Ljava/lang/IllegalStateException;
            //  118    132    550    563    Ljava/lang/Throwable;
            //  140    185    186    196    Ljava/io/IOException;
            //  140    185    601    610    Ljava/lang/IllegalStateException;
            //  140    185    550    563    Ljava/lang/Throwable;
            //  244    253    186    196    Ljava/io/IOException;
            //  244    253    601    610    Ljava/lang/IllegalStateException;
            //  244    253    550    563    Ljava/lang/Throwable;
            //  258    267    394    403    Any
            //  267    288    622    635    Any
            //  288    301    380    394    Ljava/lang/Exception;
            //  288    301    622    635    Any
            //  313    320    380    394    Ljava/lang/Exception;
            //  313    320    622    635    Any
            //  324    340    380    394    Ljava/lang/Exception;
            //  324    340    622    635    Any
            //  349    354    357    374    Ljava/io/IOException;
            //  349    354    484    497    Ljava/lang/IllegalStateException;
            //  349    354    576    593    Ljava/lang/Throwable;
            //  382    387    622    635    Any
            //  408    413    660    673    Ljava/io/IOException;
            //  408    413    424    434    Ljava/lang/IllegalStateException;
            //  408    413    563    576    Ljava/lang/Throwable;
            //  413    416    660    673    Ljava/io/IOException;
            //  413    416    424    434    Ljava/lang/IllegalStateException;
            //  413    416    563    576    Ljava/lang/Throwable;
            //  416    421    660    673    Ljava/io/IOException;
            //  416    421    424    434    Ljava/lang/IllegalStateException;
            //  416    421    563    576    Ljava/lang/Throwable;
            //  476    481    357    374    Ljava/io/IOException;
            //  476    481    484    497    Ljava/lang/IllegalStateException;
            //  476    481    576    593    Ljava/lang/Throwable;
            // 
            // The error that occurred was:
            // 
            // java.lang.IndexOutOfBoundsException: Index: 306, Size: 306
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
    
    public interface b
    {
        void a(com.chartboost.sdk.Libraries.a.a p0, Bundle p1);
    }
    
    static class c extends BitmapDrawable
    {
        private final WeakReference<a> a;
        
        public c(final a referent) {
            super();
            this.a = new WeakReference<a>(referent);
        }
        
        public a a() {
            return this.a.get();
        }
    }
    
    private static class d
    {
        private File a;
        private File b;
        private File c;
        
        public d(final Context context) {
            super();
            this.a = null;
            this.b = null;
            this.c = null;
            this.a(context);
        }
        
        private void a(final Context context) {
            if (context == null) {
                return;
            }
        Label_0188_Outer:
            while (true) {
                while (true) {
                    while (true) {
                        try {
                            boolean b;
                            if (context.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
                                b = true;
                            }
                            else {
                                b = false;
                            }
                            if (b && Environment.getExternalStorageState().equals("mounted")) {
                                this.b = context.getExternalFilesDir("cache");
                            }
                            if (this.b != null) {
                                this.b = new File(this.b, "__chartboost");
                                this.b = new File(this.b, "images");
                                if (this.b != null && !this.b.exists()) {
                                    this.b.mkdirs();
                                }
                            }
                            this.c = context.getCacheDir();
                            if (this.c != null) {
                                this.c = new File(this.c, "__chartboost");
                                this.c = new File(this.c, "images");
                                if (!this.c.exists()) {
                                    this.c.mkdirs();
                                }
                            }
                            if (this.b != null) {
                                final File a = this.b;
                                this.a = a;
                                return;
                            }
                        }
                        catch (Exception ex) {
                            this.b = null;
                            continue Label_0188_Outer;
                        }
                        break;
                    }
                    final File a = this.c;
                    continue;
                }
            }
        }
        
        public File a(final String child) {
            if (this.a == null) {
                this.a(Chartboost.sharedChartboost().getContext());
            }
            if (this.a == null) {
                return null;
            }
            return new File(this.a, child);
        }
        
        public void a() {
            if (this.a != null) {
            Label_0085_Outer:
                while (true) {
                    while (true) {
                        while (true) {
                            int length = 0;
                            int n = 0;
                            Label_0102: {
                                try {
                                    if (this.b != null) {
                                        final File[] listFiles = this.b.listFiles();
                                        if (listFiles != null) {
                                            length = listFiles.length;
                                            n = 0;
                                            break Label_0102;
                                        }
                                    }
                                    if (this.c == null) {
                                        break;
                                    }
                                    final File[] listFiles2 = this.c.listFiles();
                                    if (listFiles2 != null) {
                                        for (int length2 = listFiles2.length, i = 0; i < length2; ++i) {
                                            listFiles2[i].delete();
                                        }
                                        break;
                                    }
                                    break;
                                    final File[] listFiles;
                                    listFiles[n].delete();
                                    ++n;
                                }
                                catch (Exception ex) {
                                    return;
                                }
                            }
                            if (n >= length) {
                                continue Label_0085_Outer;
                            }
                            break;
                        }
                        continue;
                    }
                }
            }
        }
    }
    
    static class e extends FilterInputStream
    {
        public e(final InputStream in) {
            super(in);
        }
        
        @Override
        public long skip(final long n) throws IOException {
            long n2;
            long skip;
            for (n2 = 0L; n2 < n; n2 += skip) {
                skip = this.in.skip(n - n2);
                if (skip == 0L) {
                    if (this.read() < 0) {
                        break;
                    }
                    skip = 1L;
                }
            }
            return n2;
        }
    }
}
