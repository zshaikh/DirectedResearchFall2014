package com.flurry.android;

import java.util.*;

final class bs
{
    private int dO;
    private String dP;
    private Map<String, String> dQ;
    private long dR;
    private boolean dS;
    private long dT;
    
    public bs(final int do1, final String dp, final Map<String, String> dq, final long dr, final boolean ds) {
        super();
        this.dO = do1;
        this.dP = dp;
        this.dQ = dq;
        this.dR = dr;
        this.dS = ds;
    }
    
    public final void c(final long n) {
        this.dT = n - this.dR;
        db.c("FlurryAgent", "Ended event '" + this.dP + "' (" + this.dR + ") after " + this.dT + "ms");
    }
    
    public final void d(final Map<String, String> dq) {
        if (this.dQ == null || this.dQ.size() == 0) {
            this.dQ = dq;
        }
        else {
            for (final Map.Entry<String, String> entry : dq.entrySet()) {
                if (this.dQ.containsKey(entry.getKey())) {
                    this.dQ.remove(entry.getKey());
                    this.dQ.put(entry.getKey(), entry.getValue());
                }
                else {
                    this.dQ.put(entry.getKey(), entry.getValue());
                }
            }
        }
    }
    
    public final void e(final Map<String, String> dq) {
        this.dQ = dq;
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
        //    19: getfield        com/flurry/android/bs.dO:I
        //    22: invokevirtual   java/io/DataOutputStream.writeShort:(I)V
        //    25: aload_2        
        //    26: aload_0        
        //    27: getfield        com/flurry/android/bs.dP:Ljava/lang/String;
        //    30: invokevirtual   java/io/DataOutputStream.writeUTF:(Ljava/lang/String;)V
        //    33: aload_0        
        //    34: getfield        com/flurry/android/bs.dQ:Ljava/util/Map;
        //    37: ifnonnull       78
        //    40: aload_2        
        //    41: iconst_0       
        //    42: invokevirtual   java/io/DataOutputStream.writeShort:(I)V
        //    45: aload_2        
        //    46: aload_0        
        //    47: getfield        com/flurry/android/bs.dR:J
        //    50: invokevirtual   java/io/DataOutputStream.writeLong:(J)V
        //    53: aload_2        
        //    54: aload_0        
        //    55: getfield        com/flurry/android/bs.dT:J
        //    58: invokevirtual   java/io/DataOutputStream.writeLong:(J)V
        //    61: aload_2        
        //    62: invokevirtual   java/io/DataOutputStream.flush:()V
        //    65: aload_1        
        //    66: invokevirtual   java/io/ByteArrayOutputStream.toByteArray:()[B
        //    69: astore          11
        //    71: aload_2        
        //    72: invokestatic    com/flurry/android/bd.a:(Ljava/io/Closeable;)V
        //    75: aload           11
        //    77: areturn        
        //    78: aload_2        
        //    79: aload_0        
        //    80: getfield        com/flurry/android/bs.dQ:Ljava/util/Map;
        //    83: invokeinterface java/util/Map.size:()I
        //    88: invokevirtual   java/io/DataOutputStream.writeShort:(I)V
        //    91: aload_0        
        //    92: getfield        com/flurry/android/bs.dQ:Ljava/util/Map;
        //    95: invokeinterface java/util/Map.entrySet:()Ljava/util/Set;
        //   100: invokeinterface java/util/Set.iterator:()Ljava/util/Iterator;
        //   105: astore          9
        //   107: aload           9
        //   109: invokeinterface java/util/Iterator.hasNext:()Z
        //   114: ifeq            45
        //   117: aload           9
        //   119: invokeinterface java/util/Iterator.next:()Ljava/lang/Object;
        //   124: checkcast       Ljava/util/Map$Entry;
        //   127: astore          10
        //   129: aload_2        
        //   130: aload           10
        //   132: invokeinterface java/util/Map$Entry.getKey:()Ljava/lang/Object;
        //   137: checkcast       Ljava/lang/String;
        //   140: invokestatic    com/flurry/android/bd.sanitize:(Ljava/lang/String;)Ljava/lang/String;
        //   143: invokevirtual   java/io/DataOutputStream.writeUTF:(Ljava/lang/String;)V
        //   146: aload_2        
        //   147: aload           10
        //   149: invokeinterface java/util/Map$Entry.getValue:()Ljava/lang/Object;
        //   154: checkcast       Ljava/lang/String;
        //   157: invokestatic    com/flurry/android/bd.sanitize:(Ljava/lang/String;)Ljava/lang/String;
        //   160: invokevirtual   java/io/DataOutputStream.writeUTF:(Ljava/lang/String;)V
        //   163: goto            107
        //   166: astore          5
        //   168: aload_2        
        //   169: astore          6
        //   171: iconst_0       
        //   172: newarray        B
        //   174: astore          7
        //   176: aload           6
        //   178: invokestatic    com/flurry/android/bd.a:(Ljava/io/Closeable;)V
        //   181: aload           7
        //   183: areturn        
        //   184: astore          13
        //   186: aconst_null    
        //   187: astore          4
        //   189: aload           13
        //   191: astore_3       
        //   192: aload           4
        //   194: invokestatic    com/flurry/android/bd.a:(Ljava/io/Closeable;)V
        //   197: aload_3        
        //   198: athrow         
        //   199: astore_3       
        //   200: aload_2        
        //   201: astore          4
        //   203: goto            192
        //   206: astore          8
        //   208: aload           6
        //   210: astore          4
        //   212: aload           8
        //   214: astore_3       
        //   215: goto            192
        //   218: astore          12
        //   220: aconst_null    
        //   221: astore          6
        //   223: goto            171
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  0      17     218    226    Ljava/io/IOException;
        //  0      17     184    192    Any
        //  17     45     166    171    Ljava/io/IOException;
        //  17     45     199    206    Any
        //  45     71     166    171    Ljava/io/IOException;
        //  45     71     199    206    Any
        //  78     107    166    171    Ljava/io/IOException;
        //  78     107    199    206    Any
        //  107    163    166    171    Ljava/io/IOException;
        //  107    163    199    206    Any
        //  171    176    206    218    Any
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
    
    public final Map<String, String> getParameters() {
        return this.dQ;
    }
    
    public final boolean w(final String anObject) {
        return this.dS && this.dT == 0L && this.dP.equals(anObject);
    }
}
