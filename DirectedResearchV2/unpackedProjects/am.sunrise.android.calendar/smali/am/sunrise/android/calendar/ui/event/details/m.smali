.class public Lam/sunrise/android/calendar/ui/event/details/m;
.super Landroid/support/v4/a/a;
.source "EventAttendeesLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/a/a",
        "<[",
        "Lam/sunrise/android/calendar/api/models/datas/Person;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:[Lam/sunrise/android/calendar/api/models/datas/Person;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/support/v4/a/a;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/event/details/m;->a:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lam/sunrise/android/calendar/ui/event/details/m;->g:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lam/sunrise/android/calendar/ui/event/details/m;->h:Ljava/lang/String;

    .line 42
    iput p5, p0, Lam/sunrise/android/calendar/ui/event/details/m;->i:I

    .line 43
    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, [Lam/sunrise/android/calendar/api/models/datas/Person;

    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/event/details/m;->b([Lam/sunrise/android/calendar/api/models/datas/Person;)V

    return-void
.end method

.method public a([Lam/sunrise/android/calendar/api/models/datas/Person;)V
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/m;->isReset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/details/m;->j:[Lam/sunrise/android/calendar/api/models/datas/Person;

    .line 101
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/m;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-super {p0, p1}, Landroid/support/v4/a/a;->deliverResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a()[Lam/sunrise/android/calendar/api/models/datas/Person;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 53
    :try_start_0
    invoke-static {}, Lam/sunrise/android/calendar/api/a;->a()Lam/sunrise/android/calendar/api/c;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/m;->a:Ljava/lang/String;

    invoke-static {v1}, Lam/sunrise/android/calendar/api/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/details/m;->g:Ljava/lang/String;

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/event/details/m;->h:Ljava/lang/String;

    iget v5, p0, Lam/sunrise/android/calendar/ui/event/details/m;->i:I

    invoke-interface {v0, v1, v3, v4, v5}, Lam/sunrise/android/calendar/api/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lam/sunrise/android/calendar/api/models/responses/ArrayResponse;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    iget-object v1, v0, Lam/sunrise/android/calendar/api/models/responses/ArrayResponse;->meta:Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;

    iget v1, v1, Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;->code:I

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    move-object v0, v2

    .line 89
    :goto_1
    return-object v0

    .line 59
    :sswitch_0
    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/responses/ArrayResponse;->data:[Ljava/lang/Object;

    check-cast v0, [Lam/sunrise/android/calendar/api/models/datas/Person;

    goto :goto_1

    .line 62
    :sswitch_1
    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v0

    new-instance v1, Lam/sunrise/android/calendar/sync/events/SyncError;

    sget-object v3, Lam/sunrise/android/calendar/sync/events/SyncError$Error;->OAuth:Lam/sunrise/android/calendar/sync/events/SyncError$Error;

    invoke-direct {v1, v3}, Lam/sunrise/android/calendar/sync/events/SyncError;-><init>(Lam/sunrise/android/calendar/sync/events/SyncError$Error;)V

    invoke-virtual {v0, v1}, La/a/a/c;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v1

    .line 71
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 72
    instance-of v0, v1, Lretrofit/RetrofitError;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 73
    check-cast v0, Lretrofit/RetrofitError;

    .line 74
    invoke-virtual {v0}, Lretrofit/RetrofitError;->isNetworkError()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 75
    const-string v0, "EventAttendeesLoader"

    const-string v1, "No network!"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    .line 76
    goto :goto_1

    .line 79
    :cond_1
    invoke-virtual {v0}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_2

    .line 81
    const-string v3, "EventAttendeesLoader"

    const-string v4, "statusCode=%d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lretrofit/client/Response;->getStatus()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    invoke-virtual {v0}, Lretrofit/client/Response;->getStatus()I

    move-result v0

    const/16 v3, 0x191

    if-ne v0, v3, :cond_2

    .line 83
    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v0

    new-instance v3, Lam/sunrise/android/calendar/sync/events/SyncError;

    sget-object v4, Lam/sunrise/android/calendar/sync/events/SyncError$Error;->OAuth:Lam/sunrise/android/calendar/sync/events/SyncError$Error;

    invoke-direct {v3, v4}, Lam/sunrise/android/calendar/sync/events/SyncError;-><init>(Lam/sunrise/android/calendar/sync/events/SyncError$Error;)V

    invoke-virtual {v0, v3}, La/a/a/c;->c(Ljava/lang/Object;)V

    .line 87
    :cond_2
    const-string v0, "EventAttendeesLoader"

    const-string v3, "Exception: %s"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-static {v0, v3, v4}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 57
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x191 -> :sswitch_1
    .end sparse-switch
.end method

.method public b([Lam/sunrise/android/calendar/api/models/datas/Person;)V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/m;->a()[Lam/sunrise/android/calendar/api/models/datas/Person;

    move-result-object v0

    return-object v0
.end method

.method public synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, [Lam/sunrise/android/calendar/api/models/datas/Person;

    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/event/details/m;->a([Lam/sunrise/android/calendar/api/models/datas/Person;)V

    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Landroid/support/v4/a/a;->onReset()V

    .line 131
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/m;->onStopLoading()V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/m;->j:[Lam/sunrise/android/calendar/api/models/datas/Person;

    .line 134
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/m;->j:[Lam/sunrise/android/calendar/api/models/datas/Person;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/m;->j:[Lam/sunrise/android/calendar/api/models/datas/Person;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/details/m;->a([Lam/sunrise/android/calendar/api/models/datas/Person;)V

    .line 111
    :cond_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/m;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/m;->j:[Lam/sunrise/android/calendar/api/models/datas/Person;

    if-nez v0, :cond_2

    .line 112
    :cond_1
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/m;->forceLoad()V

    .line 114
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 119
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/m;->d()Z

    .line 120
    return-void
.end method
