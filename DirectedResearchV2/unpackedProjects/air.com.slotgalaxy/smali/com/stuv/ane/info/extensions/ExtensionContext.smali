.class public Lcom/stuv/ane/info/extensions/ExtensionContext;
.super Lcom/adobe/fre/FREContext;
.source "ExtensionContext.java"


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
    invoke-virtual {p0}, Lcom/stuv/ane/info/extensions/ExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/stuv/ane/info/extensions/InfoWrapper;->init(Landroid/app/Activity;Lcom/adobe/fre/FREContext;)V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 33
    .local v0, "functionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "initialise"

    new-instance v2, Lcom/stuv/ane/info/extensions/ExtensionContext$1;

    invoke-direct {v2, p0}, Lcom/stuv/ane/info/extensions/ExtensionContext$1;-><init>(Lcom/stuv/ane/info/extensions/ExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v1, "getAccounts"

    new-instance v2, Lcom/stuv/ane/info/extensions/ExtensionContext$2;

    invoke-direct {v2, p0}, Lcom/stuv/ane/info/extensions/ExtensionContext$2;-><init>(Lcom/stuv/ane/info/extensions/ExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v1, "getAndroidId"

    new-instance v2, Lcom/stuv/ane/info/extensions/ExtensionContext$3;

    invoke-direct {v2, p0}, Lcom/stuv/ane/info/extensions/ExtensionContext$3;-><init>(Lcom/stuv/ane/info/extensions/ExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v1, "getDeviceId"

    new-instance v2, Lcom/stuv/ane/info/extensions/ExtensionContext$4;

    invoke-direct {v2, p0}, Lcom/stuv/ane/info/extensions/ExtensionContext$4;-><init>(Lcom/stuv/ane/info/extensions/ExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v1, "getMAC"

    new-instance v2, Lcom/stuv/ane/info/extensions/ExtensionContext$5;

    invoke-direct {v2, p0}, Lcom/stuv/ane/info/extensions/ExtensionContext$5;-><init>(Lcom/stuv/ane/info/extensions/ExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v1, "getPhoneType"

    new-instance v2, Lcom/stuv/ane/info/extensions/ExtensionContext$6;

    invoke-direct {v2, p0}, Lcom/stuv/ane/info/extensions/ExtensionContext$6;-><init>(Lcom/stuv/ane/info/extensions/ExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v1, "getSerial"

    new-instance v2, Lcom/stuv/ane/info/extensions/ExtensionContext$7;

    invoke-direct {v2, p0}, Lcom/stuv/ane/info/extensions/ExtensionContext$7;-><init>(Lcom/stuv/ane/info/extensions/ExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v1, "getSdk"

    new-instance v2, Lcom/stuv/ane/info/extensions/ExtensionContext$8;

    invoke-direct {v2, p0}, Lcom/stuv/ane/info/extensions/ExtensionContext$8;-><init>(Lcom/stuv/ane/info/extensions/ExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v1, "getModel"

    new-instance v2, Lcom/stuv/ane/info/extensions/ExtensionContext$9;

    invoke-direct {v2, p0}, Lcom/stuv/ane/info/extensions/ExtensionContext$9;-><init>(Lcom/stuv/ane/info/extensions/ExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v1, "test"

    new-instance v2, Lcom/stuv/ane/info/extensions/ExtensionContext$10;

    invoke-direct {v2, p0}, Lcom/stuv/ane/info/extensions/ExtensionContext$10;-><init>(Lcom/stuv/ane/info/extensions/ExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v1, "getLogcat"

    new-instance v2, Lcom/stuv/ane/info/extensions/ExtensionContext$11;

    invoke-direct {v2, p0}, Lcom/stuv/ane/info/extensions/ExtensionContext$11;-><init>(Lcom/stuv/ane/info/extensions/ExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v1, "getOpenUDID"

    new-instance v2, Lcom/stuv/ane/info/extensions/ExtensionContext$12;

    invoke-direct {v2, p0}, Lcom/stuv/ane/info/extensions/ExtensionContext$12;-><init>(Lcom/stuv/ane/info/extensions/ExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v1, "clearSharedPref"

    new-instance v2, Lcom/stuv/ane/info/extensions/ExtensionContext$13;

    invoke-direct {v2, p0}, Lcom/stuv/ane/info/extensions/ExtensionContext$13;-><init>(Lcom/stuv/ane/info/extensions/ExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v1, "getSharedPref"

    new-instance v2, Lcom/stuv/ane/info/extensions/ExtensionContext$14;

    invoke-direct {v2, p0}, Lcom/stuv/ane/info/extensions/ExtensionContext$14;-><init>(Lcom/stuv/ane/info/extensions/ExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v1, "setKeepScreenOn"

    new-instance v2, Lcom/stuv/ane/info/extensions/ExtensionContext$15;

    invoke-direct {v2, p0}, Lcom/stuv/ane/info/extensions/ExtensionContext$15;-><init>(Lcom/stuv/ane/info/extensions/ExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    return-object v0
.end method

.method public initialise()V
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/stuv/ane/info/extensions/ExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/stuv/ane/info/extensions/InfoWrapper;->init(Landroid/app/Activity;Lcom/adobe/fre/FREContext;)V

    .line 165
    return-void
.end method
