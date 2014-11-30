.class Lcom/dolphin/browser/webkit/management/j;
.super Ljava/lang/Object;
.source "EngineStrategyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/webkit/management/EngineStrategyManager;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/webkit/management/EngineStrategyManager;I)V
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Lcom/dolphin/browser/webkit/management/j;->a:Lcom/dolphin/browser/webkit/management/EngineStrategyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    iput p2, p0, Lcom/dolphin/browser/webkit/management/j;->b:I

    .line 444
    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/webkit/management/EngineStrategyManager;ILcom/dolphin/browser/webkit/management/g;)V
    .locals 0

    .prologue
    .line 438
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/webkit/management/j;-><init>(Lcom/dolphin/browser/webkit/management/EngineStrategyManager;I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 448
    iget-object v0, p0, Lcom/dolphin/browser/webkit/management/j;->a:Lcom/dolphin/browser/webkit/management/EngineStrategyManager;

    invoke-static {v0}, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->a(Lcom/dolphin/browser/webkit/management/EngineStrategyManager;)V

    .line 449
    iget-object v0, p0, Lcom/dolphin/browser/webkit/management/j;->a:Lcom/dolphin/browser/webkit/management/EngineStrategyManager;

    iget v1, p0, Lcom/dolphin/browser/webkit/management/j;->b:I

    const-string v2, "cancel"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->a(Lcom/dolphin/browser/webkit/management/EngineStrategyManager;ILjava/lang/String;)V

    .line 450
    return-void
.end method
