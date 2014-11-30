.class final Ldolphin/webkit/ThreadUtils;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# annotations
.annotation build Ldolphin/webkit/annotation/CalledByJNI;
.end annotation


# static fields
.field private static final a:Landroid/util/SparseIntArray;

.field private static final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Ldolphin/webkit/ThreadUtils;->a:Landroid/util/SparseIntArray;

    .line 95
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Ldolphin/webkit/ThreadUtils;->b:Landroid/util/SparseArray;

    .line 96
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Ldolphin/webkit/ThreadUtils;->c:Landroid/util/SparseArray;

    .line 97
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Ldolphin/webkit/ThreadUtils;->d:Landroid/util/SparseArray;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method private static a(I)Landroid/os/Handler;
    .locals 2

    .prologue
    .line 122
    if-nez p0, :cond_0

    .line 123
    invoke-static {}, Ldolphin/webkit/ThreadUtils;->currentThread()I

    move-result p0

    .line 125
    :cond_0
    sget-object v0, Ldolphin/webkit/ThreadUtils;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 126
    if-nez v0, :cond_1

    .line 127
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Thread is not ready yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_1
    return-object v0
.end method

.method static a()V
    .locals 6

    .prologue
    const/16 v5, 0x102

    .line 100
    new-instance v0, Ldolphin/webkit/gx;

    invoke-direct {v0}, Ldolphin/webkit/gx;-><init>()V

    .line 102
    sget-object v1, Ldolphin/webkit/ThreadUtils;->b:Landroid/util/SparseArray;

    const/16 v2, 0x101

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 104
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    .line 105
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    .line 106
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 108
    sget-object v4, Ldolphin/webkit/ThreadUtils;->b:Landroid/util/SparseArray;

    invoke-virtual {v4, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 109
    sget-object v4, Ldolphin/webkit/ThreadUtils;->c:Landroid/util/SparseArray;

    invoke-virtual {v4, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 110
    sget-object v1, Ldolphin/webkit/ThreadUtils;->d:Landroid/util/SparseArray;

    invoke-virtual {v1, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 112
    sget-object v1, Ldolphin/webkit/ThreadUtils;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v1, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 114
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 117
    const-string v1, "thread"

    const-string v2, "Waiting IO thread to start..."

    invoke-static {v1, v2}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 119
    return-void
.end method

.method static synthetic b()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Ldolphin/webkit/ThreadUtils;->c:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic c()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Ldolphin/webkit/ThreadUtils;->d:Landroid/util/SparseArray;

    return-object v0
.end method

.method public static currentThread()I
    .locals 4
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 134
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 135
    sget-object v1, Ldolphin/webkit/ThreadUtils;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    long-to-int v0, v2

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public static currentlyOn(I)Z
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 140
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .line 141
    sget-object v0, Ldolphin/webkit/ThreadUtils;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    .line 142
    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d()Landroid/util/SparseIntArray;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Ldolphin/webkit/ThreadUtils;->a:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method public static final native nativeReleaseTask(I)V
.end method

.method public static final native nativeRunTask(I)V
.end method

.method public static postDelayedTask(IIJ)V
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 156
    sget-object v0, Ldolphin/webkit/ThreadUtils;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 157
    if-nez v0, :cond_0

    .line 158
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Thread is not ready yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    new-instance v1, Ldolphin/webkit/gy;

    invoke-direct {v1, p1}, Ldolphin/webkit/gy;-><init>(I)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 161
    return-void
.end method

.method public static postTask(II)V
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 147
    invoke-static {p0}, Ldolphin/webkit/ThreadUtils;->a(I)Landroid/os/Handler;

    move-result-object v0

    .line 148
    if-nez v0, :cond_0

    .line 149
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Thread is not ready yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    new-instance v1, Ldolphin/webkit/gy;

    invoke-direct {v1, p1}, Ldolphin/webkit/gy;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 152
    return-void
.end method
