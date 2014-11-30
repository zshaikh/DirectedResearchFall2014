.class public abstract Lam/sunrise/android/calendar/authenticator/ui/j;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "AuthenticatorFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 18
    if-lez p1, :cond_0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/j;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    instance-of v0, v0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/j;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;

    iput p1, v0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->a:I

    .line 21
    :cond_0
    return-void
.end method

.method public a(IILandroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method
