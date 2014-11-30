.class public final Lcom/dolphin/browser/downloads/DownloadProvider;
.super Landroid/content/ContentProvider;
.source "DownloadProvider.java"


# static fields
.field private static a:Landroid/content/UriMatcher;


# instance fields
.field private b:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/downloads/DownloadProvider;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 744
    return-void
.end method

.method private static a()Landroid/content/UriMatcher;
    .locals 4

    .prologue
    .line 150
    sget-object v0, Lcom/dolphin/browser/downloads/DownloadProvider;->a:Landroid/content/UriMatcher;

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/dolphin/browser/downloads/DownloadProvider;->a:Landroid/content/UriMatcher;

    .line 152
    invoke-static {}, Lcom/dolphin/browser/downloads/o;->f()Lcom/dolphin/browser/downloads/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/downloads/o;->b()Ljava/lang/String;

    move-result-object v0

    .line 153
    sget-object v1, Lcom/dolphin/browser/downloads/DownloadProvider;->a:Landroid/content/UriMatcher;

    const-string v2, "download"

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 154
    sget-object v1, Lcom/dolphin/browser/downloads/DownloadProvider;->a:Landroid/content/UriMatcher;

    const-string v2, "download/#"

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 157
    :cond_0
    sget-object v0, Lcom/dolphin/browser/downloads/DownloadProvider;->a:Landroid/content/UriMatcher;

    return-object v0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    .line 187
    :try_start_0
    const-string v0, "CREATE TABLE downloads(_id INTEGER PRIMARY KEY AUTOINCREMENT,uri TEXT, method INTEGER, entity TEXT, no_integrity BOOLEAN, hint TEXT, otaupdate BOOLEAN, _data TEXT, mimetype TEXT, destination INTEGER, no_system BOOLEAN, visibility INTEGER, control INTEGER, status INTEGER, numfailed INTEGER, lastmod BIGINT, notificationpackage TEXT, notificationclass TEXT, notificationextras TEXT, cookiedata TEXT, useragent TEXT, referer TEXT, total_bytes INTEGER, current_bytes INTEGER, etag TEXT, uid INTEGER, otheruid INTEGER, title TEXT, description TEXT, scanned BOOLEAN, support_byte_range BOOLEAN, speed INTEGER, is_private_mode BOOLEAN, download_dir TEXT);"

    .line 215
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createTable sql=\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    const-string v1, "DownloadManager"

    const-string v2, "couldn\'t create table in downloads database"

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    throw v0
.end method

