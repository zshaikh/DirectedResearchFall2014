.class public Lcom/fusepowered/push/FusePushNotificationReceiver;
.super Lcom/fusepowered/push/FuseGCMBroadcastReceiver;
.source "FusePushNotificationReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/fusepowered/push/FuseGCMBroadcastReceiver;-><init>()V

    return-void
.end method

.method protected static getDefaultIntentServiceClassName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 22
    const-string v0, "com.fusepowered.push.FuseIntentService"

    return-object v0
.end method


# virtual methods
.method protected getGCMIntentServiceClassName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 10
    invoke-static {p1}, Lcom/fusepowered/push/FusePushNotificationReceiver;->getDefaultIntentServiceClassName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
