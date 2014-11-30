.class public Lam/sunrise/android/calendar/ui/contactpicker/x;
.super Landroid/support/v4/a/a;
.source "SuggestedPeopleLoader.java"


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

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/support/v4/a/a;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/contactpicker/x;->a:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lam/sunrise/android/calendar/ui/contactpicker/x;->g:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 50
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/x;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    .line 55
    :cond_0
    :try_start_0
    invoke-static {}, Lam/sunrise/android/calendar/api/a;->a()Lam/sunrise/android/calendar/api/c;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/x;->a:Ljava/lang/String;

    invoke-static {v1}, Lam/sunrise/android/calendar/api/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/contactpicker/x;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lam/sunrise/android/calendar/api/c;->b(Ljava/lang/String;Ljava/lang/String;)Lam/sunrise/android/calendar/api/models/responses/ArrayResponse;

    move-result-object v0

    .line 57
    if-nez v0, :cond_1

    .line 58
    const-string v0, "SuggestedPeopleLoader"

    const-string v1, "null response from backend"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 60
    :cond_1
    :try_start_1
    iget-object v1, v0, Lam/sunrise/android/calendar/api/models/responses/ArrayResponse;->meta:Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;

    iget v1, v1, Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;->code:I

    sparse-switch v1, :sswitch_data_0

    .line 97
    const-string v1, "SuggestedPeopleLoader"

    const-string v3, "Error - code=%d errorMessage=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lam/sunrise/android/calendar/api/models/responses/ArrayResponse;->meta:Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;

    iget v6, v6, Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;->code:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/responses/ArrayResponse;->meta:Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;->errorMessage:Ljava/lang/String;

    aput-object v0, v4, v5

    invoke-static {v1, v3, v4}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 104
    :catch_0
    move-exception v1

    .line 105
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 106
    instance-of v0, v1, Lretrofit/RetrofitError;

    if-eqz v0, :cond_5

    move-object v0, v1

    .line 107
    check-cast v0, Lretrofit/RetrofitError;

    .line 108
    invoke-virtual {v0}, Lretrofit/RetrofitError;->isNetworkError()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 109
    const-string v0, "SuggestedPeopleLoader"

    const-string v1, "No network!"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 62
    :sswitch_0
    :try_start_2
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/x;->g:Ljava/lang/String;

    invoke-static {v1}, Lam/sunrise/android/calendar/provider/g;->f(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lam/sunrise/android/calendar/provider/e;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 65
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v1, v0, Lam/sunrise/android/calendar/api/models/responses/ArrayResponse;->data:[Ljava/lang/Object;

    invoke-static {v1}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 69
    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/responses/ArrayResponse;->data:[Ljava/lang/Object;

    check-cast v0, [Lam/sunrise/android/calendar/api/models/datas/Contact;

    array-length v5, v0

    move v1, v2

    :goto_2
    if-ge v1, v5, :cond_2

    aget-object v6, v0, v1

    .line 70
    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v8, "suggested_people_name"

    iget-object v9, v6, Lam/sunrise/android/calendar/api/models/datas/Contact;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v8, "suggested_people_firstname"

    iget-object v9, v6, Lam/sunrise/android/calendar/api/models/datas/Contact;->firstName:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v8, "suggested_people_lastname"

    iget-object v9, v6, Lam/sunrise/android/calendar/api/models/datas/Contact;->lastName:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v8, "suggested_people_email"

    iget-object v9, v6, Lam/sunrise/android/calendar/api/models/datas/Contact;->email:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v8, "suggested_people_score"

    iget v6, v6, Lam/sunrise/android/calendar/api/models/datas/Contact;->score:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 79
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-lez v0, :cond_3

    .line 81
    :try_start_3
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/x;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar"

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 90
    :cond_3
    const/4 v0, 0x1

    :try_start_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 82
    :catch_1
    move-exception v0

    .line 83
    const-string v1, "SuggestedPeopleLoader"

    const-string v3, "Unable to apply events batch (suggested people). Error: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v1, v3, v4}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 85
    :catch_2
    move-exception v0

    .line 86
    const-string v1, "SuggestedPeopleLoader"

    const-string v3, "Unable to apply events batch (suggested people). Error: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v1, v3, v4}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 93
    :sswitch_1
    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v0

    new-instance v1, Lam/sunrise/android/calendar/sync/events/SyncError;

    sget-object v3, Lam/sunrise/android/calendar/sync/events/SyncError$Error;->OAuth:Lam/sunrise/android/calendar/sync/events/SyncError$Error;

    invoke-direct {v1, v3}, Lam/sunrise/android/calendar/sync/events/SyncError;-><init>(Lam/sunrise/android/calendar/sync/events/SyncError$Error;)V

    invoke-virtual {v0, v1}, La/a/a/c;->c(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 113
    :cond_4
    invoke-virtual {v0}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_5

    .line 115
    const-string v3, "SuggestedPeopleLoader"

    const-string v4, "statusCode=%d"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Lretrofit/client/Response;->getStatus()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    invoke-virtual {v0}, Lretrofit/client/Response;->getStatus()I

    move-result v0

    const/16 v3, 0x191

    if-ne v0, v3, :cond_5

    .line 117
    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v0

    new-instance v3, Lam/sunrise/android/calendar/sync/events/SyncError;

    sget-object v4, Lam/sunrise/android/calendar/sync/events/SyncError$Error;->OAuth:Lam/sunrise/android/calendar/sync/events/SyncError$Error;

    invoke-direct {v3, v4}, Lam/sunrise/android/calendar/sync/events/SyncError;-><init>(Lam/sunrise/android/calendar/sync/events/SyncError$Error;)V

    invoke-virtual {v0, v3}, La/a/a/c;->c(Ljava/lang/Object;)V

    .line 121
    :cond_5
    const-string v0, "SuggestedPeopleLoader"

    const-string v3, "Exception: %s"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {v0, v3, v4}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 60
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x191 -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/x;->isReset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/contactpicker/x;->h:Ljava/lang/Boolean;

    .line 135
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/x;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-super {p0, p1}, Landroid/support/v4/a/a;->deliverResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/x;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 34
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/contactpicker/x;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 158
    invoke-super {p0}, Landroid/support/v4/a/a;->onReset()V

    .line 161
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/x;->onStopLoading()V

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/x;->h:Ljava/lang/Boolean;

    .line 164
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/x;->h:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/x;->h:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/contactpicker/x;->a(Ljava/lang/Boolean;)V

    .line 145
    :cond_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/x;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/x;->h:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 146
    :cond_1
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/x;->forceLoad()V

    .line 148
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 153
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/x;->d()Z

    .line 154
    return-void
.end method
