.class public Lcom/dolphin/browser/sync/ac;
.super Lcom/dolphin/browser/sync/k;
.source "HistorySynchonizer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/sync/k;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/dolphin/browser/sync/ac;->b:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const-string v2, "content://%s/%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/dolphin/browser/sync/ac;->d()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/sync/ac;->a(I)V

    .line 28
    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 2

    .prologue
    .line 39
    .line 40
    invoke-static {}, Lcom/dolphin/browser/sync/ab;->s()Lcom/dolphin/browser/sync/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/ab;->c()J

    move-result-wide v0

    .line 41
    return-wide v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 1

    .prologue
    .line 105
    invoke-static {}, Lcom/dolphin/browser/sync/ab;->s()Lcom/dolphin/browser/sync/ab;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/dolphin/browser/sync/ab;->a(J)V

    .line 106
    return-void
.end method

.method public a(Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 47
    :try_start_0
    const-string v2, "updated_objs"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 48
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move v2, v0

    .line 49
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 50
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/dolphin/browser/sync/aa;->b(Lorg/json/JSONObject;)Lcom/dolphin/browser/sync/aa;

    move-result-object v5

    .line 51
    if-nez v5, :cond_0

    .line 49
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {v5}, Lcom/dolphin/browser/sync/aa;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 55
    const-string v6, "HistorySynchonizer"

    const-string v7, "Server ID is empty: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    const-string v1, "HistorySynchonizer"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 57
    :cond_1
    :try_start_1
    invoke-virtual {v5}, Lcom/dolphin/browser/sync/aa;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 61
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 62
    const-string v2, "deleted_ids"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move v2, v0

    .line 63
    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 64
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 65
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 68
    :cond_3
    invoke-static {}, Lcom/dolphin/browser/sync/ao;->a()Lcom/dolphin/browser/sync/ao;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/sync/ao;->d()Lcom/dolphin/browser/sync/ag;

    move-result-object v2

    invoke-interface {v2, p0, p2, v4, v3}, Lcom/dolphin/browser/sync/ag;->a(Lcom/dolphin/browser/sync/k;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/HashMap;Ljava/util/List;)Z

    move-result v2

    .line 70
    if-nez v2, :cond_4

    .line 81
    :goto_3
    return v0

    .line 74
    :cond_4
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/sync/ac;->a(Lorg/json/JSONObject;)J

    move-result-wide v2

    invoke-virtual {p0, p2, v2, v3}, Lcom/dolphin/browser/sync/ac;->a(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    .line 81
    goto :goto_3
.end method

.method public b(Lorg/json/JSONObject;)J
    .locals 2

    .prologue
    .line 32
    .line 33
    const-string v0, "latest_history_sid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 34
    return-wide v0
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 100
    invoke-static {}, Lcom/dolphin/browser/sync/ao;->a()Lcom/dolphin/browser/sync/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/ao;->d()Lcom/dolphin/browser/sync/ag;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/dolphin/browser/sync/ag;->a(Lcom/dolphin/browser/sync/k;)V

    .line 101
    return-void
.end method

.method public c(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 86
    invoke-static {}, Lcom/dolphin/browser/sync/ao;->a()Lcom/dolphin/browser/sync/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/ao;->d()Lcom/dolphin/browser/sync/ag;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/dolphin/browser/sync/ag;->b(Lcom/dolphin/browser/sync/k;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 91
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    invoke-static {}, Lcom/dolphin/browser/sync/ao;->a()Lcom/dolphin/browser/sync/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/ao;->d()Lcom/dolphin/browser/sync/ag;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/sync/ag;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
