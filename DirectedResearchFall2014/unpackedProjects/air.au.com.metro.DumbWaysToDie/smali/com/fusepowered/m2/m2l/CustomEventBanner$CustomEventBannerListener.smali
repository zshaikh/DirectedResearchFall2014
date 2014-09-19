.class public interface abstract Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;
.super Ljava/lang/Object;
.source "CustomEventBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/m2l/CustomEventBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CustomEventBannerListener"
.end annotation


# virtual methods
.method public abstract onBannerClicked()V
.end method

.method public abstract onBannerCollapsed()V
.end method

.method public abstract onBannerExpanded()V
.end method

.method public abstract onBannerFailed(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V
.end method

.method public abstract onBannerLoaded(Landroid/view/View;)V
.end method

.method public abstract onLeaveApplication()V
.end method
