package com.fusepowered.m2.m2l;

import android.content.*;
import android.os.*;
import java.util.*;
import android.view.*;

public class CustomEventBannerAdapter implements CustomEventBannerListener
{
    public static final int DEFAULT_BANNER_TIMEOUT_DELAY = 10000;
    private Context mContext;
    private CustomEventBanner mCustomEventBanner;
    private final Handler mHandler;
    private boolean mInvalidated;
    private Map<String, Object> mLocalExtras;
    private MoPubView mMoPubView;
    private Map<String, String> mServerExtras;
    private boolean mStoredAutorefresh;
    private final Runnable mTimeout;
    
    public CustomEventBannerAdapter(final MoPubView p0, final String p1, final String p2) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: invokespecial   java/lang/Object.<init>:()V
        //     4: aload_0        
        //     5: new             Landroid/os/Handler;
        //     8: dup            
        //     9: invokespecial   android/os/Handler.<init>:()V
        //    12: putfield        com/fusepowered/m2/m2l/CustomEventBannerAdapter.mHandler:Landroid/os/Handler;
        //    15: aload_0        
        //    16: aload_1        
        //    17: putfield        com/fusepowered/m2/m2l/CustomEventBannerAdapter.mMoPubView:Lcom/fusepowered/m2/m2l/MoPubView;
        //    20: aload_0        
        //    21: aload_1        
        //    22: invokevirtual   com/fusepowered/m2/m2l/MoPubView.getContext:()Landroid/content/Context;
        //    25: putfield        com/fusepowered/m2/m2l/CustomEventBannerAdapter.mContext:Landroid/content/Context;
        //    28: aload_0        
        //    29: new             Ljava/util/HashMap;
        //    32: dup            
        //    33: invokespecial   java/util/HashMap.<init>:()V
        //    36: putfield        com/fusepowered/m2/m2l/CustomEventBannerAdapter.mLocalExtras:Ljava/util/Map;
        //    39: aload_0        
        //    40: new             Ljava/util/HashMap;
        //    43: dup            
        //    44: invokespecial   java/util/HashMap.<init>:()V
        //    47: putfield        com/fusepowered/m2/m2l/CustomEventBannerAdapter.mServerExtras:Ljava/util/Map;
        //    50: aload_0        
        //    51: new             Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter$1;
        //    54: dup            
        //    55: aload_0        
        //    56: invokespecial   com/fusepowered/m2/m2l/CustomEventBannerAdapter$1.<init>:(Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;)V
        //    59: putfield        com/fusepowered/m2/m2l/CustomEventBannerAdapter.mTimeout:Ljava/lang/Runnable;
        //    62: ldc             "MoPub"
        //    64: new             Ljava/lang/StringBuilder;
        //    67: dup            
        //    68: ldc             "Attempting to invoke custom event: "
        //    70: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //    73: aload_2        
        //    74: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    77: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    80: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;)I
        //    83: pop            
        //    84: aload_0        
        //    85: aload_2        
        //    86: invokestatic    com/fusepowered/m2/m2l/factories/CustomEventBannerFactory.create:(Ljava/lang/String;)Lcom/fusepowered/m2/m2l/CustomEventBanner;
        //    89: putfield        com/fusepowered/m2/m2l/CustomEventBannerAdapter.mCustomEventBanner:Lcom/fusepowered/m2/m2l/CustomEventBanner;
        //    92: aload_0        
        //    93: aload_3        
        //    94: invokestatic    com/fusepowered/m2/m2l/util/Json.jsonStringToMap:(Ljava/lang/String;)Ljava/util/Map;
        //    97: putfield        com/fusepowered/m2/m2l/CustomEventBannerAdapter.mServerExtras:Ljava/util/Map;
        //   100: aload_0        
        //   101: aload_0        
        //   102: getfield        com/fusepowered/m2/m2l/CustomEventBannerAdapter.mMoPubView:Lcom/fusepowered/m2/m2l/MoPubView;
        //   105: invokevirtual   com/fusepowered/m2/m2l/MoPubView.getLocalExtras:()Ljava/util/Map;
        //   108: putfield        com/fusepowered/m2/m2l/CustomEventBannerAdapter.mLocalExtras:Ljava/util/Map;
        //   111: aload_0        
        //   112: getfield        com/fusepowered/m2/m2l/CustomEventBannerAdapter.mMoPubView:Lcom/fusepowered/m2/m2l/MoPubView;
        //   115: invokevirtual   com/fusepowered/m2/m2l/MoPubView.getLocation:()Landroid/location/Location;
        //   118: ifnull          140
        //   121: aload_0        
        //   122: getfield        com/fusepowered/m2/m2l/CustomEventBannerAdapter.mLocalExtras:Ljava/util/Map;
        //   125: ldc             "location"
        //   127: aload_0        
        //   128: getfield        com/fusepowered/m2/m2l/CustomEventBannerAdapter.mMoPubView:Lcom/fusepowered/m2/m2l/MoPubView;
        //   131: invokevirtual   com/fusepowered/m2/m2l/MoPubView.getLocation:()Landroid/location/Location;
        //   134: invokeinterface java/util/Map.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //   139: pop            
        //   140: aload_0        
        //   141: getfield        com/fusepowered/m2/m2l/CustomEventBannerAdapter.mMoPubView:Lcom/fusepowered/m2/m2l/MoPubView;
        //   144: invokevirtual   com/fusepowered/m2/m2l/MoPubView.getAdViewController:()Lcom/fusepowered/m2/m2l/AdViewController;
        //   147: ifnull          172
        //   150: aload_0        
        //   151: getfield        com/fusepowered/m2/m2l/CustomEventBannerAdapter.mLocalExtras:Ljava/util/Map;
        //   154: ldc             "Ad-Configuration"
        //   156: aload_0        
        //   157: getfield        com/fusepowered/m2/m2l/CustomEventBannerAdapter.mMoPubView:Lcom/fusepowered/m2/m2l/MoPubView;
        //   160: invokevirtual   com/fusepowered/m2/m2l/MoPubView.getAdViewController:()Lcom/fusepowered/m2/m2l/AdViewController;
        //   163: invokevirtual   com/fusepowered/m2/m2l/AdViewController.getAdConfiguration:()Lcom/fusepowered/m2/m2l/AdConfiguration;
        //   166: invokeinterface java/util/Map.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //   171: pop            
        //   172: return         
        //   173: astore          5
        //   175: ldc             "MoPub"
        //   177: new             Ljava/lang/StringBuilder;
        //   180: dup            
        //   181: ldc             "Couldn't locate or instantiate custom event: "
        //   183: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   186: aload_2        
        //   187: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   190: ldc             "."
        //   192: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   195: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   198: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;)I
        //   201: pop            
        //   202: aload_0        
        //   203: getfield        com/fusepowered/m2/m2l/CustomEventBannerAdapter.mMoPubView:Lcom/fusepowered/m2/m2l/MoPubView;
        //   206: getstatic       com/fusepowered/m2/m2l/MoPubErrorCode.ADAPTER_NOT_FOUND:Lcom/fusepowered/m2/m2l/MoPubErrorCode;
        //   209: invokevirtual   com/fusepowered/m2/m2l/MoPubView.loadFailUrl:(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V
        //   212: return         
        //   213: astore          7
        //   215: ldc             "MoPub"
        //   217: new             Ljava/lang/StringBuilder;
        //   220: dup            
        //   221: ldc             "Failed to create Map from JSON: "
        //   223: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   226: aload_3        
        //   227: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   230: aload           7
        //   232: invokevirtual   java/lang/Exception.toString:()Ljava/lang/String;
        //   235: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   238: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   241: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;)I
        //   244: pop            
        //   245: goto            100
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  84     92     173    213    Ljava/lang/Exception;
        //  92     100    213    248    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0100:
        //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
        //     at com.strobel.decompiler.ast.AstOptimizer.mergeDisparateObjectInitializations(AstOptimizer.java:2592)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:235)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
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
    
