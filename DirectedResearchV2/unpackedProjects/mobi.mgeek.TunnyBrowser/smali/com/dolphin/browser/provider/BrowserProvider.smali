.class public Lcom/dolphin/browser/provider/BrowserProvider;
.super Lcom/dolphin/browser/provider/BaseProvider;
.source "BrowserProvider.java"


# static fields
.field private static final a:Landroid/content/Intent;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:[Ljava/lang/String;

.field private static final e:[Ljava/lang/String;

.field private static final f:[Ljava/lang/String;

.field private static g:Landroid/content/UriMatcher;

.field private static h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:[Ljava/lang/String;

.field private static final j:[Ljava/lang/String;

.field private static final k:[Ljava/lang/String;

.field private static final l:[Ljava/lang/String;

.field private static final m:[Ljava/lang/String;


# instance fields
.field private n:I

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x3

    .line 50
    new-instance v0, Landroid/content/Intent;

    const-string v1, "mobi.mgeek.tunnybrowser.action.bookmarks_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/dolphin/browser/provider/BrowserProvider;->a:Landroid/content/Intent;

    .line 189
    const-string v0, "UPDATE %s SET %s=%s+1, %s=%s WHERE %s>=? AND %s<? AND %s=?"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "bookmarks"

    aput-object v2, v1, v7

    const-string v2, "_order"

    aput-object v2, v1, v8

    const-string v2, "_order"

    aput-object v2, v1, v5

    const-string v2, "sync_status"

    aput-object v2, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x5

    const-string v3, "_order"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "_order"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "folder"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/provider/BrowserProvider;->b:Ljava/lang/String;

    .line 194
    const-string v0, "UPDATE %s SET %s=%s-1, %s=%s WHERE %s<=? AND %s>? AND %s=?"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "bookmarks"

    aput-object v2, v1, v7

    const-string v2, "_order"

    aput-object v2, v1, v8

    const-string v2, "_order"

    aput-object v2, v1, v5

    const-string v2, "sync_status"

    aput-object v2, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x5

    const-string v3, "_order"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "_order"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "folder"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/provider/BrowserProvider;->c:Ljava/lang/String;

    .line 205
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/dolphin/browser/provider/BrowserProvider;->d:[Ljava/lang/String;

    .line 208
    new-array v0, v5, [Ljava/lang/String;

    sput-object v0, Lcom/dolphin/browser/provider/BrowserProvider;->e:[Ljava/lang/String;

    .line 211
    new-array v0, v6, [Ljava/lang/String;

    sput-object v0, Lcom/dolphin/browser/provider/BrowserProvider;->f:[Ljava/lang/String;

    .line 292
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v7

    const-string v1, "url"

    aput-object v1, v0, v8

    const-string v1, "title"

    aput-object v1, v0, v5

    const-string v1, "0 AS bookmark"

    aput-object v1, v0, v4

    sput-object v0, Lcom/dolphin/browser/provider/BrowserProvider;->i:[Ljava/lang/String;

    .line 297
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v7

    const-string v1, "url"

    aput-object v1, v0, v8

    const-string v1, "title"

    aput-object v1, v0, v5

    const-string v1, "1 AS bookmark"

    aput-object v1, v0, v4

    sput-object v0, Lcom/dolphin/browser/provider/BrowserProvider;->j:[Ljava/lang/String;

    .line 302
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v7

    const-string v1, "url"

    aput-object v1, v0, v8

    const-string v1, "title"

    aput-object v1, v0, v5

    const-string v1, "2 AS bookmark"

    aput-object v1, v0, v4

    sput-object v0, Lcom/dolphin/browser/provider/BrowserProvider;->k:[Ljava/lang/String;

    .line 307
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v7

    const-string v1, "url"

    aput-object v1, v0, v8

    const-string v1, "title"

    aput-object v1, v0, v5

    const-string v1, "4 AS bookmark"

    aput-object v1, v0, v4

    sput-object v0, Lcom/dolphin/browser/provider/BrowserProvider;->l:[Ljava/lang/String;

    .line 312
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v7

    const-string v1, "url"

    aput-object v1, v0, v8

    const-string v1, "title"

    aput-object v1, v0, v5

    const-string v1, "3 AS bookmark"

    aput-object v1, v0, v4

    sput-object v0, Lcom/dolphin/browser/provider/BrowserProvider;->m:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/dolphin/browser/provider/BaseProvider;-><init>()V

    .line 334
    const/4 v0, -0x1

    iput v0, p0, Lcom/dolphin/browser/provider/BrowserProvider;->n:I

    .line 335
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/provider/BrowserProvider;->o:I

    .line 1667
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)I
    .locals 12

    .prologue
    .line 1842
    const-string v0, "from_order"

    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 1843
    const-string v0, "to_order"

    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 1844
    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    .line 1845
    const/4 v0, 0x0

    .line 1871
    :goto_0
    return v0

    .line 1847
    :cond_0
    const-string v0, "bookmark_id"

    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 1848
    const-string v0, "bookmark_folder"

    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 1849
    sget-object v0, Lcom/dolphin/browser/provider/BrowserProvider;->b:Ljava/lang/String;

    .line 1850
    cmp-long v9, v1, v3

    if-gez v9, :cond_1

    .line 1851
    sget-object v0, Lcom/dolphin/browser/provider/BrowserProvider;->c:Ljava/lang/String;

    .line 1854
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1855
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v9, v10

    const/4 v1, 0x2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v9, v1

    invoke-virtual {p1, v0, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1858
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1862
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1864
    :goto_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1865
    const-string v1, "sync_status"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1866
    const-string v1, "_order"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1867
    const-string v1, "bookmarks"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1868
    invoke-static {}, Lcom/dolphin/browser/sync/s;->s()Lcom/dolphin/browser/sync/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/s;->n()V

    .line 1869
    invoke-virtual {p0}, Lcom/dolphin/browser/provider/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1870
    invoke-virtual {p0}, Lcom/dolphin/browser/provider/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/provider/BrowserProvider;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1871
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1859
    :catch_0
    move-exception v0

    .line 1860
    :try_start_1
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1862
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 1922
    :try_start_0
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1926
    :goto_0
    return v0

    .line 1923
    :catch_0
    move-exception v0

    .line 1924
    const-string v1, "BrowserProvider"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1926
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(JJ)J
    .locals 11

    .prologue
    const-wide/16 v6, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 1226
    sget-object v0, Lcom/dolphin/browser/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 1227
    invoke-virtual/range {v0 .. v5}, Lcom/dolphin/browser/provider/BrowserProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1230
    if-eqz v10, :cond_b

    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1231
    const-string v0, "folder"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 1233
    cmp-long v0, v0, p3

    if-nez v0, :cond_1

    .line 1292
    if-eqz v10, :cond_0

    .line 1294
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1302
    :cond_0
    :goto_0
    return-wide p1

    .line 1295
    :catch_0
    move-exception v0

    .line 1296
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1236
    :cond_1
    :try_start_2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1237
    const-string v0, "title"

    invoke-static {v10, v0, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1238
    const-string v0, "url"

    invoke-static {v10, v0, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1239
    const-string v0, "date"

    invoke-static {v10, v0, v1}, Landroid/database/DatabaseUtils;->cursorLongToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1240
    const-string v0, "created"

    invoke-static {v10, v0, v1}, Landroid/database/DatabaseUtils;->cursorLongToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1241
    const-string v0, "_order"

    invoke-static {v10, v0, v1}, Landroid/database/DatabaseUtils;->cursorLongToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1242
    const-string v0, "is_folder"

    invoke-static {v10, v0, v1}, Landroid/database/DatabaseUtils;->cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1243
    const-string v0, "deleted"

    invoke-static {v10, v0, v1}, Landroid/database/DatabaseUtils;->cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1245
    const-string v0, "sync_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1246
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1247
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1248
    const-string v2, "sync_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    const-string v0, "sync_status"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1253
    :cond_2
    const-string v0, "is_folder"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    move v0, v8

    .line 1254
    :goto_1
    const-string v2, "folder"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1256
    sget-object v2, Lcom/dolphin/browser/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {p0, v2, v1}, Lcom/dolphin/browser/provider/BrowserProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    .line 1257
    if-nez v1, :cond_5

    .line 1292
    if-eqz v10, :cond_3

    .line 1294
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    :goto_2
    move-wide p1, v6

    .line 1297
    goto :goto_0

    :cond_4
    move v0, v9

    .line 1253
    goto :goto_1

    .line 1295
    :catch_1
    move-exception v0

    .line 1296
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1259
    :cond_5
    :try_start_4
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    .line 1260
    if-eqz v0, :cond_9

    .line 1261
    const-string v3, "bookmarks.folder=?"

    .line 1262
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1266
    sget-object v1, Lcom/dolphin/browser/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/dolphin/browser/provider/BrowserProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v1

    .line 1270
    if-eqz v1, :cond_8

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_8

    .line 1271
    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1272
    const-string v0, "_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1274
    invoke-direct {p0, v2, v3, v6, v7}, Lcom/dolphin/browser/provider/BrowserProvider;->a(JJ)J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 1278
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_6

    .line 1280
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1283
    :cond_6
    :goto_4
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1292
    :catchall_1
    move-exception v0

    if-eqz v10, :cond_7

    .line 1294
    :try_start_8
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 1297
    :cond_7
    :goto_5
    throw v0

    .line 1278
    :cond_8
    if-eqz v1, :cond_9

    .line 1280
    :try_start_9
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1292
    :cond_9
    :goto_6
    if-eqz v10, :cond_a

    .line 1294
    :try_start_a
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    :cond_a
    :goto_7
    move-wide p1, v6

    .line 1297
    goto/16 :goto_0

    .line 1281
    :catch_2
    move-exception v0

    .line 1282
    :try_start_b
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_6

    .line 1281
    :catch_3
    move-exception v1

    .line 1282
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_4

    .line 1295
    :catch_4
    move-exception v0

    .line 1296
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_7

    .line 1292
    :cond_b
    if-eqz v10, :cond_c

    .line 1294
    :try_start_c
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    :cond_c
    :goto_8
    move-wide p1, v6

    .line 1302
    goto/16 :goto_0

    .line 1295
    :catch_5
    move-exception v0

    .line 1296
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_8

    .line 1295
    :catch_6
    move-exception v1

    .line 1296
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 1592
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/provider/BrowserProvider;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 1588
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dolphin/browser/provider/BrowserProvider;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;)Lcom/dolphin/browser/provider/o;
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1703
    new-instance v0, Lcom/dolphin/browser/provider/o;

    invoke-direct {v0, p0, v3}, Lcom/dolphin/browser/provider/o;-><init>(Lcom/dolphin/browser/provider/BrowserProvider;Lcom/dolphin/browser/provider/n;)V

    .line 1704
    aget-object v1, p2, v5

    .line 1705
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1706
    iput-object v3, v0, Lcom/dolphin/browser/provider/o;->a:Ljava/lang/String;

    .line 1707
    iput-object v3, v0, Lcom/dolphin/browser/provider/o;->b:[Ljava/lang/String;

    .line 1730
    :goto_0
    return-object v0

    .line 1709
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1710
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-gt v3, v4, :cond_1

    .line 1711
    sget-object v1, Lcom/dolphin/browser/provider/BrowserProvider;->f:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    .line 1712
    sget-object v1, Lcom/dolphin/browser/provider/BrowserProvider;->f:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    .line 1713
    sget-object v1, Lcom/dolphin/browser/provider/BrowserProvider;->f:[Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 1715
    sget-object v1, Lcom/dolphin/browser/provider/BrowserProvider;->f:[Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 1716
    sget-object v1, Lcom/dolphin/browser/provider/BrowserProvider;->f:[Ljava/lang/String;

    iput-object v1, v0, Lcom/dolphin/browser/provider/o;->b:[Ljava/lang/String;

    .line 1717
    const-string v1, "url LIKE ? OR url LIKE ? OR url LIKE ? OR title LIKE ?"

    iput-object v1, v0, Lcom/dolphin/browser/provider/o;->a:Ljava/lang/String;

    goto :goto_0

    .line 1718
    :cond_1
    const-string v3, "http"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "file"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1719
    :cond_2
    new-array v1, v6, [Ljava/lang/String;

    .line 1720
    aput-object v2, v1, v5

    .line 1721
    iput-object p1, v0, Lcom/dolphin/browser/provider/o;->a:Ljava/lang/String;

    .line 1722
    iput-object v1, v0, Lcom/dolphin/browser/provider/o;->b:[Ljava/lang/String;

    goto :goto_0

    .line 1724
    :cond_3
    sget-object v1, Lcom/dolphin/browser/provider/BrowserProvider;->e:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    .line 1725
    sget-object v1, Lcom/dolphin/browser/provider/BrowserProvider;->e:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 1726
    sget-object v1, Lcom/dolphin/browser/provider/BrowserProvider;->e:[Ljava/lang/String;

    iput-object v1, v0, Lcom/dolphin/browser/provider/o;->b:[Ljava/lang/String;

    .line 1727
    const-string v1, "url LIKE ? OR title LIKE ?"

    iput-object v1, v0, Lcom/dolphin/browser/provider/o;->a:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method static final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    const-string v1, "CASE WHEN bookmarks."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    const-string v1, " IS NOT NULL THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    const-string v1, "bookmarks."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    const-string v1, " ELSE history."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    const-string v1, " END AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a()Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 221
    sget-object v0, Lcom/dolphin/browser/provider/BrowserProvider;->h:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 223
    const-string v1, "_id"

    const-string v2, "history._id AS _id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string v1, "title"

    const-string v2, "title"

    invoke-static {v2}, Lcom/dolphin/browser/provider/BrowserProvider;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string v1, "url"

    const-string v2, "history"

    const-string v3, "url"

    invoke-static {v2, v3}, Lcom/dolphin/browser/provider/BrowserProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string v1, "created"

    const-string v2, "history"

    const-string v3, "created"

    invoke-static {v2, v3}, Lcom/dolphin/browser/provider/BrowserProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string v1, "date"

    const-string v2, "history"

    const-string v3, "date"

    invoke-static {v2, v3}, Lcom/dolphin/browser/provider/BrowserProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v1, "bookmark"

    const-string v2, "CASE WHEN %s.%s IS NOT NULL THEN 1 ELSE 0 END AS %s"

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "bookmarks"

    aput-object v4, v3, v5

    const-string v4, "_id"

    aput-object v4, v3, v6

    const-string v4, "bookmark"

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v1, "visits"

    const-string v2, "visits"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v1, "favicon"

    const-string v2, "favicon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v1, "thumbnail"

    const-string v2, "thumbnail"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string v1, "touch_icon"

    const-string v2, "touch_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string v1, "folder"

    const-string v2, "CASE WHEN %s.%s IS NOT NULL THEN %s.%s ELSE -1 END AS %s"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "bookmarks"

    aput-object v4, v3, v5

    const-string v4, "folder"

    aput-object v4, v3, v6

    const-string v4, "bookmarks"

    aput-object v4, v3, v7

    const-string v4, "folder"

    aput-object v4, v3, v8

    const/4 v4, 0x4

    const-string v5, "folder"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sput-object v0, Lcom/dolphin/browser/provider/BrowserProvider;->h:Ljava/util/HashMap;

    .line 258
    :cond_0
    sget-object v0, Lcom/dolphin/browser/provider/BrowserProvider;->h:Ljava/util/HashMap;

    return-object v0
.end method

.method private a(I)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 907
    .line 908
    sparse-switch p1, :sswitch_data_0

    move-object v1, v2

    .line 989
    :goto_0
    if-eqz v1, :cond_1

    .line 990
    invoke-virtual {p0}, Lcom/dolphin/browser/provider/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 991
    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 992
    aget-object v4, v1, v0

    .line 993
    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 994
    sget-object v5, Lcom/dolphin/browser/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    if-ne v5, v4, :cond_0

    .line 995
    invoke-virtual {p0}, Lcom/dolphin/browser/provider/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/dolphin/browser/provider/BrowserProvider;->a:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 991
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 912
    :sswitch_0
    new-array v1, v1, [Landroid/net/Uri;

    sget-object v3, Lcom/dolphin/browser/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    aput-object v3, v1, v0

    sget-object v3, Lcom/dolphin/browser/provider/Browser;->COMBINED_URI:Landroid/net/Uri;

    aput-object v3, v1, v4

    sget-object v3, Lcom/dolphin/browser/provider/Browser;->FOLDERS_URI:Landroid/net/Uri;

    aput-object v3, v1, v5

    goto :goto_0

    .line 918
    :sswitch_1
    new-array v1, v5, [Landroid/net/Uri;

    sget-object v3, Lcom/dolphin/browser/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    aput-object v3, v1, v0

    sget-object v3, Lcom/dolphin/browser/provider/Browser;->SPEED_DIAL_URI:Landroid/net/Uri;

    aput-object v3, v1, v4

    goto :goto_0

    .line 925
    :sswitch_2
    new-array v1, v5, [Landroid/net/Uri;

    sget-object v3, Lcom/dolphin/browser/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    aput-object v3, v1, v0

    sget-object v3, Lcom/dolphin/browser/provider/Browser;->FOLDERS_URI:Landroid/net/Uri;

    aput-object v3, v1, v4

    goto :goto_0

    .line 932
    :sswitch_3
    new-array v1, v5, [Landroid/net/Uri;

    sget-object v3, Lcom/dolphin/browser/provider/Browser;->COMBINED_URI:Landroid/net/Uri;

    aput-object v3, v1, v0

    sget-object v3, Lcom/dolphin/browser/provider/Browser;->HISTORY_URI:Landroid/net/Uri;

    aput-object v3, v1, v4

    goto :goto_0

    .line 939
    :sswitch_4
    new-array v1, v4, [Landroid/net/Uri;

    sget-object v3, Lcom/dolphin/browser/provider/Browser;->a:Landroid/net/Uri;

    aput-object v3, v1, v0

    goto :goto_0

    :sswitch_5
    move-object v1, v2

    .line 946
    goto :goto_0

    .line 949
    :sswitch_6
    new-array v1, v1, [Landroid/net/Uri;

    sget-object v3, Lcom/dolphin/browser/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    aput-object v3, v1, v0

    sget-object v3, Lcom/dolphin/browser/provider/Browser;->COMBINED_URI:Landroid/net/Uri;

    aput-object v3, v1, v4

    sget-object v3, Lcom/dolphin/browser/provider/Browser;->SPEED_DIAL_URI:Landroid/net/Uri;

    aput-object v3, v1, v5

    goto :goto_0

    .line 955
    :sswitch_7
    new-array v1, v4, [Landroid/net/Uri;

    sget-object v3, Lcom/dolphin/browser/provider/Browser;->SAVED_PAGES_URI:Landroid/net/Uri;

    aput-object v3, v1, v0

    goto :goto_0

    .line 961
    :sswitch_8
    new-array v1, v1, [Landroid/net/Uri;

    sget-object v3, Lcom/dolphin/browser/provider/Browser;->COMBINED_URI:Landroid/net/Uri;

    aput-object v3, v1, v0

    sget-object v3, Lcom/dolphin/browser/provider/Browser;->OTHER_DEVICES_URI:Landroid/net/Uri;

    aput-object v3, v1, v4

    sget-object v3, Lcom/dolphin/browser/provider/Browser;->FOLDERS_URI:Landroid/net/Uri;

    aput-object v3, v1, v5

    goto :goto_0

    .line 968
    :sswitch_9
    new-array v1, v1, [Landroid/net/Uri;

    sget-object v3, Lcom/dolphin/browser/provider/Browser;->TABS_URI:Landroid/net/Uri;

    aput-object v3, v1, v0

    sget-object v3, Lcom/dolphin/browser/provider/Browser;->COMBINED_URI:Landroid/net/Uri;

    aput-object v3, v1, v4

    sget-object v3, Lcom/dolphin/browser/provider/Browser;->FOLDERS_URI:Landroid/net/Uri;

    aput-object v3, v1, v5

    goto/16 :goto_0

    .line 975
    :sswitch_a
    new-array v1, v4, [Landroid/net/Uri;

    sget-object v3, Lcom/dolphin/browser/provider/Browser;->d:Landroid/net/Uri;

    aput-object v3, v1, v0

    goto/16 :goto_0

    .line 982
    :sswitch_b
    new-array v1, v4, [Landroid/net/Uri;

    sget-object v3, Lcom/dolphin/browser/provider/Browser;->RECENT_TABS_URI:Landroid/net/Uri;

    aput-object v3, v1, v0

    goto/16 :goto_0

    .line 999
    :cond_1
    return-void

    .line 908
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_0
        0x3ea -> :sswitch_2
        0x3eb -> :sswitch_2
        0x7d0 -> :sswitch_3
        0x7d1 -> :sswitch_3
        0xbb8 -> :sswitch_5
        0xbb9 -> :sswitch_5
        0x1388 -> :sswitch_6
        0x1b58 -> :sswitch_1
        0x1b59 -> :sswitch_1
        0x1f40 -> :sswitch_7
        0x1f41 -> :sswitch_7
        0x2328 -> :sswitch_4
        0x2329 -> :sswitch_4
        0x2710 -> :sswitch_8
        0x2af8 -> :sswitch_9
        0x2af9 -> :sswitch_9
        0x36b0 -> :sswitch_a
        0x36b1 -> :sswitch_a
        0x4650 -> :sswitch_b
        0x4651 -> :sswitch_b
    .end sparse-switch
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1934
    sget-object v0, Lcom/dolphin/browser/provider/BrowserProvider;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1935
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;[Landroid/content/ContentValues;Z)V
    .locals 4

    .prologue
    .line 871
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 872
    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 873
    aget-object v1, p2, v0

    .line 874
    const-string v2, "top_sites"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 872
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 876
    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 880
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 882
    :goto_1
    return-void

    .line 877
    :catch_0
    move-exception v0

    .line 878
    :try_start_1
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 880
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private static b()Landroid/content/UriMatcher;
    .locals 4

    .prologue
    .line 345
    sget-object v0, Lcom/dolphin/browser/provider/BrowserProvider;->g:Landroid/content/UriMatcher;

    if-nez v0, :cond_0

    .line 346
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->getBrowserAuthority()Ljava/lang/String;

    move-result-object v0

    .line 347
    const-string v1, "BrowserProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "authority:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v1, Lcom/dolphin/browser/provider/BrowserProvider;->g:Landroid/content/UriMatcher;

    .line 349
    sget-object v1, Lcom/dolphin/browser/provider/BrowserProvider;->g:Landroid/content/UriMatcher;

    .line 350
    const-string v2, "site_color"

    const/16 v3, 0x4268

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 351
    const-string v2, "site_color/#"

    const/16 v3, 0x4269

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 352
    const-string v2, "top_sites"

    const/16 v3, 0x3e80

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 353
    const-string v2, "top_sites/#"

    const/16 v3, 0x3e81

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 354
    const-string v2, "common_white_list"

    const/16 v3, 0x3a98

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 355
    const-string v2, "common_white_list/#"

    const/16 v3, 0x3a99

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 356
    const-string v2, "addon_update_table"

    const/16 v3, 0x36b0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 357
    const-string v2, "addon_update_table/#"

    const/16 v3, 0x36b1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 358
    const-string v2, "security_white_list"

    const/16 v3, 0x32c8

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 359
    const-string v2, "security_white_list/#"

    const/16 v3, 0x32c9

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 360
    const-string v2, "security_cache"

    const/16 v3, 0x2ee0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 361
    const-string v2, "security_cache/#"

    const/16 v3, 0x2ee1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 362
    const-string v2, "other_devices"

    const/16 v3, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 363
    const-string v2, "tabs"

    const/16 v3, 0x2af8

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 364
    const-string v2, "tabs/#"

    const/16 v3, 0x2af9

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 365
    const-string v2, "bookmarks"

    const/16 v3, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 366
    const-string v2, "bookmarks/#"

    const/16 v3, 0x3e9

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 367
    const-string v2, "bookmarks/folders"

    const/16 v3, 0x3ea

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 368
    const-string v2, "bookmarks/folders/#"

    const/16 v3, 0x3eb

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 369
    const-string v2, "search_suggest_query"

    const/16 v3, 0x3ec

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 370
    const-string v2, "bookmarks/search_suggest_query"

    const/16 v3, 0x3ed

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 372
    const-string v2, "websearch_suggest_query"

    const/16 v3, 0x3ee

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 374
    const-string v2, "history"

    const/16 v3, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 375
    const-string v2, "history/#"

    const/16 v3, 0x7d1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 376
    const-string v2, "most_visited"

    const/16 v3, 0x2328

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 377
    const-string v2, "most_visited/#"

    const/16 v3, 0x2329

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 378
    const-string v2, "searches"

    const/16 v3, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 379
    const-string v2, "searches/#"

    const/16 v3, 0xbb9

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 380
    const-string v2, "combined"

    const/16 v3, 0xfa0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 381
    const-string v2, "combined/#"

    const/16 v3, 0xfa1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 382
    const-string v2, "images"

    const/16 v3, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 384
    const-string v2, "reorder"

    const/16 v3, 0x1770

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 386
    const-string v2, "speed_dial"

    const/16 v3, 0x1b58

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 387
    const-string v2, "speed_dial/#"

    const/16 v3, 0x1b59

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 389
    const-string v2, "saved_pages"

    const/16 v3, 0x1f40

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 390
    const-string v2, "saved_pages/#"

    const/16 v3, 0x1f41

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 392
    const-string v2, "recent_tabs"

    const/16 v3, 0x4650

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 393
    const-string v2, "recent_tabs/#"

    const/16 v3, 0x4651

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 396
    :cond_0
    sget-object v0, Lcom/dolphin/browser/provider/BrowserProvider;->g:Landroid/content/UriMatcher;

    return-object v0
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1748
    aget-object v0, p3, v3

    .line 1749
    invoke-direct {p0, p2, p3}, Lcom/dolphin/browser/provider/BrowserProvider;->a(Ljava/lang/String;[Ljava/lang/String;)Lcom/dolphin/browser/provider/o;

    move-result-object v1

    .line 1750
    iget-object v2, v1, Lcom/dolphin/browser/provider/o;->a:Ljava/lang/String;

    .line 1751
    iget-object v1, v1, Lcom/dolphin/browser/provider/o;->b:[Ljava/lang/String;

    .line 1753
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1754
    invoke-direct {p0, p1, v2, v1}, Lcom/dolphin/browser/provider/BrowserProvider;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1756
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/dolphin/browser/provider/BrowserProvider;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 10

    .prologue
    .line 1640
    invoke-direct {p0, p2, p3}, Lcom/dolphin/browser/provider/BrowserProvider;->a(Ljava/lang/String;[Ljava/lang/String;)Lcom/dolphin/browser/provider/o;

    move-result-object v0

    .line 1641
    iget-object v8, v0, Lcom/dolphin/browser/provider/o;->a:Ljava/lang/String;

    .line 1642
    iget-object v4, v0, Lcom/dolphin/browser/provider/o;->b:[Ljava/lang/String;

    .line 1644
    if-eqz p4, :cond_0

    .line 1645
    const-string v0, "%s = 0 AND %s = 0"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "is_folder"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "deleted"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1647
    const-string v1, "bookmarks"

    sget-object v2, Lcom/dolphin/browser/provider/BrowserProvider;->j:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_order DESC"

    const-string v8, "6"

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1649
    new-instance v0, Lcom/dolphin/browser/search/ab;

    const/4 v2, 0x0

    const-string v3, ""

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dolphin/browser/search/ab;-><init>(Landroid/database/Cursor;Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)V

    .line 1663
    :goto_0
    return-object v0

    .line 1652
    :cond_0
    const-string v1, "bookmarks"

    sget-object v2, Lcom/dolphin/browser/provider/BrowserProvider;->j:[Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/dolphin/browser/provider/BrowserProvider;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_order DESC"

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1655
    const-string v1, "history"

    sget-object v2, Lcom/dolphin/browser/provider/BrowserProvider;->i:[Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/dolphin/browser/provider/BrowserProvider;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "type_visit DESC, visits DESC, date DESC"

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1659
    new-instance v1, Lcom/dolphin/browser/provider/t;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v9, v2, v0

    invoke-direct {v1, v2}, Lcom/dolphin/browser/provider/t;-><init>([Landroid/database/Cursor;)V

    .line 1663
    new-instance v0, Lcom/dolphin/browser/search/ab;

    const/4 v2, 0x0

    const-string v3, ""

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dolphin/browser/search/ab;-><init>(Landroid/database/Cursor;Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 1570
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    .line 1571
    if-eqz v0, :cond_0

    .line 1572
    invoke-virtual {v0}, Lcom/dolphin/browser/core/BrowserSettings;->isEnableSearchSuggestion()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1573
    invoke-virtual {v0}, Lcom/dolphin/browser/core/BrowserSettings;->getSearchEngine()Lcom/dolphin/browser/search/g;

    move-result-object v0

    .line 1574
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/dolphin/browser/search/g;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1575
    invoke-virtual {p0}, Lcom/dolphin/browser/provider/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/dolphin/browser/search/g;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1579
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;[Landroid/content/ContentValues;Z)V
    .locals 5

    .prologue
    .line 886
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 887
    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_2

    .line 888
    aget-object v1, p2, v0

    .line 889
    if-eqz p3, :cond_0

    .line 890
    const-string v2, "folder"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 892
    :cond_0
    const-string v2, "_order"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 893
    const-string v2, "_order"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 895
    :cond_1
    const-string v2, "sync_status"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 896
    const-string v2, "bookmarks"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 887
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 898
    :cond_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 902
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 904
    :goto_1
    return-void

    .line 899
    :catch_0
    move-exception v0

    .line 900
    :try_start_1
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 902
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 1772
    const-string v1, "history"

    sget-object v2, Lcom/dolphin/browser/provider/BrowserProvider;->i:[Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/dolphin/browser/provider/BrowserProvider;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "type_visit DESC, visits DESC, date DESC"

    invoke-direct {p0}, Lcom/dolphin/browser/provider/BrowserProvider;->c()Ljava/lang/String;

    move-result-object v8

    move-object v0, p1

    move-object v4, p3

    move-object v6, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1775
    const-string v1, "bookmarks"

    sget-object v2, Lcom/dolphin/browser/provider/BrowserProvider;->j:[Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/dolphin/browser/provider/BrowserProvider;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "_order DESC"

    invoke-direct {p0}, Lcom/dolphin/browser/provider/BrowserProvider;->d()Ljava/lang/String;

    move-result-object v8

    move-object v0, p1

    move-object v4, p3

    move-object v6, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1778
    new-instance v1, Lcom/dolphin/browser/provider/t;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Lcom/dolphin/browser/provider/t;-><init>([Landroid/database/Cursor;)V

    return-object v1
.end method

.method private c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 1803
    const-string v1, "history"

    sget-object v2, Lcom/dolphin/browser/provider/BrowserProvider;->i:[Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/dolphin/browser/provider/BrowserProvider;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "type_visit DESC, visits DESC, date DESC"

    move-object v0, p1

    move-object v4, p3

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1806
    const-string v1, "bookmarks"

    sget-object v2, Lcom/dolphin/browser/provider/BrowserProvider;->j:[Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/dolphin/browser/provider/BrowserProvider;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "_order DESC"

    move-object v0, p1

    move-object v4, p3

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1809
    new-instance v1, Lcom/dolphin/browser/provider/t;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Lcom/dolphin/browser/provider/t;-><init>([Landroid/database/Cursor;)V

    return-object v1
.end method

.method private c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1826
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1814
    const-string v0, "%s = 0"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "deleted"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1816
    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1838
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 1820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " url NOT IN (SELECT url FROM history WHERE deleted = 0) AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%s = 0 AND %s = 0"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "is_folder"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "deleted"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1822
    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1876
    iget v0, p0, Lcom/dolphin/browser/provider/BrowserProvider;->n:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1877
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/BrowserSettings;->getLastPruneImageCount()I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/provider/BrowserProvider;->n:I

    .line 1880
    :cond_0
    iget v0, p0, Lcom/dolphin/browser/provider/BrowserProvider;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dolphin/browser/provider/BrowserProvider;->n:I

    .line 1881
    iget v0, p0, Lcom/dolphin/browser/provider/BrowserProvider;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dolphin/browser/provider/BrowserProvider;->o:I

    .line 1883
    iget v0, p0, Lcom/dolphin/browser/provider/BrowserProvider;->n:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 1884
    invoke-direct {p0}, Lcom/dolphin/browser/provider/BrowserProvider;->f()V

    .line 1885
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/core/BrowserSettings;->setLastPruneImageCount(I)V

    .line 1886
    iput v2, p0, Lcom/dolphin/browser/provider/BrowserProvider;->n:I

    .line 1889
    :cond_1
    iget v0, p0, Lcom/dolphin/browser/provider/BrowserProvider;->o:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    .line 1890
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    iget v1, p0, Lcom/dolphin/browser/provider/BrowserProvider;->n:I

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/BrowserSettings;->setLastPruneImageCount(I)V

    .line 1891
    iput v2, p0, Lcom/dolphin/browser/provider/BrowserProvider;->o:I

    .line 1893
    :cond_2
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    .line 1896
    invoke-static {}, Lcom/dolphin/browser/provider/q;->a()Lcom/dolphin/browser/provider/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/provider/q;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1898
    const-string v1, "url_key NOT IN (SELECT url FROM bookmarks WHERE url IS NOT NULL) AND url_key NOT IN (SELECT url FROM history WHERE url IS NOT NULL) AND url_key NOT IN (SELECT url FROM most_visited WHERE url IS NOT NULL)"

    .line 1902
    const-string v2, "images"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1903
    return-void
.end method

.method private g()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1906
    invoke-static {}, Lcom/dolphin/browser/provider/q;->a()Lcom/dolphin/browser/provider/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/provider/q;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1907
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s=0 AND %s!=%d AND %s NOT IN (SELECT %s FROM %s WHERE %s=0 AND %s=1)"

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "deleted"

    aput-object v4, v3, v5

    const-string v4, "folder"

    aput-object v4, v3, v6

    const/4 v4, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "folder"

    aput-object v5, v3, v4

    const-string v4, "_id"

    aput-object v4, v3, v7

    const/4 v4, 0x5

    const-string v5, "bookmarks"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "deleted"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "is_folder"

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1911
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1912
    const-string v0, "deleted"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1913
    const-string v0, "sync_status"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1914
    :goto_0
    const-string v2, "bookmarks"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/provider/BrowserProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 1915
    invoke-static {}, Lcom/dolphin/browser/sync/s;->s()Lcom/dolphin/browser/sync/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/s;->n()V

    goto :goto_0

    .line 1917
    :cond_0
    return-void
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 844
    array-length v1, p2

    .line 845
    if-lez v1, :cond_0

    .line 846
    invoke-static {}, Lcom/dolphin/browser/provider/q;->a()Lcom/dolphin/browser/provider/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/provider/q;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 847
    invoke-static {}, Lcom/dolphin/browser/provider/BrowserProvider;->b()Landroid/content/UriMatcher;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 848
    sparse-switch v3, :sswitch_data_0

    .line 861
    const-string v1, "BrowserProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown insert URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    :goto_0
    return v0

    .line 850
    :sswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v2, p2, v0}, Lcom/dolphin/browser/provider/BrowserProvider;->b(Landroid/database/sqlite/SQLiteDatabase;[Landroid/content/ContentValues;Z)V

    .line 864
    :goto_1
    invoke-direct {p0, v3}, Lcom/dolphin/browser/provider/BrowserProvider;->a(I)V

    :cond_0
    move v0, v1

    .line 866
    goto :goto_0

    .line 854
    :sswitch_1
    invoke-direct {p0, v2, p2, v0}, Lcom/dolphin/browser/provider/BrowserProvider;->b(Landroid/database/sqlite/SQLiteDatabase;[Landroid/content/ContentValues;Z)V

    goto :goto_1

    .line 858
    :sswitch_2
    invoke-direct {p0, v2, p2, v0}, Lcom/dolphin/browser/provider/BrowserProvider;->a(Landroid/database/sqlite/SQLiteDatabase;[Landroid/content/ContentValues;Z)V

    goto :goto_1

    .line 848
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_1
        0x1b58 -> :sswitch_0
        0x3e80 -> :sswitch_2
    .end sparse-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 1003
    invoke-static {}, Lcom/dolphin/browser/provider/q;->a()Lcom/dolphin/browser/provider/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/provider/q;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1004
    invoke-static {}, Lcom/dolphin/browser/provider/BrowserProvider;->b()Landroid/content/UriMatcher;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 1009
    sparse-switch v2, :sswitch_data_0

    .line 1213
    const-string v0, "BrowserProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown delete URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1217
    :cond_0
    :goto_0
    if-gtz v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1218
    :cond_1
    invoke-direct {p0, v2}, Lcom/dolphin/browser/provider/BrowserProvider;->a(I)V

    .line 1221
    :cond_2
    return v0

    .line 1011
    :sswitch_0
    const-string v3, "bookmarks._id=?"

    invoke-static {p2, v3}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1012
    new-array v3, v6, [Ljava/lang/String;

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p3, v3}, Lcom/dolphin/browser/provider/r;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 1018
    :sswitch_1
    const-string v3, "bookmarks._id!=? AND bookmarks.folder!=?"

    invoke-static {p2, v3}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1020
    new-array v3, v8, [Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-static {p3, v3}, Lcom/dolphin/browser/provider/r;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1025
    const-string v3, "bookmarks"

    invoke-virtual {v0, v3, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1026
    invoke-static {}, Lcom/dolphin/browser/sync/aq;->a()Lcom/dolphin/browser/sync/aq;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dolphin/browser/provider/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/sync/aq;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1027
    invoke-static {}, Lcom/dolphin/browser/sync/s;->s()Lcom/dolphin/browser/sync/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/sync/s;->n()V

    .line 1030
    :cond_3
    invoke-direct {p0}, Lcom/dolphin/browser/provider/BrowserProvider;->e()V

    .line 1031
    invoke-direct {p0}, Lcom/dolphin/browser/provider/BrowserProvider;->g()V

    goto :goto_0

    .line 1035
    :sswitch_2
    const-string v3, "bookmarks._id=?"

    invoke-static {p2, v3}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1036
    new-array v3, v6, [Ljava/lang/String;

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p3, v3}, Lcom/dolphin/browser/provider/r;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 1042
    :sswitch_3
    const-string v3, "bookmarks._id!=? AND bookmarks.folder=?"

    invoke-static {p2, v3}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1044
    new-array v3, v8, [Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-static {p3, v3}, Lcom/dolphin/browser/provider/r;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1049
    const-string v3, "bookmarks"

    invoke-virtual {v0, v3, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1050
    invoke-static {}, Lcom/dolphin/browser/sync/aq;->a()Lcom/dolphin/browser/sync/aq;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dolphin/browser/provider/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/sync/aq;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1051
    invoke-static {}, Lcom/dolphin/browser/sync/s;->s()Lcom/dolphin/browser/sync/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/sync/s;->n()V

    .line 1054
    :cond_4
    invoke-direct {p0}, Lcom/dolphin/browser/provider/BrowserProvider;->e()V

    goto/16 :goto_0

    .line 1058
    :sswitch_4
    const-string v3, "bookmarks._id=?"

    invoke-static {p2, v3}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1059
    new-array v3, v6, [Ljava/lang/String;

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p3, v3}, Lcom/dolphin/browser/provider/r;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 1065
    :sswitch_5
    const-string v3, "bookmarks.is_folder=? AND bookmarks._id!=?"

    invoke-static {p2, v3}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1067
    new-array v3, v8, [Ljava/lang/String;

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-wide/16 v4, 0x3

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-static {p3, v3}, Lcom/dolphin/browser/provider/r;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1072
    const-string v3, "bookmarks"

    invoke-virtual {v0, v3, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1073
    invoke-static {}, Lcom/dolphin/browser/sync/aq;->a()Lcom/dolphin/browser/sync/aq;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dolphin/browser/provider/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/sync/aq;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1074
    invoke-static {}, Lcom/dolphin/browser/sync/s;->s()Lcom/dolphin/browser/sync/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/sync/s;->n()V

    .line 1077
    :cond_5
    invoke-direct {p0}, Lcom/dolphin/browser/provider/BrowserProvider;->e()V

    .line 1078
    invoke-direct {p0}, Lcom/dolphin/browser/provider/BrowserProvider;->g()V

    goto/16 :goto_0

    .line 1082
    :sswitch_6
    const-string v3, "history._id=?"

    invoke-static {p2, v3}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1083
    new-array v3, v6, [Ljava/lang/String;

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p3, v3}, Lcom/dolphin/browser/provider/r;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1087
    const-string v3, "history"

    invoke-virtual {v0, v3, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1088
    invoke-direct {p0}, Lcom/dolphin/browser/provider/BrowserProvider;->e()V

    goto/16 :goto_0

    .line 1095
    :sswitch_7
    const-string v3, " sync_id is NULL or sync_id=\'\' or sync_id=\"\""

    invoke-static {p2, v3}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1096
    const-string v4, "history"

    invoke-virtual {v0, v4, v3, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1099
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1100
    const-string v5, "deleted"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1101
    const-string v5, "title"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    const-string v5, "url"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    const-string v5, "sync_status"

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1104
    const-string v5, "history"

    invoke-virtual {v0, v5, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1105
    add-int/2addr v0, v3

    .line 1107
    invoke-static {}, Lcom/dolphin/browser/sync/ab;->s()Lcom/dolphin/browser/sync/ab;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/dolphin/browser/sync/ab;->a(ZLcom/dolphin/browser/DolphinService/WebService/a;)V

    .line 1108
    invoke-direct {p0}, Lcom/dolphin/browser/provider/BrowserProvider;->e()V

    goto/16 :goto_0

    .line 1112
    :sswitch_8
    const-string v3, "most_visited._id=?"

    invoke-static {p2, v3}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1113
    new-array v3, v6, [Ljava/lang/String;

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p3, v3}, Lcom/dolphin/browser/provider/r;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 1119
    :sswitch_9
    const-string v1, "most_visited"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1120
    invoke-direct {p0}, Lcom/dolphin/browser/provider/BrowserProvider;->e()V

    goto/16 :goto_0

    .line 1124
    :sswitch_a
    const-string v3, "searches._id=?"

    invoke-static {p2, v3}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1125
    new-array v3, v6, [Ljava/lang/String;

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p3, v3}, Lcom/dolphin/browser/provider/r;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 1131
    :sswitch_b
    const-string v1, "searches"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 1135
    :sswitch_c
    const-string v1, "images"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 1138
    :sswitch_d
    const-string v3, "_id=?"

    invoke-static {p2, v3}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1139
    new-array v3, v6, [Ljava/lang/String;

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p3, v3}, Lcom/dolphin/browser/provider/r;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 1145
    :sswitch_e
    const-string v1, "saved_pages"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 1149
    :sswitch_f
    const-string v3, "tabs._id=?"

    invoke-static {p2, v3}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1150
    new-array v3, v6, [Ljava/lang/String;

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p3, v3}, Lcom/dolphin/browser/provider/r;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 1156
    :sswitch_10
    const-string v1, "tabs"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1157
    invoke-direct {p0}, Lcom/dolphin/browser/provider/BrowserProvider;->e()V

    goto/16 :goto_0

    .line 1161
    :sswitch_11
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1162
    const-string v3, "deleted"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1163
    const-string v3, "other_devices"

    invoke-virtual {v0, v3, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1164
    invoke-static {}, Lcom/dolphin/browser/sync/aq;->a()Lcom/dolphin/browser/sync/aq;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dolphin/browser/provider/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/sync/aq;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1165
    invoke-static {}, Lcom/dolphin/browser/sync/at;->t()Lcom/dolphin/browser/sync/at;

    move-result-object v1

    const-wide/16 v3, 0x2af8

    invoke-virtual {v1, v3, v4}, Lcom/dolphin/browser/sync/at;->c(J)V

    goto/16 :goto_0

    .line 1170
    :sswitch_12
    const-string v1, "security_cache"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 1174
    :sswitch_13
    const-string v1, "security_white_list"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 1178
    :sswitch_14
    const-string v3, "_id=?"

    invoke-static {p2, v3}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1179
    new-array v3, v6, [Ljava/lang/String;

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p3, v3}, Lcom/dolphin/browser/provider/r;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 1185
    :sswitch_15
    const-string v1, "addon_update_table"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1186
    invoke-direct {p0}, Lcom/dolphin/browser/provider/BrowserProvider;->e()V

    goto/16 :goto_0

    .line 1190
    :sswitch_16
    const-string v1, "common_white_list"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 1194
    :sswitch_17
    const-string v1, "top_sites"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 1198
    :sswitch_18
    const-string v1, "site_color"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 1201
    :sswitch_19
    const-string v3, "recent_tabs._id=?"

    invoke-static {p2, v3}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1202
    new-array v3, v6, [Ljava/lang/String;

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p3, v3}, Lcom/dolphin/browser/provider/r;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 1207
    :sswitch_1a
    const-string v1, "recent_tabs"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 1009
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_1
        0x3e9 -> :sswitch_0
        0x3ea -> :sswitch_5
        0x3eb -> :sswitch_4
        0x7d0 -> :sswitch_7
        0x7d1 -> :sswitch_6
        0xbb8 -> :sswitch_b
        0xbb9 -> :sswitch_a
        0x1388 -> :sswitch_c
        0x1b58 -> :sswitch_3
        0x1b59 -> :sswitch_2
        0x1f40 -> :sswitch_e
        0x1f41 -> :sswitch_d
        0x2328 -> :sswitch_9
        0x2329 -> :sswitch_8
        0x2710 -> :sswitch_11
        0x2af8 -> :sswitch_10
        0x2af9 -> :sswitch_f
        0x2ee0 -> :sswitch_12
        0x32c8 -> :sswitch_13
        0x36b0 -> :sswitch_15
        0x36b1 -> :sswitch_14
        0x3a98 -> :sswitch_16
        0x3e80 -> :sswitch_17
        0x4268 -> :sswitch_18
        0x4650 -> :sswitch_1a
        0x4651 -> :sswitch_19
    .end sparse-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 401
    invoke-static {}, Lcom/dolphin/browser/provider/BrowserProvider;->b()Landroid/content/UriMatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 402
    sparse-switch v0, :sswitch_data_0

    .line 465
    const-string v0, "BrowserProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 404
    :sswitch_0
    const-string v0, "vnd.android.cursor.dir/dolphin-addonupdate"

    goto :goto_0

    .line 407
    :sswitch_1
    const-string v0, "vnd.android.cursor.item/dolphin-addonupdate"

    goto :goto_0

    .line 410
    :sswitch_2
    const-string v0, "vnd.android.cursor.dir/dolphin-otherdevice"

    goto :goto_0

    .line 413
    :sswitch_3
    const-string v0, "vnd.android.cursor.dir/dolphin-tabs"

    goto :goto_0

    .line 416
    :sswitch_4
    const-string v0, "vnd.android.cursor.item/dolphin-tabs"

    goto :goto_0

    .line 419
    :sswitch_5
    const-string v0, "vnd.android.cursor.dir/dolphin-bookmark"

    goto :goto_0

    .line 422
    :sswitch_6
    const-string v0, "vnd.android.cursor.item/dolphin-bookmark"

    goto :goto_0

    .line 425
    :sswitch_7
    const-string v0, "vnd.android.cursor.dir/dolphin-folders"

    goto :goto_0

    .line 428
    :sswitch_8
    const-string v0, "vnd.android.cursor.item/dolphin-folders"

    goto :goto_0

    .line 431
    :sswitch_9
    const-string v0, "vnd.android.cursor.dir/dolphin-history"

    goto :goto_0

    .line 434
    :sswitch_a
    const-string v0, "vnd.android.cursor.item/dolphin-history"

    goto :goto_0

    .line 437
    :sswitch_b
    const-string v0, "vnd.android.cursor.dir/dolphin-most-visited"

    goto :goto_0

    .line 440
    :sswitch_c
    const-string v0, "vnd.android.cursor.item/dolphin-most-visited"

    goto :goto_0

    .line 443
    :sswitch_d
    const-string v0, "vnd.android.cursor.dir/dolphin-searches"

    goto :goto_0

    .line 446
    :sswitch_e
    const-string v0, "vnd.android.cursor.item/dolphin-searches"

    goto :goto_0

    .line 449
    :sswitch_f
    const-string v0, "vnd.android.cursor.dir/dolphin-speed-dials"

    goto :goto_0

    .line 452
    :sswitch_10
    const-string v0, "vnd.android.cursor.item/dolphin-speed-dials"

    goto :goto_0

    .line 455
    :sswitch_11
    const-string v0, "vnd.android.cursor.dir/dolphin-saved-pages"

    goto :goto_0

    .line 458
    :sswitch_12
    const-string v0, "vnd.android.cursor.item/dolphin-saved-pages"

    goto :goto_0

    .line 462
    :sswitch_13
    const-string v0, "vnd.android.cursor.dir/vnd.android.search.suggest"

    goto :goto_0

    .line 402
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_5
        0x3e9 -> :sswitch_6
        0x3ea -> :sswitch_7
        0x3eb -> :sswitch_8
        0x3ec -> :sswitch_13
        0x3ee -> :sswitch_13
        0x7d0 -> :sswitch_9
        0x7d1 -> :sswitch_a
        0xbb8 -> :sswitch_d
        0xbb9 -> :sswitch_e
        0x1b58 -> :sswitch_f
        0x1b59 -> :sswitch_10
        0x1f40 -> :sswitch_11
        0x1f41 -> :sswitch_12
        0x2328 -> :sswitch_b
        0x2329 -> :sswitch_c
        0x2710 -> :sswitch_2
        0x2af8 -> :sswitch_3
        0x2af9 -> :sswitch_4
        0x36b0 -> :sswitch_0
        0x36b1 -> :sswitch_1
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x0

    .line 739
    invoke-static {}, Lcom/dolphin/browser/provider/q;->a()Lcom/dolphin/browser/provider/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/provider/q;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 740
    invoke-static {}, Lcom/dolphin/browser/provider/BrowserProvider;->b()Landroid/content/UriMatcher;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 743
    sparse-switch v3, :sswitch_data_0

    .line 830
    const-string v1, "BrowserProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown insert URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    :goto_0
    return-object v0

    .line 745
    :sswitch_0
    const-string v2, "folder"

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 747
    :sswitch_1
    const-string v2, "_order"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 748
    const-string v2, "_order"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p2, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 750
    :cond_0
    const-string v2, "sync_status"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 751
    const-string v2, "bookmarks"

    invoke-virtual {v1, v2, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 752
    invoke-static {}, Lcom/dolphin/browser/sync/aq;->a()Lcom/dolphin/browser/sync/aq;

    move-result-object v4

    invoke-virtual {p0}, Lcom/dolphin/browser/provider/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/dolphin/browser/sync/aq;->d(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 753
    invoke-static {}, Lcom/dolphin/browser/sync/s;->s()Lcom/dolphin/browser/sync/s;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dolphin/browser/sync/s;->n()V

    .line 834
    :cond_1
    :goto_1
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-gez v4, :cond_2

    .line 835
    const-string v1, "BrowserProvider"

    const-string v2, "error occured when insert data into database"

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 758
    :sswitch_2
    const-string v2, "is_folder"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 759
    const-string v2, "sync_status"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 760
    const-string v2, "bookmarks"

    invoke-virtual {v1, v2, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 761
    invoke-static {}, Lcom/dolphin/browser/sync/aq;->a()Lcom/dolphin/browser/sync/aq;

    move-result-object v4

    invoke-virtual {p0}, Lcom/dolphin/browser/provider/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/dolphin/browser/sync/aq;->d(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 762
    invoke-static {}, Lcom/dolphin/browser/sync/s;->s()Lcom/dolphin/browser/sync/s;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dolphin/browser/sync/s;->n()V

    goto :goto_1

    .line 767
    :sswitch_3
    const-string v2, "sync_status"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 768
    const-string v2, "history"

    invoke-virtual {v1, v2, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 769
    invoke-static {}, Lcom/dolphin/browser/sync/aq;->a()Lcom/dolphin/browser/sync/aq;

    move-result-object v4

    invoke-virtual {p0}, Lcom/dolphin/browser/provider/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/dolphin/browser/sync/aq;->d(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 770
    invoke-static {}, Lcom/dolphin/browser/sync/ab;->s()Lcom/dolphin/browser/sync/ab;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dolphin/browser/sync/ab;->n()V

    .line 771
    invoke-static {}, Lcom/dolphin/browser/sync/at;->t()Lcom/dolphin/browser/sync/at;

    move-result-object v4

    const-wide/16 v5, 0x2af8

    invoke-virtual {v4, v5, v6}, Lcom/dolphin/browser/sync/at;->c(J)V

    goto :goto_1

    .line 777
    :sswitch_4
    const-string v2, "most_visited"

    invoke-virtual {v1, v2, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    goto :goto_1

    .line 781
    :sswitch_5
    const-string v2, "searches"

    invoke-virtual {v1, v2, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    goto :goto_1

    .line 785
    :sswitch_6
    const-string v2, "images"

    invoke-virtual {v1, v2, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    goto :goto_1

    .line 788
    :sswitch_7
    const-string v2, "saved_pages"

    invoke-virtual {v1, v2, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    goto/16 :goto_1

    .line 792
    :sswitch_8
    const-string v2, "other_devices"

    invoke-virtual {v1, v2, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    goto/16 :goto_1

    .line 796
    :sswitch_9
    const-string v2, "tabs"

    invoke-virtual {v1, v2, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    goto/16 :goto_1

    .line 800
    :sswitch_a
    const-string v2, "security_cache"

    invoke-virtual {v1, v2, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    goto/16 :goto_1

    .line 804
    :sswitch_b
    const-string v2, "security_white_list"

    invoke-virtual {v1, v2, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    goto/16 :goto_1

    .line 808
    :sswitch_c
    const-string v2, "addon_update_table"

    invoke-virtual {v1, v2, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    goto/16 :goto_1

    .line 812
    :sswitch_d
    const-string v2, "common_white_list"

    invoke-virtual {v1, v2, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    goto/16 :goto_1

    .line 816
    :sswitch_e
    const-string v2, "top_sites"

    invoke-virtual {v1, v2, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    goto/16 :goto_1

    .line 820
    :sswitch_f
    const-string v2, "site_color"

    invoke-virtual {v1, v2, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    goto/16 :goto_1

    .line 824
    :sswitch_10
    const-string v2, "recent_tabs"

    invoke-virtual {v1, v2, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    goto/16 :goto_1

    .line 838
    :cond_2
    invoke-direct {p0, v3}, Lcom/dolphin/browser/provider/BrowserProvider;->a(I)V

    .line 839
    invoke-static {p1, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0

    .line 743
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_1
        0x3ea -> :sswitch_2
        0x7d0 -> :sswitch_3
        0xbb8 -> :sswitch_5
        0x1388 -> :sswitch_6
        0x1b58 -> :sswitch_0
        0x1f40 -> :sswitch_7
        0x2328 -> :sswitch_4
        0x2710 -> :sswitch_8
        0x2af8 -> :sswitch_9
        0x2ee0 -> :sswitch_a
        0x32c8 -> :sswitch_b
        0x36b0 -> :sswitch_c
        0x3a98 -> :sswitch_d
        0x3e80 -> :sswitch_e
        0x4268 -> :sswitch_f
        0x4650 -> :sswitch_10
    .end sparse-switch
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 339
    const-string v0, "BrowserProvider"

    const-string v1, "creating browser provider"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-super {p0}, Lcom/dolphin/browser/provider/BaseProvider;->onCreate()Z

    .line 341
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 21

    .prologue
    .line 474
    invoke-static {}, Lcom/dolphin/browser/provider/q;->a()Lcom/dolphin/browser/provider/q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dolphin/browser/provider/q;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 476
    invoke-static {}, Lcom/dolphin/browser/provider/BrowserProvider;->b()Landroid/content/UriMatcher;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    .line 477
    const-string v3, "limit"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 478
    const/4 v3, 0x0

    .line 479
    sparse-switch v5, :sswitch_data_0

    .line 728
    const-string v4, "BrowserProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown query URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 732
    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/provider/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v3, v4, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 734
    :cond_1
    return-object v3

    .line 483
    :sswitch_0
    const-string v3, "bookmarks._id=?"

    move-object/from16 v0, p3

    invoke-static {v0, v3}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 484
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    move-object/from16 v0, p4

    invoke-static {v0, v3}, Lcom/dolphin/browser/provider/r;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 491
    :sswitch_1
    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 492
    const-string v6, "bookmarks LEFT OUTER JOIN images ON bookmarks.url = images.url_key"

    invoke-virtual {v3, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 494
    const/16 v6, 0x3e8

    if-eq v6, v5, :cond_2

    const/16 v6, 0x3e9

    if-ne v6, v5, :cond_3

    .line 495
    :cond_2
    const-string v5, "bookmarks.deleted=? AND bookmarks._id!=? AND bookmarks.folder!=?"

    move-object/from16 v0, p3

    invoke-static {v0, v5}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 497
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x2

    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    move-object/from16 v0, p4

    invoke-static {v0, v5}, Lcom/dolphin/browser/provider/r;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 510
    :goto_1
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v10, "_order"

    .line 511
    :goto_2
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_0

    .line 502
    :cond_3
    const-string v5, "bookmarks.deleted=? AND bookmarks.folder=?"

    move-object/from16 v0, p3

    invoke-static {v0, v5}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 504
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    move-object/from16 v0, p4

    invoke-static {v0, v5}, Lcom/dolphin/browser/provider/r;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_4
    move-object/from16 v10, p5

    .line 510
    goto :goto_2

    .line 515
    :sswitch_2
    const-string v3, "bookmarks._id=?"

    move-object/from16 v0, p3

    invoke-static {v0, v3}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 516
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    move-object/from16 v0, p4

    invoke-static {v0, v3}, Lcom/dolphin/browser/provider/r;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 522
    :sswitch_3
    const-string v3, "bookmarks.is_folder=? AND bookmarks.deleted=? AND bookmarks._id!=?"

    move-object/from16 v0, p3

    invoke-static {v0, v3}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 524
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    move-object/from16 v0, p4

    invoke-static {v0, v3}, Lcom/dolphin/browser/provider/r;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 528
    const-string v13, "bookmarks"

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v12, v4

    move-object/from16 v14, p2

    move-object/from16 v19, p5

    move-object/from16 v20, v11

    invoke-virtual/range {v12 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_0

    .line 533
    :sswitch_4
    const-string v3, "history._id=?"

    move-object/from16 v0, p3

    invoke-static {v0, v3}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 534
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    move-object/from16 v0, p4

    invoke-static {v0, v3}, Lcom/dolphin/browser/provider/r;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 540
    :sswitch_5
    const-string v3, "deleted=?"

    move-object/from16 v0, p3

    invoke-static {v0, v3}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 542
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    move-object/from16 v0, p4

    invoke-static {v0, v3}, Lcom/dolphin/browser/provider/r;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 546
    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 547
    const-string v5, "history LEFT OUTER JOIN images ON history.url = images.url_key"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 548
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v10, p5

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_0

    .line 552
    :sswitch_6
    const-string v3, "most_visited._id=?"

    move-object/from16 v0, p3

    invoke-static {v0, v3}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 553
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    move-object/from16 v0, p4

    invoke-static {v0, v3}, Lcom/dolphin/browser/provider/r;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 559
    :goto_3
    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 560
    const-string v5, "most_visited LEFT OUTER JOIN images ON most_visited.url = images.url_key"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 561
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v10, p5

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_0

    .line 565
    :sswitch_7
    const-string v3, "searches._id=?"

    move-object/from16 v0, p3

    invoke-static {v0, v3}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 566
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    move-object/from16 v0, p4

    invoke-static {v0, v3}, Lcom/dolphin/browser/provider/r;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 572
    :goto_4
    const-string v13, "searches"

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v12, v4

    move-object/from16 v14, p2

    move-object/from16 v19, p5

    move-object/from16 v20, v11

    invoke-virtual/range {v12 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_0

    .line 577
    :sswitch_8
    const-string v13, "images"

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v12, v4

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v19, p5

    move-object/from16 v20, v11

    invoke-virtual/range {v12 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_0

    .line 582
    :sswitch_9
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dolphin/browser/core/BrowserSettings;->isSupportCustomAddressBar()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 583
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v4, v1, v2}, Lcom/dolphin/browser/provider/BrowserProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_0

    .line 585
    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/dolphin/browser/provider/BrowserProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_0

    .line 590
    :sswitch_a
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/dolphin/browser/provider/BrowserProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_0

    .line 594
    :sswitch_b
    if-eqz p4, :cond_0

    move-object/from16 v0, p4

    array-length v4, v0

    if-lez v4, :cond_0

    .line 595
    const/4 v3, 0x0

    aget-object v3, p4, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/dolphin/browser/provider/BrowserProvider;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_0

    .line 600
    :sswitch_c
    const-string v3, "%s.%s=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "history"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "_id"

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-static {v0, v3}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 602
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    move-object/from16 v0, p4

    invoke-static {v0, v3}, Lcom/dolphin/browser/provider/r;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 607
    :sswitch_d
    const-string v3, "%s.%s=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "history"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "deleted"

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-static {v0, v3}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 609
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    move-object/from16 v0, p4

    invoke-static {v0, v3}, Lcom/dolphin/browser/provider/r;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 613
    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 614
    const-string v5, "history LEFT OUTER JOIN bookmarks ON history.url = bookmarks.url AND bookmarks.deleted!=1 AND bookmarks.folder!=3 LEFT OUTER JOIN images ON history.url = images.url_key"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 615
    invoke-static {}, Lcom/dolphin/browser/provider/BrowserProvider;->a()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 616
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v10, p5

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_0

    .line 619
    :sswitch_e
    const-string v3, "_id=?"

    move-object/from16 v0, p3

    invoke-static {v0, v3}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 620
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    move-object/from16 v0, p4

    invoke-static {v0, v3}, Lcom/dolphin/browser/provider/r;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 623
    :goto_5
    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 624
    const-string v5, "saved_pages"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 625
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v10, p5

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_0

    .line 629
    :sswitch_f
    const-string v3, "%s=? AND %s!=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "deleted"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "tab_count"

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Lcom/dolphin/browser/util/cn;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-static {v0, v3}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 632
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    move-object/from16 v0, p4

    invoke-static {v0, v3}, Lcom/dolphin/browser/provider/r;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 636
    const-string v13, "other_devices"

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v12, v4

    move-object/from16 v14, p2

    move-object/from16 v19, p5

    move-object/from16 v20, v11

    invoke-virtual/range {v12 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_0

    .line 641
    :sswitch_10
    const-string v3, "tabs._id=?"

    move-object/from16 v0, p3

    invoke-static {v0, v3}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 642
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    move-object/from16 v0, p4

    invoke-static {v0, v3}, Lcom/dolphin/browser/provider/r;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 648
    :goto_6
    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 649
    const-string v5, "tabs LEFT OUTER JOIN images ON tabs.url = images.url_key"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 650
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v10, p5

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_0

    .line 654
    :sswitch_11
    const-string v3, "_id=?"

    move-object/from16 v0, p3

    invoke-static {v0, v3}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 655
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    move-object/from16 v0, p4

    invoke-static {v0, v3}, Lcom/dolphin/browser/provider/r;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 661
    :goto_7
    const-string v13, "security_cache"

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v12, v4

    move-object/from16 v14, p2

    move-object/from16 v19, p5

    move-object/from16 v20, v11

    invoke-virtual/range {v12 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_0

    .line 665
    :sswitch_12
    const-string v3, "_id=?"

    move-object/from16 v0, p3

    invoke-static {v0, v3}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 666
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    move-object/from16 v0, p4

    invoke-static {v0, v3}, Lcom/dolphin/browser/provider/r;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 672
    :goto_8
    const-string v13, "security_white_list"

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v12, v4

    move-object/from16 v14, p2

    move-object/from16 v19, p5

    move-object/from16 v20, v11

    invoke-virtual/range {v12 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_0

    .line 676
    :sswitch_13
    const-string v3, "_id=?"

    move-object/from16 v0, p3

    invoke-static {v0, v3}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 677
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    move-object/from16 v0, p4

    invoke-static {v0, v3}, Lcom/dolphin/browser/provider/r;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 683
    :goto_9
    const-string v13, "addon_update_table"

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v12, v4

    move-object/from16 v14, p2

    move-object/from16 v19, p5

    move-object/from16 v20, v11

    invoke-virtual/range {v12 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_0

    .line 687
    :sswitch_14
    const-string v3, "_id=?"

    move-object/from16 v0, p3

    invoke-static {v0, v3}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 688
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    move-object/from16 v0, p4

    invoke-static {v0, v3}, Lcom/dolphin/browser/provider/r;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 694
    :goto_a
    const-string v13, "common_white_list"

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v12, v4

    move-object/from16 v14, p2

    move-object/from16 v19, p5

    move-object/from16 v20, v11

    invoke-virtual/range {v12 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_0

    .line 698
    :sswitch_15
    const-string v3, "_id=?"

    move-object/from16 v0, p3

    invoke-static {v0, v3}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 699
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    move-object/from16 v0, p4

    invoke-static {v0, v3}, Lcom/dolphin/browser/provider/r;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 705
    :goto_b
    const-string v13, "top_sites"

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v12, v4

    move-object/from16 v14, p2

    move-object/from16 v19, p5

    move-object/from16 v20, v11

    invoke-virtual/range {v12 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_0

    .line 709
    :sswitch_16
    const-string v3, "_id=?"

    move-object/from16 v0, p3

    invoke-static {v0, v3}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 710
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    move-object/from16 v0, p4

    invoke-static {v0, v3}, Lcom/dolphin/browser/provider/r;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 716
    :goto_c
    const-string v13, "site_color"

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v12, v4

    move-object/from16 v14, p2

    move-object/from16 v19, p5

    move-object/from16 v20, v11

    invoke-virtual/range {v12 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_0

    .line 720
    :sswitch_17
    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 721
    const-string v5, "recent_tabs LEFT OUTER JOIN images ON recent_tabs.url = images.url_key"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 722
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_0

    :sswitch_18
    move-object/from16 v7, p4

    move-object/from16 v6, p3

    goto/16 :goto_3

    :sswitch_19
    move-object/from16 v16, p4

    move-object/from16 v15, p3

    goto/16 :goto_4

    :sswitch_1a
    move-object/from16 v7, p4

    move-object/from16 v6, p3

    goto/16 :goto_5

    :sswitch_1b
    move-object/from16 v7, p4

    move-object/from16 v6, p3

    goto/16 :goto_6

    :sswitch_1c
    move-object/from16 v16, p4

    move-object/from16 v15, p3

    goto/16 :goto_7

    :sswitch_1d
    move-object/from16 v16, p4

    move-object/from16 v15, p3

    goto/16 :goto_8

    :sswitch_1e
    move-object/from16 v16, p4

    move-object/from16 v15, p3

    goto/16 :goto_9

    :sswitch_1f
    move-object/from16 v16, p4

    move-object/from16 v15, p3

    goto/16 :goto_a

    :sswitch_20
    move-object/from16 v16, p4

    move-object/from16 v15, p3

    goto/16 :goto_b

    :sswitch_21
    move-object/from16 v16, p4

    move-object/from16 v15, p3

    goto :goto_c

    .line 479
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_1
        0x3e9 -> :sswitch_0
        0x3ea -> :sswitch_3
        0x3eb -> :sswitch_2
        0x3ec -> :sswitch_9
        0x3ed -> :sswitch_a
        0x3ee -> :sswitch_b
        0x7d0 -> :sswitch_5
        0x7d1 -> :sswitch_4
        0xbb8 -> :sswitch_19
        0xbb9 -> :sswitch_7
        0xfa0 -> :sswitch_d
        0xfa1 -> :sswitch_c
        0x1388 -> :sswitch_8
        0x1b58 -> :sswitch_1
        0x1b59 -> :sswitch_0
        0x1f40 -> :sswitch_1a
        0x1f41 -> :sswitch_e
        0x2328 -> :sswitch_18
        0x2329 -> :sswitch_6
        0x2710 -> :sswitch_f
        0x2af8 -> :sswitch_1b
        0x2af9 -> :sswitch_10
        0x2ee0 -> :sswitch_1c
        0x2ee1 -> :sswitch_11
        0x32c8 -> :sswitch_1d
        0x32c9 -> :sswitch_12
        0x36b0 -> :sswitch_1e
        0x36b1 -> :sswitch_13
        0x3a98 -> :sswitch_1f
        0x3a99 -> :sswitch_14
        0x3e80 -> :sswitch_20
        0x3e81 -> :sswitch_15
        0x4268 -> :sswitch_21
        0x4269 -> :sswitch_16
        0x4650 -> :sswitch_17
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10

    .prologue
    .line 1307
    invoke-static {}, Lcom/dolphin/browser/provider/q;->a()Lcom/dolphin/browser/provider/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/provider/q;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1308
    invoke-static {}, Lcom/dolphin/browser/provider/BrowserProvider;->b()Landroid/content/UriMatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    .line 1309
    const/4 v0, 0x0

    .line 1310
    const-wide/16 v1, -0x1

    .line 1313
    sparse-switch v5, :sswitch_data_0

    .line 1557
    const-string v1, "BrowserProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown update URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 1563
    invoke-direct {p0, v5}, Lcom/dolphin/browser/provider/BrowserProvider;->a(I)V

    .line 1566
    :cond_1
    :goto_1
    return v0

    .line 1316
    :sswitch_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 1317
    const-string v2, "bookmarks._id=?"

    invoke-static {p3, v2}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1318
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    invoke-static {p4, v2}, Lcom/dolphin/browser/provider/r;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1325
    :goto_2
    const/16 v6, 0x3e8

    if-eq v6, v5, :cond_2

    const/16 v6, 0x3e9

    if-ne v6, v5, :cond_b

    .line 1327
    :cond_2
    const-string v6, "is_build_in"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1328
    const-string v6, "is_build_in"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1332
    :cond_3
    const-wide/16 v6, -0x1

    cmp-long v6, v0, v6

    if-eqz v6, :cond_8

    const-string v6, "folder"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1333
    const-string v2, "folder"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1334
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/dolphin/browser/provider/BrowserProvider;->a(JJ)J

    move-result-wide v2

    .line 1335
    cmp-long v6, v2, v0

    if-eqz v6, :cond_4

    .line 1337
    sget-object v6, Lcom/dolphin/browser/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v0, v1, v6}, Lcom/dolphin/browser/provider/BrowserProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1341
    :cond_4
    const-string v0, "folder"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1342
    const-string v0, "bookmarks._id=?"

    invoke-static {p3, v0}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1343
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {p4, v1}, Lcom/dolphin/browser/provider/r;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1348
    const-string v2, "sync_status"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1349
    const-string v2, "sync_status"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1355
    :cond_5
    :goto_3
    const-string v2, "bookmarks"

    invoke-virtual {v4, v2, p2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1356
    invoke-static {}, Lcom/dolphin/browser/sync/aq;->a()Lcom/dolphin/browser/sync/aq;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dolphin/browser/provider/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/sync/aq;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1357
    invoke-static {}, Lcom/dolphin/browser/sync/s;->s()Lcom/dolphin/browser/sync/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/sync/s;->n()V

    .line 1360
    :cond_6
    invoke-direct {p0}, Lcom/dolphin/browser/provider/BrowserProvider;->g()V

    .line 1361
    invoke-direct {p0}, Lcom/dolphin/browser/provider/BrowserProvider;->e()V

    goto/16 :goto_0

    .line 1351
    :cond_7
    const-string v2, "sync_status"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_5

    .line 1352
    const-string v2, "sync_status"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    .line 1365
    :cond_8
    const-string v0, "bookmarks._id!=? AND bookmarks.folder!=?"

    invoke-static {v3, v0}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1367
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v3

    const/4 v3, 0x1

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v3

    invoke-static {v2, v0}, Lcom/dolphin/browser/provider/r;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1381
    :goto_4
    const-string v2, "sync_status"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1382
    const-string v2, "sync_status"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1389
    :cond_9
    :goto_5
    const-string v2, "bookmarks"

    invoke-virtual {v4, v2, p2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1390
    invoke-static {}, Lcom/dolphin/browser/sync/aq;->a()Lcom/dolphin/browser/sync/aq;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dolphin/browser/provider/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/sync/aq;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1391
    invoke-static {}, Lcom/dolphin/browser/sync/s;->s()Lcom/dolphin/browser/sync/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/sync/s;->n()V

    .line 1394
    :cond_a
    invoke-direct {p0}, Lcom/dolphin/browser/provider/BrowserProvider;->g()V

    .line 1395
    invoke-direct {p0}, Lcom/dolphin/browser/provider/BrowserProvider;->e()V

    goto/16 :goto_0

    .line 1373
    :cond_b
    const-string v0, "bookmarks.folder=?"

    invoke-static {v3, v0}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1375
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v3

    invoke-static {v2, v0}, Lcom/dolphin/browser/provider/r;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 1385
    :cond_c
    const-string v2, "sync_status"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_9

    .line 1386
    const-string v2, "sync_status"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_5

    .line 1399
    :sswitch_1
    const-string v0, "bookmarks._id=?"

    invoke-static {p3, v0}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1400
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p4, v0}, Lcom/dolphin/browser/provider/r;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 1406
    :sswitch_2
    const-string v0, "sync_status"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1407
    const-string v0, "sync_status"

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1413
    :cond_d
    :goto_6
    const-string v0, "is_folder"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1414
    const-string v0, "bookmarks"

    invoke-virtual {v4, v0, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1415
    invoke-static {}, Lcom/dolphin/browser/sync/aq;->a()Lcom/dolphin/browser/sync/aq;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dolphin/browser/provider/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/sync/aq;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1416
    invoke-static {}, Lcom/dolphin/browser/sync/s;->s()Lcom/dolphin/browser/sync/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/sync/s;->n()V

    .line 1419
    :cond_e
    invoke-direct {p0}, Lcom/dolphin/browser/provider/BrowserProvider;->g()V

    .line 1420
    invoke-direct {p0}, Lcom/dolphin/browser/provider/BrowserProvider;->e()V

    goto/16 :goto_0

    .line 1409
    :cond_f
    const-string v0, "sync_status"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_d

    .line 1410
    const-string v0, "sync_status"

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_6

    .line 1424
    :sswitch_3
    const-string v0, "history._id=?"

    invoke-static {p3, v0}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1425
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p4, v0}, Lcom/dolphin/browser/provider/r;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 1431
    :sswitch_4
    const-string v0, "sync_status"

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1432
    const-string v0, "history"

    invoke-virtual {v4, v0, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1433
    invoke-static {}, Lcom/dolphin/browser/sync/aq;->a()Lcom/dolphin/browser/sync/aq;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dolphin/browser/provider/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/sync/aq;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1434
    invoke-static {}, Lcom/dolphin/browser/sync/ab;->s()Lcom/dolphin/browser/sync/ab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/sync/ab;->n()V

    .line 1435
    invoke-static {}, Lcom/dolphin/browser/sync/at;->t()Lcom/dolphin/browser/sync/at;

    move-result-object v1

    const-wide/16 v2, 0x2af8

    invoke-virtual {v1, v2, v3}, Lcom/dolphin/browser/sync/at;->c(J)V

    .line 1437
    :cond_10
    invoke-direct {p0}, Lcom/dolphin/browser/provider/BrowserProvider;->e()V

    goto/16 :goto_0

    .line 1441
    :sswitch_5
    const-string v0, "most_visited._id=?"

    invoke-static {p3, v0}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1442
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p4, v0}, Lcom/dolphin/browser/provider/r;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 1448
    :sswitch_6
    const-string v0, "most_visited"

    invoke-virtual {v4, v0, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1449
    invoke-direct {p0}, Lcom/dolphin/browser/provider/BrowserProvider;->e()V

    goto/16 :goto_0

    .line 1453
    :sswitch_7
    const-string v0, "searches._id=?"

    invoke-static {p3, v0}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1454
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p4, v0}, Lcom/dolphin/browser/provider/r;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 1460
    :sswitch_8
    const-string v0, "searches"

    invoke-virtual {v4, v0, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 1464
    :sswitch_9
    const-string v0, "url_key"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1465
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1466
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImageColumns.URL_KEY is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1468
    :cond_11
    const-string v1, "url_key=?"

    invoke-static {p3, v1}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1470
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p4, v2}, Lcom/dolphin/browser/provider/r;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1473
    const-string v2, "images"

    invoke-virtual {v4, v2, p2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1474
    if-nez v0, :cond_0

    .line 1476
    const-string v1, "images"

    const-string v2, "favicon"

    invoke-virtual {v4, v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 1477
    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 1478
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1484
    :sswitch_a
    invoke-direct {p0, v4, p1}, Lcom/dolphin/browser/provider/BrowserProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)I

    move-result v0

    goto/16 :goto_1

    .line 1486
    :sswitch_b
    const-string v0, "_id=?"

    invoke-static {p3, v0}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1487
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p4, v0}, Lcom/dolphin/browser/provider/r;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 1492
    :sswitch_c
    const-string v0, "saved_pages"

    invoke-virtual {v4, v0, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 1496
    :sswitch_d
    const-string v0, "tabs._id=?"

    invoke-static {p3, v0}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1497
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p4, v0}, Lcom/dolphin/browser/provider/r;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 1503
    :sswitch_e
    const-string v0, "tabs"

    invoke-virtual {v4, v0, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1504
    invoke-direct {p0}, Lcom/dolphin/browser/provider/BrowserProvider;->e()V

    goto/16 :goto_0

    .line 1508
    :sswitch_f
    const-string v0, "other_devices"

    invoke-virtual {v4, v0, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 1512
    :sswitch_10
    const-string v0, "security_cache"

    invoke-virtual {v4, v0, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 1516
    :sswitch_11
    const-string v0, "security_white_list"

    invoke-virtual {v4, v0, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 1520
    :sswitch_12
    const-string v0, "_id=?"

    invoke-static {p3, v0}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1521
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p4, v0}, Lcom/dolphin/browser/provider/r;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 1527
    :sswitch_13
    const-string v0, "addon_update_table"

    invoke-virtual {v4, v0, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1528
    invoke-direct {p0}, Lcom/dolphin/browser/provider/BrowserProvider;->e()V

    goto/16 :goto_0

    .line 1532
    :sswitch_14
    const-string v0, "common_white_list"

    invoke-virtual {v4, v0, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 1536
    :sswitch_15
    const-string v0, "top_sites"

    invoke-virtual {v4, v0, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 1540
    :sswitch_16
    const-string v0, "site_color"

    invoke-virtual {v4, v0, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 1544
    :sswitch_17
    const-string v0, "recent_tabs._id=?"

    invoke-static {p3, v0}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1545
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p4, v0}, Lcom/dolphin/browser/provider/r;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 1551
    :sswitch_18
    const-string v0, "recent_tabs"

    invoke-virtual {v4, v0, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    :sswitch_19
    move-object v3, p3

    move-wide v8, v1

    move-wide v0, v8

    move-object v2, p4

    goto/16 :goto_2

    .line 1313
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_19
        0x3e9 -> :sswitch_0
        0x3ea -> :sswitch_2
        0x3eb -> :sswitch_1
        0x7d0 -> :sswitch_4
        0x7d1 -> :sswitch_3
        0xbb8 -> :sswitch_8
        0xbb9 -> :sswitch_7
        0x1388 -> :sswitch_9
        0x1770 -> :sswitch_a
        0x1b58 -> :sswitch_19
        0x1b59 -> :sswitch_0
        0x1f40 -> :sswitch_c
        0x1f41 -> :sswitch_b
        0x2328 -> :sswitch_6
        0x2329 -> :sswitch_5
        0x2710 -> :sswitch_f
        0x2af8 -> :sswitch_e
        0x2af9 -> :sswitch_d
        0x2ee0 -> :sswitch_10
        0x32c8 -> :sswitch_11
        0x36b0 -> :sswitch_13
        0x36b1 -> :sswitch_12
        0x3a98 -> :sswitch_14
        0x3e80 -> :sswitch_15
        0x4268 -> :sswitch_16
        0x4650 -> :sswitch_18
        0x4651 -> :sswitch_17
    .end sparse-switch
.end method
