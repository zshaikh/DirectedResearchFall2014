.class public Lcom/dolphin/browser/push/f;
.super Ljava/lang/Object;
.source "DevicesManager.java"


# static fields
.field private static a:Lcom/dolphin/browser/push/f;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/dolphin/browser/push/data/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/dolphin/browser/util/BaseObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dolphin/browser/util/BaseObservable",
            "<",
            "Lcom/dolphin/browser/push/g;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/SharedPreferences;

.field private e:Lcom/dolphin/browser/push/data/DeviceInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/dolphin/browser/push/f;

    invoke-direct {v0}, Lcom/dolphin/browser/push/f;-><init>()V

    sput-object v0, Lcom/dolphin/browser/push/f;->a:Lcom/dolphin/browser/push/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/push/f;->b:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/push/f;->b:Ljava/util/Map;

    .line 65
    new-instance v0, Lcom/dolphin/browser/util/BaseObservable;

    invoke-direct {v0}, Lcom/dolphin/browser/util/BaseObservable;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/push/f;->c:Lcom/dolphin/browser/util/BaseObservable;

    .line 66
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    const-string v1, "push_devices"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/core/AppContext;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/push/f;->d:Landroid/content/SharedPreferences;

    .line 67
    return-void
.end method

.method public static a()Lcom/dolphin/browser/push/f;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/dolphin/browser/push/f;->a:Lcom/dolphin/browser/push/f;

    return-object v0
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    .line 489
    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 490
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 491
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 492
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 493
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 494
    new-instance v3, Lcom/dolphin/browser/push/data/DeviceInfo;

    invoke-direct {v3, v0, v4}, Lcom/dolphin/browser/push/data/DeviceInfo;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 495
    invoke-virtual {v3}, Lcom/dolphin/browser/push/data/DeviceInfo;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v3}, Lcom/dolphin/browser/push/f;->c(Lcom/dolphin/browser/push/data/DeviceInfo;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 496
    invoke-direct {p0, v0}, Lcom/dolphin/browser/push/f;->f(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/dolphin/browser/push/data/DeviceInfo;->e:I

    .line 497
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/push/f;->e(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/dolphin/browser/push/data/DeviceInfo;->f:J

    .line 498
    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 501
    :cond_1
    iput-object v1, p0, Lcom/dolphin/browser/push/f;->b:Ljava/util/Map;

    .line 502
    invoke-virtual {p0}, Lcom/dolphin/browser/push/f;->b()V

    .line 503
    return-void
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 236
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    const/4 p0, 0x0

    .line 244
    :cond_0
    :goto_0
    return-object p0

    .line 239
    :cond_1
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 240
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 243
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private c(Lcom/dolphin/browser/push/data/DeviceInfo;)Z
    .locals 2

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/dolphin/browser/push/f;->h()Lcom/dolphin/browser/push/data/DeviceInfo;

    move-result-object v0

    .line 507
    iget-object v0, v0, Lcom/dolphin/browser/push/data/DeviceInfo;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/dolphin/browser/push/data/DeviceInfo;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private f(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 301
    iget-object v0, p0, Lcom/dolphin/browser/push/f;->d:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_share_count"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private f(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 351
    if-nez p1, :cond_1

    .line 360
    :cond_0
    :goto_0
    return v0

    .line 354
    :cond_1
    const-string v1, "del_id"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    const-string v0, "del_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 359
    invoke-static {v0}, Lcom/dolphin/browser/sync/x;->a(Ljava/lang/String;)V

    .line 360
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private g(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 364
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    const/4 v0, 0x0

    .line 368
    :goto_0
    return v0

    .line 367
    :cond_0
    invoke-static {p1}, Lcom/dolphin/browser/sync/x;->a(Ljava/lang/String;)V

    .line 368
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private k()V
    .locals 5

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/dolphin/browser/push/f;->f()Ljava/util/List;

    move-result-object v0

    .line 373
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/push/data/DeviceInfo;

    .line 378
    if-eqz v0, :cond_2

    .line 382
    iget-object v0, v0, Lcom/dolphin/browser/push/data/DeviceInfo;->c:Ljava/lang/String;

    .line 383
    const-string v2, "Devices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeAllDevices removed id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-direct {p0, v0}, Lcom/dolphin/browser/push/f;->g(Ljava/lang/String;)Z

    goto :goto_1

    .line 387
    :cond_3
    invoke-virtual {p0}, Lcom/dolphin/browser/push/f;->d()Z

    goto :goto_0
.end method

.method private l()Lcom/dolphin/browser/push/data/DeviceInfo;
    .locals 4

    .prologue
    .line 425
    const/4 v0, 0x0

    .line 426
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/DolphinService/Account/b;->e()Lcom/dolphin/browser/DolphinService/Account/a;

    move-result-object v1

    .line 427
    if-eqz v1, :cond_0

    .line 428
    invoke-virtual {v1}, Lcom/dolphin/browser/DolphinService/Account/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 430
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/core/Configuration;->getAndroidId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 432
    const/4 v0, 0x0

    .line 433
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v2

    invoke-static {v2}, Lcom/dolphin/browser/util/DisplayManager;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 434
    const/4 v0, 0x1

    .line 436
    :cond_1
    new-instance v2, Lcom/dolphin/browser/push/data/DeviceInfo;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v2, v3, v0, v1}, Lcom/dolphin/browser/push/data/DeviceInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/dolphin/browser/push/data/DeviceInfo;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/dolphin/browser/push/f;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/push/data/DeviceInfo;

    return-object v0
.end method

.method public a(Lcom/dolphin/browser/push/g;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/dolphin/browser/push/f;->c:Lcom/dolphin/browser/util/BaseObservable;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/util/BaseObservable;->addListener(Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method a(Ljava/lang/String;J)V
    .locals 3

    .prologue
    .line 403
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/push/f;->a(Ljava/lang/String;)Lcom/dolphin/browser/push/data/DeviceInfo;

    move-result-object v0

    .line 404
    if-eqz v0, :cond_0

    .line 405
    iput-wide p2, v0, Lcom/dolphin/browser/push/data/DeviceInfo;->f:J

    .line 406
    const-string v0, "_%s_last_push_time"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 407
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/push/f;->d:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 409
    :cond_0
    return-void
.end method

.method a(Z)V
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/dolphin/browser/push/f;->e:Lcom/dolphin/browser/push/data/DeviceInfo;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/dolphin/browser/push/f;->e:Lcom/dolphin/browser/push/data/DeviceInfo;

    iput-boolean p1, v0, Lcom/dolphin/browser/push/data/DeviceInfo;->d:Z

    .line 448
    :cond_0
    return-void
.end method

.method a(Lcom/dolphin/browser/push/data/DeviceInfo;)Z
    .locals 2

    .prologue
    .line 127
    invoke-virtual {p1}, Lcom/dolphin/browser/push/data/DeviceInfo;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    const/4 v0, 0x0

    .line 134
    :goto_0
    return v0

    .line 130
    :cond_0
    iget-object v0, p1, Lcom/dolphin/browser/push/data/DeviceInfo;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/push/f;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/dolphin/browser/push/data/DeviceInfo;->e:I

    .line 131
    iget-object v0, p1, Lcom/dolphin/browser/push/data/DeviceInfo;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/push/f;->e(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/dolphin/browser/push/data/DeviceInfo;->f:J

    .line 132
    iget-object v0, p0, Lcom/dolphin/browser/push/f;->b:Ljava/util/Map;

    iget-object v1, p1, Lcom/dolphin/browser/push/data/DeviceInfo;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-virtual {p0}, Lcom/dolphin/browser/push/f;->b()V

    .line 134
    const/4 v0, 0x1

    goto :goto_0
.end method

.method a(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 260
    .line 261
    const-string v0, "new"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    invoke-virtual {p0, p2}, Lcom/dolphin/browser/push/f;->a(Ljava/util/Map;)Z

    move v0, v1

    :goto_0
    move v2, v0

    .line 297
    :cond_0
    :goto_1
    return v2

    .line 264
    :cond_1
    const-string v0, "del"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 265
    const-string v0, "del_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 267
    const-string v0, "del_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 268
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 271
    invoke-static {}, Lcom/dolphin/browser/push/t;->a()Lcom/dolphin/browser/push/t;

    move-result-object v2

    .line 272
    invoke-virtual {v2}, Lcom/dolphin/browser/push/t;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 274
    const-string v0, "Devices"

    const-string v2, "logout by webmanagement"

    invoke-static {v0, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-virtual {p0}, Lcom/dolphin/browser/push/f;->g()V

    move v2, v1

    .line 276
    goto :goto_1

    .line 279
    :cond_2
    invoke-virtual {p0, p2}, Lcom/dolphin/browser/push/f;->c(Ljava/util/Map;)Z

    .line 280
    invoke-direct {p0, p2}, Lcom/dolphin/browser/push/f;->f(Ljava/util/Map;)Z

    move v0, v1

    .line 281
    goto :goto_0

    .line 282
    :cond_3
    const-string v0, "mod_dvc_nm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 283
    invoke-virtual {p0, p2}, Lcom/dolphin/browser/push/f;->b(Ljava/util/Map;)Z

    move v0, v1

    .line 284
    goto :goto_0

    .line 285
    :cond_4
    const-string v0, "remove"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 287
    invoke-virtual {p0}, Lcom/dolphin/browser/push/f;->g()V

    move v0, v1

    .line 288
    goto :goto_0

    .line 289
    :cond_5
    const-string v0, "join"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "states"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 291
    :cond_6
    invoke-virtual {p0, p2}, Lcom/dolphin/browser/push/f;->d(Ljava/util/Map;)V

    move v0, v1

    .line 292
    goto :goto_0

    .line 293
    :cond_7
    const-string v0, "offline"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 294
    invoke-virtual {p0, p2}, Lcom/dolphin/browser/push/f;->e(Ljava/util/Map;)V

    move v0, v1

    .line 295
    goto :goto_0

    :cond_8
    move v0, v2

    goto :goto_0
.end method

.method a(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/dolphin/browser/push/data/DeviceInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 109
    if-nez p1, :cond_0

    .line 110
    const/4 v0, 0x0

    .line 120
    :goto_0
    return v0

    .line 112
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/push/data/DeviceInfo;

    .line 113
    invoke-virtual {v0}, Lcom/dolphin/browser/push/data/DeviceInfo;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    iget-object v2, v0, Lcom/dolphin/browser/push/data/DeviceInfo;->c:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/dolphin/browser/push/f;->f(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/dolphin/browser/push/data/DeviceInfo;->e:I

    .line 115
    iget-object v2, v0, Lcom/dolphin/browser/push/data/DeviceInfo;->c:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/dolphin/browser/push/f;->e(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/dolphin/browser/push/data/DeviceInfo;->f:J

    .line 116
    iget-object v2, p0, Lcom/dolphin/browser/push/f;->b:Ljava/util/Map;

    iget-object v3, v0, Lcom/dolphin/browser/push/data/DeviceInfo;->c:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 119
    :cond_2
    invoke-virtual {p0}, Lcom/dolphin/browser/push/f;->b()V

    .line 120
    const/4 v0, 0x1

    goto :goto_0
.end method

.method a(Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 182
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    .line 198
    :goto_0
    return v0

    .line 187
    :cond_1
    :try_start_0
    const-string v0, "device_info"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 188
    const-string v1, "device_id"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 189
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 190
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 191
    new-instance v0, Lcom/dolphin/browser/push/data/DeviceInfo;

    invoke-direct {v0, v1, v3}, Lcom/dolphin/browser/push/data/DeviceInfo;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 192
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/dolphin/browser/push/data/DeviceInfo;->d:Z

    .line 193
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/push/f;->a(Lcom/dolphin/browser/push/data/DeviceInfo;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    :cond_2
    move v0, v2

    .line 198
    goto :goto_0
.end method

.method b()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/dolphin/browser/push/f;->c:Lcom/dolphin/browser/util/BaseObservable;

    invoke-virtual {v0}, Lcom/dolphin/browser/util/BaseObservable;->getListeners()Ljava/util/Iterator;

    move-result-object v1

    .line 84
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/push/g;

    .line 86
    invoke-interface {v0}, Lcom/dolphin/browser/push/g;->a()V

    goto :goto_0

    .line 88
    :cond_0
    return-void
.end method

.method b(Lcom/dolphin/browser/push/data/DeviceInfo;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lcom/dolphin/browser/push/f;->e:Lcom/dolphin/browser/push/data/DeviceInfo;

    .line 441
    invoke-virtual {p0}, Lcom/dolphin/browser/push/f;->c()V

    .line 442
    return-void
.end method

.method public b(Lcom/dolphin/browser/push/g;)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/dolphin/browser/push/f;->c:Lcom/dolphin/browser/util/BaseObservable;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/util/BaseObservable;->removeListener(Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/dolphin/browser/push/f;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 143
    :goto_0
    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/dolphin/browser/push/f;->b()V

    .line 146
    :cond_0
    return v0

    .line 142
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 202
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    .line 227
    :goto_0
    return v0

    .line 207
    :cond_1
    :try_start_0
    const-string v0, "device_info"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 208
    const-string v1, "target_id"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 209
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 210
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 211
    const-string v0, "name"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/push/f;->a(Ljava/lang/String;)Lcom/dolphin/browser/push/data/DeviceInfo;

    move-result-object v3

    .line 213
    if-eqz v3, :cond_2

    .line 214
    iput-object v0, v3, Lcom/dolphin/browser/push/data/DeviceInfo;->a:Ljava/lang/String;

    .line 218
    invoke-static {v1}, Lcom/dolphin/browser/push/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-static {v1, v0}, Lcom/dolphin/browser/provider/Browser;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lcom/dolphin/browser/push/f;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    const/4 v0, 0x1

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    :cond_2
    move v0, v2

    .line 227
    goto :goto_0
.end method

.method c()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/dolphin/browser/push/f;->c:Lcom/dolphin/browser/util/BaseObservable;

    invoke-virtual {v0}, Lcom/dolphin/browser/util/BaseObservable;->getListeners()Ljava/util/Iterator;

    move-result-object v1

    .line 93
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/push/g;

    .line 95
    invoke-interface {v0}, Lcom/dolphin/browser/push/g;->b()V

    goto :goto_0

    .line 97
    :cond_0
    return-void
.end method

.method c(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 248
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    :cond_0
    :goto_0
    return v0

    .line 252
    :cond_1
    const-string v1, "del_id"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    const-string v0, "del_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 254
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/push/f;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 391
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/push/f;->a(Ljava/lang/String;)Lcom/dolphin/browser/push/data/DeviceInfo;

    move-result-object v0

    .line 392
    if-eqz v0, :cond_0

    .line 393
    iget v1, v0, Lcom/dolphin/browser/push/data/DeviceInfo;->e:I

    .line 394
    add-int/lit8 v1, v1, 0x1

    .line 395
    iput v1, v0, Lcom/dolphin/browser/push/data/DeviceInfo;->e:I

    .line 396
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    iget-object v2, p0, Lcom/dolphin/browser/push/f;->d:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 398
    :cond_0
    return-void
.end method

.method d(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 306
    :try_start_0
    const-string v0, "device_list"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 307
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 308
    new-instance v2, Ljava/util/HashMap;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 309
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 311
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 312
    new-instance v5, Lcom/dolphin/browser/push/data/DeviceInfo;

    invoke-direct {v5, v0, v4}, Lcom/dolphin/browser/push/data/DeviceInfo;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 313
    invoke-virtual {v5}, Lcom/dolphin/browser/push/data/DeviceInfo;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 314
    invoke-direct {p0, v0}, Lcom/dolphin/browser/push/f;->f(Ljava/lang/String;)I

    move-result v4

    iput v4, v5, Lcom/dolphin/browser/push/data/DeviceInfo;->e:I

    .line 315
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/push/f;->e(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/dolphin/browser/push/data/DeviceInfo;->f:J

    .line 316
    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 321
    :catch_0
    move-exception v0

    .line 322
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    .line 324
    :goto_1
    return-void

    .line 319
    :cond_1
    :try_start_1
    iput-object v2, p0, Lcom/dolphin/browser/push/f;->b:Ljava/util/Map;

    .line 320
    invoke-virtual {p0}, Lcom/dolphin/browser/push/f;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method d()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/dolphin/browser/push/f;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 104
    invoke-virtual {p0}, Lcom/dolphin/browser/push/f;->b()V

    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/dolphin/browser/push/f;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method e(Ljava/lang/String;)J
    .locals 4

    .prologue
    .line 413
    const-string v0, "_%s_last_push_time"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 414
    iget-object v1, p0, Lcom/dolphin/browser/push/f;->d:Landroid/content/SharedPreferences;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method e(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 328
    :try_start_0
    const-string v0, "device_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 329
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/push/f;->a(Ljava/lang/String;)Lcom/dolphin/browser/push/data/DeviceInfo;

    move-result-object v0

    .line 330
    if-eqz v0, :cond_0

    .line 331
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/dolphin/browser/push/data/DeviceInfo;->d:Z

    .line 332
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/dolphin/browser/push/data/DeviceInfo;->g:J

    .line 334
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/push/f;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :goto_0
    return-void

    .line 335
    :catch_0
    move-exception v0

    .line 336
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public f()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/push/data/DeviceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/dolphin/browser/push/f;->e()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 168
    iget-object v0, p0, Lcom/dolphin/browser/push/f;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/push/data/DeviceInfo;

    .line 169
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 171
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 172
    return-object v1
.end method

.method g()V
    .locals 1

    .prologue
    .line 341
    invoke-direct {p0}, Lcom/dolphin/browser/push/f;->k()V

    .line 342
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->g()V

    .line 348
    return-void
.end method

.method public h()Lcom/dolphin/browser/push/data/DeviceInfo;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/dolphin/browser/push/f;->e:Lcom/dolphin/browser/push/data/DeviceInfo;

    if-nez v0, :cond_0

    .line 419
    invoke-direct {p0}, Lcom/dolphin/browser/push/f;->l()Lcom/dolphin/browser/push/data/DeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/push/f;->e:Lcom/dolphin/browser/push/data/DeviceInfo;

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/push/f;->e:Lcom/dolphin/browser/push/data/DeviceInfo;

    return-object v0
.end method

.method i()V
    .locals 1

    .prologue
    .line 451
    invoke-static {}, Lcom/dolphin/browser/push/t;->a()Lcom/dolphin/browser/push/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/push/t;->m()Z

    move-result v0

    .line 452
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/push/f;->a(Z)V

    .line 453
    return-void
.end method

.method public j()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 466
    invoke-static {}, Lcom/dolphin/browser/push/h;->a()Lcom/dolphin/browser/Network/d;

    move-result-object v2

    .line 468
    :try_start_0
    invoke-virtual {v2}, Lcom/dolphin/browser/Network/d;->g()Lcom/dolphin/browser/Network/n;

    move-result-object v2

    .line 469
    iget-object v3, v2, Lcom/dolphin/browser/Network/n;->b:Lorg/apache/http/StatusLine;

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_0

    .line 470
    iget-object v2, v2, Lcom/dolphin/browser/Network/n;->c:Lorg/apache/http/HttpEntity;

    invoke-static {v2}, Lcom/dolphin/browser/Network/l;->c(Lorg/apache/http/HttpEntity;)Lorg/json/JSONObject;

    move-result-object v2

    .line 471
    const-string v3, "status"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 472
    const-string v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 473
    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    .line 474
    const-string v3, "device_list"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 475
    invoke-direct {p0, v2}, Lcom/dolphin/browser/push/f;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 485
    :cond_0
    :goto_0
    return v0

    .line 478
    :catch_0
    move-exception v0

    .line 479
    const-string v2, "get devices"

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 480
    goto :goto_0

    .line 481
    :catch_1
    move-exception v0

    .line 482
    const-string v2, "get devices"

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 483
    goto :goto_0
.end method
