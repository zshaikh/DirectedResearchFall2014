.class public Lcom/dolphin/browser/preload/a/f;
.super Ljava/lang/Object;
.source "TutorialStrategy.java"


# instance fields
.field private a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/dolphin/browser/preload/a/f;
    .locals 2

    .prologue
    .line 41
    if-nez p0, :cond_0

    .line 42
    const/4 v0, 0x0

    .line 52
    :goto_0
    return-object v0

    .line 45
    :cond_0
    new-instance v0, Lcom/dolphin/browser/preload/a/f;

    invoke-direct {v0}, Lcom/dolphin/browser/preload/a/f;-><init>()V

    .line 46
    const-string v1, "duration"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/dolphin/browser/preload/a/f;->a:I

    .line 47
    const-string v1, "tutorials"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/preload/a/f;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/preload/a/f;->b:Ljava/util/List;

    .line 49
    const-string v1, "strategy_test"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/dolphin/browser/preload/a/f;->c:Z

    .line 50
    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/preload/a/f;->d:Ljava/lang/String;

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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 57
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 58
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 62
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    .line 63
    if-eqz v3, :cond_0

    .line 64
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    :cond_1
    return-object v0
.end method

.method public static a(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 97
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 98
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 99
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 100
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 101
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/dolphin/browser/preload/a/f;->b:Ljava/util/List;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/dolphin/browser/preload/a/f;->c:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dolphin/browser/preload/a/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 80
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 82
    :try_start_0
    const-string v0, "duration"

    iget v2, p0, Lcom/dolphin/browser/preload/a/f;->a:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 83
    const-string v0, "tutorials"

    iget-object v2, p0, Lcom/dolphin/browser/preload/a/f;->b:Ljava/util/List;

    invoke-static {v2}, Lcom/dolphin/browser/preload/a/f;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string v0, "strategy_test"

    iget-boolean v2, p0, Lcom/dolphin/browser/preload/a/f;->c:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 85
    const-string v0, "id"

    iget-object v2, p0, Lcom/dolphin/browser/preload/a/f;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    return-object v1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/dolphin/browser/preload/a/f;->d()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
