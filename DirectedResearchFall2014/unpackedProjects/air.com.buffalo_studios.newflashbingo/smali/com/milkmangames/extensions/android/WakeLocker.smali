.class public abstract Lcom/milkmangames/extensions/android/WakeLocker;
.super Ljava/lang/Object;
.source "WakeLocker.java"


# static fields
.field private static wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acquire(Landroid/content/Context;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 10
    sget-object v1, Lcom/milkmangames/extensions/android/WakeLocker;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 12
    sget-object v1, Lcom/milkmangames/extensions/android/WakeLocker;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14
    sget-object v1, Lcom/milkmangames/extensions/android/WakeLocker;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 19
    :cond_0
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 21
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 29
    :goto_0
    return-void

    .line 25
    :cond_1
    const v1, 0x3000001a

    .line 27
    const-string v2, "com.milkmangames.customextensions.android.WakeLock"

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/milkmangames/extensions/android/WakeLocker;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 28
    sget-object v1, Lcom/milkmangames/extensions/android/WakeLocker;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_0
.end method

.method public static release()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method
