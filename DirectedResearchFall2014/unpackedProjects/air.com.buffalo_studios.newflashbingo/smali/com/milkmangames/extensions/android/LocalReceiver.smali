.class public Lcom/milkmangames/extensions/android/LocalReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LocalReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v1, "[BUExtension]"

    .line 19
    const-string v0, "[BUExtension]"

    const-string v0, "LocalReceiver->onReceive"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    const-string v0, "[BUExtension]"

    const-string v0, "Wake lock."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-static {p1}, Lcom/milkmangames/extensions/android/WakeLocker;->acquire(Landroid/content/Context;)V

    .line 22
    invoke-static {p1, p2}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->onLocalMessage(Landroid/content/Context;Landroid/content/Intent;)V

    .line 24
    return-void
.end method
