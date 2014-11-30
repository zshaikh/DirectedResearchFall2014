.class Lcom/dolphin/browser/bookmark/aq;
.super Lcom/dolphin/browser/util/f;
.source "BookmarkFileImporter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/io/File;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/bookmark/ap;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/bookmark/ap;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/aq;->a:Lcom/dolphin/browser/bookmark/ap;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    .line 53
    iput-object p2, p0, Lcom/dolphin/browser/bookmark/aq;->b:Landroid/content/Context;

    .line 54
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Lcom/dolphin/browser/bookmark/bs;)I
    .locals 12

    .prologue
    const/4 v11, 0x0

    const-wide/16 v9, 0x0

    const/4 v2, 0x0

    .line 137
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/aq;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    :cond_0
    :goto_0
    return v2

    .line 143
    :cond_1
    invoke-virtual {p2}, Lcom/dolphin/browser/bookmark/bs;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/bookmark/bs;

    .line 144
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/aq;->f()Z

    move-result v4

    if-nez v4, :cond_0

    .line 148
    invoke-virtual {p2}, Lcom/dolphin/browser/bookmark/bs;->b()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/dolphin/browser/bookmark/bs;->b(J)V

    .line 149
    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/bookmark/aq;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/dolphin/browser/bookmark/bs;)J

    move-result-wide v4

    .line 150
    cmp-long v6, v4, v9

    if-lez v6, :cond_2

    .line 152
    invoke-virtual {v0, v4, v5}, Lcom/dolphin/browser/bookmark/bs;->a(J)V

    goto :goto_1

    .line 156
    :cond_2
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 157
    const-string v5, "title"

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/bs;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v5, "folder"

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/bs;->e()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 159
    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/bs;->f()J

    move-result-wide v5

    .line 160
    const-string v7, "created"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 161
    const-string v7, "_order"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 162
    const-string v5, "sync_status"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 164
    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/bs;->g()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 165
    const-string v5, "is_folder"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 166
    const-string v5, "bookmarks"

    invoke-virtual {p1, v5, v11, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 168
    cmp-long v6, v4, v9

    if-lez v6, :cond_3

    .line 169
    invoke-virtual {v0, v4, v5}, Lcom/dolphin/browser/bookmark/bs;->a(J)V

    .line 170
    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/bookmark/aq;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/dolphin/browser/bookmark/bs;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    :cond_3
    move v0, v1

    :goto_2
    move v1, v0

    .line 181
    goto/16 :goto_1

    .line 173
    :cond_4
    const-string v5, "url"

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/bs;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v0, "is_folder"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 175
    const-string v0, "bookmarks"

    invoke-virtual {p1, v0, v11, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 177
    cmp-long v0, v4, v9

    if-lez v0, :cond_6

    .line 178
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    goto :goto_2

    :cond_5
    move v2, v1

    .line 183
    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method private a(Lcom/dolphin/browser/bookmark/bs;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 102
    const/4 v2, 0x1

    .line 105
    invoke-static {}, Lcom/dolphin/browser/provider/q;->a()Lcom/dolphin/browser/provider/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/provider/q;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 107
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 109
    :try_start_0
    invoke-direct {p0, v3, p1}, Lcom/dolphin/browser/bookmark/aq;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/dolphin/browser/bookmark/bs;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    add-int/2addr v0, v1

    .line 111
    :try_start_1
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/aq;->f()Z

    move-result v4

    if-nez v4, :cond_0

    .line 113
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    :cond_0
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v1, v2

    .line 122
    :goto_0
    if-lez v0, :cond_2

    .line 123
    invoke-static {}, Lcom/dolphin/browser/sync/aq;->a()Lcom/dolphin/browser/sync/aq;

    move-result-object v0

    iget-object v2, p0, Lcom/dolphin/browser/bookmark/aq;->b:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/sync/aq;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    invoke-static {}, Lcom/dolphin/browser/sync/s;->s()Lcom/dolphin/browser/sync/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/s;->n()V

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/aq;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 132
    :cond_2
    return v1

    .line 115
    :catch_0
    move-exception v0

    move v0, v1

    .line 117
    :goto_1
    :try_start_2
    const-string v2, "BookmarkFileImporter"

    const-string v4, "Failed to write data."

    invoke-static {v2, v4}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 115
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private a(Ljava/io/File;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/aq;->f()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v0

    .line 87
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/aq;->a:Lcom/dolphin/browser/bookmark/ap;

    invoke-static {v1}, Lcom/dolphin/browser/bookmark/ap;->a(Lcom/dolphin/browser/bookmark/ap;)Lcom/dolphin/browser/bookmark/ar;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/dolphin/browser/bookmark/ar;->b(Ljava/io/File;)Lcom/dolphin/browser/bookmark/bs;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 94
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/aq;->f()Z

    move-result v2

    if-nez v2, :cond_0

    .line 98
    invoke-direct {p0, v1}, Lcom/dolphin/browser/bookmark/aq;->a(Lcom/dolphin/browser/bookmark/bs;)Z

    move-result v0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;Lcom/dolphin/browser/bookmark/bs;)J
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 187
    .line 188
    new-array v2, v6, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    .line 189
    invoke-virtual {p2}, Lcom/dolphin/browser/bookmark/bs;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    const-string v1, "bookmarks"

    const-string v3, "bookmarks.deleted=? AND bookmarks.is_folder=? AND bookmarks.folder=? AND bookmarks.title=?"

    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-virtual {p2}, Lcom/dolphin/browser/bookmark/bs;->e()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    invoke-virtual {p2}, Lcom/dolphin/browser/bookmark/bs;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v2, v0

    .line 209
    :goto_0
    const-wide/16 v0, 0x0

    .line 210
    if-eqz v2, :cond_1

    .line 211
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 212
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 214
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 217
    :cond_1
    return-wide v0

    .line 199
    :cond_2
    const-string v1, "bookmarks"

    const-string v3, "bookmarks.deleted=? AND bookmarks.is_folder=? AND bookmarks.folder=? AND bookmarks.url=?"

    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-virtual {p2}, Lcom/dolphin/browser/bookmark/bs;->e()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    invoke-virtual {p2}, Lcom/dolphin/browser/bookmark/bs;->d()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v2, v0

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Ljava/io/File;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 65
    invoke-direct {p0, v0}, Lcom/dolphin/browser/bookmark/aq;->a(Ljava/io/File;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    check-cast p1, [Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/bookmark/aq;->a([Ljava/io/File;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/aq;->b:Landroid/content/Context;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00af

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 60
    return-void
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 70
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/aq;->b:Landroid/content/Context;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00ac

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 77
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/aq;->b:Landroid/content/Context;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00ab

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 48
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/bookmark/aq;->a(Ljava/lang/Boolean;)V

    return-void
.end method
