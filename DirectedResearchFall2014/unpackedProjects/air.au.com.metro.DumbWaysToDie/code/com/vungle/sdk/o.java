package com.vungle.sdk;

import java.io.*;
import java.util.*;

final class o
{
    public static final int[] a;
    private int b;
    private int c;
    private int d;
    private String e;
    private String f;
    private a g;
    private String h;
    private b i;
    private String j;
    
    static {
        a = new int[] { 10, 30, 30, 60, 60, 120 };
    }
    
    public o(final String s, final String s2) {
        this(s, s2, null);
    }
    
    public o(final String e, final String f, final String h) {
        super();
        this.b = 0;
        this.c = 0;
        this.d = o.a[0];
        this.e = null;
        this.f = null;
        this.g = null;
        this.h = null;
        this.i = null;
        this.j = null;
        this.e = e;
        this.f = f;
        this.h = h;
    }
    
    static /* synthetic */ boolean c(final o o) {
        o.d = o.a[Math.min(o.c, o.a.length - 1)];
        final int c = 1 + o.c;
        o.c = c;
        return c <= 33;
    }
    
    public final void a() {
        (this.g = new a((byte)0)).a(this.e, this.f, this.h);
    }
    
    public final void a(final b i) {
        this.i = i;
    }
    
    public final void a(final String j) {
        this.j = j;
    }
    
    public final boolean b() {
        final int b = 1 + this.b;
        this.b = b;
        int n;
        if (b <= 3) {
            n = 1;
        }
        else {
            n = 0;
        }
        if (n == 0) {
            return false;
        }
        new StringBuilder("Downloading file (").append(this.g.e).append(") again... Retry #").append(this.b);
        (this.g = new a((byte)0)).a(this.e, this.f, this.h);
        return true;
    }
    
    public final boolean c() {
        return this.g != null && this.g.a();
    }
    
    public final String d() {
        if (this.g == null) {
            return null;
        }
        final a g = this.g;
        if (g.a()) {
            return g.c;
        }
        return null;
    }
    
    final class a
    {
        boolean a;
        boolean b;
        String c;
        String d;
        String e;
        boolean f;
        final /* synthetic */ o g;
        
        private a() {
            super();
            this.a = false;
            this.b = true;
            this.d = null;
            this.e = null;
            this.f = false;
        }
        
