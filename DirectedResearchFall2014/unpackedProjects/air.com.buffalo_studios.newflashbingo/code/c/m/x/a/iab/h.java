package c.m.x.a.iab;

import java.util.*;
import android.os.*;

final class h implements Runnable
{
    final /* synthetic */ List a;
    final /* synthetic */ k b;
    final /* synthetic */ Handler c;
    final /* synthetic */ l d;
    final /* synthetic */ d e;
    
    h(final d e, final List a, final k b, final Handler c) {
        this.e = e;
        this.a = a;
        this.b = b;
        this.c = c;
        this.d = null;
        super();
    }
    
    @Override
    public final void run() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: new             Ljava/util/ArrayList;
        //     3: dup            
        //     4: invokespecial   java/util/ArrayList.<init>:()V
        //     7: astore_1       
        //     8: aload_0        
        //     9: getfield        c/m/x/a/iab/h.a:Ljava/util/List;
        //    12: invokeinterface java/util/List.iterator:()Ljava/util/Iterator;
        //    17: astore_2       
        //    18: aload_2        
        //    19: invokeinterface java/util/Iterator.hasNext:()Z
        //    24: ifeq            425
        //    27: aload_2        
        //    28: invokeinterface java/util/Iterator.next:()Ljava/lang/Object;
        //    33: checkcast       Lc/m/x/a/iab/r;
        //    36: astore          5
        //    38: aload_0        
        //    39: getfield        c/m/x/a/iab/h.e:Lc/m/x/a/iab/d;
        //    42: astore          8
        //    44: aload           8
        //    46: ldc             "consume"
        //    48: invokevirtual   c/m/x/a/iab/d.b:(Ljava/lang/String;)V
        //    51: aload           5
        //    53: getfield        c/m/x/a/iab/r.a:Ljava/lang/String;
        //    56: ldc             "inapp"
        //    58: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //    61: ifne            117
        //    64: new             Lc/m/x/a/iab/c;
        //    67: dup            
        //    68: sipush          -1010
        //    71: new             Ljava/lang/StringBuilder;
        //    74: dup            
        //    75: ldc             "Items of type '"
        //    77: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //    80: aload           5
        //    82: getfield        c/m/x/a/iab/r.a:Ljava/lang/String;
        //    85: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    88: ldc             "' can't be consumed."
        //    90: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    93: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    96: invokespecial   c/m/x/a/iab/c.<init>:(ILjava/lang/String;)V
        //    99: athrow         
        //   100: astore          6
        //   102: aload_1        
        //   103: aload           6
        //   105: invokevirtual   c/m/x/a/iab/c.a:()Lc/m/x/a/iab/p;
        //   108: invokeinterface java/util/List.add:(Ljava/lang/Object;)Z
        //   113: pop            
        //   114: goto            18
        //   117: aload           5
        //   119: getfield        c/m/x/a/iab/r.h:Ljava/lang/String;
        //   122: astore          10
        //   124: aload           5
        //   126: getfield        c/m/x/a/iab/r.d:Ljava/lang/String;
        //   129: astore          11
        //   131: aload           10
        //   133: ifnull          146
        //   136: aload           10
        //   138: ldc             ""
        //   140: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   143: ifeq            243
        //   146: aload           8
        //   148: new             Ljava/lang/StringBuilder;
        //   151: dup            
        //   152: ldc             "Can't consume "
        //   154: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   157: aload           11
        //   159: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   162: ldc             ". No token."
        //   164: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   167: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   170: invokevirtual   c/m/x/a/iab/d.d:(Ljava/lang/String;)V
        //   173: new             Lc/m/x/a/iab/c;
        //   176: dup            
        //   177: sipush          -1007
        //   180: new             Ljava/lang/StringBuilder;
        //   183: dup            
        //   184: ldc             "PurchaseInfo is missing token for sku: "
        //   186: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   189: aload           11
        //   191: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   194: ldc             " "
        //   196: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   199: aload           5
        //   201: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //   204: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   207: invokespecial   c/m/x/a/iab/c.<init>:(ILjava/lang/String;)V
        //   210: athrow         
        //   211: astore          9
        //   213: new             Lc/m/x/a/iab/c;
        //   216: dup            
        //   217: sipush          -1001
        //   220: new             Ljava/lang/StringBuilder;
        //   223: dup            
        //   224: ldc             "Remote exception while consuming. PurchaseInfo: "
        //   226: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   229: aload           5
        //   231: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //   234: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   237: aload           9
        //   239: invokespecial   c/m/x/a/iab/c.<init>:(ILjava/lang/String;Ljava/lang/Exception;)V
        //   242: athrow         
        //   243: aload           8
        //   245: new             Ljava/lang/StringBuilder;
        //   248: dup            
        //   249: ldc             "Consuming sku: "
        //   251: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   254: aload           11
        //   256: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   259: ldc             ", token: "
        //   261: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   264: aload           10
        //   266: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   269: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   272: invokevirtual   c/m/x/a/iab/d.c:(Ljava/lang/String;)V
        //   275: aload           8
        //   277: getfield        c/m/x/a/iab/d.h:Lcom/android/vending/billing/IInAppBillingService;
        //   280: iconst_3       
        //   281: aload           8
        //   283: getfield        c/m/x/a/iab/d.g:Landroid/content/Context;
        //   286: invokevirtual   android/content/Context.getPackageName:()Ljava/lang/String;
        //   289: aload           10
        //   291: invokeinterface com/android/vending/billing/IInAppBillingService.b:(ILjava/lang/String;Ljava/lang/String;)I
        //   296: istore          12
        //   298: iload           12
        //   300: ifne            363
        //   303: aload           8
        //   305: new             Ljava/lang/StringBuilder;
        //   308: dup            
        //   309: ldc             "Successfully consumed sku: "
        //   311: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   314: aload           11
        //   316: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   319: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   322: invokevirtual   c/m/x/a/iab/d.c:(Ljava/lang/String;)V
        //   325: aload_1        
        //   326: new             Lc/m/x/a/iab/p;
        //   329: dup            
        //   330: iconst_0       
        //   331: new             Ljava/lang/StringBuilder;
        //   334: dup            
        //   335: ldc             "Successful consume of sku "
        //   337: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   340: aload           5
        //   342: getfield        c/m/x/a/iab/r.d:Ljava/lang/String;
        //   345: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   348: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   351: invokespecial   c/m/x/a/iab/p.<init>:(ILjava/lang/String;)V
        //   354: invokeinterface java/util/List.add:(Ljava/lang/Object;)Z
        //   359: pop            
        //   360: goto            18
        //   363: aload           8
        //   365: new             Ljava/lang/StringBuilder;
        //   368: dup            
        //   369: ldc             "Error consuming consuming sku "
        //   371: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   374: aload           11
        //   376: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   379: ldc             ". "
        //   381: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   384: iload           12
        //   386: invokestatic    c/m/x/a/iab/d.a:(I)Ljava/lang/String;
        //   389: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   392: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   395: invokevirtual   c/m/x/a/iab/d.c:(Ljava/lang/String;)V
        //   398: new             Lc/m/x/a/iab/c;
        //   401: dup            
        //   402: iload           12
        //   404: new             Ljava/lang/StringBuilder;
        //   407: dup            
        //   408: ldc             "Error consuming sku "
        //   410: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   413: aload           11
        //   415: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   418: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   421: invokespecial   c/m/x/a/iab/c.<init>:(ILjava/lang/String;)V
        //   424: athrow         
        //   425: aload_0        
        //   426: getfield        c/m/x/a/iab/h.e:Lc/m/x/a/iab/d;
        //   429: invokevirtual   c/m/x/a/iab/d.c:()V
        //   432: aload_0        
        //   433: getfield        c/m/x/a/iab/h.b:Lc/m/x/a/iab/k;
        //   436: ifnull          456
        //   439: aload_0        
        //   440: getfield        c/m/x/a/iab/h.c:Landroid/os/Handler;
        //   443: new             Lc/m/x/a/iab/i;
        //   446: dup            
        //   447: aload_0        
        //   448: aload_1        
        //   449: invokespecial   c/m/x/a/iab/i.<init>:(Lc/m/x/a/iab/h;Ljava/util/List;)V
        //   452: invokevirtual   android/os/Handler.post:(Ljava/lang/Runnable;)Z
        //   455: pop            
        //   456: aload_0        
        //   457: getfield        c/m/x/a/iab/h.d:Lc/m/x/a/iab/l;
        //   460: ifnull          480
        //   463: aload_0        
        //   464: getfield        c/m/x/a/iab/h.c:Landroid/os/Handler;
        //   467: new             Lc/m/x/a/iab/j;
        //   470: dup            
        //   471: aload_0        
        //   472: aload_1        
        //   473: invokespecial   c/m/x/a/iab/j.<init>:(Lc/m/x/a/iab/h;Ljava/util/List;)V
        //   476: invokevirtual   android/os/Handler.post:(Ljava/lang/Runnable;)Z
        //   479: pop            
        //   480: return         
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                        
        //  -----  -----  -----  -----  ----------------------------
        //  38     100    100    117    Lc/m/x/a/iab/c;
        //  117    131    211    243    Landroid/os/RemoteException;
        //  117    131    100    117    Lc/m/x/a/iab/c;
        //  136    146    211    243    Landroid/os/RemoteException;
        //  136    146    100    117    Lc/m/x/a/iab/c;
        //  146    211    211    243    Landroid/os/RemoteException;
        //  146    211    100    117    Lc/m/x/a/iab/c;
        //  213    243    100    117    Lc/m/x/a/iab/c;
        //  243    298    211    243    Landroid/os/RemoteException;
        //  243    298    100    117    Lc/m/x/a/iab/c;
        //  303    325    211    243    Landroid/os/RemoteException;
        //  303    325    100    117    Lc/m/x/a/iab/c;
        //  325    360    100    117    Lc/m/x/a/iab/c;
        //  363    425    211    243    Landroid/os/RemoteException;
        //  363    425    100    117    Lc/m/x/a/iab/c;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0117:
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
