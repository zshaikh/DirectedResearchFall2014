.class public Lcom/gamesys/android/tools/ane/notification/cm/google/GcmBroadcastReceiver;
.super Lcom/gamesys/android/tools/ane/notification/statusbar/SBNotificationBroadcastReceiver;
.source "GcmBroadcastReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/gamesys/android/tools/ane/notification/cm/google/GcmBroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/tools/ane/notification/cm/google/GcmBroadcastReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/gamesys/android/tools/ane/notification/statusbar/SBNotificationBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTAG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/gamesys/android/tools/ane/notification/cm/google/GcmBroadcastReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 21
    sget-object v0, Lcom/gamesys/android/tools/ane/notification/cm/google/GcmBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A GCM notification has been received:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-super {p0, p1, p2}, Lcom/gamesys/android/tools/ane/notification/statusbar/SBNotificationBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 24
    return-void
.end method
