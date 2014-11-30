.class Lcom/dolphin/browser/ui/view/f;
.super Ljava/lang/Object;
.source "FadeInRemoteImageView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/dolphin/browser/ui/view/f;->a:Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/f;->a:Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;

    new-instance v1, Lcom/dolphin/browser/ui/view/g;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/ui/view/g;-><init>(Lcom/dolphin/browser/ui/view/f;)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->post(Ljava/lang/Runnable;)Z

    .line 102
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 89
    return-void
.end method
