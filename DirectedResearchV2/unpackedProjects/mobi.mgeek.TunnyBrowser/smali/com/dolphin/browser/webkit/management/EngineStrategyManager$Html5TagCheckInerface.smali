.class public final Lcom/dolphin/browser/webkit/management/EngineStrategyManager$Html5TagCheckInerface;
.super Ljava/lang/Object;
.source "EngineStrategyManager.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/KeepAll;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mView:Lcom/dolphin/browser/core/IWebView;

.field final synthetic this$0:Lcom/dolphin/browser/webkit/management/EngineStrategyManager;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/webkit/management/EngineStrategyManager;Lcom/dolphin/browser/core/IWebView;)V
    .locals 0

    .prologue
    .line 613
    iput-object p1, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager$Html5TagCheckInerface;->this$0:Lcom/dolphin/browser/webkit/management/EngineStrategyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 614
    iput-object p2, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager$Html5TagCheckInerface;->mView:Lcom/dolphin/browser/core/IWebView;

    .line 615
    return-void
.end method


# virtual methods
.method public onCanvasTagFound()V
    .locals 2

    .prologue
    .line 618
    iget-object v0, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager$Html5TagCheckInerface;->mView:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 623
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 624
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 627
    new-instance v1, Lcom/dolphin/browser/webkit/management/o;

    invoke-direct {v1, p0, v0}, Lcom/dolphin/browser/webkit/management/o;-><init>(Lcom/dolphin/browser/webkit/management/EngineStrategyManager$Html5TagCheckInerface;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 635
    :cond_0
    return-void
.end method
