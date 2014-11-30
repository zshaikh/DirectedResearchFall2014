.class Lam/sunrise/android/calendar/ui/settings/az;
.super Landroid/os/AsyncTask;
.source "SettingsLinkiCloudFragment.java"


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
.field final synthetic a:Lam/sunrise/android/calendar/ui/settings/at;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lam/sunrise/android/calendar/ui/settings/at;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/ui/settings/at;Lam/sunrise/android/calendar/ui/settings/at;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 250
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/settings/az;->a:Lam/sunrise/android/calendar/ui/settings/at;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 251
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/az;->b:Ljava/lang/ref/WeakReference;

    .line 252
    iput-object p3, p0, Lam/sunrise/android/calendar/ui/settings/az;->c:Ljava/lang/String;

    .line 253
    iput-object p4, p0, Lam/sunrise/android/calendar/ui/settings/az;->d:Ljava/lang/String;

    .line 254
    iput-object p5, p0, Lam/sunrise/android/calendar/ui/settings/az;->e:Ljava/lang/String;

    .line 255
    return-void
.end method

.method private a()Lam/sunrise/android/calendar/ui/settings/at;
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/az;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/settings/at;

    .line 281
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/at;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/at;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/at;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/i;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 285
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lretrofit/client/Response;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 382
    :try_start_0
    invoke-virtual {p1}, Lretrofit/client/Response;->getBody()Lretrofit/mime/TypedInput;

    move-result-object v0

    invoke-interface {v0}, Lretrofit/mime/TypedInput;->in()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/settings/c/a;->a(Ljava/io/InputStream;)Lam/sunrise/android/calendar/ui/settings/c/a;

    move-result-object v3

    .line 383
    if-eqz v3, :cond_0

    .line 384
    const-string v0, "appleAccountInfo.dsPrsID"

    invoke-virtual {v3, v0}, Lam/sunrise/android/calendar/ui/settings/c/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/az;->h:Ljava/lang/String;

    .line 385
    const-string v0, "appleAccountInfo.appleId"

    invoke-virtual {v3, v0}, Lam/sunrise/android/calendar/ui/settings/c/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/az;->i:Ljava/lang/String;

    .line 386
    const-string v0, "tokens.mmeAuthToken"

    invoke-virtual {v3, v0}, Lam/sunrise/android/calendar/ui/settings/c/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/az;->j:Ljava/lang/String;

    .line 387
    const-string v0, "ConnectiCloudTask"

    const-string v3, "userId=%s userEmail=%s mmAuthToken=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lam/sunrise/android/calendar/ui/settings/az;->h:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lam/sunrise/android/calendar/ui/settings/az;->i:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lam/sunrise/android/calendar/ui/settings/az;->j:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 394
    :goto_0
    return v0

    .line 391
    :catch_0
    move-exception v0

    .line 392
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    move v0, v2

    .line 394
    goto :goto_0
.end method

