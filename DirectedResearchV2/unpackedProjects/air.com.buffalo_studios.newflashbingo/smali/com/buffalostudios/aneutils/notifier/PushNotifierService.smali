.class public Lcom/buffalostudios/aneutils/notifier/PushNotifierService;
.super Lcom/google/android/gcm/GCMBaseIntentService;
.source "PushNotifierService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/android/gcm/GCMBaseIntentService;-><init>()V

    .line 11
    return-void
.end method


# virtual methods
.method protected getSenderIds(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-static {p1}, Lcom/buffalostudios/aneutils/notifier/PushNotifier;->getGCMSenderIds(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorId"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-static {p1, p2}, Lcom/buffalostudios/aneutils/notifier/PushNotifier;->onGCMError(Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method protected onMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 25
    invoke-static {p1, p2}, Lcom/buffalostudios/aneutils/notifier/PushNotifier;->onGCMMessage(Landroid/content/Context;Landroid/content/Intent;)V

    .line 26
    return-void
.end method

.method protected onRegistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "registrationId"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-static {p1, p2}, Lcom/buffalostudios/aneutils/notifier/PushNotifier;->onGCMRegistered(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method protected onUnregistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "registrationId"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {p1, p2}, Lcom/buffalostudios/aneutils/notifier/PushNotifier;->onGCMUnregistered(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    return-void
.end method
