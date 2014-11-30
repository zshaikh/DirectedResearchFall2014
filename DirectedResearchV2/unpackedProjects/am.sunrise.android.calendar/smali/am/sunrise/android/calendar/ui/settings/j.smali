.class Lam/sunrise/android/calendar/ui/settings/j;
.super Ljava/lang/Object;
.source "SettingsAccountInfoFragment.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/settings/i;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/settings/i;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/settings/j;->a:Lam/sunrise/android/calendar/ui/settings/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 4

    .prologue
    .line 65
    invoke-virtual {p2}, Lcom/facebook/SessionState;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/j;->a:Lam/sunrise/android/calendar/ui/settings/i;

    sget-object v1, Lam/sunrise/android/calendar/ui/settings/e/c;->a:Lam/sunrise/android/calendar/ui/settings/e/c;

    invoke-virtual {p1}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/ui/settings/i;->a(Lam/sunrise/android/calendar/ui/settings/i;Lam/sunrise/android/calendar/ui/settings/e/c;Ljava/lang/String;)V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    sget-object v0, Lcom/facebook/SessionState;->CLOSED_LOGIN_FAILED:Lcom/facebook/SessionState;

    if-ne p2, v0, :cond_0

    .line 69
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 70
    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 75
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cancel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/j;->a:Lam/sunrise/android/calendar/ui/settings/i;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/settings/j;->a:Lam/sunrise/android/calendar/ui/settings/i;

    const v3, 0x7f0f0014

    invoke-virtual {v2, v3}, Lam/sunrise/android/calendar/ui/settings/i;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lam/sunrise/android/calendar/ui/settings/i;->a(Lam/sunrise/android/calendar/ui/settings/i;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_2
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/j;->a:Lam/sunrise/android/calendar/ui/settings/i;

    const v1, 0x7f0f011c

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/settings/i;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
