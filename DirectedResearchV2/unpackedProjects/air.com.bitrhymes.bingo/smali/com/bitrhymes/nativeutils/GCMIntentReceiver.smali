.class public Lcom/bitrhymes/nativeutils/GCMIntentReceiver;
.super Lcom/google/android/gcm/GCMBroadcastReceiver;
.source "GCMIntentReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/google/android/gcm/GCMBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getGCMIntentServiceClassName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    const-string v0, "RegisterForPush"

    const-string v1, "getGCMIntentServiceClassName"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    const-string v0, "com.bitrhymes.nativeutils.GCMIntentService"

    return-object v0
.end method
