.class public Lcom/stuv/ane/facebook/FacebookExtensionContext;
.super Lcom/adobe/fre/FREContext;
.source "FacebookExtensionContext.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 76
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
    .line 12
    invoke-virtual {p0}, Lcom/stuv/ane/facebook/FacebookExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/stuv/ane/facebook/FacebookWrapper;->init(Landroid/app/Activity;Lcom/adobe/fre/FREContext;)V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    .local v0, "functionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "initialise"

    new-instance v2, Lcom/stuv/ane/facebook/FacebookExtensionContext$1;

    invoke-direct {v2, p0}, Lcom/stuv/ane/facebook/FacebookExtensionContext$1;-><init>(Lcom/stuv/ane/facebook/FacebookExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string v1, "authorise"

    new-instance v2, Lcom/stuv/ane/facebook/FacebookExtensionContext$2;

    invoke-direct {v2, p0}, Lcom/stuv/ane/facebook/FacebookExtensionContext$2;-><init>(Lcom/stuv/ane/facebook/FacebookExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v1, "clearSession"

    new-instance v2, Lcom/stuv/ane/facebook/FacebookExtensionContext$3;

    invoke-direct {v2, p0}, Lcom/stuv/ane/facebook/FacebookExtensionContext$3;-><init>(Lcom/stuv/ane/facebook/FacebookExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v1, "getAccessToken"

    new-instance v2, Lcom/stuv/ane/facebook/FacebookExtensionContext$4;

    invoke-direct {v2, p0}, Lcom/stuv/ane/facebook/FacebookExtensionContext$4;-><init>(Lcom/stuv/ane/facebook/FacebookExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v1, "graph"

    new-instance v2, Lcom/stuv/ane/facebook/FacebookExtensionContext$5;

    invoke-direct {v2, p0}, Lcom/stuv/ane/facebook/FacebookExtensionContext$5;-><init>(Lcom/stuv/ane/facebook/FacebookExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v1, "dialog"

    new-instance v2, Lcom/stuv/ane/facebook/FacebookExtensionContext$6;

    invoke-direct {v2, p0}, Lcom/stuv/ane/facebook/FacebookExtensionContext$6;-><init>(Lcom/stuv/ane/facebook/FacebookExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-object v0
.end method
