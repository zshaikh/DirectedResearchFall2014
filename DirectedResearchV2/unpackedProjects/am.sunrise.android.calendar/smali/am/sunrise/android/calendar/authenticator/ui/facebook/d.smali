.class Lam/sunrise/android/calendar/authenticator/ui/facebook/d;
.super Ljava/lang/Object;
.source "FacebookFragment.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/authenticator/ui/facebook/c;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/authenticator/ui/facebook/c;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/d;->a:Lam/sunrise/android/calendar/authenticator/ui/facebook/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 6

    .prologue
    .line 63
    invoke-virtual {p2}, Lcom/facebook/SessionState;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/d;->a:Lam/sunrise/android/calendar/authenticator/ui/facebook/c;

    new-instance v1, Lam/sunrise/android/calendar/authenticator/ui/facebook/a;

    iget-object v2, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/d;->a:Lam/sunrise/android/calendar/authenticator/ui/facebook/c;

    iget-object v3, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/d;->a:Lam/sunrise/android/calendar/authenticator/ui/facebook/c;

    iget-object v4, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/d;->a:Lam/sunrise/android/calendar/authenticator/ui/facebook/c;

    invoke-virtual {v4}, Lam/sunrise/android/calendar/authenticator/ui/facebook/c;->b()Lam/sunrise/android/calendar/authenticator/ui/facebook/e;

    move-result-object v4

    invoke-virtual {p1}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lam/sunrise/android/calendar/authenticator/ui/facebook/a;-><init>(Lam/sunrise/android/calendar/authenticator/ui/facebook/c;Lam/sunrise/android/calendar/authenticator/ui/m;Lam/sunrise/android/calendar/authenticator/ui/facebook/e;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/authenticator/ui/facebook/c;->a(Lam/sunrise/android/calendar/authenticator/ui/facebook/c;Lam/sunrise/android/calendar/authenticator/ui/facebook/a;)Lam/sunrise/android/calendar/authenticator/ui/facebook/a;

    .line 66
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/d;->a:Lam/sunrise/android/calendar/authenticator/ui/facebook/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/authenticator/ui/facebook/c;->a(Lam/sunrise/android/calendar/authenticator/ui/facebook/c;)Lam/sunrise/android/calendar/authenticator/ui/facebook/a;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lam/sunrise/android/calendar/authenticator/ui/facebook/a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    sget-object v0, Lcom/facebook/SessionState;->CLOSED_LOGIN_FAILED:Lcom/facebook/SessionState;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/d;->a:Lam/sunrise/android/calendar/authenticator/ui/facebook/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/authenticator/ui/facebook/c;->b(Lam/sunrise/android/calendar/authenticator/ui/facebook/c;)Lam/sunrise/android/calendar/authenticator/ui/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 69
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/d;->a:Lam/sunrise/android/calendar/authenticator/ui/facebook/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/authenticator/ui/facebook/c;->b(Lam/sunrise/android/calendar/authenticator/ui/facebook/c;)Lam/sunrise/android/calendar/authenticator/ui/k;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lam/sunrise/android/calendar/authenticator/ui/k;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_2
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/d;->a:Lam/sunrise/android/calendar/authenticator/ui/facebook/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/authenticator/ui/facebook/c;->b(Lam/sunrise/android/calendar/authenticator/ui/facebook/c;)Lam/sunrise/android/calendar/authenticator/ui/k;

    move-result-object v0

    invoke-interface {v0}, Lam/sunrise/android/calendar/authenticator/ui/k;->d()V

    goto :goto_0
.end method
