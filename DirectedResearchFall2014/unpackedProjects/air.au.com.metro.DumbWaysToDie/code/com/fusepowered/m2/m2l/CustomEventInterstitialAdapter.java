package com.fusepowered.m2.m2l;

import android.content.*;
import android.os.*;
import java.util.*;

public class CustomEventInterstitialAdapter implements CustomEventInterstitialListener
{
    public static final int DEFAULT_INTERSTITIAL_TIMEOUT_DELAY = 30000;
    private Context mContext;
    private CustomEventInterstitial mCustomEventInterstitial;
    private CustomEventInterstitialAdapterListener mCustomEventInterstitialAdapterListener;
    private final Handler mHandler;
    private boolean mInvalidated;
    private Map<String, Object> mLocalExtras;
    private final MoPubInterstitial mMoPubInterstitial;
    private Map<String, String> mServerExtras;
    private final Runnable mTimeout;
    
    public CustomEventInterstitialAdapter(final MoPubInterstitial p0, final String p1, final String p2) {
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
        //    12: putfield        com/fusepowered/m2/m2l/CustomEventInterstitialAdapter.mHandler:Landroid/os/Handler;
        //    15: aload_0        
        //    16: aload_1        
        //    17: putfield        com/fusepowered/m2/m2l/CustomEventInterstitialAdapter.mMoPubInterstitial:Lcom/fusepowered/m2/m2l/MoPubInterstitial;
        //    20: aload_0        
        //    21: new             Ljava/util/HashMap;
        //    24: dup            
        //    25: invokespecial   java/util/HashMap.<init>:()V
        //    28: putfield        com/fusepowered/m2/m2l/CustomEventInterstitialAdapter.mServerExtras:Ljava/util/Map;
        //    31: aload_0        
        //    32: new             Ljava/util/HashMap;
        //    35: dup            
        //    36: invokespecial   java/util/HashMap.<init>:()V
        //    39: putfield        com/fusepowered/m2/m2l/CustomEventInterstitialAdapter.mLocalExtras:Ljava/util/Map;
        //    42: aload_0        
        //    43: aload_1        
        //    44: invokevirtual   com/fusepowered/m2/m2l/MoPubInterstitial.getActivity:()Landroid/app/Activity;
        //    47: putfield        com/fusepowered/m2/m2l/CustomEventInterstitialAdapter.mContext:Landroid/content/Context;
        //    50: aload_0        
        //    51: new             Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter$1;
        //    54: dup            
        //    55: aload_0        
        //    56: invokespecial   com/fusepowered/m2/m2l/CustomEventInterstitialAdapter$1.<init>:(Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;)V
        //    59: putfield        com/fusepowered/m2/m2l/CustomEventInterstitialAdapter.mTimeout:Ljava/lang/Runnable;
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
        //    86: invokestatic    com/fusepowered/m2/m2l/factories/CustomEventInterstitialFactory.create:(Ljava/lang/String;)Lcom/fusepowered/m2/m2l/CustomEventInterstitial;
        //    89: putfield        com/fusepowered/m2/m2l/CustomEventInterstitialAdapter.mCustomEventInterstitial:Lcom/fusepowered/m2/m2l/CustomEventInterstitial;
        //    92: aload_0        
        //    93: aload_3        
        //    94: invokestatic    com/fusepowered/m2/m2l/util/Json.jsonStringToMap:(Ljava/lang/String;)Ljava/util/Map;
        //    97: putfield        com/fusepowered/m2/m2l/CustomEventInterstitialAdapter.mServerExtras:Ljava/util/Map;
        //   100: aload_0        
        //   101: aload_1        
        //   102: invokevirtual   com/fusepowered/m2/m2l/MoPubInterstitial.getLocalExtras:()Ljava/util/Map;
        //   105: putfield        com/fusepowered/m2/m2l/CustomEventInterstitialAdapter.mLocalExtras:Ljava/util/Map;
        //   108: aload_1        
        //   109: invokevirtual   com/fusepowered/m2/m2l/MoPubInterstitial.getLocation:()Landroid/location/Location;
        //   112: ifnull          131
        //   115: aload_0        
        //   116: getfield        com/fusepowered/m2/m2l/CustomEventInterstitialAdapter.mLocalExtras:Ljava/util/Map;
        //   119: ldc             "location"
        //   121: aload_1        
        //   122: invokevirtual   com/fusepowered/m2/m2l/MoPubInterstitial.getLocation:()Landroid/location/Location;
        //   125: invokeinterface java/util/Map.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //   130: pop            
        //   131: aload_1        
        //   132: invokevirtual   com/fusepowered/m2/m2l/MoPubInterstitial.getMoPubInterstitialView:()Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;
        //   135: invokevirtual   com/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView.getAdViewController:()Lcom/fusepowered/m2/m2l/AdViewController;
        //   138: astore          9
        //   140: aload           9
        //   142: ifnull          162
        //   145: aload_0        
        //   146: getfield        com/fusepowered/m2/m2l/CustomEventInterstitialAdapter.mLocalExtras:Ljava/util/Map;
        //   149: ldc             "Ad-Configuration"
        //   151: aload           9
        //   153: invokevirtual   com/fusepowered/m2/m2l/AdViewController.getAdConfiguration:()Lcom/fusepowered/m2/m2l/AdConfiguration;
        //   156: invokeinterface java/util/Map.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //   161: pop            
        //   162: return         
        //   163: astore          5
        //   165: ldc             "MoPub"
        //   167: new             Ljava/lang/StringBuilder;
        //   170: dup            
        //   171: ldc             "Couldn't locate or instantiate custom event: "
        //   173: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   176: aload_2        
        //   177: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   180: ldc             "."
        //   182: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   185: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   188: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;)I
        //   191: pop            
        //   192: aload_0        
        //   193: getfield        com/fusepowered/m2/m2l/CustomEventInterstitialAdapter.mCustomEventInterstitialAdapterListener:Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter$CustomEventInterstitialAdapterListener;
        //   196: ifnull          92
        //   199: aload_0        
        //   200: getfield        com/fusepowered/m2/m2l/CustomEventInterstitialAdapter.mCustomEventInterstitialAdapterListener:Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter$CustomEventInterstitialAdapterListener;
        //   203: getstatic       com/fusepowered/m2/m2l/MoPubErrorCode.ADAPTER_NOT_FOUND:Lcom/fusepowered/m2/m2l/MoPubErrorCode;
        //   206: invokeinterface com/fusepowered/m2/m2l/CustomEventInterstitialAdapter$CustomEventInterstitialAdapterListener.onCustomEventInterstitialFailed:(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V
        //   211: goto            92
        //   214: astore          7
        //   216: ldc             "MoPub"
        //   218: new             Ljava/lang/StringBuilder;
        //   221: dup            
        //   222: ldc             "Failed to create Map from JSON: "
        //   224: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   227: aload_3        
        //   228: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   231: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   234: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;)I
        //   237: pop            
        //   238: goto            100
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  84     92     163    214    Ljava/lang/Exception;
        //  92     100    214    241    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0092:
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
        if (this.mMoPubInterstitial == null || this.mMoPubInterstitial.getAdTimeoutDelay() == null || this.mMoPubInterstitial.getAdTimeoutDelay() < 0) {
            return 30000;
        }
        return 1000 * this.mMoPubInterstitial.getAdTimeoutDelay();
    }
    
