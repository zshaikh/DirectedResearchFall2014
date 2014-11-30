.class public Lcom/gamesys/android/tools/ane/notification/cm/amazon/AmazonBroadcastMessageHandler;
.super Lcom/amazon/device/messaging/ADMMessageHandlerBase;
.source "AmazonBroadcastMessageHandler.java"


# static fields
.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private regListener:Lcom/gamesys/android/tools/ane/notification/cm/utils/IRegistrationCMListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/gamesys/android/tools/ane/notification/cm/amazon/AmazonBroadcastMessageHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/tools/ane/notification/cm/amazon/AmazonBroadcastMessageHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/gamesys/android/tools/ane/notification/cm/amazon/AmazonBroadcastMessageHandler;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/amazon/device/messaging/ADMMessageHandlerBase;-><init>(Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/gamesys/android/tools/ane/notification/cm/amazon/AmazonBroadcastMessageHandler$1;

    invoke-direct {v0, p0}, Lcom/gamesys/android/tools/ane/notification/cm/amazon/AmazonBroadcastMessageHandler$1;-><init>(Lcom/gamesys/android/tools/ane/notification/cm/amazon/AmazonBroadcastMessageHandler;)V

    iput-object v0, p0, Lcom/gamesys/android/tools/ane/notification/cm/amazon/AmazonBroadcastMessageHandler;->regListener:Lcom/gamesys/android/tools/ane/notification/cm/utils/IRegistrationCMListener;

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/amazon/device/messaging/ADMMessageHandlerBase;-><init>(Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/gamesys/android/tools/ane/notification/cm/amazon/AmazonBroadcastMessageHandler$1;

    invoke-direct {v0, p0}, Lcom/gamesys/android/tools/ane/notification/cm/amazon/AmazonBroadcastMessageHandler$1;-><init>(Lcom/gamesys/android/tools/ane/notification/cm/amazon/AmazonBroadcastMessageHandler;)V

    iput-object v0, p0, Lcom/gamesys/android/tools/ane/notification/cm/amazon/AmazonBroadcastMessageHandler;->regListener:Lcom/gamesys/android/tools/ane/notification/cm/utils/IRegistrationCMListener;

    .line 20
    return-void
.end method


# virtual methods
.method protected onMessage(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 72
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/gamesys/android/tools/ane/notification/cm/amazon/AmazonBroadcastMessageHandler;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/gamesys/android/tools/ane/notification/statusbar/SBNotificationMessageIntentService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/gamesys/android/tools/ane/notification/cm/amazon/AmazonBroadcastMessageHandler;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 76
    return-void
.end method

.method protected onRegistered(Ljava/lang/String;)V
    .locals 1
    .param p1, "newRegistrationId"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/gamesys/android/tools/ane/notification/cm/amazon/AmazonBroadcastMessageHandler;->regListener:Lcom/gamesys/android/tools/ane/notification/cm/utils/IRegistrationCMListener;

    invoke-interface {v0, p1}, Lcom/gamesys/android/tools/ane/notification/cm/utils/IRegistrationCMListener;->onSucess(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method protected onRegistrationError(Ljava/lang/String;)V
    .locals 2
    .param p1, "errorId"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/gamesys/android/tools/ane/notification/cm/amazon/AmazonBroadcastMessageHandler;->regListener:Lcom/gamesys/android/tools/ane/notification/cm/utils/IRegistrationCMListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/gamesys/android/tools/ane/notification/cm/utils/IRegistrationCMListener;->onError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method protected onUnregistered(Ljava/lang/String;)V
    .locals 3
    .param p1, "registrationId"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/gamesys/android/tools/ane/notification/cm/amazon/AmazonBroadcastMessageHandler;->regListener:Lcom/gamesys/android/tools/ane/notification/cm/utils/IRegistrationCMListener;

    const/4 v1, 0x0

    const-string v2, "com.gamesys.android.ane.tools.CODE_CLOUD_MESSAGING_ERROR_DEVICE_UNREGISTRERED"

    invoke-interface {v0, v1, v2}, Lcom/gamesys/android/tools/ane/notification/cm/utils/IRegistrationCMListener;->onError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 62
    return-void
.end method
