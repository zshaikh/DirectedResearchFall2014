.class public interface abstract Lcom/dolphin/browser/core/ITabListener;
.super Ljava/lang/Object;
.source "ITabListener.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDKPublic;
.end annotation

.annotation build Lcom/dolphin/browser/annotation/KeepAll;
.end annotation


# virtual methods
.method public abstract onTabCountChanged(Lcom/dolphin/browser/core/TabManager;)V
.end method

.method public abstract onTabIconChanged(Lcom/dolphin/browser/core/ITab;Landroid/graphics/Bitmap;)V
.end method

.method public abstract onTabProgressChanged(Lcom/dolphin/browser/core/ITab;I)V
.end method

.method public abstract onTabSelectionChanged(Lcom/dolphin/browser/core/ITab;Lcom/dolphin/browser/core/ITab;)V
.end method

.method public abstract onTabTitleChanged(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;)V
.end method

.method public abstract onTabUrlChanged(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;)V
.end method