.method private b(Lretrofit/client/Response;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 399
    :try_start_0
    invoke-virtual {p1}, Lretrofit/client/Response;->getBody()Lretrofit/mime/TypedInput;

    move-result-object v0

    invoke-interface {v0}, Lretrofit/mime/TypedInput;->in()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/settings/c/a;->a(Ljava/io/InputStream;)Lam/sunrise/android/calendar/ui/settings/c/a;

    move-result-object v1

    .line 400
    if-eqz v1, :cond_0

    .line 401
    const-string v0, "ErrorID"

    invoke-virtual {v1, v0}, Lam/sunrise/android/calendar/ui/settings/c/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/az;->f:Ljava/lang/String;

    .line 402
    const-string v0, "description"

    invoke-virtual {v1, v0}, Lam/sunrise/android/calendar/ui/settings/c/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/az;->g:Ljava/lang/String;

    .line 404
    const-string v0, "ConnectiCloudTask"

    const-string v1, "errorID=%s errorDescription=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/settings/az;->f:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/settings/az;->g:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :goto_0
    return-void

    .line 408
    :catch_0
    move-exception v0

    .line 409
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 411
    :cond_0
    iput-object v5, p0, Lam/sunrise/android/calendar/ui/settings/az;->f:Ljava/lang/String;

    .line 412
    iput-object v5, p0, Lam/sunrise/android/calendar/ui/settings/az;->g:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 291
    :try_start_0
    invoke-static {}, Lam/sunrise/android/calendar/ui/settings/c/b;->a()Lam/sunrise/android/calendar/ui/settings/c/c;

    move-result-object v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/settings/az;->d:Ljava/lang/String;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/settings/az;->e:Ljava/lang/String;

    invoke-static {v2, v3}, Lam/sunrise/android/calendar/ui/settings/c/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lam/sunrise/android/calendar/ui/settings/c/c;->a(Ljava/lang/String;)Lretrofit/client/Response;

    move-result-object v1

    .line 294
    if-eqz v1, :cond_2

    .line 295
    invoke-virtual {v1}, Lretrofit/client/Response;->getStatus()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_0

    .line 296
    invoke-direct {p0, v1}, Lam/sunrise/android/calendar/ui/settings/az;->b(Lretrofit/client/Response;)V

    .line 297
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 377
    :goto_0
    return-object v1

    .line 300
    :cond_0
    invoke-direct {p0, v1}, Lam/sunrise/android/calendar/ui/settings/az;->a(Lretrofit/client/Response;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 301
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/az;->d:Ljava/lang/String;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/settings/az;->i:Ljava/lang/String;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/b/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 303
    new-instance v1, Lam/sunrise/android/calendar/api/models/requests/iCloudLinkRequest;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/settings/az;->h:Ljava/lang/String;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/settings/az;->i:Ljava/lang/String;

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/settings/az;->j:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lam/sunrise/android/calendar/api/models/requests/iCloudLinkRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 308
    :try_start_1
    invoke-static {}, Lam/sunrise/android/calendar/api/a;->a()Lam/sunrise/android/calendar/api/c;

    move-result-object v2

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/settings/az;->c:Ljava/lang/String;

    invoke-static {v3}, Lam/sunrise/android/calendar/api/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "icloud"

    new-instance v5, Lam/sunrise/android/calendar/api/models/requests/SignInUpRequest;

    invoke-direct {v5, v1}, Lam/sunrise/android/calendar/api/models/requests/SignInUpRequest;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4, v5}, Lam/sunrise/android/calendar/api/c;->a(Ljava/lang/String;Ljava/lang/String;Lam/sunrise/android/calendar/api/models/requests/SignInUpRequest;)Lretrofit/client/Response;

    move-result-object v1

    .line 311
    if-nez v1, :cond_1

    .line 312
    const-string v1, "ConnectiCloudTask"

    const-string v2, "null response from backend"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 313
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 316
    :cond_1
    invoke-virtual {v1}, Lretrofit/client/Response;->getStatus()I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 377
    :cond_2
    :goto_1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 318
    :sswitch_0
    :try_start_2
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 321
    :sswitch_1
    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v1

    new-instance v2, Lam/sunrise/android/calendar/sync/events/SyncError;

    sget-object v3, Lam/sunrise/android/calendar/sync/events/SyncError$Error;->OAuth:Lam/sunrise/android/calendar/sync/events/SyncError$Error;

    invoke-direct {v2, v3}, Lam/sunrise/android/calendar/sync/events/SyncError;-><init>(Lam/sunrise/android/calendar/sync/events/SyncError$Error;)V

    invoke-virtual {v1, v2}, La/a/a/c;->c(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 328
    :catch_0
    move-exception v2

    .line 329
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 330
    instance-of v1, v2, Lretrofit/RetrofitError;

    if-eqz v1, :cond_4

    .line 331
    move-object v0, v2

    check-cast v0, Lretrofit/RetrofitError;

    move-object v1, v0

    .line 332
    invoke-virtual {v1}, Lretrofit/RetrofitError;->isNetworkError()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 333
    const-string v1, "ConnectiCloudTask"

    const-string v2, "No network!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 337
    :cond_3
    invoke-virtual {v1}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v3

    .line 338
    if-eqz v3, :cond_4

    .line 339
    const-string v4, "ConnectiCloudTask"

    const-string v5, "statusCode=%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v3}, Lretrofit/client/Response;->getStatus()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    invoke-virtual {v3}, Lretrofit/client/Response;->getStatus()I

    move-result v3

    const/16 v4, 0x191

    if-ne v3, v4, :cond_5

    .line 341
    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v1

    new-instance v3, Lam/sunrise/android/calendar/sync/events/SyncError;

    sget-object v4, Lam/sunrise/android/calendar/sync/events/SyncError$Error;->OAuth:Lam/sunrise/android/calendar/sync/events/SyncError$Error;

    invoke-direct {v3, v4}, Lam/sunrise/android/calendar/sync/events/SyncError;-><init>(Lam/sunrise/android/calendar/sync/events/SyncError$Error;)V

    invoke-virtual {v1, v3}, La/a/a/c;->c(Ljava/lang/Object;)V

    .line 355
    :cond_4
    :goto_2
    const-string v1, "ConnectiCloudTask"

    const-string v3, "Exception: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v1, v3, v4}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 360
    :catch_1
    move-exception v2

    .line 361
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 362
    instance-of v1, v2, Lretrofit/RetrofitError;

    if-eqz v1, :cond_7

    move-object v1, v2

    .line 363
    check-cast v1, Lretrofit/RetrofitError;

    .line 364
    invoke-virtual {v1}, Lretrofit/RetrofitError;->isNetworkError()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 365
    const-string v1, "ConnectiCloudTask"

    const-string v2, "No network!"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 366
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 344
    :cond_5
    :try_start_4
    const-class v3, Lam/sunrise/android/calendar/api/models/responses/BaseResponse;

    invoke-virtual {v1, v3}, Lretrofit/RetrofitError;->getBodyAs(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lam/sunrise/android/calendar/api/models/responses/BaseResponse;

    .line 346
    iget-object v1, v1, Lam/sunrise/android/calendar/api/models/responses/BaseResponse;->meta:Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;

    iget-object v1, v1, Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;->errorMessage:Ljava/lang/String;

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/settings/az;->g:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 347
    :catch_2
    move-exception v1

    goto :goto_2

    .line 369
    :cond_6
    invoke-virtual {v1}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v1

    .line 370
    if-eqz v1, :cond_7

    .line 371
    invoke-direct {p0, v1}, Lam/sunrise/android/calendar/ui/settings/az;->b(Lretrofit/client/Response;)V

    .line 374
    :cond_7
    const-string v1, "ConnectiCloudTask"

    const-string v3, "Exception: %s"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v9

    invoke-static {v1, v3, v4}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 316
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x191 -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 268
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/settings/az;->a()Lam/sunrise/android/calendar/ui/settings/at;

    move-result-object v0

    .line 269
    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/at;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/b/m;->a(Landroid/support/v4/app/i;)V

    .line 271
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 272
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/at;->d()V

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/az;->f:Ljava/lang/String;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/settings/az;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/ui/settings/at;->a(Lam/sunrise/android/calendar/ui/settings/at;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 233
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/settings/az;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 233
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/settings/az;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 3

    .prologue
    .line 259
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/settings/az;->a()Lam/sunrise/android/calendar/ui/settings/at;

    move-result-object v0

    .line 260
    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/at;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    const v2, 0x7f0f00dc

    invoke-virtual {v0, v2}, Lam/sunrise/android/calendar/ui/settings/at;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lam/sunrise/android/calendar/ui/b/m;->a(Landroid/support/v4/app/i;Ljava/lang/String;)V

    .line 264
    :cond_0
    return-void
.end method
