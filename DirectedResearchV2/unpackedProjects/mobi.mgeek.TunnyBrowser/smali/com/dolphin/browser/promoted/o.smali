.class Lcom/dolphin/browser/promoted/o;
.super Ljava/lang/Object;
.source "PromotionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/promoted/PromotionView;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/promoted/PromotionView;)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lcom/dolphin/browser/promoted/o;->a:Lcom/dolphin/browser/promoted/PromotionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 389
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/dolphin/browser/promoted/o;->a:Lcom/dolphin/browser/promoted/PromotionView;

    invoke-static {v2}, Lcom/dolphin/browser/promoted/PromotionView;->a(Lcom/dolphin/browser/promoted/PromotionView;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/dolphin/browser/promoted/o;->a:Lcom/dolphin/browser/promoted/PromotionView;

    invoke-static {v0}, Lcom/dolphin/browser/promoted/PromotionView;->b(Lcom/dolphin/browser/promoted/PromotionView;)V

    .line 392
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v0

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 393
    return-void
.end method
