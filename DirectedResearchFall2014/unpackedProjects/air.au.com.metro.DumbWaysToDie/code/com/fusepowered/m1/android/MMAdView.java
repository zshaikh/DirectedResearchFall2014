package com.fusepowered.m1.android;

import android.content.*;
import android.util.*;
import android.text.*;
import android.app.*;
import android.widget.*;
import android.graphics.*;
import android.view.*;
import android.view.animation.*;
import java.util.*;
import android.os.*;

public final class MMAdView extends MMLayout implements View$OnClickListener, Animation$AnimationListener
{
    static final int DEFAULT_RESIZE_PARAM_VALUES = -50;
    public static final int TRANSITION_DOWN = 3;
    public static final int TRANSITION_FADE = 1;
    public static final int TRANSITION_NONE = 0;
    public static final int TRANSITION_RANDOM = 4;
    public static final int TRANSITION_UP = 2;
    int height;
    int oldHeight;
    int oldWidth;
    ImageView refreshAnimationimageView;
    int transitionType;
    ResizeView view;
    int width;
    
    public MMAdView(final Context context) {
        super(context);
        this.transitionType = 4;
        this.height = 0;
        this.width = 0;
        this.oldHeight = -50;
        this.oldWidth = -50;
        this.adImpl = new MMAdViewMMAdImpl(context);
        this.init(context);
    }
    
