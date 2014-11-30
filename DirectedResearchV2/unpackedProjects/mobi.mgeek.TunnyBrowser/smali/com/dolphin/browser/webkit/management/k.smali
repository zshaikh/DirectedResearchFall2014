.class Lcom/dolphin/browser/webkit/management/k;
.super Ljava/lang/Object;
.source "EngineStrategyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/webkit/management/EngineStrategyManager;

.field private b:Landroid/content/Context;

.field private c:Z

.field private d:I


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/webkit/management/EngineStrategyManager;ILandroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 460
    iput-object p1, p0, Lcom/dolphin/browser/webkit/management/k;->a:Lcom/dolphin/browser/webkit/management/EngineStrategyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    iput p2, p0, Lcom/dolphin/browser/webkit/management/k;->d:I

    .line 462
    iput-object p3, p0, Lcom/dolphin/browser/webkit/management/k;->b:Landroid/content/Context;

    .line 463
    iput-boolean p4, p0, Lcom/dolphin/browser/webkit/management/k;->c:Z

    .line 464
    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/webkit/management/EngineStrategyManager;ILandroid/content/Context;ZLcom/dolphin/browser/webkit/management/g;)V
    .locals 0

    .prologue
    .line 453
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dolphin/browser/webkit/management/k;-><init>(Lcom/dolphin/browser/webkit/management/EngineStrategyManager;ILandroid/content/Context;Z)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/webkit/management/k;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/dolphin/browser/webkit/management/k;->b:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 468
    iget-object v0, p0, Lcom/dolphin/browser/webkit/management/k;->a:Lcom/dolphin/browser/webkit/management/EngineStrategyManager;

    invoke-static {v0}, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->a(Lcom/dolphin/browser/webkit/management/EngineStrategyManager;)V

    .line 469
    iget-object v0, p0, Lcom/dolphin/browser/webkit/management/k;->a:Lcom/dolphin/browser/webkit/management/EngineStrategyManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->e()V

    .line 470
    iget-boolean v0, p0, Lcom/dolphin/browser/webkit/management/k;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/webkit/management/k;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 472
    :try_start_0
    new-instance v0, Lcom/dolphin/browser/webkit/management/l;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/webkit/management/l;-><init>(Lcom/dolphin/browser/webkit/management/k;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/webkit/management/k;->a:Lcom/dolphin/browser/webkit/management/EngineStrategyManager;

    iget v1, p0, Lcom/dolphin/browser/webkit/management/k;->d:I

    const-string v2, "download"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->a(Lcom/dolphin/browser/webkit/management/EngineStrategyManager;ILjava/lang/String;)V

    .line 484
    return-void

    .line 479
    :catch_0
    move-exception v0

    goto :goto_0
.end method
