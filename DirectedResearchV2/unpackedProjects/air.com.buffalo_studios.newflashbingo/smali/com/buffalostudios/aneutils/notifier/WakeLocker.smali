.class public Lcom/buffalostudios/aneutils/notifier/WakeLocker;
.super Ljava/lang/Object;
.source "WakeLocker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WakeLocker"

.field private static _wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/buffalostudios/aneutils/notifier/WakeLocker;->_wakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acquire(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    sget-object v1, Lcom/buffalostudios/aneutils/notifier/WakeLocker;->_wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/buffalostudios/aneutils/notifier/WakeLocker;->_wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    :cond_0
    :goto_0
    return-void

    .line 17
    :cond_1
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 20
    .local v0, "pm":Landroid/os/PowerManager;
    const v1, 0x20000001

    const-string v2, "WakeLocker"

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/buffalostudios/aneutils/notifier/WakeLocker;->_wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 22
    sget-object v1, Lcom/buffalostudios/aneutils/notifier/WakeLocker;->_wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/buffalostudios/aneutils/notifier/WakeLocker;->_wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    .line 23
    sget-object v1, Lcom/buffalostudios/aneutils/notifier/WakeLocker;->_wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0
.end method

.method public static release()V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/buffalostudios/aneutils/notifier/WakeLocker;->_wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 29
    sget-object v0, Lcom/buffalostudios/aneutils/notifier/WakeLocker;->_wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/buffalostudios/aneutils/notifier/WakeLocker;->_wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 32
    :cond_0
    return-void
.end method
