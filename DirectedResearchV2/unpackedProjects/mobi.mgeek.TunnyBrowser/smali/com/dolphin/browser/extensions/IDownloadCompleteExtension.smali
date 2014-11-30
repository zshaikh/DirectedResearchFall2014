.class public interface abstract Lcom/dolphin/browser/extensions/IDownloadCompleteExtension;
.super Ljava/lang/Object;
.source "IDownloadCompleteExtension.java"


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
    .line 17
    const-class v0, Lcom/dolphin/browser/extensions/IDownloadCompleteExtension;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/extensions/IDownloadCompleteExtension;->TYPE_NAME:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract onDownloadEnded(Landroid/content/Context;Landroid/os/Bundle;)V
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end method
