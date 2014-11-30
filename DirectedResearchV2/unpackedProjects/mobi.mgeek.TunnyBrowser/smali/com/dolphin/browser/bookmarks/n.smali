.class public abstract Lcom/dolphin/browser/bookmarks/n;
.super Lcom/dolphin/browser/bookmarks/a;
.source "SimpleBookmarkImporter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/bookmarks/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/bookmarks/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method public a(JJ)I
    .locals 9

    .prologue
    .line 53
    const/4 v2, 0x0

    .line 54
    const/4 v1, 0x0

    .line 56
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/bookmarks/n;->a(J)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 57
    if-eqz v6, :cond_3

    .line 58
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_3

    move v7, v2

    .line 60
    :goto_0
    :try_start_2
    invoke-virtual {p0, v6}, Lcom/dolphin/browser/bookmarks/n;->b(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-virtual {p0, v6}, Lcom/dolphin/browser/bookmarks/n;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    .line 62
    iget-object v0, p0, Lcom/dolphin/browser/bookmarks/n;->a:Landroid/content/ContentResolver;

    const/4 v5, 0x1

    move-wide v3, p3

    invoke-static/range {v0 .. v5}, Lcom/dolphin/browser/provider/Browser;->addBookmark(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JZ)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 63
    add-int/lit8 v1, v7, 0x1

    .line 64
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToPrevious()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 70
    :goto_1
    if-eqz v6, :cond_0

    .line 72
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 77
    :cond_0
    :goto_2
    return v0

    .line 67
    :catch_0
    move-exception v0

    move-object v8, v0

    move v0, v2

    move-object v2, v1

    move-object v1, v8

    .line 68
    :goto_3
    :try_start_5
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 70
    if-eqz v2, :cond_0

    .line 72
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 73
    :catch_1
    move-exception v1

    goto :goto_2

    .line 70
    :catchall_0
    move-exception v0

    move-object v6, v1

    :goto_4
    if-eqz v6, :cond_1

    .line 72
    :try_start_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 74
    :cond_1
    :goto_5
    throw v0

    .line 73
    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_5

    .line 70
    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v6, v2

    goto :goto_4

    .line 67
    :catch_4
    move-exception v0

    move-object v1, v0

    move v0, v2

    move-object v2, v6

    goto :goto_3

    :catch_5
    move-exception v0

    move-object v1, v0

    move-object v2, v6

    move v0, v7

    goto :goto_3

    :catch_6
    move-exception v0

    move-object v2, v6

    move-object v8, v0

    move v0, v1

    move-object v1, v8

    goto :goto_3

    :cond_2
    move v7, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method protected abstract a(J)Landroid/database/Cursor;
.end method

.method protected abstract a(Landroid/database/Cursor;)Ljava/lang/String;
.end method

.method protected abstract b(Landroid/database/Cursor;)Ljava/lang/String;
.end method
