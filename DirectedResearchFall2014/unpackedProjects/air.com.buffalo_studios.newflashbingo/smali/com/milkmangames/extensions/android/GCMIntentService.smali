.class public Lcom/milkmangames/extensions/android/GCMIntentService;
.super Lcom/google/android/gcm/GCMBaseIntentService;
.source "GCMIntentService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/google/android/gcm/GCMBaseIntentService;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method protected getSenderIds(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-static {p1}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->getSenderIds(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "idsStrings":[Ljava/lang/String;
    return-object v0
.end method

.method protected onError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorId"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-static {p1, p2}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->onGCMError(Landroid/content/Context;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method protected onMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 34
    const-string v0, "[BUExtension]"

    const-string v1, "Wake lock."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static {p1}, Lcom/milkmangames/extensions/android/WakeLocker;->acquire(Landroid/content/Context;)V

    .line 36
    invoke-static {p1, p2}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->onGCMMessage(Landroid/content/Context;Landroid/content/Intent;)V

    .line 38
    return-void
.end method

.method protected onRegistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "registrationId"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {p1, p2}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->onGCMRegistered(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method protected onUnregistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "registrationId"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-static {p1, p2}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->onGCMUnregistered(Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    return-void
.end method
