.class Lam/sunrise/android/calendar/ui/widgets/ac;
.super Ljava/lang/Object;
.source "NowButton.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/widgets/NowButton;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/widgets/NowButton;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/ac;->a:Lam/sunrise/android/calendar/ui/widgets/NowButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/ac;->a:Lam/sunrise/android/calendar/ui/widgets/NowButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/NowButton;->a(Lam/sunrise/android/calendar/ui/widgets/NowButton;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 197
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 205
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/ac;->a:Lam/sunrise/android/calendar/ui/widgets/NowButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/NowButton;->setVisibility(I)V

    .line 192
    return-void
.end method
