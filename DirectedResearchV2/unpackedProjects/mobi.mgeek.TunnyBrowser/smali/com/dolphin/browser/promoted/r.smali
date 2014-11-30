.class Lcom/dolphin/browser/promoted/r;
.super Ljava/lang/Object;
.source "PromotionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/promoted/p;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/promoted/p;)V
    .locals 0

    .prologue
    .line 586
    iput-object p1, p0, Lcom/dolphin/browser/promoted/r;->a:Lcom/dolphin/browser/promoted/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 590
    iget-object v0, p0, Lcom/dolphin/browser/promoted/r;->a:Lcom/dolphin/browser/promoted/p;

    iget-object v0, v0, Lcom/dolphin/browser/promoted/p;->a:Lcom/dolphin/browser/promoted/PromotionView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/promoted/PromotionView;->setVisibility(I)V

    .line 591
    return-void
.end method
