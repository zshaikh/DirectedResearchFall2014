.class final Lcom/twitter/android/ao;
.super Lcom/twitter/android/client/f;


# instance fields
.field private synthetic a:Lcom/twitter/android/LoginActivity;


# direct methods
.method private constructor <init>(Lcom/twitter/android/LoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/ao;->a:Lcom/twitter/android/LoginActivity;

    invoke-direct {p0}, Lcom/twitter/android/client/f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/LoginActivity;Lcom/twitter/android/ej;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/android/ao;-><init>(Lcom/twitter/android/LoginActivity;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/twitter/android/ao;->a:Lcom/twitter/android/LoginActivity;

    invoke-virtual {v0}, Lcom/twitter/android/LoginActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/ao;->a:Lcom/twitter/android/LoginActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/LoginActivity;->removeDialog(I)V

    iget-object v0, p0, Lcom/twitter/android/ao;->a:Lcom/twitter/android/LoginActivity;

    iget-boolean v0, v0, Lcom/twitter/android/LoginActivity;->a:Z

    iget-object v1, p0, Lcom/twitter/android/ao;->a:Lcom/twitter/android/LoginActivity;

    invoke-virtual {v1}, Lcom/twitter/android/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sparse-switch p3, :sswitch_data_0

    iget-object v0, p0, Lcom/twitter/android/ao;->a:Lcom/twitter/android/LoginActivity;

    invoke-virtual {v0, p3}, Lcom/twitter/android/LoginActivity;->a(I)V

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_1

    const-string v0, "accountAuthenticatorResponse"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountAuthenticatorResponse;

    if-eqz v0, :cond_1

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "authAccount"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "accountType"

    const-string v5, "com.twitter.android.auth.login"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "account_user_info"

    invoke-virtual {v3, v4, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    :cond_1
    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/twitter/android/ao;->a:Lcom/twitter/android/LoginActivity;

    invoke-virtual {v1, v0}, Lcom/twitter/android/LoginActivity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    iget-object v0, p0, Lcom/twitter/android/ao;->a:Lcom/twitter/android/LoginActivity;

    const/4 v1, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "account"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/LoginActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/twitter/android/ao;->a:Lcom/twitter/android/LoginActivity;

    invoke-virtual {v0}, Lcom/twitter/android/LoginActivity;->finish()V

    goto :goto_0

    :sswitch_1
    if-eqz v0, :cond_3

    const-string v0, "accountAuthenticatorResponse"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountAuthenticatorResponse;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p3, p4}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/twitter/android/ao;->a:Lcom/twitter/android/LoginActivity;

    invoke-virtual {v0, p3}, Lcom/twitter/android/LoginActivity;->a(I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x190 -> :sswitch_1
    .end sparse-switch
.end method
