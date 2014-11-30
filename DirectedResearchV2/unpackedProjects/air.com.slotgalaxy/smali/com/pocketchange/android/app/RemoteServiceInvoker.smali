.class public abstract Lcom/pocketchange/android/app/RemoteServiceInvoker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pocketchange/android/app/RemoteServiceInvoker$ServiceCaller;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Service::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/content/ServiceConnection;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/Intent;

.field private final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<TService;>;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceIntent"    # Landroid/content/Intent;

    .prologue
    .line 27
    .local p0, "this":Lcom/pocketchange/android/app/RemoteServiceInvoker;, "Lcom/pocketchange/android/app/RemoteServiceInvoker<TService;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/pocketchange/android/app/RemoteServiceInvoker;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 28
    iput-object p1, p0, Lcom/pocketchange/android/app/RemoteServiceInvoker;->a:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/pocketchange/android/app/RemoteServiceInvoker;->b:Landroid/content/Intent;

    .line 30
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 84
    monitor-enter p0

    .line 85
    :try_start_0
    iget-boolean v0, p0, Lcom/pocketchange/android/app/RemoteServiceInvoker;->e:Z

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invoker has been shut down"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 88
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/pocketchange/android/app/RemoteServiceInvoker;->d:Z

    .line 89
    iget-object v0, p0, Lcom/pocketchange/android/app/RemoteServiceInvoker;->b:Landroid/content/Intent;

    iget-object v1, p0, Lcom/pocketchange/android/app/RemoteServiceInvoker;->a:Landroid/content/Context;

    invoke-static {v0, v1, p0}, Lcom/pocketchange/android/content/ContextUtils;->bindToService(Landroid/content/Intent;Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 90
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    return-void
.end method


# virtual methods
.method protected castBoundService(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 6
    .param p1, "service"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TService;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/pocketchange/android/app/RemoteServiceInvoker;, "Lcom/pocketchange/android/app/RemoteServiceInvoker<TService;>;"
    const/4 v3, 0x0

    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 110
    :goto_0
    const-class v2, Lcom/pocketchange/android/app/RemoteServiceInvoker;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 111
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    .line 114
    .end local p0    # "this":Lcom/pocketchange/android/app/RemoteServiceInvoker;, "Lcom/pocketchange/android/app/RemoteServiceInvoker<TService;>;"
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 115
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object p0, v0, v3

    check-cast p0, Ljava/lang/Class;

    .line 116
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 120
    const-string v1, "asInterface"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/os/IBinder;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 121
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected getService()Landroid/os/IInterface;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TService;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/pocketchange/android/app/RemoteServiceInvoker;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    .line 68
    if-nez v0, :cond_1

    .line 69
    iget-object v1, p0, Lcom/pocketchange/android/app/RemoteServiceInvoker;->c:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 70
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/pocketchange/android/app/RemoteServiceInvoker;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    if-nez v0, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/pocketchange/android/app/RemoteServiceInvoker;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :try_start_1
    iget-object v0, p0, Lcom/pocketchange/android/app/RemoteServiceInvoker;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 80
    :cond_1
    return-object v0
.end method

.method public invoke(Lcom/pocketchange/android/app/RemoteServiceInvoker$ServiceCaller;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Result:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/pocketchange/android/app/RemoteServiceInvoker$ServiceCaller",
            "<TService;TResult;>;)TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/pocketchange/android/app/RemoteServiceInvoker;, "Lcom/pocketchange/android/app/RemoteServiceInvoker<TService;>;"
    .local p1, "serviceCaller":Lcom/pocketchange/android/app/RemoteServiceInvoker$ServiceCaller;, "Lcom/pocketchange/android/app/RemoteServiceInvoker$ServiceCaller<TService;TResult;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/pocketchange/android/app/RemoteServiceInvoker;->invoke(Lcom/pocketchange/android/app/RemoteServiceInvoker$ServiceCaller;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Lcom/pocketchange/android/app/RemoteServiceInvoker$ServiceCaller;I)Ljava/lang/Object;
    .locals 8
    .param p2, "retryCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Result:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/pocketchange/android/app/RemoteServiceInvoker$ServiceCaller",
            "<TService;TResult;>;I)TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/pocketchange/android/app/RemoteServiceInvoker;, "Lcom/pocketchange/android/app/RemoteServiceInvoker<TService;>;"
    .local p1, "serviceCaller":Lcom/pocketchange/android/app/RemoteServiceInvoker$ServiceCaller;, "Lcom/pocketchange/android/app/RemoteServiceInvoker$ServiceCaller<TService;TResult;>;"
    const/4 v7, 0x0

    .line 37
    .line 38
    const/4 v0, -0x1

    move-object v1, v7

    :goto_0
    if-ge v0, p2, :cond_1

    .line 39
    invoke-virtual {p0}, Lcom/pocketchange/android/app/RemoteServiceInvoker;->getService()Landroid/os/IInterface;

    move-result-object v2

    .line 41
    :try_start_0
    invoke-virtual {p1, v2}, Lcom/pocketchange/android/app/RemoteServiceInvoker$ServiceCaller;->withService(Landroid/os/IInterface;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 42
    :catch_0
    move-exception v3

    .line 43
    if-nez v1, :cond_0

    move-object v1, v3

    .line 46
    :cond_0
    const-string v4, "ServiceInvoker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error invoking service caller ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    iget-object v3, p0, Lcom/pocketchange/android/app/RemoteServiceInvoker;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v2, v7}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_1
    throw v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "serviceName"    # Landroid/content/ComponentName;
    .param p2, "rawService"    # Landroid/os/IBinder;

    .prologue
    .line 95
    .local p0, "this":Lcom/pocketchange/android/app/RemoteServiceInvoker;, "Lcom/pocketchange/android/app/RemoteServiceInvoker<TService;>;"
    iget-object v0, p0, Lcom/pocketchange/android/app/RemoteServiceInvoker;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, p2}, Lcom/pocketchange/android/app/RemoteServiceInvoker;->castBoundService(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 96
    iget-object v0, p0, Lcom/pocketchange/android/app/RemoteServiceInvoker;->c:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/pocketchange/android/app/RemoteServiceInvoker;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 98
    monitor-exit v0

    .line 99
    return-void

    .line 98
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "serviceName"    # Landroid/content/ComponentName;

    .prologue
    .line 103
    .local p0, "this":Lcom/pocketchange/android/app/RemoteServiceInvoker;, "Lcom/pocketchange/android/app/RemoteServiceInvoker<TService;>;"
    iget-object v0, p0, Lcom/pocketchange/android/app/RemoteServiceInvoker;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 104
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 54
    monitor-enter p0

    .line 55
    :try_start_0
    iget-boolean v0, p0, Lcom/pocketchange/android/app/RemoteServiceInvoker;->e:Z

    if-eqz v0, :cond_0

    .line 56
    monitor-exit p0

    .line 64
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-boolean v0, p0, Lcom/pocketchange/android/app/RemoteServiceInvoker;->d:Z

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/pocketchange/android/app/RemoteServiceInvoker;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 61
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pocketchange/android/app/RemoteServiceInvoker;->e:Z

    .line 62
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    iget-object v0, p0, Lcom/pocketchange/android/app/RemoteServiceInvoker;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
