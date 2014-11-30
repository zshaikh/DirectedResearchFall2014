.class public Lam/sunrise/android/calendar/authenticator/ui/googleplus/e;
.super Landroid/os/AsyncTask;
.source "GooglePlusLinkTask.java"


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
            "Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Landroid/content/Intent;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 47
    const/16 v0, -0x1092

    iput v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/e;->e:I

    .line 53
    invoke-virtual {p1}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/e;->a:Landroid/content/Context;

    .line 54
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/e;->b:Ljava/lang/ref/WeakReference;

    .line 55
    iput-object p2, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/e;->c:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/e;->d:Ljava/lang/String;

    .line 57
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 158
    :try_start_0
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/e;->a:Landroid/content/Context;

    iget-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/e;->c:Ljava/lang/String;

    iget-object v2, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/e;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/c/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/android/gms/c/c; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/c/d; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/c/a; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 170
    :goto_0
    return-object v0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    const-string v1, "GooglePlusAuthTokenTask"

    const-string v2, "getGooglePlusAuthCode: GooglePlayServicesAvailabilityException -- %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/c/c;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    invoke-virtual {v0}, Lcom/google/android/gms/c/c;->a()I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/e;->e:I

    .line 170
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 162
    :catch_1
    move-exception v0

    .line 163
    const-string v1, "GooglePlusAuthTokenTask"

    const-string v2, "getGooglePlusAuthCode: UserRecoverableAuthException -- %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/c/d;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    invoke-virtual {v0}, Lcom/google/android/gms/c/d;->b()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/e;->f:Landroid/content/Intent;

    goto :goto_1

    .line 165
    :catch_2
    move-exception v0

    .line 166
    const-string v1, "GooglePlusAuthTokenTask"

    const-string v2, "getGooglePlusAuthCode: IOException -- %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 167
    :catch_3
    move-exception v0

    .line 168
    const-string v1, "GooglePlusAuthTokenTask"

    const-string v2, "getGooglePlusAuthCode: GoogleAuthException -- %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/c/a;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 61
    iget-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/e;->a:Landroid/content/Context;

    invoke-static {v1}, Lam/sunrise/android/calendar/authenticator/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    const-string v1, "GooglePlusAuthTokenTask"

    const-string v2, "sunriseAccessToken == null"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v1

    new-instance v2, Lam/sunrise/android/calendar/sync/events/SyncError;

    sget-object v3, Lam/sunrise/android/calendar/sync/events/SyncError$Error;->OAuth:Lam/sunrise/android/calendar/sync/events/SyncError$Error;

    invoke-direct {v2, v3}, Lam/sunrise/android/calendar/sync/events/SyncError;-><init>(Lam/sunrise/android/calendar/sync/events/SyncError$Error;)V

    invoke-virtual {v1, v2}, La/a/a/c;->c(Ljava/lang/Object;)V

    .line 65
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 128
    :goto_0
    return-object v1

    .line 68
    :cond_0
    invoke-direct {p0}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/e;->a()Ljava/lang/String;

    move-result-object v3

    .line 69
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    const-string v1, "GooglePlusAuthTokenTask"

    const-string v2, "authCode == null"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 75
    :cond_1
    :try_start_0
    invoke-static {}, Lam/sunrise/android/calendar/api/a;->a()Lam/sunrise/android/calendar/api/c;

    move-result-object v2

    invoke-static {v1}, Lam/sunrise/android/calendar/api/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lam/sunrise/android/calendar/api/models/requests/GooglePlusAuthRequest;

    invoke-direct {v4, v3}, Lam/sunrise/android/calendar/api/models/requests/GooglePlusAuthRequest;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v1, v4}, Lam/sunrise/android/calendar/api/c;->a(Ljava/lang/String;Lam/sunrise/android/calendar/api/models/requests/GooglePlusAuthRequest;)Lretrofit/client/Response;

    move-result-object v1

    .line 79
    if-nez v1, :cond_2

    .line 80
    const-string v1, "GooglePlusAuthTokenTask"

    const-string v2, "null response from backend"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    iget-object v2, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/e;->a:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/google/android/gms/c/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Lretrofit/client/Response;->getStatus()I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 125
    :goto_1
    iget-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/e;->a:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/google/android/gms/c/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 128
    :goto_2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 86
    :sswitch_0
    :try_start_2
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    iget-object v2, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/e;->a:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/google/android/gms/c/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :sswitch_1
    :try_start_3
    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v1

    new-instance v2, Lam/sunrise/android/calendar/sync/events/SyncError;

    sget-object v4, Lam/sunrise/android/calendar/sync/events/SyncError$Error;->OAuth:Lam/sunrise/android/calendar/sync/events/SyncError$Error;

    invoke-direct {v2, v4}, Lam/sunrise/android/calendar/sync/events/SyncError;-><init>(Lam/sunrise/android/calendar/sync/events/SyncError$Error;)V

    invoke-virtual {v1, v2}, La/a/a/c;->c(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 96
    :catch_0
    move-exception v2

    .line 97
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 98
    instance-of v1, v2, Lretrofit/RetrofitError;

    if-eqz v1, :cond_4

    .line 99
    move-object v0, v2

    check-cast v0, Lretrofit/RetrofitError;

    move-object v1, v0

    .line 100
    invoke-virtual {v1}, Lretrofit/RetrofitError;->isNetworkError()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 101
    const-string v1, "GooglePlusAuthTokenTask"

    const-string v2, "No network!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 125
    iget-object v2, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/e;->a:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/google/android/gms/c/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 105
    :cond_3
    :try_start_5
    invoke-virtual {v1}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v4

    .line 106
    if-eqz v4, :cond_4

    .line 107
    const-string v5, "GooglePlusAuthTokenTask"

    const-string v6, "statusCode=%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v4}, Lretrofit/client/Response;->getStatus()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    invoke-virtual {v4}, Lretrofit/client/Response;->getStatus()I

    move-result v4

    const/16 v5, 0x191

    if-ne v4, v5, :cond_5

    .line 109
    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v1

    new-instance v4, Lam/sunrise/android/calendar/sync/events/SyncError;

    sget-object v5, Lam/sunrise/android/calendar/sync/events/SyncError$Error;->OAuth:Lam/sunrise/android/calendar/sync/events/SyncError$Error;

    invoke-direct {v4, v5}, Lam/sunrise/android/calendar/sync/events/SyncError;-><init>(Lam/sunrise/android/calendar/sync/events/SyncError$Error;)V

    invoke-virtual {v1, v4}, La/a/a/c;->c(Ljava/lang/Object;)V

    .line 123
    :cond_4
    :goto_3
    const-string v1, "GooglePlusAuthTokenTask"

    const-string v4, "Exception: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v1, v4, v5}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 125
    iget-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/e;->a:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/google/android/gms/c/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 112
    :cond_5
    :try_start_6
    const-class v4, Lam/sunrise/android/calendar/api/models/responses/BaseResponse;

    invoke-virtual {v1, v4}, Lretrofit/RetrofitError;->getBodyAs(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lam/sunrise/android/calendar/api/models/responses/BaseResponse;

    .line 114
    iget-object v1, v1, Lam/sunrise/android/calendar/api/models/responses/BaseResponse;->meta:Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;

    iget-object v1, v1, Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;->errorMessage:Ljava/lang/String;

    iput-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/e;->g:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 115
    :catch_1
    move-exception v1

    goto :goto_3

    .line 125
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/e;->a:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/google/android/gms/c/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    throw v1

    .line 84
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x191 -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/e;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;

    .line 134
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->isDetached()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/i;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget v1, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/e;->e:I

    const/16 v2, -0x1092

    if-eq v1, v2, :cond_3

    .line 143
    iget v1, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/e;->e:I

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->c(I)V

    .line 149
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 150
    invoke-virtual {v0}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->c()V

    goto :goto_0

    .line 144
    :cond_3
    iget-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/e;->f:Landroid/content/Intent;

    if-eqz v1, :cond_2

    .line 145
    iget-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/e;->f:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 152
    :cond_4
    iget-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/e;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/e;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 37
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/e;->a(Ljava/lang/Boolean;)V

    return-void
.end method
