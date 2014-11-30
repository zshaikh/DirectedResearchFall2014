.class Lcom/dolphin/browser/tablist/bf;
.super Ljava/lang/Object;
.source "SwipeHelper.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/tablist/be;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/tablist/be;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/dolphin/browser/tablist/bf;->a:Lcom/dolphin/browser/tablist/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/dolphin/browser/tablist/bf;->a:Lcom/dolphin/browser/tablist/be;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/be;->a(Lcom/dolphin/browser/tablist/be;)Lcom/dolphin/browser/tablist/bj;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/tablist/bj;->c()V

    .line 342
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 337
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 332
    return-void
.end method
