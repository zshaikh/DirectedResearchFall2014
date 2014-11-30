.class Lcom/dolphin/browser/webkit/management/o;
.super Ljava/lang/Object;
.source "EngineStrategyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/dolphin/browser/webkit/management/EngineStrategyManager$Html5TagCheckInerface;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/webkit/management/EngineStrategyManager$Html5TagCheckInerface;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 627
    iput-object p1, p0, Lcom/dolphin/browser/webkit/management/o;->b:Lcom/dolphin/browser/webkit/management/EngineStrategyManager$Html5TagCheckInerface;

    iput-object p2, p0, Lcom/dolphin/browser/webkit/management/o;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 629
    iget-object v0, p0, Lcom/dolphin/browser/webkit/management/o;->b:Lcom/dolphin/browser/webkit/management/EngineStrategyManager$Html5TagCheckInerface;

    iget-object v0, v0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager$Html5TagCheckInerface;->this$0:Lcom/dolphin/browser/webkit/management/EngineStrategyManager;

    const/4 v1, 0x0

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dolphin/browser/webkit/management/o;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, v3}, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->a(ZILandroid/content/Context;)Z

    .line 631
    return-void
.end method
