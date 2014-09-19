.class public Lcom/bitrhymes/messaging/AndroidExtensionContext;
.super Lcom/adobe/fre/FREContext;
.source "AndroidExtensionContext.java"


# instance fields
.field public activity:Landroid/app/Activity;


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
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bitrhymes/messaging/AndroidExtensionContext;->activity:Landroid/app/Activity;

    .line 15
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
    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    .local v0, functionMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "LaunchEmail"

    new-instance v2, Lcom/bitrhymes/messaging/LaunchEmail;

    invoke-direct {v2}, Lcom/bitrhymes/messaging/LaunchEmail;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string v1, "LaunchSms"

    new-instance v2, Lcom/bitrhymes/messaging/LaunchSMS;

    invoke-direct {v2}, Lcom/bitrhymes/messaging/LaunchSMS;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string v1, "IsMailComposerAvailable"

    new-instance v2, Lcom/bitrhymes/messaging/IsMailComposerAvailable;

    invoke-direct {v2}, Lcom/bitrhymes/messaging/IsMailComposerAvailable;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v1, "IsSMSComposerAvailable"

    new-instance v2, Lcom/bitrhymes/messaging/IsSMSComposerAvailable;

    invoke-direct {v2}, Lcom/bitrhymes/messaging/IsSMSComposerAvailable;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    return-object v0
.end method
