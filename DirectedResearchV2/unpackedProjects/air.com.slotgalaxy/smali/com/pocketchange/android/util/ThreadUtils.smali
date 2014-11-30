.class public Lcom/pocketchange/android/util/ThreadUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pocketchange/android/util/ThreadUtils$ThreadInstrumenter;,
        Lcom/pocketchange/android/util/ThreadUtils$NamedThreadFactory;,
        Lcom/pocketchange/android/util/ThreadUtils$b;,
        Lcom/pocketchange/android/util/ThreadUtils$a;
    }
.end annotation


# static fields
.field static final synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/pocketchange/android/util/ThreadUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/pocketchange/android/util/ThreadUtils;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    return-void
.end method

.method public static assertExecutingOnMainThread()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/pocketchange/android/util/ThreadUtils;->assertExecutingOnMainThread(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static assertExecutingOnMainThread(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 32
    sget-boolean v0, Lcom/pocketchange/android/util/ThreadUtils;->a:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/pocketchange/android/util/ThreadUtils;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    if-nez p0, :cond_0

    const-string v1, "Method invoked on main thread"

    :goto_0
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    move-object v1, p0

    goto :goto_0

    .line 33
    :cond_1
    return-void
.end method

.method public static createFixedThreadPool(ILjava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "size"    # I
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/pocketchange/android/util/ThreadUtils;->createFixedThreadPool(ILjava/lang/String;Z)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static createFixedThreadPool(ILjava/lang/String;Z)Ljava/util/concurrent/ExecutorService;
    .locals 2
    .param p0, "size"    # I
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isDaemon"    # Z

    .prologue
    .line 58
    new-instance v0, Lcom/pocketchange/android/util/ThreadUtils$a;

    new-instance v1, Lcom/pocketchange/android/util/ThreadUtils$NamedThreadFactory;

    invoke-direct {v1, p1, p2}, Lcom/pocketchange/android/util/ThreadUtils$NamedThreadFactory;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v0, p0, v1}, Lcom/pocketchange/android/util/ThreadUtils$a;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method

.method public static instrumentAllThreads(Lcom/pocketchange/android/util/ThreadUtils$ThreadInstrumenter;)V
    .locals 5
    .param p0, "instrumenter"    # Lcom/pocketchange/android/util/ThreadUtils$ThreadInstrumenter;

    .prologue
    .line 44
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    move-object v1, v0

    .line 45
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    move-result-object v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Thread;

    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    move-result v1

    .line 48
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 49
    aget-object v3, v0, v2

    invoke-interface {p0, v3}, Lcom/pocketchange/android/util/ThreadUtils$ThreadInstrumenter;->instrumentThread(Ljava/lang/Thread;)V

    .line 48
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 51
    :cond_1
    return-void
.end method

.method public static instrumentMainThread(Lcom/pocketchange/android/util/ThreadUtils$ThreadInstrumenter;)V
    .locals 1
    .param p0, "instrumenter"    # Lcom/pocketchange/android/util/ThreadUtils$ThreadInstrumenter;

    .prologue
    .line 36
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/pocketchange/android/util/ThreadUtils$ThreadInstrumenter;->instrumentThread(Ljava/lang/Thread;)V

    .line 37
    return-void
.end method

.method public static final isMainThread()Z
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {v0}, Lcom/pocketchange/android/util/ThreadUtils;->isMainThread(Ljava/lang/Thread;)Z

    move-result v0

    return v0
.end method

.method public static final isMainThread(Ljava/lang/Thread;)Z
    .locals 1
    .param p0, "t"    # Ljava/lang/Thread;

    .prologue
    .line 22
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
