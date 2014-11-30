.class public Lam/sunrise/android/calendar/authenticator/ui/a/a;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "AccountAuthenticatorFragmentActivity.java"


# instance fields
.field private a:Landroid/accounts/AccountAuthenticatorResponse;

.field private b:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    .line 21
    iput-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/a/a;->a:Landroid/accounts/AccountAuthenticatorResponse;

    .line 22
    iput-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/a/a;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lam/sunrise/android/calendar/authenticator/ui/a/a;->b:Landroid/os/Bundle;

    .line 26
    return-void
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/a/a;->a:Landroid/accounts/AccountAuthenticatorResponse;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/a/a;->b:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/a/a;->a:Landroid/accounts/AccountAuthenticatorResponse;

    iget-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/a/a;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    .line 49
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/a/a;->a:Landroid/accounts/AccountAuthenticatorResponse;

    .line 51
    :cond_0
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->finish()V

    .line 52
    return-void

    .line 46
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/a/a;->a:Landroid/accounts/AccountAuthenticatorResponse;

    const/4 v1, 0x4

    const-string v2, "canceled"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/a/a;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "accountAuthenticatorResponse"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountAuthenticatorResponse;

    iput-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/a/a;->a:Landroid/accounts/AccountAuthenticatorResponse;

    .line 35
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/a/a;->a:Landroid/accounts/AccountAuthenticatorResponse;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/a/a;->a:Landroid/accounts/AccountAuthenticatorResponse;

    invoke-virtual {v0}, Landroid/accounts/AccountAuthenticatorResponse;->onRequestContinued()V

    .line 38
    :cond_0
    return-void
.end method
