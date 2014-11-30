.class public Lcom/dolphin/browser/preload/f;
.super Ljava/lang/Object;
.source "DataConfiguration.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/dolphin/browser/preload/f;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Landroid/content/ContentResolver;

.field private e:Lcom/dolphin/browser/preload/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/dolphin/browser/preload/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/preload/f;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 63
    iput-object v0, p0, Lcom/dolphin/browser/preload/f;->c:Landroid/content/Context;

    .line 64
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/preload/f;->d:Landroid/content/ContentResolver;

    .line 65
    new-instance v1, Lcom/dolphin/browser/preload/n;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/preload/n;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/dolphin/browser/preload/f;->e:Lcom/dolphin/browser/preload/n;

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/preload/f;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dolphin/browser/preload/f;->c:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/dolphin/browser/preload/f;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/dolphin/browser/preload/f;->b:Lcom/dolphin/browser/preload/f;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/dolphin/browser/preload/f;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/preload/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dolphin/browser/preload/f;->b:Lcom/dolphin/browser/preload/f;

    .line 73
    :cond_0
    sget-object v0, Lcom/dolphin/browser/preload/f;->b:Lcom/dolphin/browser/preload/f;

    return-object v0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/preload/a/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 232
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/dolphin/browser/preload/f;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;J)V

    .line 233
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;J)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/preload/a/a;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 243
    invoke-direct {p0, p2}, Lcom/dolphin/browser/preload/f;->c(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    :cond_0
    return-void

    .line 247
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 248
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 251
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 252
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/preload/a/a;

    .line 253
    invoke-virtual {v0}, Lcom/dolphin/browser/preload/a/a;->a()Ljava/lang/String;

    move-result-object v6

    .line 254
    invoke-virtual {v0}, Lcom/dolphin/browser/preload/a/a;->f()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 255
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 256
    const-string v8, "title"

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v6, "created"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 258
    const-string v6, "folder"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 259
    const-string v6, "type"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 260
    const-string v6, "is_folder"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 261
    const-string v6, "sync_status"

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 262
    const-string v6, "_order"

    invoke-virtual {v0}, Lcom/dolphin/browser/preload/a/a;->d()I

    move-result v8

    int-to-long v8, v8

    sub-long v8, v4, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 263
    const-string v6, "bookmarks"

    const/4 v8, 0x0

    invoke-virtual {p1, v6, v8, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    .line 265
    invoke-virtual {v0}, Lcom/dolphin/browser/preload/a/a;->e()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0, v6, v7}, Lcom/dolphin/browser/preload/f;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;J)V

    .line 251
    :cond_2
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 267
    :cond_3
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 268
    const-string v8, "created"

    int-to-long v9, v1

    add-long/2addr v9, v4

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 269
    const-string v8, "date"

    int-to-long v9, v1

    add-long/2addr v9, v4

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 270
    const-string v8, "is_folder"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 273
    const-string v8, "_order"

    invoke-virtual {v0}, Lcom/dolphin/browser/preload/a/a;->d()I

    move-result v9

    int-to-long v9, v9

    sub-long v9, v4, v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 275
    const-string v8, "folder"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 276
    const-string v8, "title"

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v6, "url"

    invoke-virtual {v0}, Lcom/dolphin/browser/preload/a/a;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v6, "is_build_in"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 280
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    invoke-virtual {v0}, Lcom/dolphin/browser/preload/a/a;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 282
    new-instance v6, Lcom/dolphin/browser/preload/h;

    invoke-virtual {v0}, Lcom/dolphin/browser/preload/a/a;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/dolphin/browser/preload/a/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, p0, v7, v0}, Lcom/dolphin/browser/preload/h;-><init>(Lcom/dolphin/browser/preload/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 288
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 289
    const-string v2, "_order"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 290
    const-string v2, "_order"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 292
    :cond_5
    const-string v2, "sync_status"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 293
    const-string v2, "bookmarks"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_2
.end method

.method private a(Lcom/dolphin/browser/preload/a/c;)V
    .locals 4

    .prologue
    .line 331
    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/preload/g;

    invoke-direct {v1, p0, p1}, Lcom/dolphin/browser/preload/g;-><init>(Lcom/dolphin/browser/preload/f;Lcom/dolphin/browser/preload/a/c;)V

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 338
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/preload/f;Lcom/dolphin/browser/preload/a/c;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/dolphin/browser/preload/f;->b(Lcom/dolphin/browser/preload/a/c;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 319
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/dolphin/browser/preload/b;->a()Lcom/dolphin/browser/preload/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/preload/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    :cond_0
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/preload/f;->c:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b(Landroid/content/Context;I)V

    .line 328
    :goto_0
    return-void

    .line 325
    :cond_1
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/preload/f;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->setHomePage(Landroid/content/Context;Ljava/lang/String;)V

    .line 326
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/preload/f;->c:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->c(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method private b(Lcom/dolphin/browser/preload/a/c;)V
    .locals 5

    .prologue
    .line 342
    if-nez p1, :cond_0

    .line 356
    :goto_0
    return-void

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/preload/f;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 347
    new-instance v1, Ljava/io/File;

    const-string v2, "tunnybrowser_gestures"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 349
    new-instance v2, Ljava/io/File;

    const-string v3, "gesture_marked"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 352
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 353
    new-instance v3, Lcom/dolphin/browser/preload/i;

    invoke-virtual {p1}, Lcom/dolphin/browser/preload/a/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4, v1}, Lcom/dolphin/browser/preload/i;-><init>(Lcom/dolphin/browser/preload/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    new-instance v1, Lcom/dolphin/browser/preload/i;

    invoke-virtual {p1}, Lcom/dolphin/browser/preload/a/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v3, v0}, Lcom/dolphin/browser/preload/i;-><init>(Lcom/dolphin/browser/preload/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    new-instance v0, Lcom/dolphin/browser/preload/j;

    invoke-direct {v0, p0, v2}, Lcom/dolphin/browser/preload/j;-><init>(Lcom/dolphin/browser/preload/f;Ljava/util/List;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    goto :goto_0
.end method

.method private b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/preload/a/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/dolphin/browser/preload/f;->c(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/provider/q;->a()Lcom/dolphin/browser/provider/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/provider/q;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 216
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 218
    :try_start_0
    invoke-direct {p0, v1, p1}, Lcom/dolphin/browser/preload/f;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    .line 219
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 225
    :goto_1
    invoke-static {}, Lcom/dolphin/browser/sync/aq;->a()Lcom/dolphin/browser/sync/aq;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/preload/f;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/sync/aq;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    invoke-static {}, Lcom/dolphin/browser/sync/s;->s()Lcom/dolphin/browser/sync/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/s;->n()V

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    :try_start_1
    sget-object v0, Lcom/dolphin/browser/preload/f;->a:Ljava/lang/String;

    const-string v2, "Failed to write data."

    invoke-static {v0, v2}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private c(Lcom/dolphin/browser/preload/a/b;)V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/dolphin/browser/preload/f;->e:Lcom/dolphin/browser/preload/n;

    invoke-virtual {p1}, Lcom/dolphin/browser/preload/a/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/preload/n;->a(Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/dolphin/browser/preload/f;->e:Lcom/dolphin/browser/preload/n;

    invoke-virtual {p1}, Lcom/dolphin/browser/preload/a/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/preload/n;->c(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/dolphin/browser/preload/f;->e:Lcom/dolphin/browser/preload/n;

    invoke-virtual {p1}, Lcom/dolphin/browser/preload/a/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/preload/n;->b(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/dolphin/browser/preload/f;->e:Lcom/dolphin/browser/preload/n;

    invoke-virtual {p1}, Lcom/dolphin/browser/preload/a/b;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/preload/n;->d(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/dolphin/browser/preload/f;->e:Lcom/dolphin/browser/preload/n;

    invoke-virtual {p1}, Lcom/dolphin/browser/preload/a/b;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/preload/n;->e(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/dolphin/browser/preload/f;->e:Lcom/dolphin/browser/preload/n;

    invoke-virtual {p1}, Lcom/dolphin/browser/preload/a/b;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/preload/n;->f(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/dolphin/browser/preload/f;->e:Lcom/dolphin/browser/preload/n;

    invoke-virtual {p1}, Lcom/dolphin/browser/preload/a/b;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/preload/n;->g(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/dolphin/browser/preload/f;->e:Lcom/dolphin/browser/preload/n;

    invoke-virtual {p1}, Lcom/dolphin/browser/preload/a/b;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/preload/n;->h(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/dolphin/browser/preload/f;->e:Lcom/dolphin/browser/preload/n;

    invoke-virtual {p1}, Lcom/dolphin/browser/preload/a/b;->m()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/preload/n;->c(Z)V

    .line 309
    return-void
.end method

.method private c(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/preload/a/a;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 236
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 237
    :goto_0
    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    move v1, v0

    .line 236
    goto :goto_0
.end method

.method private d(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/search/b/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 313
    new-instance v0, Lcom/dolphin/browser/search/a/d;

    iget-object v1, p0, Lcom/dolphin/browser/preload/f;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/dolphin/browser/search/a/d;-><init>(Landroid/content/Context;)V

    .line 314
    iget-object v1, p0, Lcom/dolphin/browser/preload/f;->e:Lcom/dolphin/browser/preload/n;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/search/a/d;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/preload/n;->i(Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method private e(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/preload/a/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 359
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/preload/f;->e:Lcom/dolphin/browser/preload/n;

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/preload/n;->j(Ljava/lang/String;)V

    .line 368
    :goto_0
    return-void

    .line 363
    :cond_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 364
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/preload/a/d;

    .line 365
    invoke-virtual {v0}, Lcom/dolphin/browser/preload/a/d;->d()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 367
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/preload/f;->e:Lcom/dolphin/browser/preload/n;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/preload/n;->j(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/preload/a/b;)V
    .locals 2

    .prologue
    .line 81
    sget-object v0, Lcom/dolphin/browser/preload/f;->a:Ljava/lang/String;

    const-string v1, "update - updateBookmarks..."

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p1}, Lcom/dolphin/browser/preload/a/b;->a()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/preload/f;->b(Ljava/util/List;)V

    .line 84
    sget-object v0, Lcom/dolphin/browser/preload/f;->a:Ljava/lang/String;

    const-string v1, "update - setHomePage..."

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {p1}, Lcom/dolphin/browser/preload/a/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/preload/f;->a(Ljava/lang/String;)V

    .line 87
    sget-object v0, Lcom/dolphin/browser/preload/f;->a:Ljava/lang/String;

    const-string v1, "update - initOtherSettings..."

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-direct {p0, p1}, Lcom/dolphin/browser/preload/f;->c(Lcom/dolphin/browser/preload/a/b;)V

    .line 90
    sget-object v0, Lcom/dolphin/browser/preload/f;->a:Ljava/lang/String;

    const-string v1, "update - initSearchCategories..."

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p1}, Lcom/dolphin/browser/preload/a/b;->b()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/preload/f;->d(Ljava/util/List;)V

    .line 93
    sget-object v0, Lcom/dolphin/browser/preload/f;->a:Ljava/lang/String;

    const-string v1, "update - initGesturesDelay..."

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {p1}, Lcom/dolphin/browser/preload/a/b;->c()Lcom/dolphin/browser/preload/a/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/preload/f;->a(Lcom/dolphin/browser/preload/a/c;)V

    .line 96
    sget-object v0, Lcom/dolphin/browser/preload/f;->a:Ljava/lang/String;

    const-string v1, "update - initLauncherShortcuts..."

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {p1}, Lcom/dolphin/browser/preload/a/b;->h()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/preload/f;->e(Ljava/util/List;)V

    .line 99
    sget-object v0, Lcom/dolphin/browser/preload/f;->a:Ljava/lang/String;

    const-string v1, "update - done."

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/preload/a/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 381
    new-instance v0, Lcom/dolphin/browser/preload/k;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/preload/k;-><init>(Lcom/dolphin/browser/preload/f;Ljava/util/List;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 382
    return-void
.end method

.method public b(Lcom/dolphin/browser/preload/a/b;)V
    .locals 2

    .prologue
    .line 371
    if-nez p1, :cond_0

    .line 377
    :goto_0
    return-void

    .line 374
    :cond_0
    invoke-virtual {p1}, Lcom/dolphin/browser/preload/a/b;->h()Ljava/util/List;

    move-result-object v0

    .line 375
    invoke-direct {p0, v0}, Lcom/dolphin/browser/preload/f;->e(Ljava/util/List;)V

    .line 376
    new-instance v1, Lcom/dolphin/browser/preload/k;

    invoke-direct {v1, p0, v0}, Lcom/dolphin/browser/preload/k;-><init>(Lcom/dolphin/browser/preload/f;Ljava/util/List;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    goto :goto_0
.end method
