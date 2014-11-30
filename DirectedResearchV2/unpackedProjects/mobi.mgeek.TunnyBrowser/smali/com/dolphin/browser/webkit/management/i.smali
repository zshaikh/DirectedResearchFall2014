.class Lcom/dolphin/browser/webkit/management/i;
.super Ljava/lang/Object;
.source "EngineStrategyManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/webkit/management/EngineStrategyManager;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/webkit/management/EngineStrategyManager;I)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lcom/dolphin/browser/webkit/management/i;->a:Lcom/dolphin/browser/webkit/management/EngineStrategyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    iput p2, p0, Lcom/dolphin/browser/webkit/management/i;->b:I

    .line 430
    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/webkit/management/EngineStrategyManager;ILcom/dolphin/browser/webkit/management/g;)V
    .locals 0

    .prologue
    .line 424
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/webkit/management/i;-><init>(Lcom/dolphin/browser/webkit/management/EngineStrategyManager;I)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    .line 434
    iget-object v0, p0, Lcom/dolphin/browser/webkit/management/i;->a:Lcom/dolphin/browser/webkit/management/EngineStrategyManager;

    iget v1, p0, Lcom/dolphin/browser/webkit/management/i;->b:I

    const-string v2, "back"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->a(Lcom/dolphin/browser/webkit/management/EngineStrategyManager;ILjava/lang/String;)V

    .line 435
    return-void
.end method
