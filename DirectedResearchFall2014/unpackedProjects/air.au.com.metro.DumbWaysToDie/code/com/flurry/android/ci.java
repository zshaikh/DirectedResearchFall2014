package com.flurry.android;

final class ci
{
    private int dO;
    private String eA;
    private Throwable eB;
    private long ex;
    private String ey;
    private String ez;
    
    public ci(final int do1, final long ex, final String ey, final String ez, final String ea, final Throwable eb) {
        super();
        this.dO = do1;
        this.ex = ex;
        this.ey = ey;
        this.ez = ez;
        this.eA = ea;
        this.eB = eb;
    }
    
    public final String am() {
        return this.ey;
    }
    
    public final byte[] getBytes() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: new             Ljava/io/ByteArrayOutputStream;
        //     3: dup            
        //     4: invokespecial   java/io/ByteArrayOutputStream.<init>:()V
        //     7: astore_1       
        //     8: new             Ljava/io/DataOutputStream;
        //    11: dup            
        //    12: aload_1        
        //    13: invokespecial   java/io/DataOutputStream.<init>:(Ljava/io/OutputStream;)V
        //    16: astore_2       
        //    17: aload_2        
        //    18: aload_0        
        //    19: getfield        com/flurry/android/ci.dO:I
        //    22: invokevirtual   java/io/DataOutputStream.writeShort:(I)V
        //    25: aload_2        
        //    26: aload_0        
        //    27: getfield        com/flurry/android/ci.ex:J
        //    30: invokevirtual   java/io/DataOutputStream.writeLong:(J)V
        //    33: aload_2        
        //    34: aload_0        
        //    35: getfield        com/flurry/android/ci.ey:Ljava/lang/String;
        //    38: invokevirtual   java/io/DataOutputStream.writeUTF:(Ljava/lang/String;)V
        //    41: aload_2        
        //    42: aload_0        
        //    43: getfield        com/flurry/android/ci.ez:Ljava/lang/String;
        //    46: invokevirtual   java/io/DataOutputStream.writeUTF:(Ljava/lang/String;)V
        //    49: aload_2        
        //    50: aload_0        
        //    51: getfield        com/flurry/android/ci.eA:Ljava/lang/String;
        //    54: invokevirtual   java/io/DataOutputStream.writeUTF:(Ljava/lang/String;)V
        //    57: aload_0        
        //    58: getfield        com/flurry/android/ci.eB:Ljava/lang/Throwable;
        //    61: ifnull          294
        //    64: aload_0        
        //    65: getfield        com/flurry/android/ci.ey:Ljava/lang/String;
        //    68: ldc             "uncaught"
        //    70: if_acmpne       150
        //    73: aload_2        
        //    74: iconst_3       
        //    75: invokevirtual   java/io/DataOutputStream.writeByte:(I)V
        //    78: aload_2        
        //    79: iconst_2       
        //    80: invokevirtual   java/io/DataOutputStream.writeByte:(I)V
        //    83: new             Ljava/lang/StringBuilder;
        //    86: dup            
        //    87: ldc             ""
        //    89: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //    92: astore          10
        //    94: ldc             "line.separator"
        //    96: invokestatic    java/lang/System.getProperty:(Ljava/lang/String;)Ljava/lang/String;
        //    99: astore          11
        //   101: aload_0        
        //   102: getfield        com/flurry/android/ci.eB:Ljava/lang/Throwable;
        //   105: invokevirtual   java/lang/Throwable.getStackTrace:()[Ljava/lang/StackTraceElement;
        //   108: astore          12
        //   110: aload           12
        //   112: arraylength    
        //   113: istore          13
        //   115: iconst_0       
        //   116: istore          14
        //   118: iload           14
        //   120: iload           13
        //   122: if_icmpge       176
        //   125: aload           10
        //   127: aload           12
        //   129: iload           14
        //   131: aaload         
        //   132: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //   135: pop            
        //   136: aload           10
        //   138: aload           11
        //   140: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   143: pop            
        //   144: iinc            14, 1
        //   147: goto            118
        //   150: aload_2        
        //   151: iconst_2       
        //   152: invokevirtual   java/io/DataOutputStream.writeByte:(I)V
        //   155: goto            78
        //   158: astore          5
        //   160: aload_2        
        //   161: astore          6
        //   163: iconst_0       
        //   164: newarray        B
        //   166: astore          7
        //   168: aload           6
        //   170: invokestatic    com/flurry/android/bd.a:(Ljava/io/Closeable;)V
        //   173: aload           7
        //   175: areturn        
        //   176: aload_0        
        //   177: getfield        com/flurry/android/ci.eB:Ljava/lang/Throwable;
        //   180: invokevirtual   java/lang/Throwable.getCause:()Ljava/lang/Throwable;
        //   183: ifnull          254
        //   186: aload           10
        //   188: aload           11
        //   190: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   193: pop            
        //   194: aload           10
        //   196: ldc             "Caused by: "
        //   198: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   201: pop            
        //   202: aload_0        
        //   203: getfield        com/flurry/android/ci.eB:Ljava/lang/Throwable;
        //   206: invokevirtual   java/lang/Throwable.getCause:()Ljava/lang/Throwable;
        //   209: invokevirtual   java/lang/Throwable.getStackTrace:()[Ljava/lang/StackTraceElement;
        //   212: astore          20
        //   214: aload           20
        //   216: arraylength    
        //   217: istore          21
        //   219: iconst_0       
        //   220: istore          22
        //   222: iload           22
        //   224: iload           21
        //   226: if_icmpge       254
        //   229: aload           10
        //   231: aload           20
        //   233: iload           22
        //   235: aaload         
        //   236: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //   239: pop            
        //   240: aload           10
        //   242: aload           11
        //   244: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   247: pop            
        //   248: iinc            22, 1
        //   251: goto            222
        //   254: aload           10
        //   256: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   259: invokevirtual   java/lang/String.getBytes:()[B
        //   262: astore          17
        //   264: aload_2        
        //   265: aload           17
        //   267: arraylength    
        //   268: invokevirtual   java/io/DataOutputStream.writeInt:(I)V
        //   271: aload_2        
        //   272: aload           17
        //   274: invokevirtual   java/io/DataOutputStream.write:([B)V
        //   277: aload_2        
        //   278: invokevirtual   java/io/DataOutputStream.flush:()V
        //   281: aload_1        
        //   282: invokevirtual   java/io/ByteArrayOutputStream.toByteArray:()[B
        //   285: astore          9
        //   287: aload_2        
        //   288: invokestatic    com/flurry/android/bd.a:(Ljava/io/Closeable;)V
        //   291: aload           9
        //   293: areturn        
        //   294: aload_2        
        //   295: iconst_1       
        //   296: invokevirtual   java/io/DataOutputStream.writeByte:(I)V
        //   299: aload_2        
        //   300: iconst_0       
        //   301: invokevirtual   java/io/DataOutputStream.writeByte:(I)V
        //   304: goto            277
        //   307: astore_3       
        //   308: aload_2        
        //   309: astore          4
        //   311: aload           4
        //   313: invokestatic    com/flurry/android/bd.a:(Ljava/io/Closeable;)V
        //   316: aload_3        
        //   317: athrow         
        //   318: astore          26
        //   320: aload           26
        //   322: astore_3       
        //   323: aconst_null    
        //   324: astore          4
        //   326: goto            311
        //   329: astore          8
        //   331: aload           6
        //   333: astore          4
        //   335: aload           8
        //   337: astore_3       
        //   338: goto            311
        //   341: astore          25
        //   343: aconst_null    
        //   344: astore          6
        //   346: goto            163
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  0      17     341    349    Ljava/io/IOException;
        //  0      17     318    329    Any
        //  17     78     158    163    Ljava/io/IOException;
        //  17     78     307    311    Any
        //  78     115    158    163    Ljava/io/IOException;
        //  78     115    307    311    Any
        //  125    144    158    163    Ljava/io/IOException;
        //  125    144    307    311    Any
        //  150    155    158    163    Ljava/io/IOException;
        //  150    155    307    311    Any
        //  163    168    329    341    Any
        //  176    219    158    163    Ljava/io/IOException;
        //  176    219    307    311    Any
        //  229    248    158    163    Ljava/io/IOException;
        //  229    248    307    311    Any
        //  254    277    158    163    Ljava/io/IOException;
        //  254    277    307    311    Any
        //  277    287    158    163    Ljava/io/IOException;
        //  277    287    307    311    Any
        //  294    304    158    163    Ljava/io/IOException;
        //  294    304    307    311    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0163:
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
}
