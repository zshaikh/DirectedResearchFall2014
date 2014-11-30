.class Lcom/dolphin/browser/bookmark/bd;
.super Lcom/dolphin/browser/util/f;
.source "BookmarkItemSorter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/bookmark/bb;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/bookmark/br;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/bookmark/bb;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/bookmark/br;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 50
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/bd;->a:Lcom/dolphin/browser/bookmark/bb;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    .line 51
    iput-object p2, p0, Lcom/dolphin/browser/bookmark/bd;->b:Ljava/util/List;

    .line 52
    iput-boolean p3, p0, Lcom/dolphin/browser/bookmark/bd;->c:Z

    .line 53
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;[Lcom/dolphin/browser/bookmark/br;Z)I
    .locals 11

    .prologue
    .line 148
    const/4 v3, 0x0

    .line 149
    array-length v4, p2

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 151
    if-nez p3, :cond_0

    .line 152
    int-to-long v5, v4

    add-long/2addr v0, v5

    .line 155
    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_3

    .line 157
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/bd;->f()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 158
    new-instance v0, Lcom/dolphin/browser/bookmark/bc;

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/bd;->a:Lcom/dolphin/browser/bookmark/bb;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/bookmark/bc;-><init>(Lcom/dolphin/browser/bookmark/bb;I)V

    throw v0

    .line 161
    :cond_1
    aget-object v5, p2, v2

    invoke-virtual {v5}, Lcom/dolphin/browser/bookmark/br;->a()J

    move-result-wide v5

    .line 162
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 163
    const-string v8, "_order"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 164
    const-string v8, "sync_status"

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 165
    const-string v8, "bookmarks"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p1, v8, v7, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 168
    if-eqz p3, :cond_2

    const-wide/16 v5, 0x1

    add-long/2addr v0, v5

    .line 155
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    :cond_2
    const-wide/16 v5, 0x1

    sub-long/2addr v0, v5

    goto :goto_1

    .line 171
    :cond_3
    return v3
.end method

.method private a([Lcom/dolphin/browser/bookmark/br;Z)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 110
    .line 113
    invoke-static {}, Lcom/dolphin/browser/provider/q;->a()Lcom/dolphin/browser/provider/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/provider/q;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 116
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 118
    :try_start_0
    invoke-direct {p0, v3, p1, p2}, Lcom/dolphin/browser/bookmark/bd;->a(Landroid/database/sqlite/SQLiteDatabase;[Lcom/dolphin/browser/bookmark/br;Z)I
    :try_end_0
    .catch Lcom/dolphin/browser/bookmark/bc; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    add-int v2, v0, v1

    .line 120
    :try_start_1
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/bd;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Lcom/dolphin/browser/bookmark/bc; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    const/4 v0, 0x1

    .line 130
    :cond_0
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 133
    :goto_0
    if-eqz v0, :cond_2

    if-lez v2, :cond_2

    .line 134
    invoke-static {}, Lcom/dolphin/browser/sync/aq;->a()Lcom/dolphin/browser/sync/aq;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/bookmark/bd;->a:Lcom/dolphin/browser/bookmark/bb;

    invoke-static {v2}, Lcom/dolphin/browser/bookmark/bb;->a(Lcom/dolphin/browser/bookmark/bb;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/sync/aq;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    invoke-static {}, Lcom/dolphin/browser/sync/s;->s()Lcom/dolphin/browser/sync/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/sync/s;->n()V

    .line 139
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/bd;->a:Lcom/dolphin/browser/bookmark/bb;

    invoke-static {v1}, Lcom/dolphin/browser/bookmark/bb;->a(Lcom/dolphin/browser/bookmark/bb;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 143
    :cond_2
    return v0

    .line 125
    :catch_0
    move-exception v1

    move v2, v0

    .line 126
    :goto_1
    :try_start_2
    const-string v4, "BookmarkItemSorter"

    invoke-virtual {v1}, Lcom/dolphin/browser/bookmark/bc;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 127
    :catch_1
    move-exception v1

    move v2, v0

    .line 128
    :goto_2
    :try_start_3
    const-string v1, "BookmarkItemSorter"

    const-string v4, "Failed to write data."

    invoke-static {v1, v4}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 130
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 127
    :catch_2
    move-exception v1

    goto :goto_2

    .line 125
    :catch_3
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/bd;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bd;->b:Ljava/util/List;

    iget-boolean v1, p0, Lcom/dolphin/browser/bookmark/bd;->c:Z

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/bookmark/bd;->a(Ljava/util/List;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/bookmark/bd;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/bd;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bd;->a:Lcom/dolphin/browser/bookmark/bb;

    invoke-static {v0}, Lcom/dolphin/browser/bookmark/bb;->a(Lcom/dolphin/browser/bookmark/bb;)Landroid/content/Context;

    move-result-object v0

    .line 71
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00b3

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 74
    :cond_1
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00b2

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 45
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/bookmark/bd;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method public a(Ljava/util/List;Z)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/bookmark/br;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 79
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v4, :cond_2

    :cond_0
    move v3, v4

    .line 106
    :cond_1
    :goto_0
    return v3

    .line 84
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/dolphin/browser/bookmark/br;

    .line 85
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dolphin/browser/bookmark/br;

    .line 86
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    move v2, v3

    .line 89
    :goto_1
    array-length v1, v0

    if-ge v2, v1, :cond_3

    .line 91
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/bd;->f()Z

    move-result v1

    if-nez v1, :cond_1

    .line 95
    aget-object v1, v0, v2

    invoke-virtual {v1}, Lcom/dolphin/browser/bookmark/br;->a()J

    move-result-wide v5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/bookmark/br;

    invoke-virtual {v1}, Lcom/dolphin/browser/bookmark/br;->a()J

    move-result-wide v7

    cmp-long v1, v5, v7

    if-eqz v1, :cond_4

    move v3, v4

    .line 101
    :cond_3
    if-nez v3, :cond_5

    move v3, v4

    .line 103
    goto :goto_0

    .line 89
    :cond_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 106
    :cond_5
    invoke-direct {p0, v0, p2}, Lcom/dolphin/browser/bookmark/bd;->a([Lcom/dolphin/browser/bookmark/br;Z)Z

    move-result v3

    goto :goto_0
.end method
