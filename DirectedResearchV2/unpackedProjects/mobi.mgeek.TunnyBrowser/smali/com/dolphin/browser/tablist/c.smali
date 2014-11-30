.class Lcom/dolphin/browser/tablist/c;
.super Ljava/lang/Object;
.source "AnimListItemParent.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/tablist/AnimListItemParent;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/tablist/AnimListItemParent;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/dolphin/browser/tablist/c;->a:Lcom/dolphin/browser/tablist/AnimListItemParent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/dolphin/browser/tablist/c;->a:Lcom/dolphin/browser/tablist/AnimListItemParent;

    new-instance v1, Lcom/dolphin/browser/tablist/d;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/tablist/d;-><init>(Lcom/dolphin/browser/tablist/c;)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/tablist/AnimListItemParent;->post(Ljava/lang/Runnable;)Z

    .line 167
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 149
    return-void
.end method
