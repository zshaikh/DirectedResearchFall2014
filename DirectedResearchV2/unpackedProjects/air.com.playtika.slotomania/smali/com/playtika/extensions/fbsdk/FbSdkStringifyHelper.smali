.class public final Lcom/playtika/extensions/fbsdk/FbSdkStringifyHelper;
.super Ljava/lang/Object;
.source "FbSdkStringifyHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static graphObjectListToStringBuilder(Lcom/facebook/model/GraphObjectList;)Ljava/lang/StringBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/model/GraphObjectList",
            "<",
            "Lcom/facebook/model/GraphObject;",
            ">;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "graphObjectList":Lcom/facebook/model/GraphObjectList;, "Lcom/facebook/model/GraphObjectList<Lcom/facebook/model/GraphObject;>;"
    if-nez p0, :cond_0

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[]"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    :goto_0
    return-object v3

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-interface {p0}, Lcom/facebook/model/GraphObjectList;->size()I

    move-result v2

    .line 71
    .local v2, "graphObjectsCount":I
    const/4 v1, 0x0

    .local v1, "graphObjectIndex":I
    :goto_1
    if-lt v1, v2, :cond_1

    .line 80
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, v0

    .line 81
    goto :goto_0

    .line 73
    :cond_1
    if-lez v1, :cond_2

    .line 74
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    :cond_2
    invoke-interface {p0, v1}, Lcom/facebook/model/GraphObjectList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/model/GraphObject;

    .line 76
    invoke-static {v3}, Lcom/playtika/extensions/fbsdk/FbSdkStringifyHelper;->graphObjectToStringBuilder(Lcom/facebook/model/GraphObject;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static graphObjectToStringBuilder(Lcom/facebook/model/GraphObject;)Ljava/lang/StringBuilder;
    .locals 3
    .param p0, "graphObject"    # Lcom/facebook/model/GraphObject;

    .prologue
    .line 87
    if-nez p0, :cond_0

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{}"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    :goto_0
    return-object v1

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object v1, v0

    .line 95
    goto :goto_0
.end method

.method public static responseToString(Lcom/facebook/Response;)Ljava/lang/String;
    .locals 1
    .param p0, "response"    # Lcom/facebook/Response;

    .prologue
    .line 20
    invoke-static {p0}, Lcom/playtika/extensions/fbsdk/FbSdkStringifyHelper;->responseToStringBuilder(Lcom/facebook/Response;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static responseToStringBuilder(Lcom/facebook/Response;)Ljava/lang/StringBuilder;
    .locals 3
    .param p0, "response"    # Lcom/facebook/Response;

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{Response: null}"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    :goto_0
    return-object v1

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{Response: {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {p0}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 35
    const-string v1, "graphObject: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p0}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v1

    invoke-static {v1}, Lcom/playtika/extensions/fbsdk/FbSdkStringifyHelper;->graphObjectToStringBuilder(Lcom/facebook/model/GraphObject;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 49
    :goto_1
    const-string v1, ", error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p0}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, ", isFromCache:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p0}, Lcom/facebook/Response;->getIsFromCache()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 55
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, v0

    .line 57
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/Response;->getGraphObjectList()Lcom/facebook/model/GraphObjectList;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 40
    const-string v1, "graphObjectList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p0}, Lcom/facebook/Response;->getGraphObjectList()Lcom/facebook/model/GraphObjectList;

    move-result-object v1

    .line 42
    invoke-static {v1}, Lcom/playtika/extensions/fbsdk/FbSdkStringifyHelper;->graphObjectListToStringBuilder(Lcom/facebook/model/GraphObjectList;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 46
    :cond_2
    const-string v1, "graphObject: null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
