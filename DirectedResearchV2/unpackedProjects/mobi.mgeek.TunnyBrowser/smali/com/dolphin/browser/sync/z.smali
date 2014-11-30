.class public Lcom/dolphin/browser/sync/z;
.super Ljava/lang/Object;
.source "HistorySyncClientStore.java"

# interfaces
.implements Lcom/dolphin/browser/sync/ag;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dolphin/browser/sync/ag",
        "<",
        "Lcom/dolphin/browser/sync/aa;",
        ">;"
    }
.end annotation


# static fields
.field private static a:I

.field private static b:I

.field private static c:I

.field private static d:I

.field private static final e:[Ljava/lang/String;

.field private static final f:[Ljava/lang/String;

.field private static final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    sput v3, Lcom/dolphin/browser/sync/z;->a:I

    .line 29
    sput v4, Lcom/dolphin/browser/sync/z;->b:I

    .line 30
    sput v5, Lcom/dolphin/browser/sync/z;->c:I

    .line 31
    sput v6, Lcom/dolphin/browser/sync/z;->d:I

    .line 33
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "created"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "deleted"

    aput-object v1, v0, v6

    const-string v1, "sync_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "sync_status"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "title"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "last_visit"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "total_visit"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "0 AS is_folder"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "0 AS parent_sync_id"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "0 AS _order"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/sync/z;->e:[Ljava/lang/String;

    .line 49
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "total_visit"

    aput-object v1, v0, v3

    const-string v1, "visits"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "last_visit"

    aput-object v1, v0, v6

    sput-object v0, Lcom/dolphin/browser/sync/z;->f:[Ljava/lang/String;

    .line 56
    const-class v0, Lcom/dolphin/browser/sync/z;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/sync/z;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dolphin/browser/sync/aa;Landroid/database/sqlite/SQLiteDatabase;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 13

    .prologue
    .line 102
    const/4 v12, 0x0

    .line 103
    const/4 v11, 0x0

    .line 105
    :try_start_0
    const-string v4, "history"

    sget-object v5, Lcom/dolphin/browser/sync/z;->f:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 107
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 108
    sget v3, Lcom/dolphin/browser/sync/z;->a:I

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 109
    sget v3, Lcom/dolphin/browser/sync/z;->b:I

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 110
    sget v5, Lcom/dolphin/browser/sync/z;->c:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 111
    sget v7, Lcom/dolphin/browser/sync/z;->d:I

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 112
    invoke-virtual {p1}, Lcom/dolphin/browser/sync/aa;->g()J

    move-result-wide v7

    .line 113
    cmp-long v10, v5, v7

    if-lez v10, :cond_1

    .line 114
    :goto_0
    const-string v7, "last_visit"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, p4

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 115
    const-string v7, "total_visit"

    add-int v3, v3, p3

    sub-int/2addr v3, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 116
    const-string v3, "date"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 117
    const-string v3, "history"

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual {p2, v3, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    .line 122
    :goto_1
    if-eqz v4, :cond_0

    .line 124
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 132
    :cond_0
    :goto_2
    return v3

    :cond_1
    move-wide v5, v7

    .line 113
    goto :goto_0

    .line 125
    :catch_0
    move-exception v4

    .line 126
    invoke-static {v4}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_2

    .line 119
    :catch_1
    move-exception v3

    move-object v4, v12

    .line 120
    :goto_3
    :try_start_3
    invoke-static {v3}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 122
    if-eqz v4, :cond_3

    .line 124
    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move v3, v11

    .line 127
    goto :goto_2

    .line 125
    :catch_2
    move-exception v3

    .line 126
    invoke-static {v3}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    move v3, v11

    .line 127
    goto :goto_2

    .line 122
    :catchall_0
    move-exception v3

    move-object v4, v12

    :goto_4
    if-eqz v4, :cond_2

    .line 124
    :try_start_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 127
    :cond_2
    :goto_5
    throw v3

    .line 125
    :catch_3
    move-exception v4

    .line 126
    invoke-static {v4}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_5

    .line 122
    :catchall_1
    move-exception v3

    goto :goto_4

    .line 119
    :catch_4
    move-exception v3

    goto :goto_3

    :cond_3
    move v3, v11

    goto :goto_2

    :cond_4
    move v3, v11

    goto :goto_1
.end method

.method private static a(Ljava/util/List;II)Lorg/json/JSONArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/sync/aa;",
            ">;II)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 221
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 222
    add-int v0, p1, p2

    .line 223
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 224
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    .line 227
    :goto_0
    if-ge p1, v1, :cond_0

    .line 228
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/sync/aa;

    .line 229
    invoke-virtual {v0}, Lcom/dolphin/browser/sync/aa;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 227
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 231
    :cond_0
    return-object v2

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method private a(Lcom/dolphin/browser/sync/aa;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 136
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 137
    const-string v0, "sync_status"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 139
    invoke-virtual {p1}, Lcom/dolphin/browser/sync/aa;->c()Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-virtual {p1}, Lcom/dolphin/browser/sync/aa;->o()I

    move-result v3

    .line 141
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 142
    const-string v1, "%s=?"

    new-array v2, v9, [Ljava/lang/Object;

    const-string v5, "sync_id"

    aput-object v5, v2, v8

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/cn;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 143
    new-array v6, v9, [Ljava/lang/String;

    aput-object v0, v6, v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/dolphin/browser/sync/z;->a(Lcom/dolphin/browser/sync/aa;Landroid/database/sqlite/SQLiteDatabase;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 144
    if-eqz v0, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 150
    const-string v0, "%s=?"

    new-array v2, v9, [Ljava/lang/Object;

    const-string v5, "title"

    aput-object v5, v2, v8

    invoke-static {v0, v2}, Lcom/dolphin/browser/util/cn;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-virtual {p1}, Lcom/dolphin/browser/sync/aa;->k()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-virtual {p1}, Lcom/dolphin/browser/sync/aa;->l()Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND (%s is null OR %s=\'\')"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "url"

    aput-object v6, v5, v8

    const-string v6, "url"

    aput-object v6, v5, v9

    invoke-static {v2, v5}, Lcom/dolphin/browser/util/cn;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND %s<>1"

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "deleted"

    aput-object v6, v5, v8

    invoke-static {v2, v5}, Lcom/dolphin/browser/util/cn;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 162
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 164
    const-string v2, "sync_id"

    invoke-virtual {p1}, Lcom/dolphin/browser/sync/aa;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/dolphin/browser/sync/z;->a(Lcom/dolphin/browser/sync/aa;Landroid/database/sqlite/SQLiteDatabase;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 166
    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/dolphin/browser/sync/aa;->h()I

    move-result v0

    if-nez v0, :cond_0

    .line 167
    sget-object v0, Lcom/dolphin/browser/sync/z;->g:Ljava/lang/String;

    const-string v1, "not found %s, insert it"

    new-array v2, v9, [Ljava/lang/Object;

    aput-object p1, v2, v8

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 168
    const-string v0, "created"

    invoke-virtual {p1}, Lcom/dolphin/browser/sync/aa;->f()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 169
    const-string v0, "date"

    invoke-virtual {p1}, Lcom/dolphin/browser/sync/aa;->g()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 170
    const-string v0, "deleted"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 171
    const-string v0, "title"

    invoke-virtual {p1}, Lcom/dolphin/browser/sync/aa;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v0, "url"

    invoke-virtual {p1}, Lcom/dolphin/browser/sync/aa;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v0, "visits"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 174
    const-string v0, "last_visit"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 175
    const-string v0, "total_visit"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 176
    const-string v0, "history"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_0

    .line 156
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " AND %s=?"

    new-array v6, v9, [Ljava/lang/Object;

    const-string v7, "url"

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/dolphin/browser/util/cn;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private a(Lcom/dolphin/browser/sync/k;Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolphin/browser/sync/k;",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/sync/aa;",
            ">;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")V"
        }
    .end annotation

    .prologue
    .line 256
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    :cond_0
    return-void

    .line 260
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 262
    invoke-static {}, Lcom/dolphin/browser/DolphinService/WebService/g;->a()Lcom/dolphin/browser/DolphinService/WebService/g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dolphin/browser/sync/k;->f()Lcom/dolphin/browser/DolphinService/Account/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/DolphinService/Account/p;->b()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x14

    invoke-static {p2, v1, v3}, Lcom/dolphin/browser/sync/z;->a(Ljava/util/List;II)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/dolphin/browser/DolphinService/WebService/g;->a(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    .line 266
    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 270
    :try_start_0
    invoke-direct {p0, p1, v0, p3}, Lcom/dolphin/browser/sync/z;->a(Lcom/dolphin/browser/sync/k;Lorg/json/JSONArray;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_1
    add-int/lit8 v0, v1, 0x14

    move v1, v0

    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    sget-object v2, Lcom/dolphin/browser/sync/z;->g:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private a(Lcom/dolphin/browser/sync/k;Lorg/json/JSONArray;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7

    .prologue
    .line 237
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 238
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 240
    const-string v2, "_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 241
    const-string v3, "cid"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 242
    const-string v4, "sid"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 245
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 246
    const-string v5, "sync_id"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v2, "sync_status"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 248
    invoke-virtual {p0}, Lcom/dolphin/browser/sync/z;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {p3, v2, v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 250
    int-to-long v2, v0

    invoke-virtual {p1, p3, v2, v3}, Lcom/dolphin/browser/sync/k;->a(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 251
    invoke-virtual {p1}, Lcom/dolphin/browser/sync/k;->j()V

    .line 237
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 253
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 181
    sget-object v0, Lcom/dolphin/browser/sync/z;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete history on local:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 183
    const-string v1, "deleted"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 184
    const-string v1, "sync_status"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 185
    const-string v1, "%s=? AND %s is not null"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "sync_id"

    aput-object v3, v2, v5

    const-string v3, "sync_id"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/cn;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 186
    new-array v2, v4, [Ljava/lang/String;

    aput-object p1, v2, v5

    .line 187
    const-string v3, "history"

    invoke-virtual {p2, v3, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 188
    return-void
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/sync/aa;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 342
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 350
    :goto_0
    return v0

    .line 345
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/sync/aa;

    .line 346
    invoke-virtual {v0}, Lcom/dolphin/browser/sync/aa;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/aa;->h()I

    move-result v0

    if-eqz v0, :cond_2

    .line 347
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 350
    goto :goto_0
.end method

.method private b(Lcom/dolphin/browser/sync/k;Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolphin/browser/sync/k;",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/sync/aa;",
            ">;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 305
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 309
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 311
    invoke-static {}, Lcom/dolphin/browser/DolphinService/WebService/g;->a()Lcom/dolphin/browser/DolphinService/WebService/g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dolphin/browser/sync/k;->f()Lcom/dolphin/browser/DolphinService/Account/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dolphin/browser/DolphinService/Account/p;->b()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x14

    invoke-static {p2, v1, v4}, Lcom/dolphin/browser/sync/z;->a(Ljava/util/List;II)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/dolphin/browser/DolphinService/WebService/g;->b(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    .line 315
    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 318
    :try_start_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v3, v2

    .line 319
    :goto_1
    if-ge v3, v4, :cond_3

    .line 320
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 321
    const-string v6, "cid"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p2, v6}, Lcom/dolphin/browser/sync/z;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 322
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "cid"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 323
    const-string v7, "history"

    const/4 v8, 0x0

    invoke-virtual {p3, v7, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 330
    :goto_2
    const-string v6, "sid"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 331
    int-to-long v5, v5

    invoke-virtual {p1, p3, v5, v6}, Lcom/dolphin/browser/sync/k;->a(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 332
    invoke-virtual {p1}, Lcom/dolphin/browser/sync/k;->j()V

    .line 319
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 326
    :cond_2
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 327
    const-string v7, "sync_status"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 328
    invoke-virtual {p0}, Lcom/dolphin/browser/sync/z;->a()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "cid"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {p3, v7, v6, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 334
    :catch_0
    move-exception v0

    .line 335
    sget-object v3, Lcom/dolphin/browser/sync/z;->g:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    :cond_3
    add-int/lit8 v0, v1, 0x14

    move v1, v0

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Landroid/content/ContentValues;Lcom/dolphin/browser/sync/aa;)Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 502
    const-string v0, "is_folder"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 503
    const-string v0, "_order"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 504
    const-string v0, "url"

    invoke-virtual {p2}, Lcom/dolphin/browser/sync/aa;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const-string v0, "title"

    invoke-virtual {p2}, Lcom/dolphin/browser/sync/aa;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string v0, "last_visit"

    invoke-virtual {p2}, Lcom/dolphin/browser/sync/aa;->m()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 507
    const-string v0, "total_visit"

    invoke-virtual {p2}, Lcom/dolphin/browser/sync/aa;->n()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 508
    const-string v0, "date"

    invoke-virtual {p2}, Lcom/dolphin/browser/sync/aa;->g()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 509
    return-object p1
.end method

.method public bridge synthetic a(Landroid/content/ContentValues;Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 26
    check-cast p2, Lcom/dolphin/browser/sync/aa;

    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/sync/z;->a(Landroid/content/ContentValues;Lcom/dolphin/browser/sync/aa;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 491
    const-string v0, "history"

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;Lcom/dolphin/browser/sync/aa;)Lorg/json/JSONObject;
    .locals 0

    .prologue
    .line 496
    return-object p1
.end method

.method public bridge synthetic a(Lorg/json/JSONObject;Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 26
    check-cast p2, Lcom/dolphin/browser/sync/aa;

    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/sync/z;->a(Lorg/json/JSONObject;Lcom/dolphin/browser/sync/aa;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/dolphin/browser/sync/k;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 423
    invoke-static {}, Lcom/dolphin/browser/sync/ao;->a()Lcom/dolphin/browser/sync/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/ao;->f()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 424
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    const/16 v3, 0x2b

    if-ge v0, v3, :cond_1

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 429
    const-string v4, "sync_id"

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const-string v4, "sync_status"

    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 431
    invoke-virtual {p0}, Lcom/dolphin/browser/sync/z;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v3, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 433
    invoke-static {}, Lcom/dolphin/browser/sync/ab;->s()Lcom/dolphin/browser/sync/ab;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/sync/ab;->a(J)V

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/sync/k;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1

    .prologue
    .line 514
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
            "Lcom/dolphin/browser/sync/aa;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 69
    if-nez p2, :cond_0

    move v0, v1

    .line 96
    :goto_0
    return v0

    .line 75
    :cond_0
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 78
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

    .line 79
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/sync/aa;

    .line 80
    invoke-direct {p0, v0, p2}, Lcom/dolphin/browser/sync/z;->a(Lcom/dolphin/browser/sync/aa;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 90
    :catch_0
    move-exception v0

    .line 93
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v0, v1

    goto :goto_0

    .line 83
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

    .line 84
    invoke-direct {p0, v0, p2}, Lcom/dolphin/browser/sync/z;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 93
    :catchall_0
    move-exception v0

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 87
    :cond_2
    :try_start_2
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    const/4 v0, 0x1

    .line 93
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
            "Lcom/dolphin/browser/sync/aa;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Lcom/dolphin/browser/sync/k;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v8, 0x0

    .line 439
    const-string v0, "(%s is null OR %s=\'\') OR (%s=? OR %s=? OR %s=?)"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "sync_id"

    aput-object v2, v1, v7

    const-string v2, "sync_id"

    aput-object v2, v1, v9

    const-string v2, "sync_status"

    aput-object v2, v1, v5

    const-string v2, "sync_status"

    aput-object v2, v1, v6

    const/4 v2, 0x4

    const-string v3, "sync_status"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/cn;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 442
    new-array v4, v6, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 446
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 447
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 451
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/sync/z;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/sync/z;->e:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 452
    :try_start_1
    invoke-static {v1}, Lcom/dolphin/browser/sync/aa;->d(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    .line 453
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/sync/aa;

    .line 454
    invoke-virtual {v0}, Lcom/dolphin/browser/sync/aa;->c()Ljava/lang/String;

    move-result-object v3

    .line 455
    if-eqz v3, :cond_1

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 457
    :cond_1
    invoke-virtual {v0}, Lcom/dolphin/browser/sync/aa;->h()I

    move-result v3

    if-nez v3, :cond_0

    .line 458
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 469
    :catch_0
    move-exception v0

    .line 471
    :goto_1
    :try_start_2
    sget-object v2, Lcom/dolphin/browser/sync/z;->g:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 473
    if-eqz v1, :cond_2

    .line 475
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 482
    :cond_2
    :goto_2
    return-void

    .line 461
    :cond_3
    :try_start_4
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 473
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_4

    .line 475
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 478
    :cond_4
    :goto_4
    throw v0

    .line 465
    :cond_5
    :try_start_6
    invoke-direct {p0, p1, v9, p2}, Lcom/dolphin/browser/sync/z;->a(Lcom/dolphin/browser/sync/k;Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 467
    invoke-direct {p0, p1, v10, p2}, Lcom/dolphin/browser/sync/z;->b(Lcom/dolphin/browser/sync/k;Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 473
    if-eqz v1, :cond_2

    .line 475
    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 476
    :catch_1
    move-exception v0

    .line 477
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_2

    .line 476
    :catch_2
    move-exception v0

    .line 477
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_2

    .line 476
    :catch_3
    move-exception v1

    .line 477
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_4

    .line 473
    :catchall_1
    move-exception v0

    move-object v1, v8

    goto :goto_3

    .line 469
    :catch_4
    move-exception v0

    move-object v1, v8

    goto :goto_1
.end method

.method public c(Lcom/dolphin/browser/sync/k;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 486
    return-void
.end method
