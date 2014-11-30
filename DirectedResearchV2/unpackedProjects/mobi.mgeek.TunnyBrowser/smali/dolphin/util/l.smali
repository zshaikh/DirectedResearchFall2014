.class public Ldolphin/util/l;
.super Ljava/lang/Object;
.source "PriorityLooper.java"


# static fields
.field static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ldolphin/util/l;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final b:Ldolphin/util/o;

.field final c:Ljava/lang/Thread;

.field final d:Landroid/os/Looper;

.field private e:Ldolphin/util/m;

.field private volatile f:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Ldolphin/util/l;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .locals 2

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Ldolphin/util/o;

    invoke-direct {v0}, Ldolphin/util/o;-><init>()V

    iput-object v0, p0, Ldolphin/util/l;->b:Ldolphin/util/o;

    .line 132
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Ldolphin/util/l;->c:Ljava/lang/Thread;

    .line 133
    iput-object p1, p0, Ldolphin/util/l;->d:Landroid/os/Looper;

    .line 134
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ldolphin/util/l;->f:J

    .line 135
    return-void
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 83
    sget-object v0, Ldolphin/util/l;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Only one Looper may be created per thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 89
    new-instance v0, Ldolphin/util/l;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Ldolphin/util/l;-><init>(Landroid/os/Looper;)V

    .line 90
    sget-object v1, Ldolphin/util/l;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 91
    invoke-direct {v0}, Ldolphin/util/l;->f()V

    .line 92
    return-void
.end method

.method static synthetic a(Ldolphin/util/l;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ldolphin/util/l;->g()V

    return-void
.end method

.method public static b()V
    .locals 0

    .prologue
    .line 110
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 111
    return-void
.end method

.method public static c()Ldolphin/util/l;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Ldolphin/util/l;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/util/l;

    return-object v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Ldolphin/util/m;

    invoke-direct {v0, p0}, Ldolphin/util/m;-><init>(Ldolphin/util/l;)V

    iput-object v0, p0, Ldolphin/util/l;->e:Ldolphin/util/m;

    .line 97
    return-void
.end method

.method private g()V
    .locals 5

    .prologue
    .line 159
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 160
    const-wide/16 v2, 0x1388

    add-long/2addr v2, v0

    .line 163
    :cond_0
    iget-object v4, p0, Ldolphin/util/l;->b:Ldolphin/util/o;

    invoke-virtual {v4, v0, v1}, Ldolphin/util/o;->a(J)Ldolphin/util/n;

    move-result-object v0

    .line 165
    if-nez v0, :cond_1

    .line 202
    :goto_0
    monitor-enter p0

    .line 204
    const-wide/16 v0, -0x1

    :try_start_0
    iput-wide v0, p0, Ldolphin/util/l;->f:J

    .line 209
    iget-object v0, p0, Ldolphin/util/l;->b:Ldolphin/util/o;

    invoke-virtual {v0}, Ldolphin/util/o;->a()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ldolphin/util/l;->a(J)Z

    .line 210
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    return-void

    .line 172
    :cond_1
    iget-object v1, v0, Ldolphin/util/n;->a:Landroid/os/Message;

    if-eqz v1, :cond_2

    .line 180
    iget-object v1, v0, Ldolphin/util/n;->b:Ldolphin/util/j;

    iget-object v4, v0, Ldolphin/util/n;->a:Landroid/os/Message;

    invoke-virtual {v1, v4}, Ldolphin/util/j;->dispatchMessage(Landroid/os/Message;)V

    .line 191
    :cond_2
    invoke-virtual {v0}, Ldolphin/util/n;->b()V

    .line 193
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 194
    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    .line 210
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method a(J)Z
    .locals 5

    .prologue
    const-wide/16 v3, -0x1

    const/4 v0, 0x1

    .line 214
    monitor-enter p0

    .line 215
    cmp-long v1, p1, v3

    if-nez v1, :cond_0

    .line 218
    :try_start_0
    iget-object v0, p0, Ldolphin/util/l;->e:Ldolphin/util/m;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldolphin/util/m;->removeMessages(I)V

    .line 219
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ldolphin/util/l;->f:J

    .line 220
    const/4 v0, 0x0

    monitor-exit p0

    .line 242
    :goto_0
    return v0

    .line 223
    :cond_0
    iget-wide v1, p0, Ldolphin/util/l;->f:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    iget-wide v1, p0, Ldolphin/util/l;->f:J

    cmp-long v1, p1, v1

    if-ltz v1, :cond_1

    .line 226
    monitor-exit p0

    goto :goto_0

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 228
    :cond_1
    :try_start_1
    iput-wide p1, p0, Ldolphin/util/l;->f:J

    .line 241
    iget-object v0, p0, Ldolphin/util/l;->e:Ldolphin/util/m;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldolphin/util/m;->removeMessages(I)V

    .line 242
    iget-object v0, p0, Ldolphin/util/l;->e:Ldolphin/util/m;

    const/4 v1, 0x1

    iget-wide v2, p0, Ldolphin/util/l;->f:J

    invoke-virtual {v0, v1, v2, v3}, Ldolphin/util/m;->sendEmptyMessageAtTime(IJ)Z

    move-result v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public d()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Ldolphin/util/l;->c:Ljava/lang/Thread;

    return-object v0
.end method

.method public e()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Ldolphin/util/l;->d:Landroid/os/Looper;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PriorityLooper{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