.method static synthetic a(Lcom/dolphin/browser/downloads/DownloadProvider;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/dolphin/browser/downloads/DownloadProvider;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private static final a(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 1

    .prologue
    .line 717
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 718
    if-eqz v0, :cond_0

    .line 719
    invoke-virtual {p2, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 721
    :cond_0
    return-void
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    .line 228
    :try_start_0
    const-string v0, "DROP TABLE IF EXISTS downloads"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 229
    const-string v0, "DownloadProvider"

    const-string v1, "dropTable %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "downloads"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 231
    const-string v1, "DownloadManager"

    const-string v2, "couldn\'t drop table in downloads database"

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    throw v0
.end method

.method static synthetic b(Lcom/dolphin/browser/downloads/DownloadProvider;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/dolphin/browser/downloads/DownloadProvider;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private static final b(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 1

    .prologue
    .line 724
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 725
    if-eqz v0, :cond_0

    .line 726
    invoke-virtual {p2, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 728
    :cond_0
    return-void
.end method

.method private static final c(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 1

    .prologue
    .line 731
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 732
    if-eqz v0, :cond_0

    .line 733
    invoke-virtual {p2, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    :cond_0
    return-void
.end method

.method private static final d(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 1

    .prologue
    .line 738
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 739
    if-eqz v0, :cond_0

    .line 740
    invoke-virtual {p2, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 742
    :cond_0
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 560
    iget-object v0, p0, Lcom/dolphin/browser/downloads/DownloadProvider;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 562
    invoke-static {}, Lcom/dolphin/browser/downloads/DownloadProvider;->a()Landroid/content/UriMatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 563
    packed-switch v0, :pswitch_data_0

    .line 585
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleting unknown/invalid URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    const/4 v0, 0x0

    .line 592
    :goto_0
    return v0

    .line 567
    :pswitch_0
    if-eqz p2, :cond_1

    .line 568
    if-ne v0, v4, :cond_0

    .line 569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "( "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " )"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 576
    :goto_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 577
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 578
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ( _id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 581
    :goto_2
    const-string v1, "downloads"

    invoke-virtual {v2, v1, v0, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 591
    invoke-virtual {p0}, Lcom/dolphin/browser/downloads/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 571
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "( "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ) AND "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 574
    :cond_1
    const-string v1, ""

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_2

    .line 563
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 166
    invoke-static {}, Lcom/dolphin/browser/downloads/DownloadProvider;->a()Landroid/content/UriMatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 167
    packed-switch v0, :pswitch_data_0

    .line 175
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calling getType on an unknown URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const-string v0, ""

    :goto_0
    return-object v0

    .line 169
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/tunnydownload"

    goto :goto_0

    .line 172
    :pswitch_1
    const-string v0, "vnd.android.cursor.item/tunnydownload"

    goto :goto_0

    .line 167
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 241
    iget-object v0, p0, Lcom/dolphin/browser/downloads/DownloadProvider;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 243
    invoke-static {}, Lcom/dolphin/browser/downloads/DownloadProvider;->a()Landroid/content/UriMatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    if-eq v0, v6, :cond_0

    .line 244
    const-string v0, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calling insert on an unknown/invalid URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :goto_0
    return-object v1

    .line 249
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 251
    const-string v0, "uri"

    invoke-static {v0, p2, v3}, Lcom/dolphin/browser/downloads/DownloadProvider;->c(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 252
    const-string v0, "entity"

    invoke-static {v0, p2, v3}, Lcom/dolphin/browser/downloads/DownloadProvider;->c(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 253
    const-string v0, "no_integrity"

    invoke-static {v0, p2, v3}, Lcom/dolphin/browser/downloads/DownloadProvider;->b(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 254
    const-string v0, "hint"

    invoke-static {v0, p2, v3}, Lcom/dolphin/browser/downloads/DownloadProvider;->c(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 255
    const-string v0, "mimetype"

    invoke-static {v0, p2, v3}, Lcom/dolphin/browser/downloads/DownloadProvider;->c(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 256
    const-string v0, "destination"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_1

    .line 258
    const-string v4, "destination"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 260
    :cond_1
    const-string v4, "visibility"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 261
    if-nez v4, :cond_b

    .line 262
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_a

    .line 263
    const-string v0, "visibility"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 271
    :goto_1
    const-string v0, "control"

    invoke-static {v0, p2, v3}, Lcom/dolphin/browser/downloads/DownloadProvider;->a(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 272
    const-string v0, "status"

    const/16 v4, 0xbe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 273
    const-string v0, "lastmod"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 274
    const-string v0, "notificationpackage"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 275
    const-string v4, "notificationclass"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 276
    if-eqz v0, :cond_2

    if-eqz v4, :cond_2

    .line 277
    const-string v5, "notificationpackage"

    invoke-virtual {v3, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v0, "notificationclass"

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_2
    invoke-static {}, Lcom/dolphin/browser/downloads/o;->f()Lcom/dolphin/browser/downloads/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/downloads/o;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 281
    const-string v0, "support_byte_range"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 282
    if-nez v0, :cond_c

    .line 283
    const-string v0, "support_byte_range"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 288
    :cond_3
    :goto_2
    const-string v0, "notificationextras"

    invoke-static {v0, p2, v3}, Lcom/dolphin/browser/downloads/DownloadProvider;->c(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 289
    const-string v0, "cookiedata"

    invoke-static {v0, p2, v3}, Lcom/dolphin/browser/downloads/DownloadProvider;->c(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 290
    const-string v0, "useragent"

    invoke-static {v0, p2, v3}, Lcom/dolphin/browser/downloads/DownloadProvider;->c(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 291
    const-string v0, "referer"

    invoke-static {v0, p2, v3}, Lcom/dolphin/browser/downloads/DownloadProvider;->c(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 292
    const-string v0, "otheruid"

    invoke-static {v0, p2, v3}, Lcom/dolphin/browser/downloads/DownloadProvider;->a(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 293
    const-string v0, "uid"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 294
    const-string v0, "uid"

    invoke-static {v0, p2, v3}, Lcom/dolphin/browser/downloads/DownloadProvider;->a(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 295
    const-string v0, "title"

    invoke-static {v0, p2, v3}, Lcom/dolphin/browser/downloads/DownloadProvider;->c(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 296
    const-string v0, "description"

    invoke-static {v0, p2, v3}, Lcom/dolphin/browser/downloads/DownloadProvider;->c(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 297
    const-string v0, "is_private_mode"

    invoke-static {v0, p2, v3}, Lcom/dolphin/browser/downloads/DownloadProvider;->b(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 299
    const-string v0, "download_dir"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 302
    invoke-static {}, Lcom/dolphin/browser/downloads/o;->f()Lcom/dolphin/browser/downloads/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/downloads/o;->c()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 304
    :cond_4
    const-string v4, "download_dir"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    sget-boolean v0, Lcom/dolphin/browser/downloads/a;->b:Z

    if-eqz v0, :cond_5

    .line 307
    const-string v0, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initiating download with UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "uid"

    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const-string v0, "otheruid"

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 310
    const-string v0, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "other UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "otheruid"

    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_5
    invoke-virtual {p0}, Lcom/dolphin/browser/downloads/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 317
    const-string v0, "no_action"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 318
    if-nez v0, :cond_6

    .line 319
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 321
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 322
    const-string v5, "status"

    invoke-static {v5, p2, v3}, Lcom/dolphin/browser/downloads/DownloadProvider;->a(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 323
    const-string v5, "lastmod"

    invoke-static {v5, p2, v3}, Lcom/dolphin/browser/downloads/DownloadProvider;->d(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 324
    const-string v5, "current_bytes"

    invoke-static {v5, p2, v3}, Lcom/dolphin/browser/downloads/DownloadProvider;->d(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 325
    const-string v5, "total_bytes"

    invoke-static {v5, p2, v3}, Lcom/dolphin/browser/downloads/DownloadProvider;->d(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 326
    const-string v5, "_data"

    invoke-static {v5, p2, v3}, Lcom/dolphin/browser/downloads/DownloadProvider;->c(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 329
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_8

    .line 330
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/dolphin/browser/downloads/DownloadService;

    invoke-direct {v5, v4, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 333
    :cond_8
    const-string v5, "downloads"

    invoke-virtual {v2, v5, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 337
    const-wide/16 v5, -0x1

    cmp-long v5, v2, v5

    if-eqz v5, :cond_d

    .line 338
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_9

    .line 339
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/dolphin/browser/downloads/DownloadService;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 341
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/dolphin/browser/downloads/t;->b:Landroid/net/Uri;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 342
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :goto_3
    move-object v1, v0

    .line 349
    goto/16 :goto_0

    .line 266
    :cond_a
    const-string v0, "visibility"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 269
    :cond_b
    const-string v0, "visibility"

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 285
    :cond_c
    const-string v4, "support_byte_range"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_2

    .line 345
    :cond_d
    const-string v0, "DownloadManager"

    const-string v2, "couldn\'t insert into downloads database"

    invoke-static {v0, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_3
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    .line 142
    const-string v0, "DownloadProvider.onCreate"

    invoke-static {v0}, Lcom/dolphin/browser/util/cw;->b(Ljava/lang/String;)Lcom/dolphin/browser/util/cw;

    move-result-object v0

    .line 143
    invoke-static {}, Lcom/dolphin/browser/downloads/o;->f()Lcom/dolphin/browser/downloads/o;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/dolphin/browser/downloads/o;->a(Landroid/content/ContentProvider;)V

    .line 144
    new-instance v1, Lcom/dolphin/browser/downloads/h;

    invoke-virtual {p0}, Lcom/dolphin/browser/downloads/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/dolphin/browser/downloads/h;-><init>(Lcom/dolphin/browser/downloads/DownloadProvider;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/dolphin/browser/downloads/DownloadProvider;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 145
    invoke-virtual {v0}, Lcom/dolphin/browser/util/cw;->a()J

    .line 146
    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 601
    sget-boolean v0, Lcom/dolphin/browser/downloads/a;->b:Z

    if-eqz v0, :cond_1

    .line 602
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openFile uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :try_start_0
    sget-object v1, Lcom/dolphin/browser/downloads/t;->b:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_id"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/dolphin/browser/downloads/DownloadProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-result-object v6

    .line 610
    if-nez v6, :cond_3

    .line 611
    :try_start_1
    const-string v0, "DownloadManager"

    const-string v1, "null cursor in openFile"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :goto_0
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/dolphin/browser/downloads/DownloadProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 624
    if-nez v1, :cond_6

    .line 625
    :try_start_2
    const-string v0, "DownloadManager"

    const-string v2, "null cursor in openFile"

    invoke-static {v0, v2}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 638
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 640
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 658
    :cond_1
    :goto_2
    const/4 v0, 0x1

    :try_start_4
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/dolphin/browser/downloads/DownloadProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result-object v1

    .line 661
    if-eqz v1, :cond_8

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 662
    :goto_3
    if-eq v0, v9, :cond_a

    .line 665
    if-nez v0, :cond_9

    .line 666
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No entry for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 681
    :catchall_0
    move-exception v0

    move-object v7, v1

    :goto_4
    if-eqz v7, :cond_2

    .line 683
    :try_start_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 686
    :cond_2
    :goto_5
    throw v0

    .line 613
    :cond_3
    :try_start_7
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_5

    .line 614
    const-string v0, "DownloadManager"

    const-string v1, "empty cursor in openFile"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    .line 638
    :catchall_1
    move-exception v0

    move-object v1, v6

    :goto_6
    if-eqz v1, :cond_4

    .line 640
    :try_start_8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 643
    :cond_4
    :goto_7
    throw v0

    .line 617
    :cond_5
    :try_start_9
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "row "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    .line 627
    :cond_6
    :try_start_a
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_7

    .line 628
    const-string v0, "DownloadManager"

    const-string v2, "empty cursor in openFile"

    invoke-static {v0, v2}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 638
    :catchall_2
    move-exception v0

    goto :goto_6

    .line 630
    :cond_7
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 631
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filename in openFile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    const-string v0, "DownloadManager"

    const-string v2, "file exists in openFile"

    invoke-static {v0, v2}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto/16 :goto_1

    :cond_8
    move v0, v8

    .line 661
    goto/16 :goto_3

    .line 668
    :cond_9
    :try_start_b
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Multiple items at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 670
    :cond_a
    if-eqz v1, :cond_11

    .line 672
    :try_start_c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 673
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result-object v0

    .line 681
    :goto_8
    if-eqz v1, :cond_b

    .line 683
    :try_start_d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    .line 690
    :cond_b
    :goto_9
    if-nez v0, :cond_c

    .line 691
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "No filename found."

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 674
    :catch_0
    move-exception v0

    move-object v0, v7

    goto :goto_8

    .line 693
    :cond_c
    invoke-static {v0}, Lcom/dolphin/browser/downloads/v;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 694
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "Invalid filename."

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 697
    :cond_d
    const-string v1, "r"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 698
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad mode for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 700
    :cond_e
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    invoke-static {v1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 703
    if-nez v0, :cond_10

    .line 704
    sget-boolean v0, Lcom/dolphin/browser/downloads/a;->a:Z

    if-eqz v0, :cond_f

    .line 705
    const-string v0, "DownloadManager"

    const-string v1, "couldn\'t open file"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :cond_f
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "couldn\'t open file"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 709
    :cond_10
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 710
    const-string v2, "lastmod"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 711
    invoke-virtual {p0, p1, v1, v7, v7}, Lcom/dolphin/browser/downloads/DownloadProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 713
    return-object v0

    .line 641
    :catch_1
    move-exception v0

    goto/16 :goto_2

    :catch_2
    move-exception v1

    goto/16 :goto_7

    .line 684
    :catch_3
    move-exception v1

    goto/16 :goto_9

    :catch_4
    move-exception v1

    goto/16 :goto_5

    .line 681
    :catchall_3
    move-exception v0

    goto/16 :goto_4

    .line 638
    :catchall_4
    move-exception v0

    move-object v1, v7

    goto/16 :goto_6

    :cond_11
    move-object v0, v7

    goto/16 :goto_8
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 361
    iget-object v0, p0, Lcom/dolphin/browser/downloads/DownloadProvider;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 363
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 365
    invoke-static {}, Lcom/dolphin/browser/downloads/DownloadProvider;->a()Landroid/content/UriMatcher;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 367
    packed-switch v2, :pswitch_data_0

    .line 380
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "querying unknown URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    .line 453
    :cond_0
    :goto_0
    return-object v0

    .line 369
    :pswitch_0
    const-string v2, "downloads"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 386
    :goto_1
    sget-boolean v2, Lcom/dolphin/browser/downloads/a;->b:Z

    if-eqz v2, :cond_4

    .line 387
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 388
    const-string v2, "starting query, database is "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    if-eqz v1, :cond_1

    .line 390
    const-string v2, "not "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    :cond_1
    const-string v2, "null; "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    if-nez p2, :cond_5

    .line 394
    const-string v2, "projection is null; "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    :cond_2
    :goto_2
    const-string v2, "selection is "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    const-string v2, "; "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    if-nez p4, :cond_7

    .line 410
    const-string v2, "selectionArgs is null; "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    :cond_3
    :goto_3
    const-string v2, "sort is "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    const-string v2, "."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    const-string v2, "DownloadManager"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_4
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    :try_start_0
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    move-object v1, v8

    .line 437
    :goto_4
    if-eqz v1, :cond_b

    .line 438
    new-instance v0, Lcom/dolphin/browser/downloads/i;

    invoke-direct {v0, v1}, Lcom/dolphin/browser/downloads/i;-><init>(Landroid/database/Cursor;)V

    .line 441
    :goto_5
    if-eqz v0, :cond_a

    .line 442
    invoke-virtual {p0}, Lcom/dolphin/browser/downloads/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 443
    sget-boolean v1, Lcom/dolphin/browser/downloads/a;->b:Z

    if-eqz v1, :cond_0

    .line 444
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "created cursor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on behalf of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 373
    :pswitch_1
    const-string v2, "downloads"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 374
    const-string v2, "_id="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 375
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 395
    :cond_5
    array-length v2, p2

    if-nez v2, :cond_6

    .line 396
    const-string v2, "projection is empty; "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_6
    move v2, v3

    .line 398
    :goto_6
    array-length v5, p2

    if-ge v2, v5, :cond_2

    .line 399
    const-string v5, "projection["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 401
    const-string v5, "] is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    aget-object v5, p2, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    const-string v5, "; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 411
    :cond_7
    array-length v2, p4

    if-nez v2, :cond_8

    .line 412
    const-string v2, "selectionArgs is empty; "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 414
    :cond_8
    :goto_7
    array-length v2, p4

    if-ge v3, v2, :cond_3

    .line 415
    const-string v2, "selectionArgs["

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 417
    const-string v2, "] is "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    aget-object v2, p4, v3

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    const-string v2, "; "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 431
    :catch_0
    move-exception v0

    .line 432
    sget-boolean v0, Lcom/dolphin/browser/downloads/a;->a:Z

    if-eqz v0, :cond_9

    .line 433
    const-string v0, "DownloadManager"

    const-string v1, "query failed in downloads database"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move-object v1, v8

    goto/16 :goto_4

    .line 448
    :cond_a
    sget-boolean v1, Lcom/dolphin/browser/downloads/a;->a:Z

    if-eqz v1, :cond_0

    .line 449
    const-string v1, "DownloadManager"

    const-string v2, "query failed in downloads database"

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    move-object v0, v1

    goto/16 :goto_5

    .line 367
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 465
    iget-object v1, p0, Lcom/dolphin/browser/downloads/DownloadProvider;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 487
    const-string v1, "control"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 488
    if-eqz v1, :cond_5

    .line 489
    const-string v3, "control"

    invoke-virtual {p2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move v1, v0

    .line 511
    :goto_0
    invoke-static {}, Lcom/dolphin/browser/downloads/DownloadProvider;->a()Landroid/content/UriMatcher;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    .line 512
    packed-switch v5, :pswitch_data_0

    .line 538
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updating unknown/invalid URI: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_0
    :goto_1
    return v2

    .line 516
    :pswitch_0
    if-eqz p3, :cond_3

    .line 517
    if-ne v5, v0, :cond_2

    .line 518
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "( "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " )"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 525
    :goto_2
    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 526
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 527
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ( _id = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ) "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 530
    :goto_3
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 531
    const-string v2, "downloads"

    invoke-virtual {v4, v2, p2, v0, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 544
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/downloads/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 545
    if-eqz v1, :cond_0

    .line 546
    invoke-virtual {p0}, Lcom/dolphin/browser/downloads/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 547
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/dolphin/browser/downloads/DownloadService;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 520
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "( "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " ) AND "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 523
    :cond_3
    const-string v3, ""

    goto :goto_2

    :cond_4
    move-object v0, v3

    goto :goto_3

    :cond_5
    move v1, v2

    goto/16 :goto_0

    .line 512
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
