.class public Lam/sunrise/android/calendar/ui/settings/e/d;
.super Landroid/os/AsyncTask;
.source "DisconnectServiceTask.java"


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
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/e/d;->a:Landroid/content/Context;

    .line 45
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/e/d;->b:Ljava/lang/ref/WeakReference;

    .line 46
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/settings/e/d;->c:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lam/sunrise/android/calendar/ui/settings/e/d;->d:Ljava/lang/String;

    .line 48
    return-void
.end method

.method private a()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/e/d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 117
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

    .line 121
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

    .line 53
    :try_start_0
    invoke-static {}, Lam/sunrise/android/calendar/api/a;->a()Lam/sunrise/android/calendar/api/c;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/e/d;->c:Ljava/lang/String;

    invoke-static {v1}, Lam/sunrise/android/calendar/api/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/settings/e/d;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lam/sunrise/android/calendar/api/c;->a(Ljava/lang/String;Ljava/lang/String;)Lretrofit/client/Response;

    move-result-object v0

    .line 55
    if-nez v0, :cond_0

    .line 56
    const-string v0, "DisconnectServiceTask"

    const-string v1, "null response from backend"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1
    return-object v0

    .line 58
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lretrofit/client/Response;->getStatus()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 60
    :sswitch_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/e/d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/e/d;->d:Ljava/lang/String;

    invoke-static {v1}, Lam/sunrise/android/calendar/provider/h;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 62
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 65
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

    .line 73
    :catch_0
    move-exception v1

    .line 74
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 75
    instance-of v0, v1, Lretrofit/RetrofitError;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 76
    check-cast v0, Lretrofit/RetrofitError;

    .line 77
    invoke-virtual {v0}, Lretrofit/RetrofitError;->isNetworkError()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    const-string v0, "DisconnectServiceTask"

    const-string v1, "No network!"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 82
    :cond_1
    invoke-virtual {v0}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_2

    .line 84
    const-string v2, "DisconnectServiceTask"

    const-string v3, "statusCode=%d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lretrofit/client/Response;->getStatus()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    invoke-virtual {v0}, Lretrofit/client/Response;->getStatus()I

    move-result v0

    const/16 v2, 0x191

    if-ne v0, v2, :cond_2

    .line 86
    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v0

    new-instance v2, Lam/sunrise/android/calendar/sync/events/SyncError;

    sget-object v3, Lam/sunrise/android/calendar/sync/events/SyncError$Error;->OAuth:Lam/sunrise/android/calendar/sync/events/SyncError$Error;

    invoke-direct {v2, v3}, Lam/sunrise/android/calendar/sync/events/SyncError;-><init>(Lam/sunrise/android/calendar/sync/events/SyncError$Error;)V

    invoke-virtual {v0, v2}, La/a/a/c;->c(Ljava/lang/Object;)V

    .line 90
    :cond_2
    const-string v0, "DisconnectServiceTask"

    const-string v2, "Exception: %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-static {v0, v2, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 58
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x191 -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 105
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/settings/e/d;->a()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_0

    instance-of v1, v0, Lam/sunrise/android/calendar/ui/settings/e/e;

    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    check-cast v0, Lam/sunrise/android/calendar/ui/settings/e/e;

    invoke-interface {v0}, Lam/sunrise/android/calendar/ui/settings/e/e;->e()V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    check-cast v0, Lam/sunrise/android/calendar/ui/settings/e/e;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/e/d;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Lam/sunrise/android/calendar/ui/settings/e/e;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/settings/e/d;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 27
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/settings/e/d;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 97
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/settings/e/d;->a()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_0

    instance-of v1, v0, Lam/sunrise/android/calendar/ui/settings/e/e;

    if-eqz v1, :cond_0

    .line 99
    check-cast v0, Lam/sunrise/android/calendar/ui/settings/e/e;

    invoke-interface {v0}, Lam/sunrise/android/calendar/ui/settings/e/e;->d()V

    .line 101
    :cond_0
    return-void
.end method
