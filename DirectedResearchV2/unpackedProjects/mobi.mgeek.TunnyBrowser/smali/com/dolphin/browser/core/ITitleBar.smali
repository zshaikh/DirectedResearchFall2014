.class public interface abstract Lcom/dolphin/browser/core/ITitleBar;
.super Ljava/lang/Object;
.source "ITitleBar.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDKPublic;
.end annotation


# virtual methods
.method public abstract addTitleBarView(Landroid/view/View;I)Landroid/view/View;
.end method

.method public abstract hideFavIcon()V
.end method

.method public abstract hideRssIcon()V
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation
.end method

.method public abstract showFavIcon()V
.end method

.method public abstract showRssIcon()V
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation
.end method
