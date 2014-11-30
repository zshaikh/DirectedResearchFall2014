.class public Lcom/dolphin/browser/f/b/a;
.super Ljava/lang/Object;
.source "Notification.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;JZ)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/dolphin/browser/f/b/a;->a:Ljava/lang/String;

    .line 25
    iput-wide p2, p0, Lcom/dolphin/browser/f/b/a;->b:J

    .line 26
    iput-boolean p4, p0, Lcom/dolphin/browser/f/b/a;->c:Z

    .line 27
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/dolphin/browser/f/b/a;
    .locals 5

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 85
    if-eqz p0, :cond_0

    .line 86
    const-string v0, "url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    const-string v0, "update_time"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 88
    const-string v0, "update"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 89
    new-instance v0, Lcom/dolphin/browser/f/b/a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dolphin/browser/f/b/a;-><init>(Ljava/lang/String;JZ)V

    .line 91
    :cond_0
    return-object v0
.end method

.method public static a(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/f/b/a;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 63
    invoke-static {p0}, Lcom/dolphin/browser/f/b/a;->b(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/f/b/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 113
    if-eqz p0, :cond_0

    .line 114
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-static {v1}, Lcom/dolphin/browser/f/b/a;->a(Lorg/json/JSONArray;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 120
    :cond_0
    :goto_0
    return-object v0

    .line 117
    :catch_0
    move-exception v1

    .line 118
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/f/b/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 96
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 97
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 100
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 101
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/dolphin/browser/f/b/a;->a(Lorg/json/JSONObject;)Lcom/dolphin/browser/f/b/a;

    move-result-object v3

    .line 102
    if-eqz v3, :cond_0

    .line 103
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    :cond_1
    return-object v0
.end method

.method private static b(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/f/b/a;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 73
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 74
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 75
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 76
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_0

    .line 77
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/f/b/a;

    invoke-direct {v0}, Lcom/dolphin/browser/f/b/a;->d()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 76
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 80
    :cond_1
    return-object v0
.end method

.method private d()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 51
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 53
    :try_start_0
    const-string v0, "url"

    iget-object v2, p0, Lcom/dolphin/browser/f/b/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string v0, "update_time"

    iget-wide v2, p0, Lcom/dolphin/browser/f/b/a;->b:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 55
    const-string v0, "update"

    iget-boolean v2, p0, Lcom/dolphin/browser/f/b/a;->c:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-object v1

    .line 56
    :catch_0
    move-exception v0

    .line 57
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dolphin/browser/f/b/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/dolphin/browser/f/b/a;->c:Z

    .line 43
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/dolphin/browser/f/b/a;->b:J

    return-wide v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/dolphin/browser/f/b/a;->c:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/dolphin/browser/f/b/a;->d()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
