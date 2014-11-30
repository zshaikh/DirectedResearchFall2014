.class Lam/sunrise/android/calendar/sync/y;
.super Lam/sunrise/android/calendar/sync/n;
.source "SyncWorkerRunnable.java"


# instance fields
.field private a:Lam/sunrise/android/calendar/sync/v;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/sync/v;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 360
    invoke-direct {p0}, Lam/sunrise/android/calendar/sync/n;-><init>()V

    .line 361
    iput-object p1, p0, Lam/sunrise/android/calendar/sync/y;->a:Lam/sunrise/android/calendar/sync/v;

    .line 362
    iput p2, p0, Lam/sunrise/android/calendar/sync/y;->b:I

    .line 363
    iput-object p3, p0, Lam/sunrise/android/calendar/sync/y;->c:Ljava/lang/String;

    .line 364
    iput-object p4, p0, Lam/sunrise/android/calendar/sync/y;->d:Ljava/lang/String;

    .line 365
    iput-object p5, p0, Lam/sunrise/android/calendar/sync/y;->e:Ljava/lang/String;

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lam/sunrise/android/calendar/sync/v;->a(Lam/sunrise/android/calendar/sync/v;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/sync/y;->f:Ljava/lang/String;

    .line 367
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/sync/y;->h:Ljava/util/ArrayList;

    .line 368
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/sync/y;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/y;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lam/sunrise/android/calendar/sync/y;)Z
    .locals 1

    .prologue
    .line 347
    iget-boolean v0, p0, Lam/sunrise/android/calendar/sync/y;->g:Z

    return v0
.end method

