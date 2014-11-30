.class public abstract Lcom/pocketchange/android/app/PersistentIntentService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pocketchange/android/app/PersistentIntentService$1;,
        Lcom/pocketchange/android/app/PersistentIntentService$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;

.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile c:I

.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/pocketchange/android/app/PersistentIntentService;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 21
    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Lcom/pocketchange/android/util/ThreadUtils;->createFixedThreadPool(ILjava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/pocketchange/android/app/PersistentIntentService;->a:Ljava/util/concurrent/ExecutorService;

    .line 22
    return-void

    :cond_0
    move-object v1, p1

    .line 21
    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 2
    .param p1, "commandExecutor"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/pocketchange/android/app/PersistentIntentService;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 25
    if-nez p1, :cond_0

    .line 26
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "commandExecutor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_0
    iput-object p1, p0, Lcom/pocketchange/android/app/PersistentIntentService;->a:Ljava/util/concurrent/ExecutorService;

    .line 29
    return-void
.end method


# virtual methods
.method protected getPendingRequestCount()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/pocketchange/android/app/PersistentIntentService;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method protected getStartMode()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/pocketchange/android/app/PersistentIntentService;->d:I

    return v0
.end method

.method protected abstract handleCommand(Landroid/content/Intent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 93
    iget-object v0, p0, Lcom/pocketchange/android/app/PersistentIntentService;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 94
    return-void
.end method

.method protected onHandleCommand(Landroid/content/Intent;)V
    .locals 3
    .param p1, "command"    # Landroid/content/Intent;

    .prologue
    .line 60
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/pocketchange/android/app/PersistentIntentService;->handleCommand(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :goto_0
    iget-object v0, p0, Lcom/pocketchange/android/app/PersistentIntentService;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/pocketchange/android/app/PersistentIntentService;->shutdownIfIdle()V

    .line 69
    :cond_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    :try_start_1
    const-string v1, "PersistentIntentService"

    const-string v2, "Error handling command"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/pocketchange/android/app/PersistentIntentService;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/pocketchange/android/app/PersistentIntentService;->shutdownIfIdle()V

    :cond_1
    throw v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/pocketchange/android/app/PersistentIntentService;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 53
    iput p2, p0, Lcom/pocketchange/android/app/PersistentIntentService;->c:I

    .line 54
    iget-object v0, p0, Lcom/pocketchange/android/app/PersistentIntentService;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/pocketchange/android/app/PersistentIntentService$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/pocketchange/android/app/PersistentIntentService$a;-><init>(Lcom/pocketchange/android/app/PersistentIntentService;Landroid/content/Intent;Lcom/pocketchange/android/app/PersistentIntentService$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 55
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 46
    invoke-virtual {p0, p1, p3}, Lcom/pocketchange/android/app/PersistentIntentService;->onStart(Landroid/content/Intent;I)V

    .line 47
    iget v0, p0, Lcom/pocketchange/android/app/PersistentIntentService;->d:I

    return v0
.end method

.method protected setStartMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 36
    invoke-static {}, Lcom/pocketchange/android/util/ThreadUtils;->assertExecutingOnMainThread()V

    .line 37
    iput p1, p0, Lcom/pocketchange/android/app/PersistentIntentService;->d:I

    .line 38
    return-void
.end method

.method protected shutdownEnabled()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method protected shutdownIfIdle()V
    .locals 2

    .prologue
    .line 83
    iget v0, p0, Lcom/pocketchange/android/app/PersistentIntentService;->c:I

    .line 84
    iget-object v1, p0, Lcom/pocketchange/android/app/PersistentIntentService;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 85
    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/pocketchange/android/app/PersistentIntentService;->shutdownEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {p0, v0}, Lcom/pocketchange/android/app/PersistentIntentService;->stopSelf(I)V

    .line 88
    :cond_0
    return-void
.end method
