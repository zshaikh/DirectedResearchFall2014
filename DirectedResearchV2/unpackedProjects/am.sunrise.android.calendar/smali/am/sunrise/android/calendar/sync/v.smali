.class public Lam/sunrise/android/calendar/sync/v;
.super Ljava/lang/Object;
.source "SyncWorkerRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lam/sunrise/android/calendar/sync/z;

.field private final b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:I

.field private f:Lam/sunrise/android/calendar/sync/l;


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/sync/z;)V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lam/sunrise/android/calendar/sync/v;->e:I

    .line 52
    iput-object p1, p0, Lam/sunrise/android/calendar/sync/v;->a:Lam/sunrise/android/calendar/sync/z;

    .line 53
    invoke-interface {p1}, Lam/sunrise/android/calendar/sync/z;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/sync/v;->b:Ljava/lang/String;

    .line 54
    new-instance v0, Lam/sunrise/android/calendar/sync/l;

    iget-object v1, p0, Lam/sunrise/android/calendar/sync/v;->a:Lam/sunrise/android/calendar/sync/z;

    invoke-interface {v1}, Lam/sunrise/android/calendar/sync/z;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lam/sunrise/android/calendar/sync/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/sync/v;->f:Lam/sunrise/android/calendar/sync/l;

    .line 55
    return-void
.end method

