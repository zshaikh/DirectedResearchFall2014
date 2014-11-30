.class final Ldolphin/webkit/gx;
.super Landroid/os/HandlerThread;
.source "ThreadUtils.java"


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "WebCore.Network.IO"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 4

    .prologue
    const/16 v3, 0x101

    .line 26
    invoke-virtual {p0}, Ldolphin/webkit/gx;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 27
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Ldolphin/webkit/gx;->a:Landroid/os/Handler;

    .line 28
    invoke-static {}, Ldolphin/webkit/ThreadUtils;->b()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 29
    invoke-static {}, Ldolphin/webkit/ThreadUtils;->c()Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Ldolphin/webkit/gx;->a:Landroid/os/Handler;

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    invoke-static {}, Ldolphin/webkit/ThreadUtils;->d()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {p0}, Ldolphin/webkit/gx;->getId()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 31
    const-string v0, "thread"

    const-string v1, "Started..."

    invoke-static {v0, v1}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-void
.end method
