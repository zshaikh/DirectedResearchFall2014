.class public Lcom/dolphin/browser/f/d/g;
.super Ljava/lang/Object;
.source "TopSitesStore.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/dolphin/browser/f/d/g;->a:Landroid/content/Context;

    .line 36
    return-void
.end method

.method private a(Ljava/util/List;J)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/f/d/b;",
            ">;J)Z"
        }
    .end annotation

    .prologue
    .line 114
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/f/d/b;

    .line 115
    invoke-virtual {v0}, Lcom/dolphin/browser/f/d/b;->a()J

    move-result-wide v2

    cmp-long v0, v2, p2

    if-nez v0, :cond_0

    .line 116
    const/4 v0, 0x1

    .line 119
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dolphin/browser/f/d/g;->a:Landroid/content/Context;

    const-string v1, "TopSites"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 4

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/dolphin/browser/f/d/g;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_modified_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Ljava/lang/String;)Lcom/dolphin/browser/f/d/b;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 123
    .line 125
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-object v0

    .line 131
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 134
    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 136
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/f/d/g;->b(Ljava/lang/String;)Lcom/dolphin/browser/f/d/b;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 141
    :goto_1
    if-nez v1, :cond_2

    .line 142
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/dolphin/browser/f/d/g;->b(Ljava/lang/String;)Lcom/dolphin/browser/f/d/b;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 146
    :goto_2
    if-nez v0, :cond_0

    .line 147
    :try_start_2
    invoke-static {v2}, Lcom/dolphin/browser/f/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 149
    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/f/d/g;->b(Ljava/lang/String;)Lcom/dolphin/browser/f/d/b;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v1

    .line 154
    :goto_3
    const-string v2, "TopSitesStore"

    invoke-static {v2, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 155
    :catch_1
    move-exception v1

    .line 156
    :goto_4
    const-string v2, "TopSitesStore"

    invoke-static {v2, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 155
    :catch_2
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_4

    .line 153
    :catch_3
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_3

    :cond_2
    move-object v0, v1

    goto :goto_2

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/f/d/b;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 83
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 84
    iget-object v0, p0, Lcom/dolphin/browser/f/d/g;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 88
    :try_start_0
    sget-object v1, Lcom/dolphin/browser/provider/Browser;->f:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "sid"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 91
    if-eqz v1, :cond_2

    .line 92
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 94
    invoke-direct {p0, p1, v2, v3}, Lcom/dolphin/browser/f/d/g;->a(Ljava/util/List;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    :goto_1
    :try_start_2
    const-string v2, "TopSitesStore"

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 102
    if-eqz v1, :cond_1

    .line 104
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 110
    :cond_1
    :goto_2
    return-object v7

    .line 102
    :cond_2
    if-eqz v1, :cond_1

    .line 104
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 105
    :catch_1
    move-exception v0

    .line 106
    const-string v1, "TopSitesStore"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 105
    :catch_2
    move-exception v0

    .line 106
    const-string v1, "TopSitesStore"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 102
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_3
    if-eqz v1, :cond_3

    .line 104
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 107
    :cond_3
    :goto_4
    throw v0

    .line 105
    :catch_3
    move-exception v1

    .line 106
    const-string v2, "TopSitesStore"

    invoke-static {v2, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 102
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 99
    :catch_4
    move-exception v0

    move-object v1, v6

    goto :goto_1
.end method

.method public a(J)V
    .locals 3

    .prologue
    .line 203
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-direct {p0}, Lcom/dolphin/browser/f/d/g;->b()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last_modified_time"

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 205
    return-void
.end method

.method public a(Lcom/dolphin/browser/f/d/c;)V
    .locals 8

    .prologue
    .line 44
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/dolphin/browser/f/d/c;->b()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    invoke-virtual {p1}, Lcom/dolphin/browser/f/d/c;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/f/d/b;

    .line 50
    invoke-virtual {v0}, Lcom/dolphin/browser/f/d/b;->e()Z

    move-result v3

    if-nez v3, :cond_2

    .line 51
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 52
    const-string v4, "sid"

    invoke-virtual {v0}, Lcom/dolphin/browser/f/d/b;->a()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 53
    const-string v4, "url"

    invoke-virtual {v0}, Lcom/dolphin/browser/f/d/b;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v4, "color"

    invoke-virtual {v0}, Lcom/dolphin/browser/f/d/b;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v4, "icon"

    invoke-virtual {v0}, Lcom/dolphin/browser/f/d/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 61
    :cond_3
    invoke-static {}, Lcom/dolphin/browser/provider/q;->a()Lcom/dolphin/browser/provider/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/provider/q;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 62
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 64
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 65
    const-string v3, "top_sites"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 73
    :catch_0
    move-exception v0

    .line 74
    :try_start_1
    const-string v0, "TopSitesStore"

    const-string v1, "Failed to write data."

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 79
    :goto_3
    invoke-virtual {p1}, Lcom/dolphin/browser/f/d/c;->a()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/f/d/g;->a(J)V

    goto/16 :goto_0

    .line 67
    :cond_4
    :try_start_2
    invoke-virtual {p1}, Lcom/dolphin/browser/f/d/c;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/f/d/g;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 68
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 69
    const-string v0, "top_sites"

    const-string v5, "sid =? "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v7

    invoke-virtual {v2, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 76
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 72
    :cond_5
    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 76
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_3
.end method

.method public b(Ljava/lang/String;)Lcom/dolphin/browser/f/d/b;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 162
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v6

    .line 195
    :cond_0
    :goto_0
    return-object v0

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/f/d/g;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 170
    :try_start_0
    sget-object v1, Lcom/dolphin/browser/provider/Browser;->f:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "sid"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "url"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "color"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "icon"

    aput-object v4, v2, v3

    const-string v3, "url =? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 177
    if-eqz v7, :cond_2

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 179
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 180
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 181
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 182
    new-instance v0, Lcom/dolphin/browser/f/d/b;

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/f/d/b;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 187
    if-eqz v7, :cond_0

    .line 189
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 190
    :catch_0
    move-exception v1

    .line 191
    const-string v2, "TopSitesStore"

    invoke-static {v2, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 187
    :cond_2
    if-eqz v7, :cond_3

    .line 189
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    :goto_1
    move-object v0, v6

    .line 195
    goto :goto_0

    .line 190
    :catch_1
    move-exception v0

    .line 191
    const-string v1, "TopSitesStore"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 184
    :catch_2
    move-exception v0

    move-object v1, v6

    .line 185
    :goto_2
    :try_start_4
    const-string v2, "TopSitesStore"

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 187
    if-eqz v1, :cond_3

    .line 189
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 190
    :catch_3
    move-exception v0

    .line 191
    const-string v1, "TopSitesStore"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 187
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v6, :cond_4

    .line 189
    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 192
    :cond_4
    :goto_4
    throw v0

    .line 190
    :catch_4
    move-exception v1

    .line 191
    const-string v2, "TopSitesStore"

    invoke-static {v2, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 187
    :catchall_1
    move-exception v0

    move-object v6, v7

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v6, v1

    goto :goto_3

    .line 184
    :catch_5
    move-exception v0

    move-object v1, v7

    goto :goto_2
.end method
