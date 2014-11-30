.class Lam/sunrise/android/calendar/ui/settings/ae;
.super Ljava/lang/Object;
.source "SettingsAddAccountFragment.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/settings/w;

.field private b:Lam/sunrise/android/calendar/ui/settings/a/b;


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/ui/settings/w;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/settings/ae;->a:Lam/sunrise/android/calendar/ui/settings/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    return-void
.end method


# virtual methods
.method public a(Lam/sunrise/android/calendar/ui/settings/a/b;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/settings/ae;->b:Lam/sunrise/android/calendar/ui/settings/a/b;

    .line 111
    return-void
.end method

.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 4

    .prologue
    .line 115
    invoke-virtual {p2}, Lcom/facebook/SessionState;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    invoke-virtual {p1}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 118
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/ae;->a:Lam/sunrise/android/calendar/ui/settings/w;

    sget-object v2, Lam/sunrise/android/calendar/ui/settings/e/c;->a:Lam/sunrise/android/calendar/ui/settings/e/c;

    invoke-static {v1, v2, v0}, Lam/sunrise/android/calendar/ui/settings/w;->a(Lam/sunrise/android/calendar/ui/settings/w;Lam/sunrise/android/calendar/ui/settings/e/c;Ljava/lang/String;)V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/ae;->a:Lam/sunrise/android/calendar/ui/settings/w;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/ae;->a:Lam/sunrise/android/calendar/ui/settings/w;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/settings/ae;->b:Lam/sunrise/android/calendar/ui/settings/a/b;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/settings/a/b;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lam/sunrise/android/calendar/ui/settings/w;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to get Facebook Access Token."

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/ui/settings/w;->a(Lam/sunrise/android/calendar/ui/settings/w;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_2
    sget-object v0, Lcom/facebook/SessionState;->CLOSED_LOGIN_FAILED:Lcom/facebook/SessionState;

    if-ne p2, v0, :cond_0

    .line 124
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 125
    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 130
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cancel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/ae;->a:Lam/sunrise/android/calendar/ui/settings/w;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/settings/ae;->a:Lam/sunrise/android/calendar/ui/settings/w;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/settings/ae;->b:Lam/sunrise/android/calendar/ui/settings/a/b;

    invoke-virtual {v3}, Lam/sunrise/android/calendar/ui/settings/a/b;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Lam/sunrise/android/calendar/ui/settings/w;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lam/sunrise/android/calendar/ui/settings/w;->a(Lam/sunrise/android/calendar/ui/settings/w;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_3
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/ae;->a:Lam/sunrise/android/calendar/ui/settings/w;

    const v1, 0x7f0f008b

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/settings/w;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
