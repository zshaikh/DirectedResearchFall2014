.class public Lcom/dolphin/browser/util/cs;
.super Ljava/lang/Object;
.source "TaskQueue.java"


# instance fields
.field private a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Ljava/lang/Thread;

.field private d:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/util/cs;->a:Ljava/util/concurrent/BlockingQueue;

    .line 14
    iput p1, p0, Lcom/dolphin/browser/util/cs;->d:I

    .line 15
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/util/cs;)I
    .locals 1

    .prologue
    .line 6
    iget v0, p0, Lcom/dolphin/browser/util/cs;->d:I

    return v0
.end method

.method static synthetic b(Lcom/dolphin/browser/util/cs;)Z
    .locals 1

    .prologue
    .line 6
    iget-boolean v0, p0, Lcom/dolphin/browser/util/cs;->b:Z

    return v0
.end method

.method static synthetic c(Lcom/dolphin/browser/util/cs;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lcom/dolphin/browser/util/cs;->a:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    .prologue
    .line 25
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/util/cs;->c:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/util/cs;->b:Z

    .line 27
    new-instance v0, Lcom/dolphin/browser/util/ct;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/util/ct;-><init>(Lcom/dolphin/browser/util/cs;)V

    iput-object v0, p0, Lcom/dolphin/browser/util/cs;->c:Ljava/lang/Thread;

    .line 28
    iget-object v0, p0, Lcom/dolphin/browser/util/cs;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_0
    monitor-exit p0

    return-void

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/dolphin/browser/util/cs;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    const-string v0, "TaskQueue"

    const-string v1, "Enqueue task failed"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_0
    return-void
.end method
