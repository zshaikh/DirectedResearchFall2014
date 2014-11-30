.class Lcom/dolphin/browser/webkit/management/l;
.super Ljava/lang/Object;
.source "EngineStrategyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/webkit/management/k;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/webkit/management/k;)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, Lcom/dolphin/browser/webkit/management/l;->a:Lcom/dolphin/browser/webkit/management/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/dolphin/browser/webkit/management/l;->a:Lcom/dolphin/browser/webkit/management/k;

    invoke-static {v0}, Lcom/dolphin/browser/webkit/management/k;->a(Lcom/dolphin/browser/webkit/management/k;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 477
    return-void
.end method
