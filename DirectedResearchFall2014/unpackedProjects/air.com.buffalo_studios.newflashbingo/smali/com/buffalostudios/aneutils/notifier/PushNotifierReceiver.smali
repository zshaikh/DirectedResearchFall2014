.class public Lcom/buffalostudios/aneutils/notifier/PushNotifierReceiver;
.super Lcom/google/android/gcm/GCMBroadcastReceiver;
.source "PushNotifierReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/google/android/gcm/GCMBroadcastReceiver;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method protected getGCMIntentServiceClassName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 14
    const-string v0, "com.buffalostudios.aneutils.notifier.PushNotifierService"

    return-object v0
.end method
