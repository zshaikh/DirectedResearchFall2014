.class public Lam/sunrise/android/calendar/a/a;
.super Landroid/support/v4/a/a;
.source "ProfileLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/a/a",
        "<",
        "Lam/sunrise/android/calendar/api/models/responses/SimpleResponse",
        "<",
        "Lam/sunrise/android/calendar/api/models/datas/Profile;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private g:Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lam/sunrise/android/calendar/api/models/responses/SimpleResponse",
            "<",
            "Lam/sunrise/android/calendar/api/models/datas/Profile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/support/v4/a/a;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object p2, p0, Lam/sunrise/android/calendar/a/a;->a:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lam/sunrise/android/calendar/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lam/sunrise/android/calendar/api/models/responses/SimpleResponse",
            "<",
            "Lam/sunrise/android/calendar/api/models/datas/Profile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    invoke-virtual {p0}, Lam/sunrise/android/calendar/a/a;->isReset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iput-object p1, p0, Lam/sunrise/android/calendar/a/a;->g:Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;

    .line 119
    invoke-virtual {p0}, Lam/sunrise/android/calendar/a/a;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-super {p0, p1}, Landroid/support/v4/a/a;->deliverResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 34
    check-cast p1, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;

    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/a/a;->b(Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;)V

    return-void
.end method

.method public b()Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lam/sunrise/android/calendar/api/models/responses/SimpleResponse",
            "<",
            "Lam/sunrise/android/calendar/api/models/datas/Profile;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 54
    :try_start_0
    invoke-static {}, Lam/sunrise/android/calendar/api/a;->a()Lam/sunrise/android/calendar/api/c;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/a/a;->a:Ljava/lang/String;

    invoke-static {v1}, Lam/sunrise/android/calendar/api/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lam/sunrise/android/calendar/api/c;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;

    move-result-object v1

    .line 56
    if-nez v1, :cond_0

    .line 57
    const-string v0, "ProfileLoader"

    const-string v1, "null response from backend"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    move-object v0, v2

    .line 107
    :goto_1
    return-object v0

    .line 59
    :cond_0
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->meta:Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;

    iget v0, v0, Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;->code:I

    sparse-switch v0, :sswitch_data_0

    .line 82
    const-string v0, "ProfileLoader"

    const-string v3, "Error - code=%d errorMessage=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v1, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->meta:Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;

    iget v6, v6, Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;->code:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v1, v1, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->meta:Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;

    iget-object v1, v1, Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;->errorMessage:Ljava/lang/String;

    aput-object v1, v4, v5

    invoke-static {v0, v3, v4}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v1

    .line 89
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 90
    instance-of v0, v1, Lretrofit/RetrofitError;

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 91
    check-cast v0, Lretrofit/RetrofitError;

    .line 92
    invoke-virtual {v0}, Lretrofit/RetrofitError;->isNetworkError()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 93
    const-string v0, "ProfileLoader"

    const-string v1, "No network!"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    .line 94
    goto :goto_1

    .line 61
    :sswitch_0
    :try_start_1
    invoke-virtual {p0}, Lam/sunrise/android/calendar/a/a;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->data:Ljava/lang/Object;

    check-cast v0, Lam/sunrise/android/calendar/api/models/datas/Profile;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/datas/Profile;->connections:[Lam/sunrise/android/calendar/api/models/datas/Connection;

    invoke-static {v3, v0}, Lam/sunrise/android/calendar/sync/a;->a(Landroid/content/Context;[Lam/sunrise/android/calendar/api/models/datas/Connection;)Ljava/util/ArrayList;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-lez v3, :cond_1

    .line 65
    :try_start_2
    invoke-virtual {p0}, Lam/sunrise/android/calendar/a/a;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "am.sunrise.android.calendar"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 74
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Lam/sunrise/android/calendar/a/a;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->data:Ljava/lang/Object;

    check-cast v0, Lam/sunrise/android/calendar/api/models/datas/Profile;

    invoke-static {v3, v0}, Lam/sunrise/android/calendar/c;->a(Landroid/content/Context;Lam/sunrise/android/calendar/api/models/datas/Profile;)V

    move-object v0, v1

    .line 75
    goto :goto_1

    .line 66
    :catch_1
    move-exception v0

    .line 67
    const-string v1, "ProfileLoader"

    const-string v3, "Unable to apply events batch (connections & calendars). Error: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v1, v3, v4}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    .line 68
    goto/16 :goto_1

    .line 69
    :catch_2
    move-exception v0

    .line 70
    const-string v1, "ProfileLoader"

    const-string v3, "Unable to apply events batch (connections & calendars). Error: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v1, v3, v4}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    .line 71
    goto/16 :goto_1

    .line 78
    :sswitch_1
    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v0

    new-instance v1, Lam/sunrise/android/calendar/sync/events/SyncError;

    sget-object v3, Lam/sunrise/android/calendar/sync/events/SyncError$Error;->OAuth:Lam/sunrise/android/calendar/sync/events/SyncError$Error;

    invoke-direct {v1, v3}, Lam/sunrise/android/calendar/sync/events/SyncError;-><init>(Lam/sunrise/android/calendar/sync/events/SyncError$Error;)V

    invoke-virtual {v0, v1}, La/a/a/c;->c(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 97
    :cond_2
    invoke-virtual {v0}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_3

    .line 99
    const-string v3, "ProfileLoader"

    const-string v4, "statusCode=%d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lretrofit/client/Response;->getStatus()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    invoke-virtual {v0}, Lretrofit/client/Response;->getStatus()I

    move-result v0

    const/16 v3, 0x191

    if-ne v0, v3, :cond_3

    .line 101
    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v0

    new-instance v3, Lam/sunrise/android/calendar/sync/events/SyncError;

    sget-object v4, Lam/sunrise/android/calendar/sync/events/SyncError$Error;->OAuth:Lam/sunrise/android/calendar/sync/events/SyncError$Error;

    invoke-direct {v3, v4}, Lam/sunrise/android/calendar/sync/events/SyncError;-><init>(Lam/sunrise/android/calendar/sync/events/SyncError$Error;)V

    invoke-virtual {v0, v3}, La/a/a/c;->c(Ljava/lang/Object;)V

    .line 105
    :cond_3
    const-string v0, "ProfileLoader"

    const-string v3, "Exception: %s"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-static {v0, v3, v4}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 59
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x191 -> :sswitch_1
    .end sparse-switch
.end method

.method public b(Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lam/sunrise/android/calendar/api/models/responses/SimpleResponse",
            "<",
            "Lam/sunrise/android/calendar/api/models/datas/Profile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    return-void
.end method

.method public synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lam/sunrise/android/calendar/a/a;->b()Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;

    move-result-object v0

    return-object v0
.end method

.method public synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 34
    check-cast p1, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;

    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/a/a;->a(Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;)V

    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Landroid/support/v4/a/a;->onReset()V

    .line 149
    invoke-virtual {p0}, Lam/sunrise/android/calendar/a/a;->onStopLoading()V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/a/a;->g:Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;

    .line 152
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lam/sunrise/android/calendar/a/a;->g:Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lam/sunrise/android/calendar/a/a;->g:Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/a/a;->a(Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;)V

    .line 129
    :cond_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/a/a;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lam/sunrise/android/calendar/a/a;->g:Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;

    if-nez v0, :cond_2

    .line 130
    :cond_1
    invoke-virtual {p0}, Lam/sunrise/android/calendar/a/a;->forceLoad()V

    .line 132
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 137
    invoke-virtual {p0}, Lam/sunrise/android/calendar/a/a;->d()Z

    .line 138
    return-void
.end method