    public MMAdView(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public MMAdView(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.transitionType = 4;
        this.height = 0;
        this.width = 0;
        this.oldHeight = -50;
        this.oldWidth = -50;
        Label_0431: {
            if (this.isInEditMode()) {
                break Label_0431;
            }
            MMSDK.Log.d("Creating MMAdView from XML layout.");
            this.adImpl = new MMAdViewMMAdImpl(context);
            Label_0417: {
                if (set == null) {
                    break Label_0417;
                }
                this.setApid(set.getAttributeValue("http://millennialmedia.com/android/schema", "apid"));
                this.adImpl.ignoreDensityScaling = set.getAttributeBooleanValue("http://millennialmedia.com/android/schema", "ignoreDensityScaling", false);
                final String attributeValue = set.getAttributeValue("http://millennialmedia.com/android/schema", "height");
                final String attributeValue2 = set.getAttributeValue("http://millennialmedia.com/android/schema", "width");
                while (true) {
                    try {
                        if (!TextUtils.isEmpty((CharSequence)attributeValue)) {
                            this.height = Integer.parseInt(attributeValue);
                        }
                        if (!TextUtils.isEmpty((CharSequence)attributeValue2)) {
                            this.width = Integer.parseInt(attributeValue2);
                        }
                        if (this.adImpl.mmRequest != null) {
                            this.adImpl.mmRequest.age = set.getAttributeValue("http://millennialmedia.com/android/schema", "age");
                            this.adImpl.mmRequest.children = set.getAttributeValue("http://millennialmedia.com/android/schema", "children");
                            this.adImpl.mmRequest.education = set.getAttributeValue("http://millennialmedia.com/android/schema", "education");
                            this.adImpl.mmRequest.ethnicity = set.getAttributeValue("http://millennialmedia.com/android/schema", "ethnicity");
                            this.adImpl.mmRequest.gender = set.getAttributeValue("http://millennialmedia.com/android/schema", "gender");
                            this.adImpl.mmRequest.income = set.getAttributeValue("http://millennialmedia.com/android/schema", "income");
                            this.adImpl.mmRequest.keywords = set.getAttributeValue("http://millennialmedia.com/android/schema", "keywords");
                            this.adImpl.mmRequest.orientation = set.getAttributeValue("http://millennialmedia.com/android/schema", "orientation");
                            this.adImpl.mmRequest.marital = set.getAttributeValue("http://millennialmedia.com/android/schema", "marital");
                            this.adImpl.mmRequest.politics = set.getAttributeValue("http://millennialmedia.com/android/schema", "politics");
                            this.adImpl.mmRequest.vendor = set.getAttributeValue("http://millennialmedia.com/android/schema", "vendor");
                            this.adImpl.mmRequest.zip = set.getAttributeValue("http://millennialmedia.com/android/schema", "zip");
                        }
                        this.goalId = set.getAttributeValue("http://millennialmedia.com/android/schema", "goalId");
                        this.adImpl.xmlLayout = true;
                        this.init(context);
                        return;
                        this.initEclipseAd(context);
                    }
                    catch (NumberFormatException ex) {
                        continue;
                    }
                    break;
                }
            }
        }
    }
    
    private void attachToWindow(final View view) {
        synchronized (this) {
            this.detachFromParent(view);
            final Context context = this.getContext();
            if (context != null && context instanceof Activity) {
                final Window window = ((Activity)context).getWindow();
                if (window != null) {
                    final View decorView = window.getDecorView();
                    if (decorView != null && decorView instanceof ViewGroup) {
                        ((ViewGroup)decorView).addView(view);
                    }
                }
            }
        }
    }
    
    private void callSetTranslationX(final int i) {
        try {
            View.class.getMethod("setTranslationX", Float.TYPE).invoke(this, i);
        }
        catch (Exception ex) {}
    }
    
    private void callSetTranslationY(final int i) {
        try {
            View.class.getMethod("setTranslationY", Float.TYPE).invoke(this, i);
        }
        catch (Exception ex) {}
    }
    
    private void detachFromParent(final View view) {
        // monitorenter(this)
        if (view == null) {
            return;
        }
        try {
            final ViewParent parent = this.getParent();
            if (parent != null && parent instanceof ViewGroup) {
                final ViewGroup viewGroup = (ViewGroup)parent;
                if (view.getParent() != null) {
                    viewGroup.removeView(view);
                }
            }
        }
        finally {
        }
        // monitorexit(this)
    }
    
    private void getAdInternal() {
        if (this.adImpl != null) {
            this.adImpl.requestAd();
        }
    }
    
    private boolean hasDefaultResizeParams() {
        return this.oldWidth == -50 && this.oldHeight == -50;
    }
    
    private void init(final Context context) {
        this.setBackgroundColor(0);
        this.adImpl.adType = "b";
        this.setOnClickListener((View$OnClickListener)this);
        this.setFocusable(true);
        (this.refreshAnimationimageView = new ImageView(context)).setScaleType(ImageView$ScaleType.FIT_XY);
        this.refreshAnimationimageView.setVisibility(8);
        this.addView((View)this.refreshAnimationimageView, (ViewGroup$LayoutParams)new RelativeLayout$LayoutParams(-2, -2));
        this.setLayoutParams((ViewGroup$LayoutParams)new RelativeLayout$LayoutParams(-2, -2));
    }
    
    private void initEclipseAd(final Context p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: new             Landroid/widget/ImageView;
        //     3: dup            
        //     4: aload_1        
        //     5: invokespecial   android/widget/ImageView.<init>:(Landroid/content/Context;)V
        //     8: astore_2       
        //     9: aconst_null    
        //    10: astore_3       
        //    11: aconst_null    
        //    12: astore          4
        //    14: ldc_w           "java.io.tmpdir"
        //    17: invokestatic    java/lang/System.getProperty:(Ljava/lang/String;)Ljava/lang/String;
        //    20: astore          9
        //    22: aconst_null    
        //    23: astore_3       
        //    24: aconst_null    
        //    25: astore          4
        //    27: aload           9
        //    29: ifnull          75
        //    32: aload           9
        //    34: getstatic       java/io/File.separator:Ljava/lang/String;
        //    37: invokevirtual   java/lang/String.endsWith:(Ljava/lang/String;)Z
        //    40: istore          10
        //    42: aconst_null    
        //    43: astore_3       
        //    44: aconst_null    
        //    45: astore          4
        //    47: iload           10
        //    49: ifne            75
        //    52: new             Ljava/lang/StringBuilder;
        //    55: dup            
        //    56: invokespecial   java/lang/StringBuilder.<init>:()V
        //    59: aload           9
        //    61: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    64: getstatic       java/io/File.separator:Ljava/lang/String;
        //    67: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    70: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    73: astore          9
        //    75: new             Ljava/io/File;
        //    78: dup            
        //    79: new             Ljava/lang/StringBuilder;
        //    82: dup            
        //    83: invokespecial   java/lang/StringBuilder.<init>:()V
        //    86: aload           9
        //    88: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    91: ldc_w           "millenial355jns6u3l1nmedia.png"
        //    94: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    97: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   100: invokespecial   java/io/File.<init>:(Ljava/lang/String;)V
        //   103: astore          11
        //   105: aload           11
        //   107: invokevirtual   java/io/File.exists:()Z
        //   110: istore          12
        //   112: aconst_null    
        //   113: astore_3       
        //   114: aconst_null    
        //   115: astore          4
        //   117: iload           12
        //   119: ifne            243
        //   122: new             Ljava/net/URL;
        //   125: dup            
        //   126: ldc_w           "http://images.millennialmedia.com/9513/192134.gif"
        //   129: invokespecial   java/net/URL.<init>:(Ljava/lang/String;)V
        //   132: invokevirtual   java/net/URL.openConnection:()Ljava/net/URLConnection;
        //   135: checkcast       Ljava/net/HttpURLConnection;
        //   138: astore          13
        //   140: aload           13
        //   142: iconst_1       
        //   143: invokevirtual   java/net/HttpURLConnection.setDoOutput:(Z)V
        //   146: aload           13
        //   148: sipush          10000
        //   151: invokevirtual   java/net/HttpURLConnection.setConnectTimeout:(I)V
        //   154: aload           13
        //   156: invokevirtual   java/net/HttpURLConnection.connect:()V
        //   159: aload           13
        //   161: invokevirtual   java/net/HttpURLConnection.getInputStream:()Ljava/io/InputStream;
        //   164: astore_3       
        //   165: new             Ljava/io/FileOutputStream;
        //   168: dup            
        //   169: aload           11
        //   171: invokespecial   java/io/FileOutputStream.<init>:(Ljava/io/File;)V
        //   174: astore          14
        //   176: sipush          1024
        //   179: newarray        B
        //   181: astore          16
        //   183: aload_3        
        //   184: aload           16
        //   186: invokevirtual   java/io/InputStream.read:([B)I
        //   189: istore          17
        //   191: iload           17
        //   193: ifle            239
        //   196: aload           14
        //   198: aload           16
        //   200: iconst_0       
        //   201: iload           17
        //   203: invokevirtual   java/io/OutputStream.write:([BII)V
        //   206: goto            183
        //   209: astore          15
        //   211: aload           14
        //   213: astore          4
        //   215: aload_3        
        //   216: ifnull          223
        //   219: aload_3        
        //   220: invokevirtual   java/io/InputStream.close:()V
        //   223: aload           4
        //   225: ifnull          233
        //   228: aload           4
        //   230: invokevirtual   java/io/OutputStream.close:()V
        //   233: aload_0        
        //   234: aload_2        
        //   235: invokevirtual   com/fusepowered/m1/android/MMAdView.addView:(Landroid/view/View;)V
        //   238: return         
        //   239: aload           14
        //   241: astore          4
        //   243: aload           11
        //   245: invokevirtual   java/io/File.getAbsolutePath:()Ljava/lang/String;
        //   248: invokestatic    android/graphics/BitmapFactory.decodeFile:(Ljava/lang/String;)Landroid/graphics/Bitmap;
        //   251: astore          18
        //   253: aload_2        
        //   254: ifnull          268
        //   257: aload           18
        //   259: ifnull          268
        //   262: aload_2        
        //   263: aload           18
        //   265: invokevirtual   android/widget/ImageView.setImageBitmap:(Landroid/graphics/Bitmap;)V
        //   268: aload_3        
        //   269: ifnull          276
        //   272: aload_3        
        //   273: invokevirtual   java/io/InputStream.close:()V
        //   276: aload           4
        //   278: ifnull          233
        //   281: aload           4
        //   283: invokevirtual   java/io/OutputStream.close:()V
        //   286: goto            233
        //   289: astore          19
        //   291: goto            233
        //   294: astore          7
        //   296: aload_3        
        //   297: ifnull          304
        //   300: aload_3        
        //   301: invokevirtual   java/io/InputStream.close:()V
        //   304: aload           4
        //   306: ifnull          314
        //   309: aload           4
        //   311: invokevirtual   java/io/OutputStream.close:()V
        //   314: aload           7
        //   316: athrow         
        //   317: astore          8
        //   319: goto            314
        //   322: astore          7
        //   324: aload           14
        //   326: astore          4
        //   328: goto            296
        //   331: astore          6
        //   333: goto            233
        //   336: astore          5
        //   338: goto            215
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  14     22     336    341    Ljava/lang/Exception;
        //  14     22     294    296    Any
        //  32     42     336    341    Ljava/lang/Exception;
        //  32     42     294    296    Any
        //  52     75     336    341    Ljava/lang/Exception;
        //  52     75     294    296    Any
        //  75     112    336    341    Ljava/lang/Exception;
        //  75     112    294    296    Any
        //  122    176    336    341    Ljava/lang/Exception;
        //  122    176    294    296    Any
        //  176    183    209    215    Ljava/lang/Exception;
        //  176    183    322    331    Any
        //  183    191    209    215    Ljava/lang/Exception;
        //  183    191    322    331    Any
        //  196    206    209    215    Ljava/lang/Exception;
        //  196    206    322    331    Any
        //  219    223    331    336    Ljava/lang/Exception;
        //  228    233    331    336    Ljava/lang/Exception;
        //  243    253    336    341    Ljava/lang/Exception;
        //  243    253    294    296    Any
        //  262    268    336    341    Ljava/lang/Exception;
        //  262    268    294    296    Any
        //  272    276    289    294    Ljava/lang/Exception;
        //  281    286    289    294    Ljava/lang/Exception;
        //  300    304    317    322    Ljava/lang/Exception;
        //  309    314    317    322    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0223:
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
    
    private void setUnresizeParameters() {
        if (this.hasDefaultResizeParams()) {
            final ViewGroup$LayoutParams layoutParams = this.getLayoutParams();
            this.oldWidth = layoutParams.width;
            this.oldHeight = layoutParams.height;
            if (this.oldWidth <= 0) {
                this.oldWidth = this.getWidth();
            }
            if (this.oldHeight <= 0) {
                this.oldHeight = this.getHeight();
            }
        }
    }
    
    @Override
    void closeAreaTouched() {
        this.adImpl.unresizeToDefault();
    }
    
    public void getAd() {
        if (this.adImpl != null && this.adImpl.requestListener != null) {
            this.getAd(this.adImpl.requestListener);
            return;
        }
        this.getAdInternal();
    }
    
    public void getAd(final RequestListener requestListener) {
        if (this.adImpl != null) {
            this.adImpl.requestListener = requestListener;
        }
        this.getAdInternal();
    }
    
    void handleMraidResize(final DTOResizeParameters dtoResizeParameters) {
        synchronized (this) {
            this.refreshAnimationimageView.setImageBitmap((Bitmap)null);
            if (MMSDK.hasSetTranslationMethod()) {
                if (this.view == null) {
                    (this.view = new ResizeView(this.getContext())).setId(304025022);
                    this.view.setLayoutParams((ViewGroup$LayoutParams)new RelativeLayout$LayoutParams(1, 1));
                    this.view.setBackgroundColor(0);
                }
                if (this.view.getParent() == null) {
                    final ViewParent parent = this.getParent();
                    if (parent != null && parent instanceof ViewGroup) {
                        ((ViewGroup)parent).addView((View)this.view);
                    }
                }
                final BannerBounds bannerBounds = new BannerBounds(dtoResizeParameters);
                if (!dtoResizeParameters.allowOffScreen) {
                    bannerBounds.calculateOnScreenBounds();
                }
                final int[] array = new int[2];
                this.getLocationInWindow(array);
                this.attachToWindow((View)this);
                final int[] array2 = new int[2];
                this.getLocationInWindow(array2);
                this.setUnresizeParameters();
                final int n = array[0] - array2[0];
                final int n2 = array[1] - array2[1];
                bannerBounds.modifyLayoutParams(this.getLayoutParams());
                this.callSetTranslationX(n + bannerBounds.translationX);
                this.callSetTranslationY(n2 + bannerBounds.translationY);
                this.setCloseArea(dtoResizeParameters.customClosePosition);
            }
        }
    }
    
    void handleUnresize() {
        synchronized (this) {
            if (MMSDK.hasSetTranslationMethod()) {
                this.removeCloseTouchDelegate();
                if (!this.hasDefaultResizeParams()) {
                    final ViewGroup$LayoutParams layoutParams = this.getLayoutParams();
                    layoutParams.width = this.oldWidth;
                    layoutParams.height = this.oldHeight;
                    this.callSetTranslationX(0);
                    this.callSetTranslationY(0);
                    this.oldWidth = -50;
                    this.oldHeight = -50;
                }
                if (this.view != null) {
                    this.isResizing = true;
                    this.view.attachToContext((View)this);
                    final ViewParent parent = this.getParent();
                    if (parent != null && parent instanceof ViewGroup) {
                        final ViewGroup viewGroup = (ViewGroup)parent;
                        if (this.view.getParent() != null) {
                            viewGroup.removeView((View)this.view);
                        }
                    }
                    this.isResizing = false;
                }
            }
        }
    }
    
    @Deprecated
    public void onAnimationEnd(final Animation animation) {
        this.refreshAnimationimageView.setVisibility(8);
    }
    
    @Deprecated
    public void onAnimationRepeat(final Animation animation) {
    }
    
    @Deprecated
    public void onAnimationStart(final Animation animation) {
    }
    
    @Deprecated
    public void onClick(final View obj) {
        MMSDK.Log.d("On click for " + obj.getId() + " view, " + obj + " adimpl" + this.adImpl);
        this.onTouchEvent(MotionEvent.obtain(0L, System.currentTimeMillis(), 1, 0.0f, 0.0f, 0));
    }
    
    protected void onLayout(final boolean b, final int n, final int n2, final int n3, final int n4) {
        super.onLayout(b, n, n2, n3, n4);
        Utils.ThreadUtils.execute(new Runnable() {
            @Override
            public void run() {
                final float density = MMAdView.this.getContext().getResources().getDisplayMetrics().density;
                if (MMAdView.this.width <= 0) {
                    MMAdView.this.width = (int)(MMAdView.this.getWidth() / density);
                }
                if (MMAdView.this.height <= 0) {
                    MMAdView.this.height = (int)(MMAdView.this.getHeight() / density);
                }
            }
        });
    }
    
    @Override
    public void onWindowFocusChanged(final boolean b) {
        super.onWindowFocusChanged(b);
        if (b && this.adImpl != null && this.adImpl.controller != null) {
            if (this.adImpl.controller.webView == null) {
                this.adImpl.controller.webView = MMAdImplController.getWebViewFromExistingAdImpl(this.adImpl);
            }
            if (this.adImpl.controller.webView != null && !this.adImpl.controller.webView.isCurrentParent(this.adImpl.internalId)) {
                this.adImpl.controller.webView.removeFromParent();
                this.addView((View)this.adImpl.controller.webView);
            }
        }
    }
    
    public void setBackgroundColor(final int n) {
        super.setBackgroundColor(n);
        if (this.adImpl != null && this.adImpl.controller != null && this.adImpl.controller.webView != null) {
            this.adImpl.controller.webView.setBackgroundColor(n);
        }
    }
    
    public void setHeight(final int height) {
        this.height = height;
    }
    
    public void setTransitionType(final int transitionType) {
        this.transitionType = transitionType;
    }
    
    public void setWidth(final int width) {
        this.width = width;
    }
    
    class BannerBounds
    {
        DTOResizeParameters resizeParams;
        int translationX;
        int translationY;
        
        BannerBounds(final DTOResizeParameters resizeParams) {
            super();
            this.resizeParams = resizeParams;
            this.translationX = resizeParams.offsetX;
            this.translationY = resizeParams.offsetY;
        }
        
        private BoundsResult calculateBounds(final int n, final int n2, final int n3, final int n4) {
            int n5 = n;
            int size = n3;
            if (n2 + (n + n3) > n4) {
                n5 = n2 + (n4 - n3);
                if (n5 < 0) {
                    n5 = 0;
                    size = n4;
                }
                else if (n5 + n3 > n4) {
                    n5 = n4 - n3;
                }
            }
            else if (n2 > 0) {
                n5 = n2;
            }
            final BoundsResult boundsResult = new BoundsResult();
            boundsResult.translation = n5 - n;
            boundsResult.size = size;
            return boundsResult;
        }
        
        private void calculateXBounds() {
            final int[] array = new int[2];
            MMAdView.this.getLocationInWindow(array);
            final BoundsResult calculateBounds = this.calculateBounds(array[0], this.resizeParams.offsetX, this.resizeParams.width, this.resizeParams.xMax);
            this.resizeParams.width = calculateBounds.size;
            this.translationX = calculateBounds.translation;
        }
        
        private void calculateYBounds() {
            final int[] array = new int[2];
            MMAdView.this.getLocationInWindow(array);
            final BoundsResult calculateBounds = this.calculateBounds(array[1], this.resizeParams.offsetY, this.resizeParams.height, this.resizeParams.yMax);
            this.resizeParams.height = calculateBounds.size;
            this.translationY = calculateBounds.translation;
        }
        
        void calculateOnScreenBounds() {
            this.calculateXBounds();
            this.calculateYBounds();
        }
        
        ViewGroup$LayoutParams modifyLayoutParams(final ViewGroup$LayoutParams viewGroup$LayoutParams) {
            viewGroup$LayoutParams.width = this.resizeParams.width;
            viewGroup$LayoutParams.height = this.resizeParams.height;
            return viewGroup$LayoutParams;
        }
        
        private class BoundsResult
        {
            int size;
            int translation;
        }
    }
    
    class MMAdViewMMAdImpl extends MMLayoutMMAdImpl
    {
        public MMAdViewMMAdImpl(final Context context) {
            super(context);
            this.mmWebViewClientListener = new MMAdViewWebViewClientListener(this);
        }
        
        @Override
        void animateTransition() {
            if (MMAdView.this.refreshAnimationimageView.getDrawable() != null) {
                int n = MMAdView.this.transitionType;
                if (n == 4) {
                    n = new Random().nextInt(4);
                }
                Object o = null;
                switch (n) {
                    default: {
                        o = new AlphaAnimation(1.0f, 0.0f);
                        break;
                    }
                    case 2: {
                        o = new TranslateAnimation(0.0f, 0.0f, 0.0f, -MMAdView.this.getHeight());
                        break;
                    }
                    case 3: {
                        o = new TranslateAnimation(0.0f, 0.0f, 0.0f, (float)MMAdView.this.getHeight());
                        break;
                    }
                }
                ((Animation)o).setDuration(1000L);
                ((Animation)o).setAnimationListener((Animation$AnimationListener)MMAdView.this);
                ((Animation)o).setFillEnabled(true);
                ((Animation)o).setFillBefore(true);
                ((Animation)o).setFillAfter(true);
                MMSDK.runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        MMAdView.this.refreshAnimationimageView.startAnimation(o);
                    }
                });
            }
        }
        
