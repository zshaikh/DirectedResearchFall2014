.class public Lcom/dolphin/browser/f/d/b;
.super Ljava/lang/Object;
.source "TopSite.java"


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-wide p1, p0, Lcom/dolphin/browser/f/d/b;->a:J

    .line 32
    iput-object p3, p0, Lcom/dolphin/browser/f/d/b;->b:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/dolphin/browser/f/d/b;->c:Ljava/lang/String;

    .line 34
    iput-object p5, p0, Lcom/dolphin/browser/f/d/b;->d:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/dolphin/browser/f/d/b;
    .locals 6

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 88
    if-eqz p0, :cond_0

    .line 89
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 90
    const-string v0, "url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 91
    const-string v0, "color"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 92
    const-string v0, "icon"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 93
    new-instance v0, Lcom/dolphin/browser/f/d/b;

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/f/d/b;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_0
    return-object v0
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
            "Lcom/dolphin/browser/f/d/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 100
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 101
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 104
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 105
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/dolphin/browser/f/d/b;->a(Lorg/json/JSONObject;)Lcom/dolphin/browser/f/d/b;

    move-result-object v3

    .line 106
    if-eqz v3, :cond_0

    .line 107
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    :cond_1
    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/dolphin/browser/f/d/b;->a:J

    return-wide v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/dolphin/browser/f/d/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/dolphin/browser/f/d/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dolphin/browser/f/d/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dolphin/browser/f/d/b;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public f()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 74
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 76
    :try_start_0
    const-string v0, "id"

    iget-wide v2, p0, Lcom/dolphin/browser/f/d/b;->a:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 77
    const-string v0, "url"

    iget-object v2, p0, Lcom/dolphin/browser/f/d/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string v0, "color"

    iget-object v2, p0, Lcom/dolphin/browser/f/d/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    const-string v0, "icon"

    iget-object v2, p0, Lcom/dolphin/browser/f/d/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-object v1

    .line 80
    :catch_0
    move-exception v0

    .line 81
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/dolphin/browser/f/d/b;->f()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
