.class Lcom/dolphin/browser/webkit/management/m;
.super Ljava/lang/Object;
.source "EngineStrategyManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/webkit/management/EngineStrategyManager;

.field private b:Landroid/content/DialogInterface$OnClickListener;

.field private c:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/webkit/management/EngineStrategyManager;Ljava/lang/Runnable;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/dolphin/browser/webkit/management/m;->a:Lcom/dolphin/browser/webkit/management/EngineStrategyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    iput-object p3, p0, Lcom/dolphin/browser/webkit/management/m;->b:Landroid/content/DialogInterface$OnClickListener;

    .line 378
    iput-object p2, p0, Lcom/dolphin/browser/webkit/management/m;->c:Ljava/lang/Runnable;

    .line 379
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/dolphin/browser/webkit/management/m;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/dolphin/browser/webkit/management/m;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/webkit/management/m;->b:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_1

    .line 387
    iget-object v0, p0, Lcom/dolphin/browser/webkit/management/m;->b:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 389
    :cond_1
    return-void
.end method