.method private a(Ljava/lang/String;)Lam/sunrise/android/calendar/api/models/datas/Profile;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 258
    :try_start_0
    invoke-static {}, Lam/sunrise/android/calendar/api/a;->a()Lam/sunrise/android/calendar/api/c;

    move-result-object v0

    invoke-static {p1}, Lam/sunrise/android/calendar/api/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lam/sunrise/android/calendar/api/c;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;

    move-result-object v0

    .line 260
    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/v;->b:Ljava/lang/String;

    const-string v1, "fetchProfile: null response from backend"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    move-object v0, v2

    .line 303
    :goto_1
    return-object v0

    .line 263
    :cond_0
    iget-object v1, v0, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->meta:Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;

    iget v1, v1, Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;->code:I

    sparse-switch v1, :sswitch_data_0

    .line 272
    iget-object v1, p0, Lam/sunrise/android/calendar/sync/v;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fetchProfile: Error - code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->meta:Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;

    iget v4, v4, Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;->code:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " errorMessage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->meta:Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;

    iget-object v4, v4, Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;->errorMessage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    iget-object v1, p0, Lam/sunrise/android/calendar/sync/v;->a:Lam/sunrise/android/calendar/sync/z;

    iget-object v3, v0, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->meta:Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;

    iget v3, v3, Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;->code:I

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->meta:Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v3, v0}, Lam/sunrise/android/calendar/sync/z;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 278
    :catch_0
    move-exception v1

    .line 279
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 280
    instance-of v0, v1, Lretrofit/RetrofitError;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 281
    check-cast v0, Lretrofit/RetrofitError;

    .line 282
    invoke-virtual {v0}, Lretrofit/RetrofitError;->isNetworkError()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 283
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/v;->b:Ljava/lang/String;

    const-string v1, "fetchProfile: No network!"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/v;->a:Lam/sunrise/android/calendar/sync/z;

    sget-object v1, Lam/sunrise/android/calendar/sync/events/SyncError$Error;->NoNetwork:Lam/sunrise/android/calendar/sync/events/SyncError$Error;

    invoke-interface {v0, v1}, Lam/sunrise/android/calendar/sync/z;->a(Lam/sunrise/android/calendar/sync/events/SyncError$Error;)V

    move-object v0, v2

    .line 285
    goto :goto_1

    .line 265
    :sswitch_0
    :try_start_1
    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->data:Ljava/lang/Object;

    check-cast v0, Lam/sunrise/android/calendar/api/models/datas/Profile;

    goto :goto_1

    .line 268
    :sswitch_1
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/v;->a:Lam/sunrise/android/calendar/sync/z;

    sget-object v1, Lam/sunrise/android/calendar/sync/events/SyncError$Error;->OAuth:Lam/sunrise/android/calendar/sync/events/SyncError$Error;

    invoke-interface {v0, v1}, Lam/sunrise/android/calendar/sync/z;->a(Lam/sunrise/android/calendar/sync/events/SyncError$Error;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 288
    :cond_1
    invoke-virtual {v0}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v0

    .line 289
    if-eqz v0, :cond_4

    .line 290
    invoke-virtual {v0}, Lretrofit/client/Response;->getStatus()I

    move-result v3

    const/16 v4, 0x191

    if-ne v3, v4, :cond_3

    .line 291
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/v;->b:Ljava/lang/String;

    const-string v3, "fetchProfile: Error - NOTIFYING"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/v;->a:Lam/sunrise/android/calendar/sync/z;

    sget-object v3, Lam/sunrise/android/calendar/sync/events/SyncError$Error;->OAuth:Lam/sunrise/android/calendar/sync/events/SyncError$Error;

    invoke-interface {v0, v3}, Lam/sunrise/android/calendar/sync/z;->a(Lam/sunrise/android/calendar/sync/events/SyncError$Error;)V

    .line 301
    :cond_2
    :goto_2
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/v;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fetchProfile: Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 294
    :cond_3
    iget-object v3, p0, Lam/sunrise/android/calendar/sync/v;->a:Lam/sunrise/android/calendar/sync/z;

    invoke-virtual {v0}, Lretrofit/client/Response;->getStatus()I

    move-result v0

    invoke-interface {v3, v0, v2}, Lam/sunrise/android/calendar/sync/z;->a(ILjava/lang/String;)V

    goto :goto_2

    .line 298
    :cond_4
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/v;->a:Lam/sunrise/android/calendar/sync/z;

    sget-object v3, Lam/sunrise/android/calendar/sync/events/SyncError$Error;->NoNetwork:Lam/sunrise/android/calendar/sync/events/SyncError$Error;

    invoke-interface {v0, v3}, Lam/sunrise/android/calendar/sync/z;->a(Lam/sunrise/android/calendar/sync/events/SyncError$Error;)V

    goto :goto_2

    .line 263
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x191 -> :sswitch_1
    .end sparse-switch
.end method

.method static synthetic a(Lam/sunrise/android/calendar/sync/v;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/v;->b:Ljava/lang/String;

    return-object v0
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/v;->a:Lam/sunrise/android/calendar/sync/z;

    invoke-interface {v0, p1}, Lam/sunrise/android/calendar/sync/z;->a(I)V

    .line 243
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/sync/v;I)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/sync/v;->b(I)V

    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lam/sunrise/android/calendar/sync/v;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lam/sunrise/android/calendar/sync/v;->e:I

    .line 247
    iget v0, p0, Lam/sunrise/android/calendar/sync/v;->e:I

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/sync/v;->a(I)V

    .line 248
    return-void
.end method

.method private b(I)V
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lam/sunrise/android/calendar/sync/v;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Lam/sunrise/android/calendar/sync/v;->e:I

    .line 252
    iget v0, p0, Lam/sunrise/android/calendar/sync/v;->e:I

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/sync/v;->a(I)V

    .line 253
    return-void
.end method

.method private c()[Lam/sunrise/android/calendar/sync/x;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 317
    .line 318
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/v;->a:Lam/sunrise/android/calendar/sync/z;

    invoke-interface {v0}, Lam/sunrise/android/calendar/sync/z;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lam/sunrise/android/calendar/provider/g;->a:Landroid/net/Uri;

    sget-object v2, Lam/sunrise/android/calendar/sync/w;->a:[Ljava/lang/String;

    const-string v3, "calendar_is_enabled = ?"

    sget-object v4, Lam/sunrise/android/calendar/sync/w;->b:[Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 322
    if-eqz v1, :cond_2

    .line 323
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    const-string v0, "calendar_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 325
    const-string v0, "calendar_sync_token"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 326
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v5, v0, [Lam/sunrise/android/calendar/sync/x;

    .line 327
    const/4 v0, 0x0

    .line 329
    :cond_0
    new-instance v4, Lam/sunrise/android/calendar/sync/x;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, p0, v6, v7}, Lam/sunrise/android/calendar/sync/x;-><init>(Lam/sunrise/android/calendar/sync/v;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v5, v0

    .line 330
    add-int/lit8 v0, v0, 0x1

    .line 331
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 333
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 335
    :cond_2
    return-object v5
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lam/sunrise/android/calendar/sync/v;->c:Z

    .line 64
    iput-boolean v0, p0, Lam/sunrise/android/calendar/sync/v;->d:Z

    .line 65
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 58
    iput-boolean p1, p0, Lam/sunrise/android/calendar/sync/v;->c:Z

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/sync/v;->d:Z

    .line 60
    return-void
.end method

.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v7, 0x0

    .line 75
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/v;->b:Ljava/lang/String;

    const-string v1, "Starting background synchronization"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    invoke-direct {p0}, Lam/sunrise/android/calendar/sync/v;->b()V

    .line 79
    new-instance v8, Lam/sunrise/android/calendar/b/c;

    invoke-direct {v8}, Lam/sunrise/android/calendar/b/c;-><init>()V

    .line 80
    new-instance v9, Lam/sunrise/android/calendar/b/c;

    invoke-direct {v9}, Lam/sunrise/android/calendar/b/c;-><init>()V

    .line 81
    invoke-virtual {v8}, Lam/sunrise/android/calendar/b/c;->a()V

    .line 83
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/v;->a:Lam/sunrise/android/calendar/sync/z;

    invoke-interface {v0}, Lam/sunrise/android/calendar/sync/z;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/authenticator/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 84
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/v;->b:Ljava/lang/String;

    const-string v1, "AuthenticationToken is NOT valid"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/v;->a:Lam/sunrise/android/calendar/sync/z;

    sget-object v1, Lam/sunrise/android/calendar/sync/events/SyncError$Error;->NotAuthenticated:Lam/sunrise/android/calendar/sync/events/SyncError$Error;

    invoke-interface {v0, v1}, Lam/sunrise/android/calendar/sync/z;->a(Lam/sunrise/android/calendar/sync/events/SyncError$Error;)V

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-boolean v0, p0, Lam/sunrise/android/calendar/sync/v;->c:Z

    if-eqz v0, :cond_2

    .line 91
    new-instance v0, Lam/sunrise/android/calendar/sync/g;

    iget-object v1, p0, Lam/sunrise/android/calendar/sync/v;->a:Lam/sunrise/android/calendar/sync/z;

    invoke-interface {v1}, Lam/sunrise/android/calendar/sync/z;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lam/sunrise/android/calendar/sync/g;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 93
    :try_start_0
    invoke-virtual {v0}, Lam/sunrise/android/calendar/sync/g;->a()V
    :try_end_0
    .catch Lam/sunrise/android/calendar/sync/f; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    iget-boolean v0, p0, Lam/sunrise/android/calendar/sync/v;->d:Z

    if-eqz v0, :cond_2

    .line 102
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lam/sunrise/android/calendar/sync/v;->a:Lam/sunrise/android/calendar/sync/z;

    invoke-interface {v1}, Lam/sunrise/android/calendar/sync/z;->a()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lam/sunrise/android/calendar/reminders/RemindersService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    const-string v1, "am.sunrise.android.calendar.action.PERFORM_REMINDERS_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    iget-object v1, p0, Lam/sunrise/android/calendar/sync/v;->a:Lam/sunrise/android/calendar/sync/z;

    invoke-interface {v1}, Lam/sunrise/android/calendar/sync/z;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 106
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/v;->b:Ljava/lang/String;

    const-string v1, "Only PendingActions have been sync\'ed"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    iget-object v1, p0, Lam/sunrise/android/calendar/sync/v;->b:Ljava/lang/String;

    const-string v2, "Error while applying Pending Actions: %s"

    new-array v3, v13, [Ljava/lang/Object;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/sync/f;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/v;->a:Lam/sunrise/android/calendar/sync/z;

    sget-object v1, Lam/sunrise/android/calendar/sync/events/SyncError$Error;->OAuth:Lam/sunrise/android/calendar/sync/events/SyncError$Error;

    invoke-interface {v0, v1}, Lam/sunrise/android/calendar/sync/z;->a(Lam/sunrise/android/calendar/sync/events/SyncError$Error;)V

    goto :goto_0

    .line 112
    :cond_2
    invoke-virtual {v9}, Lam/sunrise/android/calendar/b/c;->a()V

    .line 113
    invoke-direct {p0, v3}, Lam/sunrise/android/calendar/sync/v;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/api/models/datas/Profile;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_0

    .line 117
    iget-object v1, p0, Lam/sunrise/android/calendar/sync/v;->b:Ljava/lang/String;

    const-string v2, "fetching profile took: %s"

    new-array v4, v13, [Ljava/lang/Object;

    invoke-virtual {v9}, Lam/sunrise/android/calendar/b/c;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v1, v2, v4}, Lam/sunrise/android/calendar/b/i;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    iget-object v1, p0, Lam/sunrise/android/calendar/sync/v;->a:Lam/sunrise/android/calendar/sync/z;

    invoke-interface {v1}, Lam/sunrise/android/calendar/sync/z;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lam/sunrise/android/calendar/c;->a(Landroid/content/Context;Lam/sunrise/android/calendar/api/models/datas/Profile;)V

    .line 121
    invoke-direct {p0}, Lam/sunrise/android/calendar/sync/v;->b()V

    .line 124
    invoke-virtual {v9}, Lam/sunrise/android/calendar/b/c;->a()V

    .line 125
    iget-object v1, p0, Lam/sunrise/android/calendar/sync/v;->a:Lam/sunrise/android/calendar/sync/z;

    invoke-interface {v1}, Lam/sunrise/android/calendar/sync/z;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/datas/Profile;->connections:[Lam/sunrise/android/calendar/api/models/datas/Connection;

    invoke-static {v1, v0}, Lam/sunrise/android/calendar/sync/a;->a(Landroid/content/Context;[Lam/sunrise/android/calendar/api/models/datas/Connection;)Ljava/util/ArrayList;

    move-result-object v10

    .line 127
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 129
    :try_start_1
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/v;->a:Lam/sunrise/android/calendar/sync/z;

    invoke-interface {v0}, Lam/sunrise/android/calendar/sync/z;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar"

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_2

    .line 135
    :goto_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 137
    :cond_3
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/v;->b:Ljava/lang/String;

    const-string v1, "updating connections AND calendars took: %s"

    new-array v2, v13, [Ljava/lang/Object;

    invoke-virtual {v9}, Lam/sunrise/android/calendar/b/c;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    invoke-direct {p0}, Lam/sunrise/android/calendar/sync/v;->c()[Lam/sunrise/android/calendar/sync/x;

    move-result-object v11

    .line 141
    invoke-static {v11}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 142
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/v;->b:Ljava/lang/String;

    const-string v1, "generating tasks list..."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 146
    iget v0, p0, Lam/sunrise/android/calendar/sync/v;->e:I

    rsub-int/lit8 v0, v0, 0x64

    add-int/lit8 v0, v0, -0x1

    array-length v1, v11

    div-int v2, v0, v1

    move v6, v7

    .line 148
    :goto_2
    array-length v0, v11

    if-ge v6, v0, :cond_4

    .line 149
    new-instance v0, Lam/sunrise/android/calendar/sync/y;

    aget-object v1, v11, v6

    iget-object v4, v1, Lam/sunrise/android/calendar/sync/x;->a:Ljava/lang/String;

    aget-object v1, v11, v6

    iget-object v5, v1, Lam/sunrise/android/calendar/sync/x;->b:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lam/sunrise/android/calendar/sync/y;-><init>(Lam/sunrise/android/calendar/sync/v;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2

    .line 130
    :catch_1
    move-exception v0

    .line 131
    iget-object v1, p0, Lam/sunrise/android/calendar/sync/v;->b:Ljava/lang/String;

    const-string v2, "Unable to apply events batch (connections & calendars). Error: %s"

    new-array v4, v13, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v1, v2, v4}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 132
    :catch_2
    move-exception v0

    .line 133
    iget-object v1, p0, Lam/sunrise/android/calendar/sync/v;->b:Ljava/lang/String;

    const-string v2, "Unable to apply events batch (connections & calendars). Error: %s"

    new-array v4, v13, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v1, v2, v4}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 154
    :cond_4
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/v;->a:Lam/sunrise/android/calendar/sync/z;

    invoke-interface {v0}, Lam/sunrise/android/calendar/sync/z;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 155
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/v;->b:Ljava/lang/String;

    const-string v1, "Sync has been canceled"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 159
    :cond_5
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/v;->b:Ljava/lang/String;

    const-string v1, "tasks list size: %d"

    new-array v2, v13, [Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    invoke-virtual {v9}, Lam/sunrise/android/calendar/b/c;->a()V

    .line 162
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/v;->f:Lam/sunrise/android/calendar/sync/l;

    invoke-virtual {v0, v12}, Lam/sunrise/android/calendar/sync/l;->a(Ljava/util/List;)V

    .line 164
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/v;->b:Ljava/lang/String;

    const-string v1, "waiting for completion..."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/v;->f:Lam/sunrise/android/calendar/sync/l;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/sync/l;->a()V

    .line 168
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/v;->a:Lam/sunrise/android/calendar/sync/z;

    invoke-interface {v0}, Lam/sunrise/android/calendar/sync/z;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 169
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/v;->b:Ljava/lang/String;

    const-string v1, "Sync has been canceled"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 173
    :cond_6
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/v;->b:Ljava/lang/String;

    const-string v1, "%d tasks were completed in %s"

    new-array v2, v14, [Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v9}, Lam/sunrise/android/calendar/b/c;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v13

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    new-instance v0, Lam/sunrise/android/calendar/b/c;

    invoke-direct {v0}, Lam/sunrise/android/calendar/b/c;-><init>()V

    move v1, v7

    move v2, v7

    .line 179
    :goto_3
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 180
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/sync/y;

    .line 182
    invoke-static {v0}, Lam/sunrise/android/calendar/sync/y;->a(Lam/sunrise/android/calendar/sync/y;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 183
    invoke-static {v0}, Lam/sunrise/android/calendar/sync/y;->b(Lam/sunrise/android/calendar/sync/y;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 184
    invoke-static {v0}, Lam/sunrise/android/calendar/sync/y;->a(Lam/sunrise/android/calendar/sync/y;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 179
    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 188
    :cond_8
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/v;->a:Lam/sunrise/android/calendar/sync/z;

    invoke-interface {v0}, Lam/sunrise/android/calendar/sync/z;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 189
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/v;->b:Ljava/lang/String;

    const-string v1, "Sync has been canceled"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 193
    :cond_9
    invoke-virtual {v9}, Lam/sunrise/android/calendar/b/c;->a()V

    .line 195
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 196
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/v;->a:Lam/sunrise/android/calendar/sync/z;

    const-string v1, "Storing %d events..."

    new-array v2, v13, [Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lam/sunrise/android/calendar/sync/z;->a(Ljava/lang/String;)V

    .line 199
    :try_start_2
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/v;->a:Lam/sunrise/android/calendar/sync/z;

    invoke-interface {v0}, Lam/sunrise/android/calendar/sync/z;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar"

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_4

    .line 207
    :cond_a
    :goto_4
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/v;->b:Ljava/lang/String;

    const-string v1, "%d ContentProviderOperations were completed in %s"

    new-array v2, v14, [Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v9}, Lam/sunrise/android/calendar/b/c;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v13

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    :cond_b
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lam/sunrise/android/calendar/sync/v;->a:Lam/sunrise/android/calendar/sync/z;

    invoke-interface {v1}, Lam/sunrise/android/calendar/sync/z;->a()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lam/sunrise/android/calendar/reminders/RemindersService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 233
    const-string v1, "am.sunrise.android.calendar.action.PERFORM_REMINDERS_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    iget-object v1, p0, Lam/sunrise/android/calendar/sync/v;->a:Lam/sunrise/android/calendar/sync/z;

    invoke-interface {v1}, Lam/sunrise/android/calendar/sync/z;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 236
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/sync/v;->a(I)V

    .line 238
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/v;->b:Ljava/lang/String;

    const-string v1, "Background synchronization FINISHED -- duration=%s"

    new-array v2, v13, [Ljava/lang/Object;

    invoke-virtual {v8}, Lam/sunrise/android/calendar/b/c;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 200
    :catch_3
    move-exception v0

    .line 201
    iget-object v1, p0, Lam/sunrise/android/calendar/sync/v;->b:Ljava/lang/String;

    const-string v2, "Unable to apply events batch. Error: %s"

    new-array v3, v13, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 202
    :catch_4
    move-exception v0

    .line 203
    iget-object v1, p0, Lam/sunrise/android/calendar/sync/v;->b:Ljava/lang/String;

    const-string v2, "Unable to apply events batch. Error: %s"

    new-array v3, v13, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4
.end method
