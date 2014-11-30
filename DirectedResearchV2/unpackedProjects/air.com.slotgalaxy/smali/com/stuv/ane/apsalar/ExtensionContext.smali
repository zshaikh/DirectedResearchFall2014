.class public Lcom/stuv/ane/apsalar/ExtensionContext;
.super Lcom/adobe/fre/FREContext;
.source "ExtensionContext.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 58
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
    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 20
    .local v0, "functionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "startSession"

    new-instance v2, Lcom/stuv/ane/apsalar/ExtensionContext$1;

    invoke-direct {v2, p0}, Lcom/stuv/ane/apsalar/ExtensionContext$1;-><init>(Lcom/stuv/ane/apsalar/ExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v1, "event"

    new-instance v2, Lcom/stuv/ane/apsalar/ExtensionContext$2;

    invoke-direct {v2, p0}, Lcom/stuv/ane/apsalar/ExtensionContext$2;-><init>(Lcom/stuv/ane/apsalar/ExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v1, "eventJson"

    new-instance v2, Lcom/stuv/ane/apsalar/ExtensionContext$3;

    invoke-direct {v2, p0}, Lcom/stuv/ane/apsalar/ExtensionContext$3;-><init>(Lcom/stuv/ane/apsalar/ExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-object v0
.end method
