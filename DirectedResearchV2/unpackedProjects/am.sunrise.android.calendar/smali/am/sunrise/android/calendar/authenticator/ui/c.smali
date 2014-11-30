.class Lam/sunrise/android/calendar/authenticator/ui/c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AuthenticatorActivity.java"


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lam/sunrise/android/calendar/authenticator/ui/c;->a:Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 315
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 316
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/c;->a:Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;

    invoke-static {v0}, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->a(Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 317
    return-void
.end method