    void invalidate() {
        if (this.mCustomEventInterstitial != null) {
            this.mCustomEventInterstitial.onInvalidate();
        }
        this.mCustomEventInterstitial = null;
        this.mContext = null;
        this.mServerExtras = null;
        this.mLocalExtras = null;
        this.mCustomEventInterstitialAdapterListener = null;
        this.mInvalidated = true;
    }
    
    boolean isInvalidated() {
        return this.mInvalidated;
    }
    
    void loadInterstitial() {
        if (!this.isInvalidated() && this.mCustomEventInterstitial != null) {
            this.mCustomEventInterstitial.loadInterstitial(this.mContext, (CustomEventInterstitial.CustomEventInterstitialListener)this, this.mLocalExtras, this.mServerExtras);
            if (this.getTimeoutDelayMilliseconds() > 0) {
                this.mHandler.postDelayed(this.mTimeout, (long)this.getTimeoutDelayMilliseconds());
            }
        }
    }
    
    @Override
    public void onInterstitialClicked() {
        if (!this.isInvalidated() && this.mCustomEventInterstitialAdapterListener != null) {
            this.mCustomEventInterstitialAdapterListener.onCustomEventInterstitialClicked();
        }
    }
    
    @Override
    public void onInterstitialDismissed() {
        if (!this.isInvalidated() && this.mCustomEventInterstitialAdapterListener != null) {
            this.mCustomEventInterstitialAdapterListener.onCustomEventInterstitialDismissed();
        }
    }
    
    @Override
    public void onInterstitialFailed(MoPubErrorCode unspecified) {
        if (!this.isInvalidated() && this.mCustomEventInterstitialAdapterListener != null) {
            if (unspecified == null) {
                unspecified = MoPubErrorCode.UNSPECIFIED;
            }
            this.cancelTimeout();
            this.mCustomEventInterstitialAdapterListener.onCustomEventInterstitialFailed(unspecified);
        }
    }
    
    @Override
    public void onInterstitialLoaded() {
        if (!this.isInvalidated() && this.mCustomEventInterstitialAdapterListener != null) {
            this.cancelTimeout();
            this.mCustomEventInterstitialAdapterListener.onCustomEventInterstitialLoaded();
        }
    }
    
    @Override
    public void onInterstitialShown() {
        if (!this.isInvalidated() && this.mCustomEventInterstitialAdapterListener != null) {
            this.mCustomEventInterstitialAdapterListener.onCustomEventInterstitialShown();
        }
    }
    
    @Override
    public void onLeaveApplication() {
        this.onInterstitialClicked();
    }
    
    void setAdapterListener(final CustomEventInterstitialAdapterListener mCustomEventInterstitialAdapterListener) {
        this.mCustomEventInterstitialAdapterListener = mCustomEventInterstitialAdapterListener;
    }
    
    @Deprecated
    void setCustomEventInterstitial(final CustomEventInterstitial mCustomEventInterstitial) {
        this.mCustomEventInterstitial = mCustomEventInterstitial;
    }
    
    void showInterstitial() {
        if (this.isInvalidated() || this.mCustomEventInterstitial == null) {
            return;
        }
        this.mCustomEventInterstitial.showInterstitial();
    }
    
    interface CustomEventInterstitialAdapterListener
    {
        void onCustomEventInterstitialClicked();
        
        void onCustomEventInterstitialDismissed();
        
        void onCustomEventInterstitialFailed(MoPubErrorCode p0);
        
        void onCustomEventInterstitialLoaded();
        
        void onCustomEventInterstitialShown();
    }
}
