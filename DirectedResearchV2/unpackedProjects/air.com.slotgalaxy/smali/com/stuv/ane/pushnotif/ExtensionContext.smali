.class public Lcom/stuv/ane/pushnotif/ExtensionContext;
.super Lcom/adobe/fre/FREContext;
.source "ExtensionContext.java"


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
    .line 53
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
    invoke-virtual {p0}, Lcom/stuv/ane/pushnotif/ExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/stuv/ane/pushnotif/PushNotifWrapper;->init(Landroid/app/Activity;Lcom/adobe/fre/FREContext;)V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    .local v0, "functionMap":Ljava/util/Map;
    const-string v1, "registerPush"

    new-instance v2, Lcom/stuv/ane/pushnotif/ExtensionContext$1;

    invoke-direct {v2, p0}, Lcom/stuv/ane/pushnotif/ExtensionContext$1;-><init>(Lcom/stuv/ane/pushnotif/ExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string v1, "setBadgeNb"

    new-instance v2, Lcom/stuv/ane/pushnotif/ExtensionContext$2;

    invoke-direct {v2, p0}, Lcom/stuv/ane/pushnotif/ExtensionContext$2;-><init>(Lcom/stuv/ane/pushnotif/ExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v1, "sendLocalNotification"

    new-instance v2, Lcom/stuv/ane/pushnotif/ExtensionContext$3;

    invoke-direct {v2, p0}, Lcom/stuv/ane/pushnotif/ExtensionContext$3;-><init>(Lcom/stuv/ane/pushnotif/ExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v1, "setIsAppInForeground"

    new-instance v2, Lcom/stuv/ane/pushnotif/ExtensionContext$4;

    invoke-direct {v2, p0}, Lcom/stuv/ane/pushnotif/ExtensionContext$4;-><init>(Lcom/stuv/ane/pushnotif/ExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-object v0
.end method
