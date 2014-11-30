.class public Lam/sunrise/android/calendar/ui/settings/d/a;
.super Landroid/support/v4/a/a;
.source "ProfileLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/a/a",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private g:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/support/v4/a/a;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/settings/d/a;->a:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 48
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/d/a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 106
    :goto_0
    return-object v0

    .line 53
    :cond_0
    :try_start_0
    invoke-static {}, Lam/sunrise/android/calendar/api/a;->a()Lam/sunrise/android/calendar/api/c;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/d/a;->a:Ljava/lang/String;

    invoke-static {v1}, Lam/sunrise/android/calendar/api/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lam/sunrise/android/calendar/api/c;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;

    move-result-object v1

    .line 55
    if-nez v1, :cond_1

    .line 56
    const-string v0, "ProfileLoader"

    const-string v1, "null response from backend"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 58
    :cond_1
    :try_start_1
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->meta:Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;

    iget v0, v0, Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;->code:I

    sparse-switch v0, :sswitch_data_0

    .line 81
    const-string v0, "ProfileLoader"

    const-string v2, "Error - code=%d errorMessage=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v1, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->meta:Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;

    iget v5, v5, Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;->code:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v1, v1, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->meta:Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;

    iget-object v1, v1, Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;->errorMessage:Ljava/lang/String;

    aput-object v1, v3, v4

    invoke-static {v0, v2, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 87
    :catch_0
    move-exception v1

    .line 88
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 89
    instance-of v0, v1, Lretrofit/RetrofitError;

    if-eqz v0, :cond_4

    move-object v0, v1

    .line 90
    check-cast v0, Lretrofit/RetrofitError;

    .line 91
    invoke-virtual {v0}, Lretrofit/RetrofitError;->isNetworkError()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 92
    const-string v0, "ProfileLoader"

    const-string v1, "No network!"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 60
    :sswitch_0
    :try_start_2
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/d/a;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->data:Ljava/lang/Object;

    check-cast v0, Lam/sunrise/android/calendar/api/models/datas/Profile;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/datas/Profile;->connections:[Lam/sunrise/android/calendar/api/models/datas/Connection;

    invoke-static {v2, v0}, Lam/sunrise/android/calendar/sync/a;->a(Landroid/content/Context;[Lam/sunrise/android/calendar/api/models/datas/Connection;)Ljava/util/ArrayList;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    if-lez v2, :cond_2

    .line 64
    :try_start_3
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/d/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "am.sunrise.android.calendar"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 73
    :cond_2
    :try_start_4
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/d/a;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->data:Ljava/lang/Object;

    check-cast v0, Lam/sunrise/android/calendar/api/models/datas/Profile;

    invoke-static {v2, v0}, Lam/sunrise/android/calendar/c;->a(Landroid/content/Context;Lam/sunrise/android/calendar/api/models/datas/Profile;)V

    .line 74
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 65
    :catch_1
    move-exception v0

    .line 66
    const-string v1, "ProfileLoader"

    const-string v2, "Unable to apply events batch (connections & calendars). Error: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 68
    :catch_2
    move-exception v0

    .line 69
    const-string v1, "ProfileLoader"

    const-string v2, "Unable to apply events batch (connections & calendars). Error: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 77
    :sswitch_1
    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v0

    new-instance v1, Lam/sunrise/android/calendar/sync/events/SyncError;

    sget-object v2, Lam/sunrise/android/calendar/sync/events/SyncError$Error;->OAuth:Lam/sunrise/android/calendar/sync/events/SyncError$Error;

    invoke-direct {v1, v2}, Lam/sunrise/android/calendar/sync/events/SyncError;-><init>(Lam/sunrise/android/calendar/sync/events/SyncError$Error;)V

    invoke-virtual {v0, v1}, La/a/a/c;->c(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 96
    :cond_3
    invoke-virtual {v0}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_4

    .line 98
    const-string v2, "ProfileLoader"

    const-string v3, "statusCode=%d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lretrofit/client/Response;->getStatus()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    invoke-virtual {v0}, Lretrofit/client/Response;->getStatus()I

    move-result v0

    const/16 v2, 0x191

    if-ne v0, v2, :cond_4

    .line 100
    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v0

    new-instance v2, Lam/sunrise/android/calendar/sync/events/SyncError;

    sget-object v3, Lam/sunrise/android/calendar/sync/events/SyncError$Error;->OAuth:Lam/sunrise/android/calendar/sync/events/SyncError$Error;

    invoke-direct {v2, v3}, Lam/sunrise/android/calendar/sync/events/SyncError;-><init>(Lam/sunrise/android/calendar/sync/events/SyncError$Error;)V

    invoke-virtual {v0, v2}, La/a/a/c;->c(Ljava/lang/Object;)V

    .line 104
    :cond_4
    const-string v0, "ProfileLoader"

    const-string v2, "Exception: %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-static {v0, v2, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 58
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x191 -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/d/a;->isReset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/settings/d/a;->g:Ljava/lang/Boolean;

    .line 118
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/d/a;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-super {p0, p1}, Landroid/support/v4/a/a;->deliverResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/d/a;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 34
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/settings/d/a;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 141
    invoke-super {p0}, Landroid/support/v4/a/a;->onReset()V

    .line 144
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/d/a;->onStopLoading()V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/d/a;->g:Ljava/lang/Boolean;

    .line 147
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/d/a;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/d/a;->g:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/d/a;->a(Ljava/lang/Boolean;)V

    .line 128
    :cond_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/d/a;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/d/a;->g:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 129
    :cond_1
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/d/a;->forceLoad()V

    .line 131
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 136
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/d/a;->d()Z

    .line 137
    return-void
.end method
