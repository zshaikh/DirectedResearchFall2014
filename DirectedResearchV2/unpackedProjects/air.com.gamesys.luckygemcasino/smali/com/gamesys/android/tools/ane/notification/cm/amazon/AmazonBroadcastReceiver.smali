.class public Lcom/gamesys/android/tools/ane/notification/cm/amazon/AmazonBroadcastReceiver;
.super Lcom/amazon/device/messaging/ADMMessageReceiver;
.source "AmazonBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/gamesys/android/tools/ane/notification/cm/amazon/AmazonBroadcastMessageHandler;

    invoke-direct {p0, v0}, Lcom/amazon/device/messaging/ADMMessageReceiver;-><init>(Ljava/lang/Class;)V

    .line 9
    return-void
.end method
