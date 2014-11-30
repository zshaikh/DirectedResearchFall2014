.class Lam/sunrise/android/calendar/ui/birthdays/j;
.super Ljava/lang/Object;
.source "BirthdaysFragment.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/birthdays/i;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/birthdays/i;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/birthdays/j;->a:Lam/sunrise/android/calendar/ui/birthdays/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 4

    .prologue
    const v3, 0x7f0f0014

    .line 180
    invoke-virtual {p2}, Lcom/facebook/SessionState;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    invoke-virtual {p1}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 183
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/birthdays/j;->a:Lam/sunrise/android/calendar/ui/birthdays/i;

    sget-object v2, Lam/sunrise/android/calendar/ui/settings/e/c;->a:Lam/sunrise/android/calendar/ui/settings/e/c;

    invoke-static {v1, v2, v0}, Lam/sunrise/android/calendar/ui/birthdays/i;->a(Lam/sunrise/android/calendar/ui/birthdays/i;Lam/sunrise/android/calendar/ui/settings/e/c;Ljava/lang/String;)V

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/birthdays/j;->a:Lam/sunrise/android/calendar/ui/birthdays/i;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/birthdays/j;->a:Lam/sunrise/android/calendar/ui/birthdays/i;

    invoke-virtual {v1, v3}, Lam/sunrise/android/calendar/ui/birthdays/i;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to get Facebook Access Token."

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/ui/birthdays/i;->a(Lam/sunrise/android/calendar/ui/birthdays/i;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :cond_2
    sget-object v0, Lcom/facebook/SessionState;->CLOSED_LOGIN_FAILED:Lcom/facebook/SessionState;

    if-ne p2, v0, :cond_0

    .line 189
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 190
    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 195
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cancel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 199
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/birthdays/j;->a:Lam/sunrise/android/calendar/ui/birthdays/i;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/birthdays/j;->a:Lam/sunrise/android/calendar/ui/birthdays/i;

    invoke-virtual {v2, v3}, Lam/sunrise/android/calendar/ui/birthdays/i;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lam/sunrise/android/calendar/ui/birthdays/i;->a(Lam/sunrise/android/calendar/ui/birthdays/i;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :cond_3
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/birthdays/j;->a:Lam/sunrise/android/calendar/ui/birthdays/i;

    const v1, 0x7f0f008b

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/birthdays/i;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
