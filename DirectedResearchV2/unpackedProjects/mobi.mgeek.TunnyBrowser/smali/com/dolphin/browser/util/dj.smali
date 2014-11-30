.class final Lcom/dolphin/browser/util/dj;
.super Ljava/lang/Object;
.source "UIUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private b:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/dolphin/browser/util/dj;->a:Ljava/lang/Runnable;

    .line 35
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 46
    monitor-enter p0

    .line 47
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/dolphin/browser/util/dj;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 49
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    goto :goto_0

    .line 53
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 54
    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/dolphin/browser/util/dj;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 39
    monitor-enter p0

    .line 40
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/dolphin/browser/util/dj;->b:Z

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 42
    monitor-exit p0

    .line 43
    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
