.class Lam/sunrise/android/calendar/ui/b;
.super Landroid/os/AsyncTask;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/accounts/AccountManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 195
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/b;->a:Landroid/accounts/AccountManager;

    .line 197
    return-void
.end method

.method private a(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 238
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/b;->b(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 281
    :goto_0
    return-object v0

    .line 245
    :cond_0
    :try_start_0
    invoke-static {}, Lam/sunrise/android/calendar/api/a;->a()Lam/sunrise/android/calendar/api/c;

    move-result-object v2

    invoke-static {v0}, Lam/sunrise/android/calendar/api/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lam/sunrise/android/calendar/api/c;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;

    move-result-object v2

    .line 247
    if-nez v2, :cond_1

    move-object v0, v1

    .line 248
    goto :goto_0

    .line 250
    :cond_1
    iget-object v0, v2, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->meta:Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;

    iget v0, v0, Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;->code:I

    sparse-switch v0, :sswitch_data_0

    :cond_2
    :goto_1
    move-object v0, v1

    .line 281
    goto :goto_0

    .line 252
    :sswitch_0
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/b;->a:Landroid/accounts/AccountManager;

    const-string v4, "userId"

    iget-object v0, v2, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->data:Ljava/lang/Object;

    check-cast v0, Lam/sunrise/android/calendar/api/models/datas/Profile;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/datas/Profile;->id:Ljava/lang/String;

    invoke-virtual {v3, p1, v4, v0}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v0, v2, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->data:Ljava/lang/Object;

    check-cast v0, Lam/sunrise/android/calendar/api/models/datas/Profile;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/datas/Profile;->id:Ljava/lang/String;

    goto :goto_0

    .line 258
    :sswitch_1
    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v0

    new-instance v2, Lam/sunrise/android/calendar/sync/events/SyncError;

    sget-object v3, Lam/sunrise/android/calendar/sync/events/SyncError$Error;->OAuth:Lam/sunrise/android/calendar/sync/events/SyncError$Error;

    invoke-direct {v2, v3}, Lam/sunrise/android/calendar/sync/events/SyncError;-><init>(Lam/sunrise/android/calendar/sync/events/SyncError$Error;)V

    invoke-virtual {v0, v2}, La/a/a/c;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 265
    :catch_0
    move-exception v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 267
    instance-of v2, v0, Lretrofit/RetrofitError;

    if-eqz v2, :cond_2

    .line 268
    check-cast v0, Lretrofit/RetrofitError;

    .line 269
    invoke-virtual {v0}, Lretrofit/RetrofitError;->isNetworkError()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, v1

    .line 270
    goto :goto_0

    .line 273
    :cond_3
    invoke-virtual {v0}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v0

    .line 274
    if-eqz v0, :cond_2

    .line 275
    invoke-virtual {v0}, Lretrofit/client/Response;->getStatus()I

    move-result v0

    const/16 v2, 0x191

    if-ne v0, v2, :cond_2

    .line 276
    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v0

    new-instance v2, Lam/sunrise/android/calendar/sync/events/SyncError;

    sget-object v3, Lam/sunrise/android/calendar/sync/events/SyncError$Error;->OAuth:Lam/sunrise/android/calendar/sync/events/SyncError$Error;

    invoke-direct {v2, v3}, Lam/sunrise/android/calendar/sync/events/SyncError;-><init>(Lam/sunrise/android/calendar/sync/events/SyncError$Error;)V

    invoke-virtual {v0, v2}, La/a/a/c;->c(Ljava/lang/Object;)V

    goto :goto_1

    .line 250
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x191 -> :sswitch_1
    .end sparse-switch
.end method

.method private b(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 286
    :try_start_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b;->a:Landroid/accounts/AccountManager;

    const-string v1, "am.sunrise.android.calendar.calendar"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 295
    :goto_0
    return-object v0

    .line 288
    :catch_0
    move-exception v0

    .line 289
    invoke-virtual {v0}, Landroid/accounts/OperationCanceledException;->printStackTrace()V

    .line 295
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 290
    :catch_1
    move-exception v0

    .line 291
    invoke-virtual {v0}, Landroid/accounts/AuthenticatorException;->printStackTrace()V

    goto :goto_1

    .line 292
    :catch_2
    move-exception v0

    .line 293
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 201
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b;->a:Landroid/accounts/AccountManager;

    const-string v1, "am.sunrise.android.calendar"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 202
    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-object v3

    .line 206
    :cond_1
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 208
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b;->a:Landroid/accounts/AccountManager;

    const-string v2, "userId"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 213
    invoke-direct {p0, v1}, Lam/sunrise/android/calendar/ui/b;->a(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    .line 216
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    invoke-static {}, Lam/sunrise/android/calendar/SunriseApplication;->a()Lam/sunrise/android/calendar/SunriseApplication;

    move-result-object v1

    .line 221
    if-eqz v1, :cond_0

    .line 223
    :try_start_0
    invoke-static {}, Lam/sunrise/android/calendar/analytics/a;->a()Lam/sunrise/android/calendar/analytics/b;

    move-result-object v1

    invoke-static {}, Lam/sunrise/android/calendar/analytics/c;->a()Lam/sunrise/android/calendar/analytics/e;

    move-result-object v2

    invoke-virtual {v2, v0}, Lam/sunrise/android/calendar/analytics/e;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/analytics/e;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/analytics/e;->a()Lam/sunrise/android/calendar/analytics/AnalyticsRequest;

    move-result-object v0

    invoke-interface {v1, v0}, Lam/sunrise/android/calendar/analytics/b;->a(Lam/sunrise/android/calendar/analytics/AnalyticsRequest;)Lretrofit/client/Response;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 227
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 192
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/b;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
