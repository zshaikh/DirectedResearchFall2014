package com.chartboost.sdk.Libraries;

import com.chartboost.sdk.*;
import android.widget.*;
import android.graphics.*;
import java.lang.ref.*;
import android.graphics.drawable.*;
import android.content.*;
import android.os.*;
import java.io.*;

public class e
{
    private static e a;
    private d b;
    private com.chartboost.sdk.Libraries.a c;
    
    static {
        e.a = null;
    }
    
    private e() {
        super();
        this.b = new d(Chartboost.sharedChartboost().getContext());
        this.c = new com.chartboost.sdk.Libraries.a();
    }
    
    public static e a() {
        synchronized (e.class) {
            if (e.a == null) {
                e.a = new e();
            }
            return e.a;
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
        if (!a.exists()) {
            return null;
        }
        final BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(a));
        final long length = a.length();
        if (length > 2147483647L) {
            throw new IOException("Cannot read files larger than 2147483647 bytes");
        }
        final int len = (int)length;
        final byte[] b = new byte[len];
        bufferedInputStream.read(b, 0, len);
        bufferedInputStream.close();
        final BitmapFactory$Options bitmapFactory$Options = new BitmapFactory$Options();
        bitmapFactory$Options.inJustDecodeBounds = true;
        BitmapFactory.decodeByteArray(b, 0, b.length, bitmapFactory$Options);
        final BitmapFactory$Options bitmapFactory$Options2 = new BitmapFactory$Options();
        bitmapFactory$Options2.inJustDecodeBounds = false;
        bitmapFactory$Options2.inDither = false;
        bitmapFactory$Options2.inPurgeable = true;
        bitmapFactory$Options2.inInputShareable = true;
        bitmapFactory$Options2.inTempStorage = new byte[32768];
        bitmapFactory$Options2.inSampleSize = 1;
        while (bitmapFactory$Options2.inSampleSize < 64) {
            Bitmap decodeByteArray;
            try {
                decodeByteArray = BitmapFactory.decodeByteArray(b, 0, b.length, bitmapFactory$Options2);
            }
            catch (Exception ex) {
                return null;
            }
            catch (OutOfMemoryError outOfMemoryError) {
                bitmapFactory$Options2.inSampleSize *= 2;
                continue;
            }
            return new com.chartboost.sdk.Libraries.a.a(decodeByteArray, bitmapFactory$Options2.inSampleSize);
        }
        Bitmap decodeByteArray = null;
        return new com.chartboost.sdk.Libraries.a.a(decodeByteArray, bitmapFactory$Options2.inSampleSize);
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
        //    23: getfield        com/chartboost/sdk/Libraries/e.c:Lcom/chartboost/sdk/Libraries/a;
        //    26: aload_2        
        //    27: invokevirtual   com/chartboost/sdk/Libraries/a.a:(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/a$a;
        //    30: astore          14
        //    32: aload           14
        //    34: astore          7
        //    36: aload           7
        //    38: ifnonnull       83
        //    41: aload_0        
        //    42: aload_2        
        //    43: invokevirtual   com/chartboost/sdk/Libraries/e.a:(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/a$a;
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
        //    74: getfield        com/chartboost/sdk/Libraries/e.c:Lcom/chartboost/sdk/Libraries/a;
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
        //   112: invokeinterface com/chartboost/sdk/Libraries/e$b.a:(Lcom/chartboost/sdk/Libraries/a$a;Landroid/os/Bundle;)V
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
        //   151: new             Lcom/chartboost/sdk/Libraries/e$a;
        //   154: dup            
        //   155: aload_0        
        //   156: aload           4
        //   158: aload_3        
        //   159: aload_2        
        //   160: aload           5
        //   162: invokespecial   com/chartboost/sdk/Libraries/e$a.<init>:(Lcom/chartboost/sdk/Libraries/e;Landroid/widget/ImageView;Lcom/chartboost/sdk/Libraries/e$b;Ljava/lang/String;Landroid/os/Bundle;)V
        //   165: iconst_1       
        //   166: anewarray       Ljava/lang/String;
        //   169: dup            
        //   170: iconst_0       
        //   171: aload_1        
        //   172: aastore        
        //   173: invokevirtual   com/chartboost/sdk/Libraries/e$a.execute:([Ljava/lang/Object;)Landroid/os/AsyncTask;
        //   176: pop            
        //   177: return         
        //   178: astore          9
        //   180: aload           7
        //   182: astore          10
        //   184: aload           9
        //   186: astore          11
        //   188: goto            139
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  22     32     130    139    Ljava/lang/Exception;
        //  41     48     178    191    Ljava/lang/Exception;
        //  61     68     178    191    Ljava/lang/Exception;
        //  73     83     178    191    Ljava/lang/Exception;
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
        //     1: getfield        com/chartboost/sdk/Libraries/e.b:Lcom/chartboost/sdk/Libraries/e$d;
        //     4: new             Ljava/lang/StringBuilder;
        //     7: dup            
        //     8: aload_1        
        //     9: invokestatic    java/lang/String.valueOf:(Ljava/lang/Object;)Ljava/lang/String;
        //    12: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //    15: ldc             ".png"
        //    17: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    20: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    23: invokevirtual   com/chartboost/sdk/Libraries/e$d.a:(Ljava/lang/String;)Ljava/io/File;
        //    26: astore_3       
        //    27: aconst_null    
        //    28: astore          4
        //    30: new             Ljava/io/FileOutputStream;
        //    33: dup            
        //    34: aload_3        
        //    35: invokespecial   java/io/FileOutputStream.<init>:(Ljava/io/File;)V
        //    38: astore          5
        //    40: sipush          4096
        //    43: newarray        B
        //    45: astore          11
        //    47: aload_2        
        //    48: aload           11
        //    50: invokevirtual   com/chartboost/sdk/Libraries/e$e.read:([B)I
        //    53: istore          12
        //    55: iload           12
        //    57: iconst_m1      
        //    58: if_icmpne       73
        //    61: aload           5
        //    63: ifnull          71
        //    66: aload           5
        //    68: invokevirtual   java/io/FileOutputStream.close:()V
        //    71: iconst_1       
        //    72: ireturn        
        //    73: aload           5
        //    75: aload           11
        //    77: iconst_0       
        //    78: iload           12
        //    80: invokevirtual   java/io/FileOutputStream.write:([BII)V
        //    83: goto            47
        //    86: astore          8
        //    88: aload           5
        //    90: astore          9
        //    92: aload           9
        //    94: ifnull          102
        //    97: aload           9
        //    99: invokevirtual   java/io/FileOutputStream.close:()V
        //   102: iconst_0       
        //   103: ireturn        
        //   104: astore          6
        //   106: aload           4
        //   108: ifnull          116
        //   111: aload           4
        //   113: invokevirtual   java/io/FileOutputStream.close:()V
        //   116: aload           6
        //   118: athrow         
        //   119: astore          13
        //   121: goto            71
        //   124: astore          10
        //   126: goto            102
        //   129: astore          7
        //   131: goto            116
        //   134: astore          6
        //   136: aload           5
        //   138: astore          4
        //   140: goto            106
        //   143: astore          14
        //   145: aconst_null    
        //   146: astore          9
        //   148: goto            92
        //    Exceptions:
        //  throws java.io.IOException
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  30     40     143    151    Ljava/lang/Exception;
        //  30     40     104    106    Any
        //  40     47     86     92     Ljava/lang/Exception;
        //  40     47     134    143    Any
        //  47     55     86     92     Ljava/lang/Exception;
        //  47     55     134    143    Any
        //  66     71     119    124    Ljava/lang/Exception;
        //  73     83     86     92     Ljava/lang/Exception;
        //  73     83     134    143    Any
        //  97     102    124    129    Ljava/lang/Exception;
        //  111    116    129    134    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 71, Size: 71
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
    
    class a extends AsyncTask<String, Void, com.chartboost.sdk.Libraries.a.a>
    {
        private String b;
        private final WeakReference<ImageView> c;
        private b d;
        private String e;
        private Bundle f;
        
        public a(final ImageView referent, final b d, final String e, final Bundle f) {
            super();
            this.c = new WeakReference<ImageView>(referent);
            final c imageDrawable = new c(this);
            if (referent != null) {
                referent.setImageDrawable((Drawable)imageDrawable);
            }
            this.e = e;
            this.d = d;
            this.f = f;
        }
        
        protected com.chartboost.sdk.Libraries.a.a a(final String... p0) {
            // 
            // This method could not be decompiled.
            // 
            // Original Bytecode:
            // 
            //     0: aload_0        
            //     1: aload_1        
            //     2: iconst_0       
            //     3: aaload         
            //     4: putfield        com/chartboost/sdk/Libraries/e$a.b:Ljava/lang/String;
            //     7: aload_0        
            //     8: getfield        com/chartboost/sdk/Libraries/e$a.f:Landroid/os/Bundle;
            //    11: ifnull          68
            //    14: aload_0        
            //    15: getfield        com/chartboost/sdk/Libraries/e$a.f:Landroid/os/Bundle;
            //    18: ldc             "paramNoMemoryCache"
            //    20: invokevirtual   android/os/Bundle.getBoolean:(Ljava/lang/String;)Z
            //    23: istore_2       
            //    24: aload_0        
            //    25: getfield        com/chartboost/sdk/Libraries/e$a.a:Lcom/chartboost/sdk/Libraries/e;
            //    28: aload_0        
            //    29: getfield        com/chartboost/sdk/Libraries/e$a.e:Ljava/lang/String;
            //    32: invokevirtual   com/chartboost/sdk/Libraries/e.a:(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/a$a;
            //    35: astore          30
            //    37: aload           30
            //    39: astore          5
            //    41: aload           5
            //    43: ifnull          60
            //    46: iload_2        
            //    47: ifeq            73
            //    50: iconst_0       
            //    51: istore          31
            //    53: aload           5
            //    55: iload           31
            //    57: invokevirtual   com/chartboost/sdk/Libraries/a$a.a:(Z)V
            //    60: aload           5
            //    62: ifnull          94
            //    65: aload           5
            //    67: areturn        
            //    68: iconst_0       
            //    69: istore_2       
            //    70: goto            24
            //    73: iconst_1       
            //    74: istore          31
            //    76: goto            53
            //    79: astore_3       
            //    80: aconst_null    
            //    81: astore          4
            //    83: aload_3        
            //    84: invokevirtual   java/lang/Exception.printStackTrace:()V
            //    87: aload           4
            //    89: astore          5
            //    91: goto            60
            //    94: invokestatic    com/chartboost/sdk/impl/j.b:()Lorg/apache/http/client/HttpClient;
            //    97: astore          6
            //    99: new             Lorg/apache/http/client/methods/HttpGet;
            //   102: dup            
            //   103: aload_0        
            //   104: getfield        com/chartboost/sdk/Libraries/e$a.b:Ljava/lang/String;
            //   107: invokespecial   org/apache/http/client/methods/HttpGet.<init>:(Ljava/lang/String;)V
            //   110: astore          7
            //   112: aload           6
            //   114: aload           7
            //   116: invokeinterface org/apache/http/client/HttpClient.execute:(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
            //   121: astore          15
            //   123: aload           15
            //   125: invokeinterface org/apache/http/HttpResponse.getStatusLine:()Lorg/apache/http/StatusLine;
            //   130: invokeinterface org/apache/http/StatusLine.getStatusCode:()I
            //   135: istore          16
            //   137: iload           16
            //   139: sipush          200
            //   142: if_icmpeq       182
            //   145: ldc             "ImageDownloader"
            //   147: new             Ljava/lang/StringBuilder;
            //   150: dup            
            //   151: ldc             "Error "
            //   153: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
            //   156: iload           16
            //   158: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
            //   161: ldc             " while retrieving bitmap from "
            //   163: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   166: aload_0        
            //   167: getfield        com/chartboost/sdk/Libraries/e$a.b:Ljava/lang/String;
            //   170: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   173: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
            //   176: invokestatic    android/util/Log.w:(Ljava/lang/String;Ljava/lang/String;)I
            //   179: pop            
            //   180: aconst_null    
            //   181: areturn        
            //   182: aload           15
            //   184: invokeinterface org/apache/http/HttpResponse.getEntity:()Lorg/apache/http/HttpEntity;
            //   189: astore          18
            //   191: aload           18
            //   193: ifnull          478
            //   196: aload           18
            //   198: invokeinterface org/apache/http/HttpEntity.getContent:()Ljava/io/InputStream;
            //   203: astore          23
            //   205: aload_0        
            //   206: getfield        com/chartboost/sdk/Libraries/e$a.a:Lcom/chartboost/sdk/Libraries/e;
            //   209: aload_0        
            //   210: getfield        com/chartboost/sdk/Libraries/e$a.e:Ljava/lang/String;
            //   213: new             Lcom/chartboost/sdk/Libraries/e$e;
            //   216: dup            
            //   217: aload           23
            //   219: invokespecial   com/chartboost/sdk/Libraries/e$e.<init>:(Ljava/io/InputStream;)V
            //   222: invokevirtual   com/chartboost/sdk/Libraries/e.a:(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$e;)Z
            //   225: pop            
            //   226: aload_0        
            //   227: getfield        com/chartboost/sdk/Libraries/e$a.a:Lcom/chartboost/sdk/Libraries/e;
            //   230: aload_0        
            //   231: getfield        com/chartboost/sdk/Libraries/e$a.e:Ljava/lang/String;
            //   234: invokevirtual   com/chartboost/sdk/Libraries/e.a:(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/a$a;
            //   237: astore          5
            //   239: aload           5
            //   241: ifnull          547
            //   244: iload_2        
            //   245: ifeq            347
            //   248: iconst_0       
            //   249: istore          29
            //   251: aload           5
            //   253: iload           29
            //   255: invokevirtual   com/chartboost/sdk/Libraries/a$a.a:(Z)V
            //   258: iload_2        
            //   259: ifne            547
            //   262: aload_0        
            //   263: getfield        com/chartboost/sdk/Libraries/e$a.a:Lcom/chartboost/sdk/Libraries/e;
            //   266: invokestatic    com/chartboost/sdk/Libraries/e.a:(Lcom/chartboost/sdk/Libraries/e;)Lcom/chartboost/sdk/Libraries/a;
            //   269: aload_0        
            //   270: getfield        com/chartboost/sdk/Libraries/e$a.e:Ljava/lang/String;
            //   273: aload           5
            //   275: invokevirtual   com/chartboost/sdk/Libraries/a.a:(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/a$a;)V
            //   278: aload           5
            //   280: astore          13
            //   282: aload           23
            //   284: ifnull          292
            //   287: aload           23
            //   289: invokevirtual   java/io/InputStream.close:()V
            //   292: aload           18
            //   294: invokeinterface org/apache/http/HttpEntity.consumeContent:()V
            //   299: aload           13
            //   301: areturn        
            //   302: astore          28
            //   304: aload           13
            //   306: astore          5
            //   308: aload           28
            //   310: astore          8
            //   312: aload           7
            //   314: invokevirtual   org/apache/http/client/methods/HttpGet.abort:()V
            //   317: ldc             "CBWebImageCache"
            //   319: new             Ljava/lang/StringBuilder;
            //   322: dup            
            //   323: ldc             "I/O error while retrieving bitmap from "
            //   325: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
            //   328: aload_0        
            //   329: getfield        com/chartboost/sdk/Libraries/e$a.b:Ljava/lang/String;
            //   332: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   335: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
            //   338: aload           8
            //   340: invokestatic    android/util/Log.w:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
            //   343: pop            
            //   344: aload           5
            //   346: areturn        
            //   347: iconst_1       
            //   348: istore          29
            //   350: goto            251
            //   353: astore          25
            //   355: aload           25
            //   357: invokevirtual   java/lang/Exception.printStackTrace:()V
            //   360: aload           5
            //   362: astore          13
            //   364: goto            282
            //   367: astore          19
            //   369: aload           5
            //   371: astore          20
            //   373: aconst_null    
            //   374: astore          21
            //   376: aload           21
            //   378: ifnull          386
            //   381: aload           21
            //   383: invokevirtual   java/io/InputStream.close:()V
            //   386: aload           18
            //   388: invokeinterface org/apache/http/HttpEntity.consumeContent:()V
            //   393: aload           19
            //   395: athrow         
            //   396: astore          8
            //   398: aload           20
            //   400: astore          5
            //   402: goto            312
            //   405: astore          12
            //   407: aload           5
            //   409: astore          13
            //   411: aload           7
            //   413: invokevirtual   org/apache/http/client/methods/HttpGet.abort:()V
            //   416: ldc             "CBWebImageCache"
            //   418: new             Ljava/lang/StringBuilder;
            //   421: dup            
            //   422: ldc             "Incorrect URL: "
            //   424: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
            //   427: aload_0        
            //   428: getfield        com/chartboost/sdk/Libraries/e$a.b:Ljava/lang/String;
            //   431: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   434: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
            //   437: invokestatic    android/util/Log.w:(Ljava/lang/String;Ljava/lang/String;)I
            //   440: pop            
            //   441: aload           13
            //   443: areturn        
            //   444: astore          10
            //   446: aload           7
            //   448: invokevirtual   org/apache/http/client/methods/HttpGet.abort:()V
            //   451: ldc             "CBWebImageCache"
            //   453: new             Ljava/lang/StringBuilder;
            //   456: dup            
            //   457: ldc             "Error while retrieving bitmap from "
            //   459: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
            //   462: aload_0        
            //   463: getfield        com/chartboost/sdk/Libraries/e$a.b:Ljava/lang/String;
            //   466: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   469: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
            //   472: aload           10
            //   474: invokestatic    android/util/Log.w:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
            //   477: pop            
            //   478: aload           5
            //   480: areturn        
            //   481: astore          10
            //   483: aload           20
            //   485: astore          5
            //   487: goto            446
            //   490: astore          27
            //   492: aload           13
            //   494: astore          5
            //   496: aload           27
            //   498: astore          10
            //   500: goto            446
            //   503: astore          22
            //   505: aload           20
            //   507: astore          13
            //   509: goto            411
            //   512: astore          26
            //   514: goto            411
            //   517: astore          8
            //   519: goto            312
            //   522: astore          19
            //   524: aload           5
            //   526: astore          20
            //   528: aload           23
            //   530: astore          21
            //   532: goto            376
            //   535: astore          32
            //   537: aload           5
            //   539: astore          4
            //   541: aload           32
            //   543: astore_3       
            //   544: goto            83
            //   547: aload           5
            //   549: astore          13
            //   551: goto            282
            //    Exceptions:
            //  Try           Handler
            //  Start  End    Start  End    Type                             
            //  -----  -----  -----  -----  ---------------------------------
            //  24     37     79     83     Ljava/lang/Exception;
            //  53     60     535    547    Ljava/lang/Exception;
            //  112    137    517    522    Ljava/io/IOException;
            //  112    137    405    411    Ljava/lang/IllegalStateException;
            //  112    137    444    446    Ljava/lang/Exception;
            //  145    180    517    522    Ljava/io/IOException;
            //  145    180    405    411    Ljava/lang/IllegalStateException;
            //  145    180    444    446    Ljava/lang/Exception;
            //  182    191    517    522    Ljava/io/IOException;
            //  182    191    405    411    Ljava/lang/IllegalStateException;
            //  182    191    444    446    Ljava/lang/Exception;
            //  196    205    367    376    Any
            //  205    226    522    535    Any
            //  226    239    353    367    Ljava/lang/Exception;
            //  226    239    522    535    Any
            //  251    258    353    367    Ljava/lang/Exception;
            //  251    258    522    535    Any
            //  262    278    353    367    Ljava/lang/Exception;
            //  262    278    522    535    Any
            //  287    292    302    312    Ljava/io/IOException;
            //  287    292    512    517    Ljava/lang/IllegalStateException;
            //  287    292    490    503    Ljava/lang/Exception;
            //  292    299    302    312    Ljava/io/IOException;
            //  292    299    512    517    Ljava/lang/IllegalStateException;
            //  292    299    490    503    Ljava/lang/Exception;
            //  355    360    522    535    Any
            //  381    386    396    405    Ljava/io/IOException;
            //  381    386    503    512    Ljava/lang/IllegalStateException;
            //  381    386    481    490    Ljava/lang/Exception;
            //  386    396    396    405    Ljava/io/IOException;
            //  386    396    503    512    Ljava/lang/IllegalStateException;
            //  386    396    481    490    Ljava/lang/Exception;
            // 
            // The error that occurred was:
            // 
            // java.lang.IllegalStateException: Expression is linked from several locations: Label_0053:
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
        
        protected void a(final com.chartboost.sdk.Libraries.a.a a) {
            if (!this.isCancelled()) {
                while (true) {
                    if (a == null) {
                        break Label_0027;
                    }
                    try {
                        com.chartboost.sdk.Libraries.e.this.c.a(this.e, a);
                        if (this.c != null) {
                            final ImageView imageView = this.c.get();
                            if (this == b(imageView)) {
                                imageView.setImageBitmap(a.b());
                            }
                        }
                        if (this.d != null) {
                            this.d.a(a, this.f);
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
        
        public d(final Context context) {
            super();
            this.a = null;
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
                        this.a = context.getExternalFilesDir("cache");
                    }
                    if (this.a != null && !this.a.exists()) {
                        this.a.mkdirs();
                    }
                    if (this.a == null) {
                        this.a = context.getCacheDir();
                        if (!this.a.exists()) {
                            this.a.mkdirs();
                        }
                    }
                }
                catch (Exception ex) {
                    this.a = null;
                    continue;
                }
                break;
            }
        }
        
        public File a(final String child) {
            return new File(this.a, child);
        }
        
        public void a() {
            try {
                final File[] listFiles = this.a.listFiles();
                if (listFiles == null) {
                    return;
                }
                for (int length = listFiles.length, i = 0; i < length; ++i) {
                    listFiles[i].delete();
                }
            }
            catch (Exception ex) {}
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
