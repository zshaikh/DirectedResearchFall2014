.class Lcom/dolphin/browser/tabbar/a;
.super Ljava/lang/Object;
.source "AnimHighLightLinearLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/dolphin/browser/tabbar/a;->a:Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/a;->a:Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;

    iget-object v1, p0, Lcom/dolphin/browser/tabbar/a;->a:Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;

    invoke-static {v1}, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->a(Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 296
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 290
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 285
    return-void
.end method
