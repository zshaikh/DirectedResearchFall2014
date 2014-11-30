.class Lam/sunrise/android/calendar/authenticator/ui/e;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AuthenticatorActivity.java"


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lam/sunrise/android/calendar/authenticator/ui/e;->a:Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 384
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 385
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/e;->a:Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;

    invoke-static {v0}, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->c(Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/e;->a:Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;

    invoke-static {v1}, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->d(Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x9c4

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/view/ak;->a(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 386
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 378
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 379
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/e;->a:Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;

    invoke-static {v0}, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->c(Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 380
    return-void
.end method
