.class Lcom/dolphin/browser/tablist/bi;
.super Ljava/lang/Object;
.source "SwipeHelper.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/dolphin/browser/tablist/be;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/tablist/be;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Lcom/dolphin/browser/tablist/bi;->b:Lcom/dolphin/browser/tablist/be;

    iput-object p2, p0, Lcom/dolphin/browser/tablist/bi;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/dolphin/browser/tablist/bi;->b:Lcom/dolphin/browser/tablist/be;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/be;->a(Lcom/dolphin/browser/tablist/be;)Lcom/dolphin/browser/tablist/bj;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/tablist/bi;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/tablist/bj;->l(Landroid/view/View;)V

    .line 457
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 451
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 446
    return-void
.end method