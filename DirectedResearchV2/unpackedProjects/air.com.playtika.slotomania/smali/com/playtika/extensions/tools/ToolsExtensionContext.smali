.class public Lcom/playtika/extensions/tools/ToolsExtensionContext;
.super Lcom/adobe/fre/FREContext;
.source "ToolsExtensionContext.java"


# instance fields
.field public vb:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/playtika/extensions/tools/ToolsExtensionContext;->vb:Landroid/os/Vibrator;

    .line 11
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 17
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
    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    .local v0, "functionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "sendSMS"

    new-instance v2, Lcom/playtika/extensions/tools/ToolsSendSMSFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/tools/ToolsSendSMSFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string v1, "sendMail"

    new-instance v2, Lcom/playtika/extensions/tools/ToolsSendMailFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/tools/ToolsSendMailFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string v1, "getAndroidId"

    new-instance v2, Lcom/playtika/extensions/tools/ToolsGetAndroidIdFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/tools/ToolsGetAndroidIdFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string v1, "getSerialNo"

    new-instance v2, Lcom/playtika/extensions/tools/ToolsGetSerialNoFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/tools/ToolsGetSerialNoFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v1, "trace"

    new-instance v2, Lcom/playtika/extensions/tools/ToolsLog;

    invoke-direct {v2}, Lcom/playtika/extensions/tools/ToolsLog;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v1, "hasMobileNetwork"

    new-instance v2, Lcom/playtika/extensions/tools/ToolsHasMobileNetworkFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/tools/ToolsHasMobileNetworkFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string v1, "hasUriHandler"

    new-instance v2, Lcom/playtika/extensions/tools/ToolsHasUriHandlerFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/tools/ToolsHasUriHandlerFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v1, "getAndroidManufacturer"

    new-instance v2, Lcom/playtika/extensions/tools/ToolsGetManufacturer;

    invoke-direct {v2}, Lcom/playtika/extensions/tools/ToolsGetManufacturer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v1, "getAndroidOSBuildModel"

    new-instance v2, Lcom/playtika/extensions/tools/ToolsGetOSBuildModel;

    invoke-direct {v2}, Lcom/playtika/extensions/tools/ToolsGetOSBuildModel;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v1, "getPackageName"

    new-instance v2, Lcom/playtika/extensions/tools/ToolsGetPackageName;

    invoke-direct {v2}, Lcom/playtika/extensions/tools/ToolsGetPackageName;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v1, "getIMEI"

    new-instance v2, Lcom/playtika/extensions/tools/ToolsGetIMEI;

    invoke-direct {v2}, Lcom/playtika/extensions/tools/ToolsGetIMEI;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v1, "getTimeZone"

    new-instance v2, Lcom/playtika/extensions/tools/ToolsGetTimeZone;

    invoke-direct {v2}, Lcom/playtika/extensions/tools/ToolsGetTimeZone;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v1, "getCarrier"

    new-instance v2, Lcom/playtika/extensions/tools/ToolsGetCarrier;

    invoke-direct {v2}, Lcom/playtika/extensions/tools/ToolsGetCarrier;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v1, "getOSVersion"

    new-instance v2, Lcom/playtika/extensions/tools/ToolsGetOSVersion;

    invoke-direct {v2}, Lcom/playtika/extensions/tools/ToolsGetOSVersion;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v1, "getCountry"

    new-instance v2, Lcom/playtika/extensions/tools/ToolsGetCountry;

    invoke-direct {v2}, Lcom/playtika/extensions/tools/ToolsGetCountry;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v1, "getSpaceFree"

    new-instance v2, Lcom/playtika/extensions/tools/ToolsGetSpaceFree;

    invoke-direct {v2}, Lcom/playtika/extensions/tools/ToolsGetSpaceFree;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v1, "getSpaceTotal"

    new-instance v2, Lcom/playtika/extensions/tools/ToolsGetSpaceTotal;

    invoke-direct {v2}, Lcom/playtika/extensions/tools/ToolsGetSpaceTotal;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v1, "getScreenXDpi"

    new-instance v2, Lcom/playtika/extensions/tools/ToolsGetScreenXDpi;

    invoke-direct {v2}, Lcom/playtika/extensions/tools/ToolsGetScreenXDpi;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v1, "getScreenYDpi"

    new-instance v2, Lcom/playtika/extensions/tools/ToolsGetScreenYDpi;

    invoke-direct {v2}, Lcom/playtika/extensions/tools/ToolsGetScreenYDpi;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v1, "getScreenSize"

    new-instance v2, Lcom/playtika/extensions/tools/ToolsGetScreenSize;

    invoke-direct {v2}, Lcom/playtika/extensions/tools/ToolsGetScreenSize;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v1, "getRAMFree"

    new-instance v2, Lcom/playtika/extensions/tools/ToolsGetRAMFree;

    invoke-direct {v2}, Lcom/playtika/extensions/tools/ToolsGetRAMFree;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v1, "getRAMTotal"

    new-instance v2, Lcom/playtika/extensions/tools/ToolsGetRAMTotal;

    invoke-direct {v2}, Lcom/playtika/extensions/tools/ToolsGetRAMTotal;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-object v0
.end method
