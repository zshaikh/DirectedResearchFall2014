.class public Lcom/stuv/ane/w3i/W3iExtensionContext;
.super Lcom/adobe/fre/FREContext;
.source "W3iExtensionContext.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 23
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
    .line 29
    invoke-virtual {p0}, Lcom/stuv/ane/w3i/W3iExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/stuv/ane/w3i/W3iWrapper;->init(Landroid/app/Activity;Lcom/adobe/fre/FREContext;)V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 34
    .local v0, "functionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "initialise"

    new-instance v2, Lcom/stuv/ane/w3i/W3iExtensionContext$1;

    invoke-direct {v2, p0}, Lcom/stuv/ane/w3i/W3iExtensionContext$1;-><init>(Lcom/stuv/ane/w3i/W3iExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v1, "reinitialise"

    new-instance v2, Lcom/stuv/ane/w3i/W3iExtensionContext$2;

    invoke-direct {v2, p0}, Lcom/stuv/ane/w3i/W3iExtensionContext$2;-><init>(Lcom/stuv/ane/w3i/W3iExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v1, "createSession"

    new-instance v2, Lcom/stuv/ane/w3i/W3iExtensionContext$3;

    invoke-direct {v2, p0}, Lcom/stuv/ane/w3i/W3iExtensionContext$3;-><init>(Lcom/stuv/ane/w3i/W3iExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v1, "endSession"

    new-instance v2, Lcom/stuv/ane/w3i/W3iExtensionContext$4;

    invoke-direct {v2, p0}, Lcom/stuv/ane/w3i/W3iExtensionContext$4;-><init>(Lcom/stuv/ane/w3i/W3iExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v1, "showPlacement"

    new-instance v2, Lcom/stuv/ane/w3i/W3iExtensionContext$5;

    invoke-direct {v2, p0}, Lcom/stuv/ane/w3i/W3iExtensionContext$5;-><init>(Lcom/stuv/ane/w3i/W3iExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v1, "actionTaken"

    new-instance v2, Lcom/stuv/ane/w3i/W3iExtensionContext$6;

    invoke-direct {v2, p0}, Lcom/stuv/ane/w3i/W3iExtensionContext$6;-><init>(Lcom/stuv/ane/w3i/W3iExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v1, "cancel"

    new-instance v2, Lcom/stuv/ane/w3i/W3iExtensionContext$7;

    invoke-direct {v2, p0}, Lcom/stuv/ane/w3i/W3iExtensionContext$7;-><init>(Lcom/stuv/ane/w3i/W3iExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-object v0
.end method

.method public initialise()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method
