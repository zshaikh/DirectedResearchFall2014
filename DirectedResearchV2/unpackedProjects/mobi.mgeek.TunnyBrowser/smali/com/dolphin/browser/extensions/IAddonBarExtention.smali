.class public interface abstract Lcom/dolphin/browser/extensions/IAddonBarExtention;
.super Ljava/lang/Object;
.source "IAddonBarExtention.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDK;
.end annotation


# static fields
.field public static final TYPE_NAME:Ljava/lang/String; = "IAddonBarExtention"
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field


# virtual methods
.method public abstract getAddonBarIcon()Landroid/graphics/drawable/Drawable;
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end method

.method public abstract getAddonBarTitle()Ljava/lang/String;
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end method

.method public abstract onAddonClick(Landroid/content/Context;)V
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end method

.method public abstract wantToShowInAddonBar()Z
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end method
