package com.applovin.impl.sdk;

import java.net.*;

class aj extends an
{
    private final Socket a;
    private final int b;
    private final String c;
    private final String h;
    
    public aj(final int n, final AppLovinSdkImpl appLovinSdkImpl, final Socket socket) {
        this(n, "", "text/html", appLovinSdkImpl, socket);
    }
    
    public aj(final int b, final String c, final String h, final AppLovinSdkImpl appLovinSdkImpl, final Socket a) {
        super("FinishWebRequest", appLovinSdkImpl);
        this.b = b;
        this.c = c;
        this.h = h;
        this.a = a;
    }
    
    @Override
    public void run() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: new             Ljava/io/BufferedOutputStream;
        //     3: dup            
        //     4: aload_0        
        //     5: getfield        com/applovin/impl/sdk/aj.a:Ljava/net/Socket;
        //     8: invokevirtual   java/net/Socket.getOutputStream:()Ljava/io/OutputStream;
        //    11: sipush          2048
        //    14: invokespecial   java/io/BufferedOutputStream.<init>:(Ljava/io/OutputStream;I)V
        //    17: astore_1       
        //    18: aload_0        
        //    19: getfield        com/applovin/impl/sdk/aj.c:Ljava/lang/String;
        //    22: ifnull          95
        //    25: aload_0        
        //    26: getfield        com/applovin/impl/sdk/aj.c:Ljava/lang/String;
        //    29: invokevirtual   java/lang/String.length:()I
        //    32: ifle            95
        //    35: aload_0        
        //    36: getfield        com/applovin/impl/sdk/aj.c:Ljava/lang/String;
        //    39: invokevirtual   java/lang/String.getBytes:()[B
        //    42: astore          11
        //    44: aload_1        
        //    45: aload_0        
        //    46: getfield        com/applovin/impl/sdk/aj.b:I
        //    49: aload           11
        //    51: arraylength    
        //    52: aload_0        
        //    53: getfield        com/applovin/impl/sdk/aj.h:Ljava/lang/String;
        //    56: invokestatic    com/applovin/impl/sdk/ag.a:(IILjava/lang/String;)[B
        //    59: invokevirtual   java/io/OutputStream.write:([B)V
        //    62: aload_1        
        //    63: aload           11
        //    65: invokevirtual   java/io/OutputStream.write:([B)V
        //    68: aload_1        
        //    69: invokevirtual   java/io/OutputStream.flush:()V
        //    72: aload_1        
        //    73: ifnull          80
        //    76: aload_1        
        //    77: invokevirtual   java/io/OutputStream.close:()V
        //    80: aload_0        
        //    81: getfield        com/applovin/impl/sdk/aj.a:Ljava/net/Socket;
        //    84: ifnull          94
        //    87: aload_0        
        //    88: getfield        com/applovin/impl/sdk/aj.a:Ljava/net/Socket;
        //    91: invokevirtual   java/net/Socket.close:()V
        //    94: return         
        //    95: aload_1        
        //    96: aload_0        
        //    97: getfield        com/applovin/impl/sdk/aj.b:I
        //   100: aload_0        
        //   101: getfield        com/applovin/impl/sdk/aj.h:Ljava/lang/String;
        //   104: invokestatic    com/applovin/impl/sdk/ag.a:(ILjava/lang/String;)[B
        //   107: invokevirtual   java/io/OutputStream.write:([B)V
        //   110: goto            68
        //   113: astore          8
        //   115: aload_0        
        //   116: getfield        com/applovin/impl/sdk/aj.f:Lcom/applovin/sdk/AppLovinLogger;
        //   119: aload_0        
        //   120: getfield        com/applovin/impl/sdk/aj.d:Ljava/lang/String;
        //   123: ldc             "Unable to write body request"
        //   125: aload           8
        //   127: invokeinterface com/applovin/sdk/AppLovinLogger.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
        //   132: aload_1        
        //   133: sipush          500
        //   136: aload_0        
        //   137: getfield        com/applovin/impl/sdk/aj.h:Ljava/lang/String;
        //   140: invokestatic    com/applovin/impl/sdk/ag.a:(ILjava/lang/String;)[B
        //   143: invokevirtual   java/io/OutputStream.write:([B)V
        //   146: goto            68
        //   149: astore          5
        //   151: aload_0        
        //   152: getfield        com/applovin/impl/sdk/aj.f:Lcom/applovin/sdk/AppLovinLogger;
        //   155: aload_0        
        //   156: getfield        com/applovin/impl/sdk/aj.d:Ljava/lang/String;
        //   159: ldc             "Unable complete local request"
        //   161: aload           5
        //   163: invokeinterface com/applovin/sdk/AppLovinLogger.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
        //   168: aload_1        
        //   169: ifnull          176
        //   172: aload_1        
        //   173: invokevirtual   java/io/OutputStream.close:()V
        //   176: aload_0        
        //   177: getfield        com/applovin/impl/sdk/aj.a:Ljava/net/Socket;
        //   180: ifnull          94
        //   183: aload_0        
        //   184: getfield        com/applovin/impl/sdk/aj.a:Ljava/net/Socket;
        //   187: invokevirtual   java/net/Socket.close:()V
        //   190: return         
        //   191: astore          6
        //   193: return         
        //   194: astore          13
        //   196: aconst_null    
        //   197: astore_1       
        //   198: aload           13
        //   200: astore_2       
        //   201: aload_1        
        //   202: ifnull          209
        //   205: aload_1        
        //   206: invokevirtual   java/io/OutputStream.close:()V
        //   209: aload_0        
        //   210: getfield        com/applovin/impl/sdk/aj.a:Ljava/net/Socket;
        //   213: ifnull          223
        //   216: aload_0        
        //   217: getfield        com/applovin/impl/sdk/aj.a:Ljava/net/Socket;
        //   220: invokevirtual   java/net/Socket.close:()V
        //   223: aload_2        
        //   224: athrow         
        //   225: astore          10
        //   227: goto            80
        //   230: astore          7
        //   232: goto            176
        //   235: astore          4
        //   237: goto            209
        //   240: astore_3       
        //   241: goto            223
        //   244: astore_2       
        //   245: goto            201
        //   248: astore          12
        //   250: aload           12
        //   252: astore          5
        //   254: aconst_null    
        //   255: astore_1       
        //   256: goto            151
        //   259: astore          9
        //   261: return         
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  0      18     248    259    Ljava/io/IOException;
        //  0      18     194    201    Any
        //  18     68     113    149    Ljava/lang/Exception;
        //  18     68     149    151    Ljava/io/IOException;
        //  18     68     244    248    Any
        //  68     72     149    151    Ljava/io/IOException;
        //  68     72     244    248    Any
        //  76     80     225    230    Ljava/io/IOException;
        //  80     94     259    262    Ljava/io/IOException;
        //  95     110    113    149    Ljava/lang/Exception;
        //  95     110    149    151    Ljava/io/IOException;
        //  95     110    244    248    Any
        //  115    146    149    151    Ljava/io/IOException;
        //  115    146    244    248    Any
        //  151    168    244    248    Any
        //  172    176    230    235    Ljava/io/IOException;
        //  176    190    191    194    Ljava/io/IOException;
        //  205    209    235    240    Ljava/io/IOException;
        //  209    223    240    244    Ljava/io/IOException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 123, Size: 123
        //     at java.util.ArrayList.rangeCheck(ArrayList.java:635)
        //     at java.util.ArrayList.get(ArrayList.java:411)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3305)
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
}
