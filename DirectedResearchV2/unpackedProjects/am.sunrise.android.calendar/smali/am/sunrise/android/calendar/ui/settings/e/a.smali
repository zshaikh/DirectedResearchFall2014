.class public Lam/sunrise/android/calendar/ui/settings/e/a;
.super Landroid/os/AsyncTask;
.source "ConnectServiceTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Lam/sunrise/android/calendar/ui/settings/e/c;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;Ljava/lang/String;Lam/sunrise/android/calendar/ui/settings/e/c;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/e/a;->a:Ljava/lang/ref/WeakReference;

    .line 65
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/settings/e/a;->b:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lam/sunrise/android/calendar/ui/settings/e/a;->c:Lam/sunrise/android/calendar/ui/settings/e/c;

    .line 67
    iput-object p4, p0, Lam/sunrise/android/calendar/ui/settings/e/a;->d:Ljava/lang/String;

    .line 68
    return-void
.end method

.method private a()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/e/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 136
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/i;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 73
    :try_start_0
    invoke-static {}, Lam/sunrise/android/calendar/api/a;->a()Lam/sunrise/android/calendar/api/c;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/e/a;->b:Ljava/lang/String;

    invoke-static {v1}, Lam/sunrise/android/calendar/api/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/settings/e/a;->c:Lam/sunrise/android/calendar/ui/settings/e/c;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/settings/e/c;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lam/sunrise/android/calendar/api/models/requests/SignInUpRequest;

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/settings/e/a;->d:Ljava/lang/String;

    invoke-direct {v3, v4}, Lam/sunrise/android/calendar/api/models/requests/SignInUpRequest;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2, v3}, Lam/sunrise/android/calendar/api/c;->a(Ljava/lang/String;Ljava/lang/String;Lam/sunrise/android/calendar/api/models/requests/SignInUpRequest;)Lretrofit/client/Response;

    move-result-object v0

    .line 76
    if-nez v0, :cond_0

    .line 77
    const-string v0, "ConnectServiceTask"

    const-string v1, "null response from backend"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1
    return-object v0

    .line 79
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lretrofit/client/Response;->getStatus()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 81
    :sswitch_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 84
    :sswitch_1
    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v0

    new-instance v1, Lam/sunrise/android/calendar/sync/events/SyncError;

    sget-object v2, Lam/sunrise/android/calendar/sync/events/SyncError$Error;->OAuth:Lam/sunrise/android/calendar/sync/events/SyncError$Error;

    invoke-direct {v1, v2}, Lam/sunrise/android/calendar/sync/events/SyncError;-><init>(Lam/sunrise/android/calendar/sync/events/SyncError$Error;)V

    invoke-virtual {v0, v1}, La/a/a/c;->c(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v1

    .line 93
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 94
    instance-of v0, v1, Lretrofit/RetrofitError;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 95
    check-cast v0, Lretrofit/RetrofitError;

    .line 96
    invoke-virtual {v0}, Lretrofit/RetrofitError;->isNetworkError()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    const-string v0, "ConnectServiceTask"

    const-string v1, "No network!"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 101
    :cond_1
    invoke-virtual {v0}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_2

    .line 103
    const-string v2, "ConnectServiceTask"

    const-string v3, "statusCode=%d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lretrofit/client/Response;->getStatus()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    invoke-virtual {v0}, Lretrofit/client/Response;->getStatus()I

    move-result v0

    const/16 v2, 0x191

    if-ne v0, v2, :cond_2

    .line 105
    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v0

    new-instance v2, Lam/sunrise/android/calendar/sync/events/SyncError;

    sget-object v3, Lam/sunrise/android/calendar/sync/events/SyncError$Error;->OAuth:Lam/sunrise/android/calendar/sync/events/SyncError$Error;

    invoke-direct {v2, v3}, Lam/sunrise/android/calendar/sync/events/SyncError;-><init>(Lam/sunrise/android/calendar/sync/events/SyncError$Error;)V

    invoke-virtual {v0, v2}, La/a/a/c;->c(Ljava/lang/Object;)V

    .line 109
    :cond_2
    const-string v0, "ConnectServiceTask"

    const-string v2, "Exception: %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-static {v0, v2, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 79
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x191 -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 124
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/settings/e/a;->a()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_0

    instance-of v1, v0, Lam/sunrise/android/calendar/ui/settings/e/b;

    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    check-cast v0, Lam/sunrise/android/calendar/ui/settings/e/b;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/e/a;->c:Lam/sunrise/android/calendar/ui/settings/e/c;

    invoke-interface {v0, v1}, Lam/sunrise/android/calendar/ui/settings/e/b;->b(Lam/sunrise/android/calendar/ui/settings/e/c;)V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    check-cast v0, Lam/sunrise/android/calendar/ui/settings/e/b;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/e/a;->c:Lam/sunrise/android/calendar/ui/settings/e/c;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/settings/e/a;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lam/sunrise/android/calendar/ui/settings/e/b;->a(Lam/sunrise/android/calendar/ui/settings/e/c;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/settings/e/a;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/settings/e/a;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 116
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/settings/e/a;->a()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_0

    instance-of v1, v0, Lam/sunrise/android/calendar/ui/settings/e/b;

    if-eqz v1, :cond_0

    .line 118
    check-cast v0, Lam/sunrise/android/calendar/ui/settings/e/b;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/e/a;->c:Lam/sunrise/android/calendar/ui/settings/e/c;

    invoke-interface {v0, v1}, Lam/sunrise/android/calendar/ui/settings/e/b;->a(Lam/sunrise/android/calendar/ui/settings/e/c;)V

    .line 120
    :cond_0
    return-void
.end method
