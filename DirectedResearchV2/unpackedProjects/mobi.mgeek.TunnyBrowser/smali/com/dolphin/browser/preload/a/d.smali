.class public final Lcom/dolphin/browser/preload/a/d;
.super Ljava/lang/Object;
.source "LauncherShortcut.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/dolphin/browser/preload/a/d;
    .locals 2

    .prologue
    .line 22
    if-nez p0, :cond_0

    .line 23
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    new-instance v0, Lcom/dolphin/browser/preload/a/d;

    invoke-direct {v0}, Lcom/dolphin/browser/preload/a/d;-><init>()V

    .line 27
    const-string v1, "ttl"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/preload/a/d;->a:Ljava/lang/String;

    .line 28
    const-string v1, "ico"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/preload/a/d;->c:Ljava/lang/String;

    .line 29
    const-string v1, "url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/preload/a/d;->b:Ljava/lang/String;

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
            "Lcom/dolphin/browser/preload/a/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 36
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 37
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 40
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 41
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/dolphin/browser/preload/a/d;->a(Lorg/json/JSONObject;)Lcom/dolphin/browser/preload/a/d;

    move-result-object v3

    .line 42
    if-eqz v3, :cond_0

    .line 43
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    :cond_1
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/dolphin/browser/preload/a/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/dolphin/browser/preload/a/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dolphin/browser/preload/a/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 88
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 90
    :try_start_0
    const-string v0, "ttl"

    iget-object v2, p0, Lcom/dolphin/browser/preload/a/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string v0, "ico"

    iget-object v2, p0, Lcom/dolphin/browser/preload/a/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    const-string v0, "url"

    iget-object v2, p0, Lcom/dolphin/browser/preload/a/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-object v1

    .line 93
    :catch_0
    move-exception v0

    .line 94
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 70
    if-nez p1, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v0

    .line 73
    :cond_1
    instance-of v1, p1, Lcom/dolphin/browser/preload/a/d;

    if-eqz v1, :cond_0

    .line 76
    check-cast p1, Lcom/dolphin/browser/preload/a/d;

    .line 78
    iget-object v0, p0, Lcom/dolphin/browser/preload/a/d;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/dolphin/browser/preload/a/d;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/cn;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/dolphin/browser/preload/a/d;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/preload/a/d;->b:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
