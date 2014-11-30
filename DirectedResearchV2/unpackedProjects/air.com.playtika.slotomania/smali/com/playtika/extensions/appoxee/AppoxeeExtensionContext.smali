.class public Lcom/playtika/extensions/appoxee/AppoxeeExtensionContext;
.super Lcom/adobe/fre/FREContext;
.source "AppoxeeExtensionContext.java"


# static fields
.field public static NOTIFICATIONS_ENABLED:Ljava/lang/String;

.field private static UPDATE_MOBILE_USER_INFO:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "notifications_enabled"

    sput-object v0, Lcom/playtika/extensions/appoxee/AppoxeeExtensionContext;->NOTIFICATIONS_ENABLED:Ljava/lang/String;

    .line 18
    const-string v0, "update_mobile_user_info"

    sput-object v0, Lcom/playtika/extensions/appoxee/AppoxeeExtensionContext;->UPDATE_MOBILE_USER_INFO:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/playtika/extensions/appoxee/AppoxeeExtensionContext;->UPDATE_MOBILE_USER_INFO:Ljava/lang/String;

    return-object v0
.end method

.method private getListener()Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListener$Listener;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/playtika/extensions/appoxee/AppoxeeExtensionContext$1;

    invoke-direct {v0, p0}, Lcom/playtika/extensions/appoxee/AppoxeeExtensionContext$1;-><init>(Lcom/playtika/extensions/appoxee/AppoxeeExtensionContext;)V

    return-object v0
.end method


# virtual methods
.method public dispatchMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 40
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/playtika/extensions/appoxee/AppoxeeExtensionContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 21
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
    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 27
    .local v0, "functionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "init"

    new-instance v2, Lcom/appoxee/initFunction;

    invoke-direct {v2}, Lcom/appoxee/initFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v1, "showInbox"

    new-instance v2, Lcom/appoxee/showInbox;

    invoke-direct {v2}, Lcom/appoxee/showInbox;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string v1, "addTagToDevice"

    new-instance v2, Lcom/appoxee/AddTagToDevice;

    invoke-direct {v2}, Lcom/appoxee/AddTagToDevice;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v1, "removeTagFromDevice"

    new-instance v2, Lcom/appoxee/RemoveTagFromDevice;

    invoke-direct {v2}, Lcom/appoxee/RemoveTagFromDevice;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v1, "onActivate"

    new-instance v2, Lcom/playtika/extensions/appoxee/AppoxeeOnActivateFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/appoxee/AppoxeeOnActivateFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v1, "stop"

    new-instance v2, Lcom/playtika/extensions/appoxee/AppoxeeStopFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/appoxee/AppoxeeStopFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v1, "start"

    new-instance v2, Lcom/playtika/extensions/appoxee/AppoxeeStartFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/appoxee/AppoxeeStartFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v1, "getGCMRegID"

    new-instance v2, Lcom/playtika/extensions/appoxee/AppoxeeGetGCMRegIDFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/appoxee/AppoxeeGetGCMRegIDFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-object v0
.end method

.method public listenForGCMRegistrationID(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    new-instance v0, Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListener;

    invoke-direct {p0}, Lcom/playtika/extensions/appoxee/AppoxeeExtensionContext;->getListener()Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListener$Listener;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListener;-><init>(Landroid/content/Context;Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListener$Listener;)V

    .line 45
    return-void
.end method