    private void cancelTimeout() {
        this.mHandler.removeCallbacks(this.mTimeout);
    }
    
    private int getTimeoutDelayMilliseconds() {
        if (this.mMoPubView == null || this.mMoPubView.getAdTimeoutDelay() == null || this.mMoPubView.getAdTimeoutDelay() < 0) {
            return 10000;
        }
        return 1000 * this.mMoPubView.getAdTimeoutDelay();
    }
    
    void invalidate() {
        if (this.mCustomEventBanner != null) {
            this.mCustomEventBanner.onInvalidate();
        }
        this.mContext = null;
        this.mCustomEventBanner = null;
        this.mLocalExtras = null;
        this.mServerExtras = null;
        this.mInvalidated = true;
    }
    
    boolean isInvalidated() {
        return this.mInvalidated;
    }
    
    void loadAd() {
        if (!this.isInvalidated() && this.mCustomEventBanner != null) {
            this.mCustomEventBanner.loadBanner(this.mContext, (CustomEventBanner.CustomEventBannerListener)this, this.mLocalExtras, this.mServerExtras);
            if (this.getTimeoutDelayMilliseconds() > 0) {
                this.mHandler.postDelayed(this.mTimeout, (long)this.getTimeoutDelayMilliseconds());
            }
        }
    }
    
    @Override
    public void onBannerClicked() {
        if (!this.isInvalidated() && this.mMoPubView != null) {
            this.mMoPubView.registerClick();
        }
    }
    
    @Override
    public void onBannerCollapsed() {
        if (this.isInvalidated()) {
            return;
        }
        this.mMoPubView.setAutorefreshEnabled(this.mStoredAutorefresh);
        this.mMoPubView.adClosed();
    }
    
    @Override
    public void onBannerExpanded() {
        if (this.isInvalidated()) {
            return;
        }
        this.mStoredAutorefresh = this.mMoPubView.getAutorefreshEnabled();
        this.mMoPubView.setAutorefreshEnabled(false);
        this.mMoPubView.adPresentedOverlay();
    }
    
    @Override
    public void onBannerFailed(MoPubErrorCode unspecified) {
        if (!this.isInvalidated() && this.mMoPubView != null) {
            if (unspecified == null) {
                unspecified = MoPubErrorCode.UNSPECIFIED;
            }
            this.cancelTimeout();
            this.mMoPubView.loadFailUrl(unspecified);
        }
    }
    
    @Override
    public void onBannerLoaded(final View adContentView) {
        if (!this.isInvalidated() && this.mMoPubView != null) {
            this.cancelTimeout();
            this.mMoPubView.nativeAdLoaded();
            this.mMoPubView.setAdContentView(adContentView);
            if (!(adContentView instanceof HtmlBannerWebView)) {
                this.mMoPubView.trackNativeImpression();
            }
        }
    }
    
    @Override
    public void onLeaveApplication() {
        this.onBannerClicked();
    }
}
