.class Lcom/facebook/Session$TokenRefreshRequestHandler;
.super Landroid/os/Handler;
.source "Session.java"


# instance fields
.field private refreshRequestWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/facebook/Session$TokenRefreshRequest;",
            ">;"
        }
    .end annotation
.end field

.field private sessionWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/facebook/Session;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/facebook/Session;Lcom/facebook/Session$TokenRefreshRequest;)V
    .locals 1

    .prologue
    .line 1472
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1473
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/Session$TokenRefreshRequestHandler;->sessionWeakReference:Ljava/lang/ref/WeakReference;

    .line 1474
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/Session$TokenRefreshRequestHandler;->refreshRequestWeakReference:Ljava/lang/ref/WeakReference;

    .line 1475
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 1479
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "access_token"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1480
    iget-object v0, p0, Lcom/facebook/Session$TokenRefreshRequestHandler;->sessionWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/Session;

    .line 1482
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 1483
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->extendTokenCompleted(Landroid/os/Bundle;)V

    .line 1486
    :cond_0
    iget-object v0, p0, Lcom/facebook/Session$TokenRefreshRequestHandler;->refreshRequestWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/Session$TokenRefreshRequest;

    .line 1487
    if-eqz v0, :cond_1

    .line 1490
    # getter for: Lcom/facebook/Session;->staticContext:Landroid/content/Context;
    invoke-static {}, Lcom/facebook/Session;->access$1100()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1491
    # invokes: Lcom/facebook/Session$TokenRefreshRequest;->cleanup()V
    invoke-static {v0}, Lcom/facebook/Session$TokenRefreshRequest;->access$1300(Lcom/facebook/Session$TokenRefreshRequest;)V

    .line 1493
    :cond_1
    return-void
.end method
