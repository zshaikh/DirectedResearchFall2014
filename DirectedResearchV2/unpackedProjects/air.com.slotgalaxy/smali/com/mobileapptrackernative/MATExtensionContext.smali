.class public Lcom/mobileapptrackernative/MATExtensionContext;
.super Lcom/adobe/fre/FREContext;


# static fields
.field public static final TAG:Ljava/lang/String; = "MobileAppTrackerANE"


# instance fields
.field public mat:Lcom/mobileapptracker/MobileAppTracker;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

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

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "initNativeCode"

    new-instance v2, Lcom/mobileapptrackernative/InitFunction;

    invoke-direct {v2}, Lcom/mobileapptrackernative/InitFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "trackInstall"

    new-instance v2, Lcom/mobileapptrackernative/TrackInstallFunction;

    invoke-direct {v2}, Lcom/mobileapptrackernative/TrackInstallFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "trackAction"

    new-instance v2, Lcom/mobileapptrackernative/TrackActionFunction;

    invoke-direct {v2}, Lcom/mobileapptrackernative/TrackActionFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "trackActionWithEventItem"

    new-instance v2, Lcom/mobileapptrackernative/TrackActionWithEventItemFunction;

    invoke-direct {v2}, Lcom/mobileapptrackernative/TrackActionWithEventItemFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "trackUpdate"

    new-instance v2, Lcom/mobileapptrackernative/TrackUpdateFunction;

    invoke-direct {v2}, Lcom/mobileapptrackernative/TrackUpdateFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getReferrer"

    new-instance v2, Lcom/mobileapptrackernative/GetReferrerFunction;

    invoke-direct {v2}, Lcom/mobileapptrackernative/GetReferrerFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setAllowDuplicates"

    new-instance v2, Lcom/mobileapptrackernative/SetAllowDuplicatesFunction;

    invoke-direct {v2}, Lcom/mobileapptrackernative/SetAllowDuplicatesFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setCurrencyCode"

    new-instance v2, Lcom/mobileapptrackernative/SetCurrencyCodeFunction;

    invoke-direct {v2}, Lcom/mobileapptrackernative/SetCurrencyCodeFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setDebugMode"

    new-instance v2, Lcom/mobileapptrackernative/SetDebugModeFunction;

    invoke-direct {v2}, Lcom/mobileapptrackernative/SetDebugModeFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setPackageName"

    new-instance v2, Lcom/mobileapptrackernative/SetPackageNameFunction;

    invoke-direct {v2}, Lcom/mobileapptrackernative/SetPackageNameFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setSiteId"

    new-instance v2, Lcom/mobileapptrackernative/SetSiteIdFunction;

    invoke-direct {v2}, Lcom/mobileapptrackernative/SetSiteIdFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setTRUSTeId"

    new-instance v2, Lcom/mobileapptrackernative/SetTRUSTeIdFunction;

    invoke-direct {v2}, Lcom/mobileapptrackernative/SetTRUSTeIdFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setUserId"

    new-instance v2, Lcom/mobileapptrackernative/SetUserIdFunction;

    invoke-direct {v2}, Lcom/mobileapptrackernative/SetUserIdFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setAge"

    new-instance v2, Lcom/mobileapptrackernative/SetAgeFunction;

    invoke-direct {v2}, Lcom/mobileapptrackernative/SetAgeFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setGender"

    new-instance v2, Lcom/mobileapptrackernative/SetGenderFunction;

    invoke-direct {v2}, Lcom/mobileapptrackernative/SetGenderFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setLocation"

    new-instance v2, Lcom/mobileapptrackernative/SetLocationFunction;

    invoke-direct {v2}, Lcom/mobileapptrackernative/SetLocationFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "startAppToAppTracking"

    new-instance v2, Lcom/mobileapptrackernative/StartAppToAppFunction;

    invoke-direct {v2}, Lcom/mobileapptrackernative/StartAppToAppFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setDelegate"

    new-instance v2, Lcom/mobileapptrackernative/iOSNoOpFunction;

    invoke-direct {v2}, Lcom/mobileapptrackernative/iOSNoOpFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setJailbroken"

    new-instance v2, Lcom/mobileapptrackernative/iOSNoOpFunction;

    invoke-direct {v2}, Lcom/mobileapptrackernative/iOSNoOpFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setMACAddress"

    new-instance v2, Lcom/mobileapptrackernative/iOSNoOpFunction;

    invoke-direct {v2}, Lcom/mobileapptrackernative/iOSNoOpFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setODIN1"

    new-instance v2, Lcom/mobileapptrackernative/iOSNoOpFunction;

    invoke-direct {v2}, Lcom/mobileapptrackernative/iOSNoOpFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setOpenUDID"

    new-instance v2, Lcom/mobileapptrackernative/iOSNoOpFunction;

    invoke-direct {v2}, Lcom/mobileapptrackernative/iOSNoOpFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setRedirectUrl"

    new-instance v2, Lcom/mobileapptrackernative/iOSNoOpFunction;

    invoke-direct {v2}, Lcom/mobileapptrackernative/iOSNoOpFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setUIID"

    new-instance v2, Lcom/mobileapptrackernative/iOSNoOpFunction;

    invoke-direct {v2}, Lcom/mobileapptrackernative/iOSNoOpFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setShouldAutoDetectJailbroken"

    new-instance v2, Lcom/mobileapptrackernative/iOSNoOpFunction;

    invoke-direct {v2}, Lcom/mobileapptrackernative/iOSNoOpFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setShouldAutoGenerateAppleAdvertisingIdentifier"

    new-instance v2, Lcom/mobileapptrackernative/iOSNoOpFunction;

    invoke-direct {v2}, Lcom/mobileapptrackernative/iOSNoOpFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setShouldAutoGenerateAppleVendorIdentifier"

    new-instance v2, Lcom/mobileapptrackernative/iOSNoOpFunction;

    invoke-direct {v2}, Lcom/mobileapptrackernative/iOSNoOpFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getSDKDataParameters"

    new-instance v2, Lcom/mobileapptrackernative/iOSNoOpFunction;

    invoke-direct {v2}, Lcom/mobileapptrackernative/iOSNoOpFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SetAppAdTracking"

    new-instance v2, Lcom/mobileapptrackernative/iOSNoOpFunction;

    invoke-direct {v2}, Lcom/mobileapptrackernative/iOSNoOpFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setAppleAdvertisingIdentifier"

    new-instance v2, Lcom/mobileapptrackernative/iOSNoOpFunction;

    invoke-direct {v2}, Lcom/mobileapptrackernative/iOSNoOpFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setAppleVendorIdentifier"

    new-instance v2, Lcom/mobileapptrackernative/iOSNoOpFunction;

    invoke-direct {v2}, Lcom/mobileapptrackernative/iOSNoOpFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setUseCookieTracking"

    new-instance v2, Lcom/mobileapptrackernative/iOSNoOpFunction;

    invoke-direct {v2}, Lcom/mobileapptrackernative/iOSNoOpFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setUseHTTPS"

    new-instance v2, Lcom/mobileapptrackernative/iOSNoOpFunction;

    invoke-direct {v2}, Lcom/mobileapptrackernative/iOSNoOpFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
