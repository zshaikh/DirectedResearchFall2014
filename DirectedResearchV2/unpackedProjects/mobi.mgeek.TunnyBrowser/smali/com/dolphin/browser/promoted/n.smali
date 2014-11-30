.class Lcom/dolphin/browser/promoted/n;
.super Ljava/lang/Object;
.source "PromotionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/dolphin/browser/promoted/PromotionView;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/promoted/PromotionView;I)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/dolphin/browser/promoted/n;->b:Lcom/dolphin/browser/promoted/PromotionView;

    iput p2, p0, Lcom/dolphin/browser/promoted/n;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/dolphin/browser/promoted/n;->b:Lcom/dolphin/browser/promoted/PromotionView;

    iget v1, p0, Lcom/dolphin/browser/promoted/n;->a:I

    invoke-static {v0, v1}, Lcom/dolphin/browser/promoted/PromotionView;->a(Lcom/dolphin/browser/promoted/PromotionView;I)V

    .line 232
    return-void
.end method
