.class Lcom/dolphin/browser/webkit/management/n;
.super Ljava/lang/Object;
.source "EngineStrategyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/dolphin/browser/webkit/management/EngineStrategyManager$Html5TagCheckHandler;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/webkit/management/EngineStrategyManager$Html5TagCheckHandler;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 596
    iput-object p1, p0, Lcom/dolphin/browser/webkit/management/n;->b:Lcom/dolphin/browser/webkit/management/EngineStrategyManager$Html5TagCheckHandler;

    iput-object p2, p0, Lcom/dolphin/browser/webkit/management/n;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 598
    iget-object v0, p0, Lcom/dolphin/browser/webkit/management/n;->b:Lcom/dolphin/browser/webkit/management/EngineStrategyManager$Html5TagCheckHandler;

    iget-object v0, v0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager$Html5TagCheckHandler;->b:Lcom/dolphin/browser/webkit/management/EngineStrategyManager;

    const/4 v1, 0x0

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dolphin/browser/webkit/management/n;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, v3}, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->a(ZILandroid/content/Context;)Z

    .line 600
    return-void
.end method
