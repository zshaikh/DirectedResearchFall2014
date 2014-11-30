.class Lam/sunrise/android/calendar/authenticator/ui/a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AuthenticatorActivity.java"


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lam/sunrise/android/calendar/authenticator/ui/a;->a:Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 282
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 283
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/a;->a:Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;

    invoke-static {v0}, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->a(Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 284
    return-void
.end method