.method private c()Z
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 384
    invoke-static {}, Lam/sunrise/android/calendar/b/d;->a()Lam/sunrise/android/calendar/b/e;

    move-result-object v5

    move v0, v2

    .line 386
    :goto_0
    if-eqz v0, :cond_1

    .line 387
    invoke-virtual {p0}, Lam/sunrise/android/calendar/sync/y;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/y;->f:Ljava/lang/String;

    const-string v2, "Sync has been canceled"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 450
    :goto_1
    return v0

    .line 392
    :cond_0
    invoke-direct {p0}, Lam/sunrise/android/calendar/sync/y;->d()Lam/sunrise/android/calendar/api/models/responses/ArrayResponse;

    move-result-object v0

    .line 394
    if-nez v0, :cond_2

    .line 444
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/y;->h:Ljava/util/ArrayList;

    iget-object v1, p0, Lam/sunrise/android/calendar/sync/y;->d:Ljava/lang/String;

    invoke-static {v1}, Lam/sunrise/android/calendar/provider/g;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lam/sunrise/android/calendar/provider/e;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v3, "calendar_sync_token"

    iget-object v4, p0, Lam/sunrise/android/calendar/sync/y;->e:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v2

    .line 450
    goto :goto_1

    .line 399
    :cond_2
    iget-object v3, v0, Lam/sunrise/android/calendar/api/models/responses/ArrayResponse;->syncToken:Ljava/lang/String;

    iput-object v3, p0, Lam/sunrise/android/calendar/sync/y;->e:Ljava/lang/String;

    .line 401
    iget-object v3, v0, Lam/sunrise/android/calendar/api/models/responses/ArrayResponse;->data:[Ljava/lang/Object;

    invoke-static {v3}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 406
    iget-boolean v4, v0, Lam/sunrise/android/calendar/api/models/responses/ArrayResponse;->nextPage:Z

    .line 408
    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/responses/ArrayResponse;->data:[Ljava/lang/Object;

    check-cast v0, [Lam/sunrise/android/calendar/api/models/datas/Event;

    array-length v6, v0

    move v3, v1

    :goto_2
    if-ge v3, v6, :cond_7

    aget-object v7, v0, v3

    .line 409
    invoke-virtual {p0}, Lam/sunrise/android/calendar/sync/y;->b()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 410
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/y;->f:Ljava/lang/String;

    const-string v2, "Sync has been canceled"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 411
    goto :goto_1

    .line 415
    :cond_3
    iget-object v8, v7, Lam/sunrise/android/calendar/api/models/datas/Event;->status:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "cancelled"

    iget-object v9, v7, Lam/sunrise/android/calendar/api/models/datas/Event;->status:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 416
    iget-object v8, p0, Lam/sunrise/android/calendar/sync/y;->d:Ljava/lang/String;

    invoke-static {v5, v8, v7}, Lam/sunrise/android/calendar/sync/a;->a(Lam/sunrise/android/calendar/b/e;Ljava/lang/String;Lam/sunrise/android/calendar/api/models/datas/Event;)Ljava/util/ArrayList;

    move-result-object v7

    .line 418
    invoke-static {v7}, Lam/sunrise/android/calendar/b/b;->a(Ljava/util/ArrayList;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 419
    iput-boolean v2, p0, Lam/sunrise/android/calendar/sync/y;->g:Z

    .line 420
    iget-object v8, p0, Lam/sunrise/android/calendar/sync/y;->h:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 408
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 425
    :cond_5
    iget-object v8, v7, Lam/sunrise/android/calendar/api/models/datas/Event;->recurrence:Lam/sunrise/android/calendar/api/models/datas/Event$Recurrence;

    if-eqz v8, :cond_6

    iget-object v8, v7, Lam/sunrise/android/calendar/api/models/datas/Event;->recurrence:Lam/sunrise/android/calendar/api/models/datas/Event$Recurrence;

    iget-object v8, v8, Lam/sunrise/android/calendar/api/models/datas/Event$Recurrence;->parent:Lam/sunrise/android/calendar/api/models/datas/Event$Recurrence$Parent;

    if-eqz v8, :cond_6

    iget-object v8, v7, Lam/sunrise/android/calendar/api/models/datas/Event;->recurrence:Lam/sunrise/android/calendar/api/models/datas/Event$Recurrence;

    iget-object v8, v8, Lam/sunrise/android/calendar/api/models/datas/Event$Recurrence;->parent:Lam/sunrise/android/calendar/api/models/datas/Event$Recurrence$Parent;

    iget-object v8, v8, Lam/sunrise/android/calendar/api/models/datas/Event$Recurrence$Parent;->id:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 427
    iget-object v8, p0, Lam/sunrise/android/calendar/sync/y;->d:Ljava/lang/String;

    invoke-static {v5, v8, v7}, Lam/sunrise/android/calendar/sync/a;->a(Lam/sunrise/android/calendar/b/e;Ljava/lang/String;Lam/sunrise/android/calendar/api/models/datas/Event;)Ljava/util/ArrayList;

    move-result-object v8

    .line 428
    invoke-static {v8}, Lam/sunrise/android/calendar/b/b;->a(Ljava/util/ArrayList;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 429
    iput-boolean v2, p0, Lam/sunrise/android/calendar/sync/y;->g:Z

    .line 430
    iget-object v9, p0, Lam/sunrise/android/calendar/sync/y;->h:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 434
    :cond_6
    iget-object v8, p0, Lam/sunrise/android/calendar/sync/y;->d:Ljava/lang/String;

    invoke-static {v5, v8, v7}, Lam/sunrise/android/calendar/sync/a;->b(Lam/sunrise/android/calendar/b/e;Ljava/lang/String;Lam/sunrise/android/calendar/api/models/datas/Event;)Ljava/util/ArrayList;

    move-result-object v7

    .line 435
    invoke-static {v7}, Lam/sunrise/android/calendar/b/b;->a(Ljava/util/ArrayList;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 436
    iput-boolean v2, p0, Lam/sunrise/android/calendar/sync/y;->g:Z

    .line 437
    iget-object v8, p0, Lam/sunrise/android/calendar/sync/y;->h:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :cond_7
    move v0, v4

    .line 441
    goto/16 :goto_0
.end method

.method private d()Lam/sunrise/android/calendar/api/models/responses/ArrayResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lam/sunrise/android/calendar/api/models/responses/ArrayResponse",
            "<",
            "Lam/sunrise/android/calendar/api/models/datas/Event;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 456
    :try_start_0
    invoke-static {}, Lam/sunrise/android/calendar/api/a;->a()Lam/sunrise/android/calendar/api/c;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/sync/y;->c:Ljava/lang/String;

    invoke-static {v1}, Lam/sunrise/android/calendar/api/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lam/sunrise/android/calendar/sync/y;->d:Ljava/lang/String;

    iget-object v4, p0, Lam/sunrise/android/calendar/sync/y;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v3, v4}, Lam/sunrise/android/calendar/api/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lam/sunrise/android/calendar/api/models/responses/ArrayResponse;

    move-result-object v0

    .line 458
    if-nez v0, :cond_1

    .line 459
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/y;->f:Ljava/lang/String;

    const-string v1, "fetchCalendarEvents: null response from backend"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    move-object v0, v2

    .line 482
    :cond_0
    :goto_1
    return-object v0

    .line 461
    :cond_1
    iget-object v1, v0, Lam/sunrise/android/calendar/api/models/responses/ArrayResponse;->meta:Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;

    iget v1, v1, Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;->code:I

    const/16 v3, 0xc8

    if-eq v1, v3, :cond_0

    .line 462
    iget-object v1, p0, Lam/sunrise/android/calendar/sync/y;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fetchCalendarEvents: Error - code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lam/sunrise/android/calendar/api/models/responses/ArrayResponse;->meta:Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;

    iget v4, v4, Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;->code:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " errorMessage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/responses/ArrayResponse;->meta:Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;->errorMessage:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 467
    :catch_0
    move-exception v1

    .line 468
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 469
    instance-of v0, v1, Lretrofit/RetrofitError;

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 470
    check-cast v0, Lretrofit/RetrofitError;

    .line 471
    invoke-virtual {v0}, Lretrofit/RetrofitError;->isNetworkError()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 472
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/y;->f:Ljava/lang/String;

    const-string v1, "fetchCalendarEvents: No network!"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    .line 473
    goto :goto_1

    .line 475
    :cond_2
    invoke-virtual {v0}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v0

    .line 476
    if-eqz v0, :cond_3

    .line 477
    iget-object v3, p0, Lam/sunrise/android/calendar/sync/y;->f:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fetchCalendarEvents: statusCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lretrofit/client/Response;->getStatus()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 480
    :cond_3
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/y;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fetchCalendarEvents: Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/y;->f:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 377
    invoke-direct {p0}, Lam/sunrise/android/calendar/sync/y;->c()Z

    .line 378
    invoke-virtual {p0}, Lam/sunrise/android/calendar/sync/y;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/y;->a:Lam/sunrise/android/calendar/sync/v;

    iget v1, p0, Lam/sunrise/android/calendar/sync/y;->b:I

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/sync/v;->a(Lam/sunrise/android/calendar/sync/v;I)V

    .line 381
    :cond_0
    return-void
.end method
