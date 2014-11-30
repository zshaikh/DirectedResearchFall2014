.class public interface abstract Lcom/dolphin/browser/extensions/IBookmarkExtension;
.super Ljava/lang/Object;
.source "IBookmarkExtension.java"


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
    .line 31
    const-class v0, Lcom/dolphin/browser/extensions/IBookmarkExtension;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/extensions/IBookmarkExtension;->TYPE_NAME:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract onChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end method

.method public abstract onChildReordered(Ljava/lang/String;Landroid/os/Bundle;)V
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end method

.method public abstract onCreated(Ljava/lang/String;)V
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end method

.method public abstract onImportBegan()V
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end method

.method public abstract onImportFinished()V
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end method

.method public abstract onMoved(Ljava/lang/String;Landroid/os/Bundle;)V
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end method

.method public abstract onRemoved(Ljava/lang/String;)V
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end method