        protected final Boolean a(final String... p0) {
            // 
            // This method could not be decompiled.
            // 
            // Original Bytecode:
            // 
            //     0: new             Ljava/net/URL;
            //     3: dup            
            //     4: aload_1        
            //     5: iconst_0       
            //     6: aaload         
            //     7: invokespecial   java/net/URL.<init>:(Ljava/lang/String;)V
            //    10: astore_2       
            //    11: aload_2        
            //    12: invokevirtual   java/net/URL.getFile:()Ljava/lang/String;
            //    15: getstatic       java/io/File.separator:Ljava/lang/String;
            //    18: invokevirtual   java/lang/String.split:(Ljava/lang/String;)[Ljava/lang/String;
            //    21: astore          5
            //    23: aload_0        
            //    24: aload           5
            //    26: aload           5
            //    28: arraylength    
            //    29: iconst_1       
            //    30: isub           
            //    31: aaload         
            //    32: putfield        com/vungle/sdk/o$a.e:Ljava/lang/String;
            //    35: aload_0        
            //    36: aload_0        
            //    37: getfield        com/vungle/sdk/o$a.e:Ljava/lang/String;
            //    40: ldc             "UTF-8"
            //    42: invokestatic    java/net/URLDecoder.decode:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
            //    45: putfield        com/vungle/sdk/o$a.e:Ljava/lang/String;
            //    48: aload_0        
            //    49: getfield        com/vungle/sdk/o$a.g:Lcom/vungle/sdk/o;
            //    52: invokestatic    com/vungle/sdk/o.a:(Lcom/vungle/sdk/o;)Ljava/lang/String;
            //    55: ifnull          89
            //    58: aload_0        
            //    59: new             Ljava/lang/StringBuilder;
            //    62: dup            
            //    63: invokespecial   java/lang/StringBuilder.<init>:()V
            //    66: aload_0        
            //    67: getfield        com/vungle/sdk/o$a.g:Lcom/vungle/sdk/o;
            //    70: invokestatic    com/vungle/sdk/o.a:(Lcom/vungle/sdk/o;)Ljava/lang/String;
            //    73: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //    76: aload_0        
            //    77: getfield        com/vungle/sdk/o$a.e:Ljava/lang/String;
            //    80: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //    83: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
            //    86: putfield        com/vungle/sdk/o$a.e:Ljava/lang/String;
            //    89: new             Ljava/io/File;
            //    92: dup            
            //    93: aload_1        
            //    94: iconst_1       
            //    95: aaload         
            //    96: aload_0        
            //    97: getfield        com/vungle/sdk/o$a.e:Ljava/lang/String;
            //   100: invokespecial   java/io/File.<init>:(Ljava/lang/String;Ljava/lang/String;)V
            //   103: astore          7
            //   105: aload_0        
            //   106: aload           7
            //   108: invokevirtual   java/io/File.getAbsolutePath:()Ljava/lang/String;
            //   111: putfield        com/vungle/sdk/o$a.c:Ljava/lang/String;
            //   114: aload_1        
            //   115: arraylength    
            //   116: iconst_3       
            //   117: if_icmplt       127
            //   120: aload_0        
            //   121: aload_1        
            //   122: iconst_2       
            //   123: aaload         
            //   124: putfield        com/vungle/sdk/o$a.d:Ljava/lang/String;
            //   127: aload_2        
            //   128: invokevirtual   java/net/URL.openConnection:()Ljava/net/URLConnection;
            //   131: astore          8
            //   133: aload           8
            //   135: sipush          5000
            //   138: invokevirtual   java/net/URLConnection.setConnectTimeout:(I)V
            //   141: aload           8
            //   143: sipush          5000
            //   146: invokevirtual   java/net/URLConnection.setReadTimeout:(I)V
            //   149: aload           8
            //   151: invokevirtual   java/net/URLConnection.connect:()V
            //   154: new             Ljava/io/BufferedInputStream;
            //   157: dup            
            //   158: aload           8
            //   160: invokevirtual   java/net/URLConnection.getInputStream:()Ljava/io/InputStream;
            //   163: invokespecial   java/io/BufferedInputStream.<init>:(Ljava/io/InputStream;)V
            //   166: astore          9
            //   168: new             Ljava/lang/StringBuilder;
            //   171: dup            
            //   172: ldc             "Download started on: "
            //   174: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
            //   177: aload_0        
            //   178: getfield        com/vungle/sdk/o$a.e:Ljava/lang/String;
            //   181: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   184: pop            
            //   185: new             Ljava/io/FileOutputStream;
            //   188: dup            
            //   189: aload           7
            //   191: invokespecial   java/io/FileOutputStream.<init>:(Ljava/io/File;)V
            //   194: astore          11
            //   196: sipush          2048
            //   199: newarray        B
            //   201: astore          12
            //   203: aload           9
            //   205: aload           12
            //   207: invokevirtual   java/io/InputStream.read:([B)I
            //   210: istore          13
            //   212: iload           13
            //   214: iconst_m1      
            //   215: if_icmpeq       273
            //   218: aload           11
            //   220: aload           12
            //   222: iconst_0       
            //   223: iload           13
            //   225: invokevirtual   java/io/OutputStream.write:([BII)V
            //   228: goto            203
            //   231: astore_3       
            //   232: new             Ljava/lang/StringBuilder;
            //   235: dup            
            //   236: ldc             "Problem encountered during file download: "
            //   238: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
            //   241: aload_3        
            //   242: invokevirtual   java/lang/Exception.getMessage:()Ljava/lang/String;
            //   245: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   248: pop            
            //   249: aload_0        
            //   250: iconst_1       
            //   251: putfield        com/vungle/sdk/o$a.f:Z
            //   254: iconst_0       
            //   255: invokestatic    java/lang/Boolean.valueOf:(Z)Ljava/lang/Boolean;
            //   258: areturn        
            //   259: astore          6
            //   261: ldc             "DownloadFile"
            //   263: ldc             "Failed to decode filename."
            //   265: aload           6
            //   267: invokestatic    com/vungle/sdk/r.a:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
            //   270: goto            48
            //   273: aload           11
            //   275: invokevirtual   java/io/OutputStream.flush:()V
            //   278: aload           11
            //   280: invokevirtual   java/io/OutputStream.close:()V
            //   283: aload           9
            //   285: invokevirtual   java/io/InputStream.close:()V
            //   288: new             Ljava/lang/StringBuilder;
            //   291: dup            
            //   292: ldc             "Downloaded ended on: "
            //   294: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
            //   297: aload_0        
            //   298: getfield        com/vungle/sdk/o$a.e:Ljava/lang/String;
            //   301: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   304: pop            
            //   305: iconst_1       
            //   306: invokestatic    java/lang/Boolean.valueOf:(Z)Ljava/lang/Boolean;
            //   309: areturn        
            //    Exceptions:
            //  Try           Handler
            //  Start  End    Start  End    Type                                  
            //  -----  -----  -----  -----  --------------------------------------
            //  0      35     231    259    Ljava/lang/Exception;
            //  35     48     259    273    Ljava/io/UnsupportedEncodingException;
            //  35     48     231    259    Ljava/lang/Exception;
            //  48     89     231    259    Ljava/lang/Exception;
            //  89     127    231    259    Ljava/lang/Exception;
            //  127    203    231    259    Ljava/lang/Exception;
            //  203    212    231    259    Ljava/lang/Exception;
            //  218    228    231    259    Ljava/lang/Exception;
            //  261    270    231    259    Ljava/lang/Exception;
            //  273    305    231    259    Ljava/lang/Exception;
            // 
            // The error that occurred was:
            // 
            // java.lang.IllegalStateException: Expression is linked from several locations: Label_0048:
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
        
        public final void a(final String s, final String s2, final String s3) {
            new Thread(new Runnable() {
                @Override
                public final void run() {
                    final boolean booleanValue = o.a.this.a(new String[] { s, s2, s3 });
                    final a d = o.a.this;
                    final Boolean value = booleanValue;
                    d.a = true;
                    if (value && d.d != null) {
                        if (VungleUtil.a(d.c).equalsIgnoreCase(d.d)) {
                            new StringBuilder("File (").append(d.e).append(") passes md5: ").append(d.d);
                        }
                        else {
                            new StringBuilder("File (").append(d.e).append(") fails md5 check, but we don't care.");
                        }
                    }
                    if (value) {
                        if (d.g.i != null) {
                            final b b = d.g.i;
                            final String c = d.c;
                            b.b();
                        }
                    }
                    else {
                        final File file = new File(d.c);
                        if (file.exists()) {
                            file.delete();
                        }
                        d.c = null;
                        if (d.f && o.c(d.g)) {
                            new StringBuilder("Waiting for ").append(d.g.d).append(" seconds before retrying...");
                            new Timer().schedule(new TimerTask() {
                                @Override
                                public final void run() {
                                    o.this.g = new a((byte)0);
                                    o.this.g.a(o.this.e, o.this.f, o.this.h);
                                }
                            }, 1000 * d.g.d);
                        }
                        else if (d.g.i != null) {
                            d.g.i.c();
                        }
                    }
                    d.b = value;
                }
            }, "VungleDownloadThread").start();
        }
        
        public final boolean a() {
            return this.a && this.b;
        }
    }
    
    public interface b
    {
        void b();
        
        void c();
    }
}
