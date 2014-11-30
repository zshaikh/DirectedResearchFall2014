.class public Lcom/stuv/ane/aarki/extensions/AarkiExtensionContext;
.super Lcom/adobe/fre/FREContext;
.source "AarkiExtensionContext.java"


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
    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 30
    .local v0, "functionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "initialise"

    new-instance v2, Lcom/stuv/ane/aarki/extensions/AarkiInitialiseFunction;

    invoke-direct {v2}, Lcom/stuv/ane/aarki/extensions/AarkiInitialiseFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v1, "setUser"

    new-instance v2, Lcom/stuv/ane/aarki/extensions/AarkiSetUserFunction;

    invoke-direct {v2}, Lcom/stuv/ane/aarki/extensions/AarkiSetUserFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v1, "showOfferWall"

    new-instance v2, Lcom/stuv/ane/aarki/extensions/AarkiShowOfferWallFunction;

    invoke-direct {v2}, Lcom/stuv/ane/aarki/extensions/AarkiShowOfferWallFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v1, "registerApp"

    new-instance v2, Lcom/stuv/ane/aarki/extensions/AarkiRegisterAppFunction;

    invoke-direct {v2}, Lcom/stuv/ane/aarki/extensions/AarkiRegisterAppFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v1, "registerEvent"

    new-instance v2, Lcom/stuv/ane/aarki/extensions/AarkiRegisterEventFunction;

    invoke-direct {v2}, Lcom/stuv/ane/aarki/extensions/AarkiRegisterEventFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-object v0
.end method

.method public initialise()V
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/stuv/ane/aarki/extensions/AarkiExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/stuv/ane/aarki/extensions/AarkiWrapper;->init(Landroid/app/Activity;Lcom/adobe/fre/FREContext;)V

    .line 44
    return-void
.end method
