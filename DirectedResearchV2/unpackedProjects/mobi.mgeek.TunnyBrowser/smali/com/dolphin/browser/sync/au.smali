.class public Lcom/dolphin/browser/sync/au;
.super Lcom/dolphin/browser/sync/k;
.source "TabSynchronizer.java"


# instance fields
.field private a:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/sync/ar;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/sync/ar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/sync/k;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iput-object v0, p0, Lcom/dolphin/browser/sync/au;->g:Ljava/util/List;

    .line 32
    iput-object v0, p0, Lcom/dolphin/browser/sync/au;->h:Ljava/util/List;

    .line 57
    invoke-direct {p0, p1}, Lcom/dolphin/browser/sync/au;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/sync/au;->a:Ljava/lang/String;

    .line 58
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/dolphin/browser/sync/au;->f:Ljava/lang/String;

    .line 59
    invoke-static {}, Lcom/dolphin/browser/sync/ao;->a()Lcom/dolphin/browser/sync/ao;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/dolphin/browser/sync/au;->b:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/Locale;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const-string v3, "content://%s/%s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p3, v4, v7

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/ao;->e()Lcom/dolphin/browser/sync/ag;

    move-result-object v5

    invoke-interface {v5}, Lcom/dolphin/browser/sync/ag;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v1, p0, Lcom/dolphin/browser/sync/au;->b:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/Locale;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const-string v3, "content://%s/%s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p3, v4, v7

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/ao;->c()Lcom/dolphin/browser/sync/ag;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/sync/ag;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-virtual {p0, v6}, Lcom/dolphin/browser/sync/au;->a(I)V

    .line 65
    return-void
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/sync/ar;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 139
    const-string v1, ""

    .line 140
    if-nez p1, :cond_1

    .line 151
    :cond_0
    return-object v1

    .line 144
    :cond_1
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 145
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/sync/ar;

    .line 146
    if-eqz v0, :cond_2

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/ar;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 2

    .prologue
    .line 163
    invoke-static {}, Lcom/dolphin/browser/sync/at;->t()Lcom/dolphin/browser/sync/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/at;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Lcom/dolphin/browser/DolphinService/WebService/g;Ljava/lang/String;JJLandroid/database/sqlite/SQLiteDatabase;)Lcom/dolphin/browser/sync/p;
    .locals 8

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/dolphin/browser/sync/au;->a()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/dolphin/browser/sync/au;->a:Ljava/lang/String;

    move-object v0, p1

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    invoke-virtual/range {v0 .. v7}, Lcom/dolphin/browser/DolphinService/WebService/g;->a(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    .line 201
    new-instance v2, Lcom/dolphin/browser/sync/p;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/sync/p;-><init>(Lcom/dolphin/browser/sync/k;)V

    .line 202
    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 205
    :try_start_0
    const-string v1, "chunk_latest_sid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v3, v1

    iput-wide v3, v2, Lcom/dolphin/browser/sync/p;->a:J

    .line 206
    const-string v1, "latest_sid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v3, v1

    iput-wide v3, v2, Lcom/dolphin/browser/sync/p;->b:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_0
    invoke-virtual {p0, v0, p7}, Lcom/dolphin/browser/sync/au;->a(Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    .line 212
    if-nez v0, :cond_0

    .line 214
    new-instance v0, Lcom/dolphin/browser/sync/v;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/dolphin/browser/sync/v;-><init>(I)V

    throw v0

    .line 207
    :catch_0
    move-exception v1

    .line 208
    const-string v3, "TabSynchronizer"

    invoke-static {v3, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 219
    :cond_0
    return-object v2
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 1

    .prologue
    .line 191
    invoke-static {}, Lcom/dolphin/browser/sync/at;->t()Lcom/dolphin/browser/sync/at;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/dolphin/browser/sync/at;->a(J)V

    .line 192
    return-void
.end method

.method public a(Lcom/dolphin/browser/DolphinService/WebService/g;Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    .prologue
    .line 225
    invoke-virtual {p0, p3}, Lcom/dolphin/browser/sync/au;->b(Lorg/json/JSONObject;)J

    move-result-wide v0

    .line 226
    invoke-virtual {p0, p4}, Lcom/dolphin/browser/sync/au;->a(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v3

    .line 228
    new-instance v2, Lcom/dolphin/browser/sync/p;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/sync/p;-><init>(Lcom/dolphin/browser/sync/k;)V

    .line 229
    const-wide/16 v5, 0x0

    cmp-long v2, v0, v5

    if-eqz v2, :cond_0

    .line 230
    :goto_0
    cmp-long v2, v0, v3

    if-eqz v2, :cond_0

    .line 231
    sub-long v5, v0, v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/dolphin/browser/sync/au;->a(Lcom/dolphin/browser/DolphinService/WebService/g;Ljava/lang/String;JJLandroid/database/sqlite/SQLiteDatabase;)Lcom/dolphin/browser/sync/p;

    move-result-object v0

    .line 233
    iget-wide v3, v0, Lcom/dolphin/browser/sync/p;->a:J

    .line 234
    iget-wide v0, v0, Lcom/dolphin/browser/sync/p;->b:J

    .line 235
    invoke-virtual {p0}, Lcom/dolphin/browser/sync/au;->i()V

    goto :goto_0

    .line 238
    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/sync/ar;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dolphin/browser/sync/au;->g:Ljava/util/List;

    iput-object v0, p0, Lcom/dolphin/browser/sync/au;->h:Ljava/util/List;

    .line 36
    iput-object p1, p0, Lcom/dolphin/browser/sync/au;->g:Ljava/util/List;

    .line 37
    return-void
.end method

.method public a(Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 70
    :try_start_0
    const-string v1, "updated_objs"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 71
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 72
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    .line 73
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 74
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/dolphin/browser/sync/w;->b(Lorg/json/JSONObject;)Lcom/dolphin/browser/sync/w;

    move-result-object v5

    .line 75
    if-nez v5, :cond_0

    .line 73
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {v5}, Lcom/dolphin/browser/sync/w;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 79
    const-string v6, "TabSynchronizer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Server ID is empty: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 102
    :catch_0
    move-exception v0

    .line 103
    const-string v1, "TabSynchronizer"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 80
    :cond_1
    :try_start_1
    invoke-virtual {v5}, Lcom/dolphin/browser/sync/w;->h()I

    move-result v6

    if-eqz v6, :cond_2

    .line 82
    invoke-virtual {v5}, Lcom/dolphin/browser/sync/w;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 84
    :cond_2
    invoke-virtual {v5}, Lcom/dolphin/browser/sync/w;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 88
    :cond_3
    const-string v1, "deleted_ids"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v1, v0

    .line 89
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 90
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 91
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 94
    :cond_4
    invoke-static {}, Lcom/dolphin/browser/sync/ao;->a()Lcom/dolphin/browser/sync/ao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/sync/ao;->e()Lcom/dolphin/browser/sync/ag;

    move-result-object v1

    invoke-interface {v1, p0, p2, v3, v4}, Lcom/dolphin/browser/sync/ag;->a(Lcom/dolphin/browser/sync/k;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/HashMap;Ljava/util/List;)Z

    move-result v1

    .line 96
    if-nez v1, :cond_5

    .line 107
    :goto_3
    return v0

    .line 100
    :cond_5
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/sync/au;->a(Lorg/json/JSONObject;)J

    move-result-wide v0

    invoke-virtual {p0, p2, v0, v1}, Lcom/dolphin/browser/sync/au;->a(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 107
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public b(Lorg/json/JSONObject;)J
    .locals 2

    .prologue
    .line 156
    .line 157
    const-string v0, "latest_tab_sid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 158
    return-wide v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/sync/ar;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dolphin/browser/sync/au;->g:Ljava/util/List;

    return-object v0
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x1

    return v0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 183
    invoke-static {}, Lcom/dolphin/browser/sync/at;->t()Lcom/dolphin/browser/sync/at;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/sync/at;->a(J)V

    .line 184
    invoke-static {}, Lcom/dolphin/browser/sync/at;->t()Lcom/dolphin/browser/sync/at;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/sync/at;->a(Ljava/lang/String;)V

    .line 186
    invoke-static {}, Lcom/dolphin/browser/sync/ao;->a()Lcom/dolphin/browser/sync/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/ao;->e()Lcom/dolphin/browser/sync/ag;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/dolphin/browser/sync/ag;->a(Lcom/dolphin/browser/sync/k;)V

    .line 187
    return-void
.end method

.method public c(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 120
    invoke-static {}, Lcom/dolphin/browser/sync/ao;->a()Lcom/dolphin/browser/sync/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/ao;->e()Lcom/dolphin/browser/sync/ag;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/dolphin/browser/sync/ag;->b(Lcom/dolphin/browser/sync/k;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 121
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    invoke-static {}, Lcom/dolphin/browser/sync/ao;->a()Lcom/dolphin/browser/sync/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/ao;->e()Lcom/dolphin/browser/sync/ag;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/sync/ag;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 112
    invoke-static {}, Lcom/dolphin/browser/sync/at;->s()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 115
    :cond_0
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/sync/au;->a(J)V

    goto :goto_0
.end method

.method public g(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 242
    invoke-super {p0, p1}, Lcom/dolphin/browser/sync/k;->g(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 244
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/dolphin/browser/sync/at;->c(Z)V

    .line 245
    return-void
.end method

.method public h(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dolphin/browser/sync/au;->f:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dolphin/browser/sync/au;->a:Ljava/lang/String;

    return-object v0
.end method

.method public p()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 124
    iget-object v1, p0, Lcom/dolphin/browser/sync/au;->h:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/sync/au;->g:Ljava/util/List;

    if-nez v1, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v0

    .line 128
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/sync/au;->h:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/dolphin/browser/sync/au;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 129
    iget-object v2, p0, Lcom/dolphin/browser/sync/au;->g:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/dolphin/browser/sync/au;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/dolphin/browser/sync/au;->g:Ljava/util/List;

    if-nez v0, :cond_0

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/sync/au;->g:Ljava/util/List;

    .line 251
    :cond_0
    return-void
.end method
