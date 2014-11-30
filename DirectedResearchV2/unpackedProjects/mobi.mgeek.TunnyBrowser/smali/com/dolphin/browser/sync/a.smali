.class public Lcom/dolphin/browser/sync/a;
.super Lcom/dolphin/browser/sync/k;
.source "BaseBookmarkSynchronizer.java"


# instance fields
.field protected a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/dolphin/browser/sync/q;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/sync/k;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/dolphin/browser/sync/a;->b:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const-string v2, "content://%s/%s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p3, v3, v5

    invoke-virtual {p0}, Lcom/dolphin/browser/sync/a;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v0, p0, Lcom/dolphin/browser/sync/a;->b:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const-string v2, "content://%s/%s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p3, v3, v5

    const-string v4, "folders"

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v0, p0, Lcom/dolphin/browser/sync/a;->b:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const-string v2, "content://%s/%s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p3, v3, v5

    const-string v4, "speed_dial"

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    return-void
.end method

.method private i(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 3

    .prologue
    .line 134
    invoke-static {}, Lcom/dolphin/browser/sync/ao;->a()Lcom/dolphin/browser/sync/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/ao;->b()Lcom/dolphin/browser/sync/ag;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/sync/a;->a:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/dolphin/browser/sync/a;->f:Ljava/util/List;

    invoke-interface {v0, p0, p1, v1, v2}, Lcom/dolphin/browser/sync/ag;->a(Lcom/dolphin/browser/sync/k;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/HashMap;Ljava/util/List;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 53
    .line 56
    :try_start_0
    const-string v1, "bookmarkSyncStatus"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "data1"

    aput-object v3, v2, v0

    const-string v3, "kind=0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 58
    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 60
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 64
    :goto_0
    if-eqz v1, :cond_0

    .line 65
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 69
    :cond_0
    int-to-long v0, v0

    return-wide v0

    .line 64
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_1
    if-eqz v1, :cond_1

    .line 65
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 64
    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_2
    move v0, v9

    goto :goto_0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 146
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 147
    const-string v1, "data1"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 148
    const-string v1, "bookmarkSyncStatus"

    const-string v2, "kind=0"

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 149
    if-nez v1, :cond_0

    .line 150
    const-string v1, "kind"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 151
    const-string v1, "bookmarkSyncStatus"

    invoke-virtual {p1, v1, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 153
    :cond_0
    return-void
.end method

.method public a(Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 83
    :try_start_0
    const-string v0, "updated_objs"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 84
    iget-object v0, p0, Lcom/dolphin/browser/sync/a;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/sync/a;->a:Ljava/util/HashMap;

    .line 87
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move v0, v1

    .line 88
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 89
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/dolphin/browser/sync/q;->b(Lorg/json/JSONObject;)Lcom/dolphin/browser/sync/q;

    move-result-object v4

    .line 90
    if-nez v4, :cond_2

    .line 88
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {v4}, Lcom/dolphin/browser/sync/q;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 94
    const-string v5, "BaseBookmarkSynchronizer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Server ID is empty: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 125
    :catch_0
    move-exception v0

    .line 126
    const-string v1, "BaseBookmarkSynchronizer"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 96
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/dolphin/browser/sync/a;->b()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/dolphin/browser/sync/q;->d(I)V

    .line 97
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 98
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 103
    :cond_4
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/sync/q;

    .line 104
    iget-object v4, p0, Lcom/dolphin/browser/sync/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/q;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 106
    :cond_5
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 108
    const-string v0, "deleted_ids"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 109
    iget-object v0, p0, Lcom/dolphin/browser/sync/a;->f:Ljava/util/List;

    if-nez v0, :cond_6

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/sync/a;->f:Ljava/util/List;

    :cond_6
    move v0, v1

    .line 112
    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 113
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 114
    iget-object v4, p0, Lcom/dolphin/browser/sync/a;->f:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 117
    :cond_7
    invoke-direct {p0, p2}, Lcom/dolphin/browser/sync/a;->i(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    .line 118
    if-nez v0, :cond_8

    move v0, v1

    .line 130
    :goto_4
    return v0

    .line 123
    :cond_8
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/sync/a;->a(Lorg/json/JSONObject;)J

    move-result-wide v0

    invoke-virtual {p0, p2, v0, v1}, Lcom/dolphin/browser/sync/a;->a(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 130
    const/4 v0, 0x1

    goto :goto_4
.end method

.method protected b()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1

    .prologue
    .line 141
    invoke-static {}, Lcom/dolphin/browser/sync/ao;->a()Lcom/dolphin/browser/sync/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/ao;->b()Lcom/dolphin/browser/sync/ag;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/dolphin/browser/sync/ag;->a(Lcom/dolphin/browser/sync/k;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 162
    invoke-static {}, Lcom/dolphin/browser/sync/ao;->a()Lcom/dolphin/browser/sync/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/ao;->b()Lcom/dolphin/browser/sync/ag;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/dolphin/browser/sync/ag;->a(Lcom/dolphin/browser/sync/k;)V

    .line 163
    return-void
.end method

.method public c(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 157
    invoke-static {}, Lcom/dolphin/browser/sync/ao;->a()Lcom/dolphin/browser/sync/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/ao;->b()Lcom/dolphin/browser/sync/ag;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/dolphin/browser/sync/ag;->b(Lcom/dolphin/browser/sync/k;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 158
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    invoke-static {}, Lcom/dolphin/browser/sync/ao;->a()Lcom/dolphin/browser/sync/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/ao;->b()Lcom/dolphin/browser/sync/ag;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/sync/ag;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 167
    invoke-static {}, Lcom/dolphin/browser/sync/ao;->a()Lcom/dolphin/browser/sync/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/ao;->b()Lcom/dolphin/browser/sync/ag;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/dolphin/browser/sync/ag;->c(Lcom/dolphin/browser/sync/k;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 168
    return-void
.end method
