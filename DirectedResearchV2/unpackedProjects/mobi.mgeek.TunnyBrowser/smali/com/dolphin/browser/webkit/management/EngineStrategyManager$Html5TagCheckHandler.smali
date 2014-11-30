.class public final Lcom/dolphin/browser/webkit/management/EngineStrategyManager$Html5TagCheckHandler;
.super Lcom/dolphin/browser/javascript/h;
.source "EngineStrategyManager.java"


# instance fields
.field final synthetic b:Lcom/dolphin/browser/webkit/management/EngineStrategyManager;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/webkit/management/EngineStrategyManager;)V
    .locals 0

    .prologue
    .line 577
    iput-object p1, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager$Html5TagCheckHandler;->b:Lcom/dolphin/browser/webkit/management/EngineStrategyManager;

    invoke-direct {p0}, Lcom/dolphin/browser/javascript/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 581
    const-string v0, "html5TagCheckInerface"

    return-object v0
.end method

.method public onCanvasTagFound()V
    .locals 3
    .annotation runtime Lcom/dolphin/browser/javascript/JavaScriptRequestAPI;
        a = "onCanvasTagFound"
        b = {}
    .end annotation

    .prologue
    .line 591
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    .line 592
    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 593
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 596
    new-instance v0, Lcom/dolphin/browser/webkit/management/n;

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/webkit/management/n;-><init>(Lcom/dolphin/browser/webkit/management/EngineStrategyManager$Html5TagCheckHandler;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 603
    :cond_0
    return-void
.end method
