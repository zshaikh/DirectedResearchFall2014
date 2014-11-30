.class public abstract Lcom/dolphin/browser/bookmarks/h;
.super Lcom/dolphin/browser/bookmarks/n;
.source "BookmarkWithFolderImporter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/bookmarks/n;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/bookmarks/n;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method private a(Ljava/lang/String;J)J
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 100
    iget-object v0, p0, Lcom/dolphin/browser/bookmarks/h;->a:Landroid/content/ContentResolver;

    sget-object v1, Lcom/dolphin/browser/provider/Browser;->FOLDERS_URI:Landroid/net/Uri;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v6

    const-string v3, "title=? AND folder=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 113
    :goto_0
    return-wide v0

    .line 108
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 109
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v1, "created"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 111
    const-string v1, "folder"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 112
    iget-object v1, p0, Lcom/dolphin/browser/bookmarks/h;->a:Landroid/content/ContentResolver;

    sget-object v2, Lcom/dolphin/browser/provider/Browser;->FOLDERS_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 113
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method public a(JJ)I
    .locals 9

    .prologue
    .line 58
    const/4 v2, 0x0

    .line 59
    const/4 v1, 0x0

    .line 61
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/bookmarks/h;->a(J)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 62
    if-eqz v6, :cond_4

    .line 63
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_4

    move v7, v2

    .line 65
    :goto_0
    :try_start_2
    invoke-virtual {p0, v6}, Lcom/dolphin/browser/bookmarks/h;->d(Landroid/database/Cursor;)J

    move-result-wide v0

    .line 66
    invoke-virtual {p0, v6}, Lcom/dolphin/browser/bookmarks/h;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-virtual {p0, v6}, Lcom/dolphin/browser/bookmarks/h;->c(Landroid/database/Cursor;)Z

    move-result v3

    .line 68
    if-eqz v3, :cond_1

    .line 69
    invoke-direct {p0, v2, p3, p4}, Lcom/dolphin/browser/bookmarks/h;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 70
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/dolphin/browser/bookmarks/h;->a(JJ)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    add-int v1, v7, v0

    .line 76
    :goto_1
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToPrevious()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 82
    :goto_2
    if-eqz v6, :cond_0

    .line 84
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 89
    :cond_0
    :goto_3
    return v0

    .line 72
    :cond_1
    :try_start_5
    invoke-virtual {p0, v6}, Lcom/dolphin/browser/bookmarks/h;->b(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .line 73
    iget-object v0, p0, Lcom/dolphin/browser/bookmarks/h;->a:Landroid/content/ContentResolver;

    const/4 v5, 0x1

    move-wide v3, p3

    invoke-static/range {v0 .. v5}, Lcom/dolphin/browser/provider/Browser;->addBookmark(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JZ)Landroid/net/Uri;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 74
    add-int/lit8 v1, v7, 0x1

    goto :goto_1

    .line 79
    :catch_0
    move-exception v0

    move-object v8, v0

    move v0, v2

    move-object v2, v1

    move-object v1, v8

    .line 80
    :goto_4
    :try_start_6
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 82
    if-eqz v2, :cond_0

    .line 84
    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 85
    :catch_1
    move-exception v1

    goto :goto_3

    .line 82
    :catchall_0
    move-exception v0

    move-object v6, v1

    :goto_5
    if-eqz v6, :cond_2

    .line 84
    :try_start_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 86
    :cond_2
    :goto_6
    throw v0

    .line 85
    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_6

    .line 82
    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v6, v2

    goto :goto_5

    .line 79
    :catch_4
    move-exception v0

    move-object v1, v0

    move v0, v2

    move-object v2, v6

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v1, v0

    move-object v2, v6

    move v0, v7

    goto :goto_4

    :catch_6
    move-exception v0

    move-object v2, v6

    move-object v8, v0

    move v0, v1

    move-object v1, v8

    goto :goto_4

    :cond_3
    move v7, v1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method protected abstract c(Landroid/database/Cursor;)Z
.end method

.method protected abstract d(Landroid/database/Cursor;)J
.end method
