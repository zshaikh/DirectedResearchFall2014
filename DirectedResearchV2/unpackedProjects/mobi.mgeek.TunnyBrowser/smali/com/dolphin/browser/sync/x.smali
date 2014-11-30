.class public Lcom/dolphin/browser/sync/x;
.super Ljava/lang/Object;
.source "DeviceSyncClientStore.java"

# interfaces
.implements Lcom/dolphin/browser/sync/ag;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dolphin/browser/sync/ag",
        "<",
        "Lcom/dolphin/browser/sync/w;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/dolphin/browser/sync/x;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/sync/x;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dolphin/browser/sync/k;Lcom/dolphin/browser/sync/w;)V
    .locals 5

    .prologue
    .line 279
    sget-object v0, Lcom/dolphin/browser/sync/x;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create tabs on server:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-static {}, Lcom/dolphin/browser/DolphinService/WebService/g;->a()Lcom/dolphin/browser/DolphinService/WebService/g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dolphin/browser/sync/k;->f()Lcom/dolphin/browser/DolphinService/Account/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/DolphinService/Account/p;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/dolphin/browser/sync/w;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/DolphinService/WebService/g;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 286
    :try_start_0
    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 287
    const-string v2, "sid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 288
    invoke-static {}, Lcom/dolphin/browser/sync/at;->t()Lcom/dolphin/browser/sync/at;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/dolphin/browser/sync/at;->a(J)V

    .line 289
    invoke-static {}, Lcom/dolphin/browser/sync/at;->t()Lcom/dolphin/browser/sync/at;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/sync/at;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :goto_0
    return-void

    .line 290
    :catch_0
    move-exception v0

    .line 291
    sget-object v1, Lcom/dolphin/browser/sync/x;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(Lcom/dolphin/browser/sync/k;Lcom/dolphin/browser/sync/w;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12

    .prologue
    .line 69
    invoke-virtual {p2}, Lcom/dolphin/browser/sync/w;->e()Ljava/lang/String;

    move-result-object v9

    .line 70
    const/4 v8, 0x0

    .line 72
    :try_start_0
    invoke-virtual {p2}, Lcom/dolphin/browser/sync/w;->l()Ljava/util/List;

    move-result-object v10

    .line 73
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    .line 75
    invoke-virtual {p0}, Lcom/dolphin/browser/sync/x;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "deviceid = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v9, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 79
    :try_start_1
    invoke-virtual {p2}, Lcom/dolphin/browser/sync/w;->b()Landroid/content/ContentValues;

    move-result-object v0

    .line 80
    const-string v2, "tab_count"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 81
    const-string v2, "sync_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 82
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/dolphin/browser/sync/x;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "deviceid = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v9, v4, v5

    invoke-virtual {p3, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 84
    invoke-static {}, Lcom/dolphin/browser/sync/ar;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "deviceid = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v9, v3, v4

    invoke-virtual {p3, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 92
    :goto_0
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v11, :cond_1

    .line 93
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/sync/ar;

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/ar;->c()Landroid/content/ContentValues;

    move-result-object v0

    .line 94
    const-string v3, "deviceid"

    invoke-virtual {v0, v3, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/dolphin/browser/sync/ar;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p3, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 92
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/sync/x;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    :goto_2
    :try_start_2
    sget-object v2, Lcom/dolphin/browser/sync/x;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 100
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->b(Landroid/database/Cursor;)V

    .line 102
    :goto_3
    return-void

    .line 100
    :cond_1
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->b(Landroid/database/Cursor;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_4
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->b(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    .line 97
    :catch_1
    move-exception v0

    move-object v1, v8

    goto :goto_2
.end method

.method private a(Lcom/dolphin/browser/sync/k;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 106
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/sync/at;->t()Lcom/dolphin/browser/sync/at;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lcom/dolphin/browser/sync/at;->u()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/sync/at;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_1
    :try_start_0
    const-string v0, "%s=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "sync_id"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/cn;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 120
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    .line 123
    invoke-virtual {p0}, Lcom/dolphin/browser/sync/x;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 124
    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    const-string v0, "deviceid"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-static {}, Lcom/dolphin/browser/sync/ar;->a()Ljava/lang/String;

    move-result-object v2

    const-string v5, "deviceid=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {p3, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 130
    :cond_2
    invoke-virtual {p0}, Lcom/dolphin/browser/sync/x;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 134
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->b(Landroid/database/Cursor;)V

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    move-object v1, v8

    .line 132
    :goto_1
    :try_start_2
    sget-object v2, Lcom/dolphin/browser/sync/x;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 134
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->b(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_2
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->b(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 131
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 140
    sget-object v0, Lcom/dolphin/browser/sync/x;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteDeviceTabOnLocalbyDeviceId deviceid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 145
    if-lez v0, :cond_0

    .line 147
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-static {}, Lcom/dolphin/browser/sync/ao;->a()Lcom/dolphin/browser/sync/ao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/sync/ao;->f()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 149
    if-eqz v1, :cond_0

    .line 152
    :try_start_0
    const-string v2, "%s=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "deviceid"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/dolphin/browser/util/cn;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 154
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 155
    invoke-static {}, Lcom/dolphin/browser/sync/ar;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "deviceid == ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 157
    const-string v0, "other_devices"

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    sget-object v1, Lcom/dolphin/browser/sync/x;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/ContentValues;Lcom/dolphin/browser/sync/w;)Landroid/content/ContentValues;
    .locals 2

    .prologue
    .line 332
    const-string v0, "sync_id"

    invoke-virtual {p2}, Lcom/dolphin/browser/sync/w;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v0, "name"

    invoke-virtual {p2}, Lcom/dolphin/browser/sync/w;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v0, "deviceid"

    invoke-virtual {p2}, Lcom/dolphin/browser/sync/w;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v0, "device_type"

    invoke-virtual {p2}, Lcom/dolphin/browser/sync/w;->m()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 336
    return-object p1
.end method

.method public bridge synthetic a(Landroid/content/ContentValues;Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 24
    check-cast p2, Lcom/dolphin/browser/sync/w;

    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/sync/x;->a(Landroid/content/ContentValues;Lcom/dolphin/browser/sync/w;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    const-string v0, "other_devices"

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;Lcom/dolphin/browser/sync/w;)Lorg/json/JSONObject;
    .locals 0

    .prologue
    .line 327
    return-object p1
.end method

.method public bridge synthetic a(Lorg/json/JSONObject;Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 24
    check-cast p2, Lcom/dolphin/browser/sync/w;

    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/sync/x;->a(Lorg/json/JSONObject;Lcom/dolphin/browser/sync/w;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/dolphin/browser/sync/k;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 299
    invoke-static {}, Lcom/dolphin/browser/sync/ao;->a()Lcom/dolphin/browser/sync/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/ao;->f()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 301
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    const/16 v2, 0x2a

    if-ge v1, v2, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/sync/x;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 306
    const-string v1, "tabs"

    invoke-virtual {v0, v1, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/sync/k;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x1

    return v0
.end method

.method public a(Lcom/dolphin/browser/sync/k;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/HashMap;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolphin/browser/sync/k;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/dolphin/browser/sync/w;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 37
    if-nez p2, :cond_0

    move v0, v1

    .line 64
    :goto_0
    return v0

    .line 43
    :cond_0
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 45
    :try_start_0
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 46
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/sync/w;

    .line 47
    invoke-direct {p0, p1, v0, p2}, Lcom/dolphin/browser/sync/x;->a(Lcom/dolphin/browser/sync/k;Lcom/dolphin/browser/sync/w;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 58
    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v0, v1

    goto :goto_0

    .line 50
    :cond_1
    :try_start_1
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 51
    invoke-direct {p0, p1, v0, p2}, Lcom/dolphin/browser/sync/x;->a(Lcom/dolphin/browser/sync/k;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 61
    :catchall_0
    move-exception v0

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 54
    :cond_2
    :try_start_2
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    const/4 v0, 0x1

    .line 61
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/sync/w;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Lcom/dolphin/browser/sync/k;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 313
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/sync/x;->d(Lcom/dolphin/browser/sync/k;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 314
    return-void
.end method

.method public c(Lcom/dolphin/browser/sync/k;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 318
    return-void
.end method

.method d(Lcom/dolphin/browser/sync/k;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .prologue
    .line 240
    move-object v0, p1

    check-cast v0, Lcom/dolphin/browser/sync/au;

    .line 241
    invoke-virtual {v0}, Lcom/dolphin/browser/sync/au;->q()V

    .line 244
    invoke-static {}, Lcom/dolphin/browser/sync/at;->s()Z

    move-result v1

    if-nez v1, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    invoke-virtual {v0}, Lcom/dolphin/browser/sync/au;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    new-instance v1, Lcom/dolphin/browser/sync/w;

    invoke-direct {v1}, Lcom/dolphin/browser/sync/w;-><init>()V

    .line 253
    invoke-virtual {v0}, Lcom/dolphin/browser/sync/au;->b()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/sync/w;->a(Ljava/util/List;)V

    .line 254
    invoke-virtual {v0}, Lcom/dolphin/browser/sync/au;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/sync/w;->b(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v0}, Lcom/dolphin/browser/sync/au;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/sync/w;->d(Ljava/lang/String;)V

    .line 256
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/sync/w;->d(I)V

    .line 257
    invoke-direct {p0, p1, v1}, Lcom/dolphin/browser/sync/x;->a(Lcom/dolphin/browser/sync/k;Lcom/dolphin/browser/sync/w;)V

    .line 258
    invoke-virtual {p1}, Lcom/dolphin/browser/sync/k;->j()V

    goto :goto_0
.end method
