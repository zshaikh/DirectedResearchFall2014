.class Lcom/dolphin/browser/push/m;
.super Ljava/lang/Object;
.source "OfflinePushDataRequester.java"


# direct methods
.method private static a(Lorg/json/JSONArray;II)Ljava/lang/String;
    .locals 3

    .prologue
    .line 57
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 59
    :goto_0
    if-ge p1, p2, :cond_0

    .line 60
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    const-string v2, "OfflinePushDataRequester"

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lorg/json/JSONArray;)Ljava/util/List;
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
    .line 32
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 34
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 53
    :goto_0
    return-object v0

    .line 39
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_3

    .line 40
    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    move-object v0, v2

    .line 53
    goto :goto_0

    .line 43
    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 44
    add-int/lit8 v1, v0, 0xa

    .line 45
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-le v1, v3, :cond_4

    .line 46
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 48
    :cond_4
    invoke-static {p0, v0, v1}, Lcom/dolphin/browser/push/m;->a(Lorg/json/JSONArray;II)Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    add-int/lit8 v0, v0, 0xa

    goto :goto_1
.end method

.method static a(Ljava/util/Map;)Lorg/json/JSONArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 79
    if-nez p0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-object v2

    .line 82
    :cond_1
    const-string v0, "data"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 83
    if-eqz v0, :cond_0

    .line 88
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_1
    move-object v2, v0

    .line 92
    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    const-string v1, "OfflinePushDataRequester"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    goto :goto_1
.end method

.method private static a(Ljava/util/List;Lcom/dolphin/browser/push/ax;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/dolphin/browser/push/ax;",
            ")V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 70
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "[]"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    :cond_0
    return-void

    .line 73
    :cond_1
    new-instance v2, Lcom/dolphin/browser/push/data/g;

    invoke-direct {v2, v0}, Lcom/dolphin/browser/push/data/g;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/dolphin/browser/push/aw;->c()Lcom/dolphin/browser/push/aw;

    move-result-object v0

    invoke-virtual {v2}, Lcom/dolphin/browser/push/data/g;->a()Lcom/dolphin/browser/Network/d;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/dolphin/browser/push/aw;->a(Lcom/dolphin/browser/Network/d;Lcom/dolphin/browser/push/ax;)V

    goto :goto_0
.end method

.method static a(Lorg/json/JSONArray;Lcom/dolphin/browser/push/ax;)V
    .locals 1

    .prologue
    .line 26
    invoke-static {p0}, Lcom/dolphin/browser/push/m;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    .line 27
    invoke-static {v0, p1}, Lcom/dolphin/browser/push/m;->a(Ljava/util/List;Lcom/dolphin/browser/push/ax;)V

    .line 28
    return-void
.end method
