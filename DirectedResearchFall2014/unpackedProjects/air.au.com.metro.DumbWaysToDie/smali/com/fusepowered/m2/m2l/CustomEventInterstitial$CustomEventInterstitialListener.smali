.class public interface abstract Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;
.super Ljava/lang/Object;
.source "CustomEventInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/m2l/CustomEventInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CustomEventInterstitialListener"
.end annotation


# virtual methods
.method public abstract onInterstitialClicked()V
.end method

.method public abstract onInterstitialDismissed()V
.end method

.method public abstract onInterstitialFailed(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V
.end method

.method public abstract onInterstitialLoaded()V
.end method

.method public abstract onInterstitialShown()V
.end method

.method public abstract onLeaveApplication()V
.end method
