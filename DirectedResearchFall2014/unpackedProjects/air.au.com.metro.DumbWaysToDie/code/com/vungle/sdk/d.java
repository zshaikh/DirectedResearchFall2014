package com.vungle.sdk;

import android.graphics.*;
import android.content.*;
import android.widget.*;

final class d
{
    private static Bitmap h;
    private static Bitmap i;
    private static Bitmap j;
    RelativeLayout a;
    VideoView b;
    ProgressBar c;
    RelativeLayout d;
    TextView e;
    ImageView f;
    ImageView g;
    
    static {
        d.h = null;
        d.i = null;
        d.j = null;
    }
    
    public d(final Context p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: invokespecial   java/lang/Object.<init>:()V
        //     4: aload_1        
        //     5: invokevirtual   android/content/Context.getResources:()Landroid/content/res/Resources;
        //     8: invokevirtual   android/content/res/Resources.getDisplayMetrics:()Landroid/util/DisplayMetrics;
        //    11: getfield        android/util/DisplayMetrics.density:F
        //    14: fstore_2       
        //    15: getstatic       com/vungle/sdk/d.h:Landroid/graphics/Bitmap;
        //    18: ifnull          33
        //    21: getstatic       com/vungle/sdk/d.i:Landroid/graphics/Bitmap;
        //    24: ifnull          33
        //    27: getstatic       com/vungle/sdk/d.j:Landroid/graphics/Bitmap;
        //    30: ifnonnull       91
        //    33: invokestatic    com/vungle/sdk/m.a:()Lcom/vungle/sdk/m;
        //    36: invokevirtual   com/vungle/sdk/m.b:()Lcom/vungle/sdk/VungleBitmapFactory;
        //    39: astore_3       
        //    40: getstatic       com/vungle/sdk/d.h:Landroid/graphics/Bitmap;
        //    43: ifnonnull       57
        //    46: aload_3        
        //    47: ldc             "vunglepub_sdk_close.png"
        //    49: invokeinterface com/vungle/sdk/VungleBitmapFactory.getBitmap:(Ljava/lang/String;)Landroid/graphics/Bitmap;
        //    54: putstatic       com/vungle/sdk/d.h:Landroid/graphics/Bitmap;
        //    57: getstatic       com/vungle/sdk/d.i:Landroid/graphics/Bitmap;
        //    60: ifnonnull       74
        //    63: aload_3        
        //    64: ldc             "vunglepub_sdk_mute.png"
        //    66: invokeinterface com/vungle/sdk/VungleBitmapFactory.getBitmap:(Ljava/lang/String;)Landroid/graphics/Bitmap;
        //    71: putstatic       com/vungle/sdk/d.i:Landroid/graphics/Bitmap;
        //    74: getstatic       com/vungle/sdk/d.j:Landroid/graphics/Bitmap;
        //    77: ifnonnull       91
        //    80: aload_3        
        //    81: ldc             "vunglepub_sdk_unmute.png"
        //    83: invokeinterface com/vungle/sdk/VungleBitmapFactory.getBitmap:(Ljava/lang/String;)Landroid/graphics/Bitmap;
        //    88: putstatic       com/vungle/sdk/d.j:Landroid/graphics/Bitmap;
        //    91: aload_0        
        //    92: new             Landroid/widget/RelativeLayout;
        //    95: dup            
        //    96: aload_1        
        //    97: invokespecial   android/widget/RelativeLayout.<init>:(Landroid/content/Context;)V
        //   100: putfield        com/vungle/sdk/d.a:Landroid/widget/RelativeLayout;
        //   103: aload_0        
        //   104: new             Landroid/widget/VideoView;
        //   107: dup            
        //   108: aload_1        
        //   109: invokespecial   android/widget/VideoView.<init>:(Landroid/content/Context;)V
        //   112: putfield        com/vungle/sdk/d.b:Landroid/widget/VideoView;
        //   115: aload_0        
        //   116: new             Landroid/widget/ProgressBar;
        //   119: dup            
        //   120: aload_1        
        //   121: invokespecial   android/widget/ProgressBar.<init>:(Landroid/content/Context;)V
        //   124: putfield        com/vungle/sdk/d.c:Landroid/widget/ProgressBar;
        //   127: aload_0        
        //   128: new             Landroid/widget/RelativeLayout;
        //   131: dup            
        //   132: aload_1        
        //   133: invokespecial   android/widget/RelativeLayout.<init>:(Landroid/content/Context;)V
        //   136: putfield        com/vungle/sdk/d.d:Landroid/widget/RelativeLayout;
        //   139: aload_0        
        //   140: new             Landroid/widget/TextView;
        //   143: dup            
        //   144: aload_1        
        //   145: invokespecial   android/widget/TextView.<init>:(Landroid/content/Context;)V
        //   148: putfield        com/vungle/sdk/d.e:Landroid/widget/TextView;
        //   151: aload_0        
        //   152: new             Landroid/widget/ImageView;
        //   155: dup            
        //   156: aload_1        
        //   157: invokespecial   android/widget/ImageView.<init>:(Landroid/content/Context;)V
        //   160: putfield        com/vungle/sdk/d.f:Landroid/widget/ImageView;
        //   163: aload_0        
        //   164: new             Landroid/widget/ImageView;
        //   167: dup            
        //   168: aload_1        
        //   169: invokespecial   android/widget/ImageView.<init>:(Landroid/content/Context;)V
        //   172: putfield        com/vungle/sdk/d.g:Landroid/widget/ImageView;
        //   175: aload_0        
        //   176: getfield        com/vungle/sdk/d.a:Landroid/widget/RelativeLayout;
        //   179: aload_0        
        //   180: getfield        com/vungle/sdk/d.b:Landroid/widget/VideoView;
        //   183: invokevirtual   android/widget/RelativeLayout.addView:(Landroid/view/View;)V
        //   186: aload_0        
        //   187: getfield        com/vungle/sdk/d.a:Landroid/widget/RelativeLayout;
        //   190: aload_0        
        //   191: getfield        com/vungle/sdk/d.c:Landroid/widget/ProgressBar;
        //   194: invokevirtual   android/widget/RelativeLayout.addView:(Landroid/view/View;)V
        //   197: aload_0        
        //   198: getfield        com/vungle/sdk/d.a:Landroid/widget/RelativeLayout;
        //   201: aload_0        
        //   202: getfield        com/vungle/sdk/d.d:Landroid/widget/RelativeLayout;
        //   205: invokevirtual   android/widget/RelativeLayout.addView:(Landroid/view/View;)V
        //   208: aload_0        
        //   209: getfield        com/vungle/sdk/d.d:Landroid/widget/RelativeLayout;
        //   212: aload_0        
        //   213: getfield        com/vungle/sdk/d.e:Landroid/widget/TextView;
        //   216: invokevirtual   android/widget/RelativeLayout.addView:(Landroid/view/View;)V
        //   219: aload_0        
        //   220: getfield        com/vungle/sdk/d.d:Landroid/widget/RelativeLayout;
        //   223: aload_0        
        //   224: getfield        com/vungle/sdk/d.f:Landroid/widget/ImageView;
        //   227: invokevirtual   android/widget/RelativeLayout.addView:(Landroid/view/View;)V
        //   230: aload_0        
        //   231: getfield        com/vungle/sdk/d.a:Landroid/widget/RelativeLayout;
        //   234: aload_0        
        //   235: getfield        com/vungle/sdk/d.g:Landroid/widget/ImageView;
        //   238: invokevirtual   android/widget/RelativeLayout.addView:(Landroid/view/View;)V
        //   241: aload_0        
        //   242: getfield        com/vungle/sdk/d.f:Landroid/widget/ImageView;
        //   245: fload_2        
        //   246: invokestatic    com/vungle/sdk/d.a:(Landroid/widget/ImageView;F)V
        //   249: aload_0        
        //   250: getfield        com/vungle/sdk/d.g:Landroid/widget/ImageView;
        //   253: fload_2        
        //   254: invokestatic    com/vungle/sdk/d.a:(Landroid/widget/ImageView;F)V
        //   257: aload_0        
        //   258: getfield        com/vungle/sdk/d.f:Landroid/widget/ImageView;
        //   261: getstatic       com/vungle/sdk/d.h:Landroid/graphics/Bitmap;
        //   264: invokevirtual   android/widget/ImageView.setImageBitmap:(Landroid/graphics/Bitmap;)V
        //   267: aload_0        
        //   268: getfield        com/vungle/sdk/d.g:Landroid/widget/ImageView;
        //   271: getstatic       com/vungle/sdk/d.i:Landroid/graphics/Bitmap;
        //   274: invokevirtual   android/widget/ImageView.setImageBitmap:(Landroid/graphics/Bitmap;)V
        //   277: aload_0        
        //   278: getfield        com/vungle/sdk/d.e:Landroid/widget/TextView;
        //   281: aload_1        
        //   282: ldc             16973892
        //   284: invokevirtual   android/widget/TextView.setTextAppearance:(Landroid/content/Context;I)V
        //   287: aload_0        
        //   288: getfield        com/vungle/sdk/d.c:Landroid/widget/ProgressBar;
        //   291: invokevirtual   android/widget/ProgressBar.getLayoutParams:()Landroid/view/ViewGroup$LayoutParams;
        //   294: checkcast       Landroid/widget/RelativeLayout$LayoutParams;
        //   297: astore          4
        //   299: aload           4
        //   301: bipush          13
        //   303: invokevirtual   android/widget/RelativeLayout$LayoutParams.addRule:(I)V
        //   306: aload_0        
        //   307: getfield        com/vungle/sdk/d.c:Landroid/widget/ProgressBar;
        //   310: aload           4
        //   312: invokevirtual   android/widget/ProgressBar.setLayoutParams:(Landroid/view/ViewGroup$LayoutParams;)V
        //   315: aload_0        
        //   316: getfield        com/vungle/sdk/d.b:Landroid/widget/VideoView;
        //   319: invokevirtual   android/widget/VideoView.getLayoutParams:()Landroid/view/ViewGroup$LayoutParams;
        //   322: checkcast       Landroid/widget/RelativeLayout$LayoutParams;
        //   325: astore          5
        //   327: aload           5
        //   329: iconst_m1      
        //   330: putfield        android/widget/RelativeLayout$LayoutParams.height:I
        //   333: aload           5
        //   335: iconst_m1      
        //   336: putfield        android/widget/RelativeLayout$LayoutParams.width:I
        //   339: aload           5
        //   341: bipush          13
        //   343: invokevirtual   android/widget/RelativeLayout$LayoutParams.addRule:(I)V
        //   346: aload_0        
        //   347: getfield        com/vungle/sdk/d.b:Landroid/widget/VideoView;
        //   350: aload           5
        //   352: invokevirtual   android/widget/VideoView.setLayoutParams:(Landroid/view/ViewGroup$LayoutParams;)V
        //   355: aload_0        
        //   356: getfield        com/vungle/sdk/d.d:Landroid/widget/RelativeLayout;
        //   359: invokevirtual   android/widget/RelativeLayout.getLayoutParams:()Landroid/view/ViewGroup$LayoutParams;
        //   362: checkcast       Landroid/widget/RelativeLayout$LayoutParams;
        //   365: astore          6
        //   367: aload           6
        //   369: bipush          10
        //   371: invokevirtual   android/widget/RelativeLayout$LayoutParams.addRule:(I)V
        //   374: aload           6
        //   376: bipush          14
        //   378: invokevirtual   android/widget/RelativeLayout$LayoutParams.addRule:(I)V
        //   381: aload_0        
        //   382: getfield        com/vungle/sdk/d.d:Landroid/widget/RelativeLayout;
        //   385: aload           6
        //   387: invokevirtual   android/widget/RelativeLayout.setLayoutParams:(Landroid/view/ViewGroup$LayoutParams;)V
        //   390: aload_0        
        //   391: getfield        com/vungle/sdk/d.e:Landroid/widget/TextView;
        //   394: invokevirtual   android/widget/TextView.getLayoutParams:()Landroid/view/ViewGroup$LayoutParams;
        //   397: checkcast       Landroid/widget/RelativeLayout$LayoutParams;
        //   400: astore          7
        //   402: aload           7
        //   404: bipush          9
        //   406: invokevirtual   android/widget/RelativeLayout$LayoutParams.addRule:(I)V
        //   409: aload           7
        //   411: bipush          15
        //   413: invokevirtual   android/widget/RelativeLayout$LayoutParams.addRule:(I)V
        //   416: aload           7
        //   418: fload_2        
        //   419: ldc             5.0
        //   421: fmul           
        //   422: invokestatic    java/lang/Math.round:(F)I
        //   425: iconst_0       
        //   426: iconst_0       
        //   427: iconst_0       
        //   428: invokevirtual   android/widget/RelativeLayout$LayoutParams.setMargins:(IIII)V
        //   431: aload_0        
        //   432: getfield        com/vungle/sdk/d.e:Landroid/widget/TextView;
        //   435: aload           7
        //   437: invokevirtual   android/widget/TextView.setLayoutParams:(Landroid/view/ViewGroup$LayoutParams;)V
        //   440: aload_0        
        //   441: getfield        com/vungle/sdk/d.f:Landroid/widget/ImageView;
        //   444: invokevirtual   android/widget/ImageView.getLayoutParams:()Landroid/view/ViewGroup$LayoutParams;
        //   447: checkcast       Landroid/widget/RelativeLayout$LayoutParams;
        //   450: astore          8
        //   452: aload           8
        //   454: bipush          11
        //   456: invokevirtual   android/widget/RelativeLayout$LayoutParams.addRule:(I)V
        //   459: aload           8
        //   461: bipush          15
        //   463: invokevirtual   android/widget/RelativeLayout$LayoutParams.addRule:(I)V
        //   466: aload_0        
        //   467: getfield        com/vungle/sdk/d.f:Landroid/widget/ImageView;
        //   470: aload           8
        //   472: invokevirtual   android/widget/ImageView.setLayoutParams:(Landroid/view/ViewGroup$LayoutParams;)V
        //   475: aload_0        
        //   476: getfield        com/vungle/sdk/d.g:Landroid/widget/ImageView;
        //   479: invokevirtual   android/widget/ImageView.getLayoutParams:()Landroid/view/ViewGroup$LayoutParams;
        //   482: checkcast       Landroid/widget/RelativeLayout$LayoutParams;
        //   485: astore          9
        //   487: aload           9
        //   489: bipush          11
        //   491: invokevirtual   android/widget/RelativeLayout$LayoutParams.addRule:(I)V
        //   494: aload           9
        //   496: bipush          12
        //   498: invokevirtual   android/widget/RelativeLayout$LayoutParams.addRule:(I)V
        //   501: aload_0        
        //   502: getfield        com/vungle/sdk/d.g:Landroid/widget/ImageView;
        //   505: aload           9
        //   507: invokevirtual   android/widget/ImageView.setLayoutParams:(Landroid/view/ViewGroup$LayoutParams;)V
        //   510: return         
        //   511: astore          12
        //   513: aload           12
        //   515: invokevirtual   java/io/IOException.printStackTrace:()V
        //   518: goto            57
        //   521: astore          11
        //   523: aload           11
        //   525: invokevirtual   java/io/IOException.printStackTrace:()V
        //   528: goto            74
        //   531: astore          10
        //   533: aload           10
        //   535: invokevirtual   java/io/IOException.printStackTrace:()V
        //   538: goto            91
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  46     57     511    521    Ljava/io/IOException;
        //  63     74     521    531    Ljava/io/IOException;
        //  80     91     531    541    Ljava/io/IOException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 239, Size: 239
        //     at java.util.ArrayList.rangeCheck(ArrayList.java:635)
        //     at java.util.ArrayList.get(ArrayList.java:411)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3305)
        //     at com.strobel.decompiler.ast.AstBuilder.build(AstBuilder.java:114)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:210)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createConstructor(AstBuilder.java:692)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:529)
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
    
    private static void a(final ImageView imageView, final float n) {
        imageView.setScaleType(ImageView$ScaleType.FIT_CENTER);
        imageView.setMinimumWidth((int)(42.0f * n));
        imageView.setMinimumHeight((int)(42.0f * n));
    }
    
    public final RelativeLayout a() {
        return this.a;
    }
    
    public final void a(final boolean b) {
        final ImageView g = this.g;
        Bitmap imageBitmap;
        if (b) {
            imageBitmap = com.vungle.sdk.d.i;
        }
        else {
            imageBitmap = com.vungle.sdk.d.j;
        }
        g.setImageBitmap(imageBitmap);
    }
    
    public final ProgressBar b() {
        return this.c;
    }
    
    public final TextView c() {
        return this.e;
    }
    
    public final ImageView d() {
        return this.f;
    }
    
    public final ImageView e() {
        return this.g;
    }
    
    public final VideoView f() {
        return this.b;
    }
}
