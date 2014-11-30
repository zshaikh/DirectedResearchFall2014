.class public interface abstract Lcom/dolphin/browser/extensions/IShareExtension;
.super Ljava/lang/Object;
.source "IShareExtension.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDK;
.end annotation


# static fields
.field public static final TYPE_NAME:Ljava/lang/String;
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/dolphin/browser/extensions/IShareExtension;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/extensions/IShareExtension;->TYPE_NAME:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getIcon()Landroid/graphics/drawable/Drawable;
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end method

.method public abstract getOrder()I
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end method

.method public abstract getPostButtonText()Ljava/lang/String;
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end method

.method public abstract getTitle()Ljava/lang/String;
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end method

.method public abstract onCreateFragment(Landroid/content/Context;Lcom/dolphin/browser/extensions/ShareDataProvider;Z)Landroid/support/v4/app/Fragment;
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end method

.method public abstract onPostMessagge(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Z
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end method

.method public abstract prePostMessage(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Z
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end method
