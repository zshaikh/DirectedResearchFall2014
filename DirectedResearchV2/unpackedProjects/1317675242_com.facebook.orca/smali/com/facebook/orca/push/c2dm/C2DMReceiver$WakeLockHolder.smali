.class public Lcom/facebook/orca/push/c2dm/C2DMReceiver$WakeLockHolder;
.super Ljava/lang/Object;
.source "C2DMReceiver.java"


# instance fields
.field final a:Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/common/OrcaWakeLockManager;)V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x1

    const-string v1, "C2DM_LIB"

    invoke-virtual {p1, v0, v1}, Lcom/facebook/orca/common/OrcaWakeLockManager;->a(ILjava/lang/String;)Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver$WakeLockHolder;->a:Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;

    .line 73
    return-void
.end method