        @Override
        String getReqType() {
            return "getad";
        }
        
        @Override
        String getRequestCompletedAction() {
            return "millennialmedia.action.ACTION_GETAD_SUCCEEDED";
        }
        
        @Override
        String getRequestFailedAction() {
            return "millennialmedia.action.ACTION_GETAD_FAILED";
        }
        
        @Override
        public boolean hasCachedVideoSupport() {
            return false;
        }
        
        @Override
        void insertUrlAdMetaValues(final Map<String, String> map) {
            if (MMAdView.this.height > 0) {
                map.put("hsht", String.valueOf(MMAdView.this.height));
            }
            if (MMAdView.this.width > 0) {
                map.put("hswd", String.valueOf(MMAdView.this.width));
            }
            super.insertUrlAdMetaValues(map);
        }
        
        @Override
        public boolean isBanner() {
            return true;
        }
        
        @Override
        boolean isLifecycleObservable() {
            return MMAdView.this.getWindowToken() != null;
        }
        
        @Override
        boolean isTransitionAnimated() {
            return MMAdView.this.transitionType != 0;
        }
        
        @Override
        void prepareTransition(final Bitmap imageBitmap) {
            MMAdView.this.refreshAnimationimageView.setImageBitmap(imageBitmap);
            MMAdView.this.refreshAnimationimageView.setVisibility(0);
            MMAdView.this.refreshAnimationimageView.bringToFront();
        }
    }
    
    private static class MMAdViewWebViewClientListener extends BasicWebViewClientListener
    {
        MMAdViewWebViewClientListener(final MMAdImpl mmAdImpl) {
            super(mmAdImpl);
        }
        
        @Override
        public void onPageFinished(final String s) {
            super.onPageFinished(s);
            final MMAdImpl mmAdImpl = this.adImplRef.get();
            if (mmAdImpl != null && mmAdImpl.isTransitionAnimated()) {
                mmAdImpl.animateTransition();
            }
        }
    }
    
    class ResizeView extends View
    {
        public ResizeView(final Context context) {
            super(context);
        }
        
        void attachToContext(final View view) {
            synchronized (this) {
                MMAdView.this.detachFromParent(view);
                if (this.getParent() != null && this.getParent() instanceof ViewGroup) {
                    ((ViewGroup)this.getParent()).addView(view);
                }
            }
        }
        
        protected void onRestoreInstanceState(final Parcelable parcelable) {
            MMSDK.Log.d("onRestoreInstanceState");
            MMAdView.this.attachToWindow((View)MMAdView.this);
            super.onRestoreInstanceState(parcelable);
        }
        
        protected Parcelable onSaveInstanceState() {
            MMSDK.Log.d("onSaveInstanceState");
            this.attachToContext((View)MMAdView.this);
            return super.onSaveInstanceState();
        }
    }
}
