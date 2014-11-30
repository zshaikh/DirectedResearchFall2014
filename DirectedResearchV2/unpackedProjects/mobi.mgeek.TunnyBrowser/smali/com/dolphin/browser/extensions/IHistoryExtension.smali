.class public interface abstract Lcom/dolphin/browser/extensions/IHistoryExtension;
.super Ljava/lang/Object;
.source "IHistoryExtension.java"


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
    .line 28
    const-class v0, Lcom/dolphin/browser/extensions/IHistoryExtension;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/extensions/IHistoryExtension;->TYPE_NAME:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract onVisited(Ljava/lang/String;)V
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end method
