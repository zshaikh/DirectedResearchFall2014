.class public Lcom/stuv/ane/flurry/ExtensionContext;
.super Lcom/adobe/fre/FREContext;
.source "ExtensionContext.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-static {p0}, Lcom/stuv/ane/flurry/ExtensionContext;->mapJSON(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static mapJSON(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .param p0, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 119
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 121
    .local v1, "jsonObject":Lorg/json/JSONObject;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 123
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 124
    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 130
    return-object v3

    .line 126
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 127
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/stuv/ane/flurry/ExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/stuv/ane/flurry/FlurryWrapper;->init(Landroid/app/Activity;Lcom/adobe/fre/FREContext;)V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 31
    .local v0, "functionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "setContinueSessionSeconds"

    new-instance v2, Lcom/stuv/ane/flurry/ExtensionContext$1;

    invoke-direct {v2, p0}, Lcom/stuv/ane/flurry/ExtensionContext$1;-><init>(Lcom/stuv/ane/flurry/ExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v1, "startSession"

    new-instance v2, Lcom/stuv/ane/flurry/ExtensionContext$2;

    invoke-direct {v2, p0}, Lcom/stuv/ane/flurry/ExtensionContext$2;-><init>(Lcom/stuv/ane/flurry/ExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v1, "logEvent"

    new-instance v2, Lcom/stuv/ane/flurry/ExtensionContext$3;

    invoke-direct {v2, p0}, Lcom/stuv/ane/flurry/ExtensionContext$3;-><init>(Lcom/stuv/ane/flurry/ExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v1, "logError"

    new-instance v2, Lcom/stuv/ane/flurry/ExtensionContext$4;

    invoke-direct {v2, p0}, Lcom/stuv/ane/flurry/ExtensionContext$4;-><init>(Lcom/stuv/ane/flurry/ExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v1, "startTimedEvent"

    new-instance v2, Lcom/stuv/ane/flurry/ExtensionContext$5;

    invoke-direct {v2, p0}, Lcom/stuv/ane/flurry/ExtensionContext$5;-><init>(Lcom/stuv/ane/flurry/ExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v1, "endTimedEvent"

    new-instance v2, Lcom/stuv/ane/flurry/ExtensionContext$6;

    invoke-direct {v2, p0}, Lcom/stuv/ane/flurry/ExtensionContext$6;-><init>(Lcom/stuv/ane/flurry/ExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v1, "endSession"

    new-instance v2, Lcom/stuv/ane/flurry/ExtensionContext$7;

    invoke-direct {v2, p0}, Lcom/stuv/ane/flurry/ExtensionContext$7;-><init>(Lcom/stuv/ane/flurry/ExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    return-object v0
.end method
