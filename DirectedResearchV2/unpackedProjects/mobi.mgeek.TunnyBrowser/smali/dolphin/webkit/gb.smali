.class final Ldolphin/webkit/gb;
.super Ljava/lang/Object;
.source "Predictor.java"


# instance fields
.field private a:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Ldolphin/webkit/gb;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 65
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/gb;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 66
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Ldolphin/webkit/gb;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    .line 70
    iget-object v0, p0, Ldolphin/webkit/gb;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 71
    return-void
.end method

.method a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Ldolphin/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v0

    .line 77
    :cond_1
    iget-object v1, p0, Ldolphin/webkit/gb;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ldolphin/webkit/gb;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    iget-object v0, p0, Ldolphin/webkit/gb;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Ldolphin/webkit/gb;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 85
    iget-object v1, p0, Ldolphin/webkit/gb;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    .line 86
    return-object v0
.end method

.method b(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 90
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ldolphin/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Ldolphin/webkit/gb;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    # getter for: Ldolphin/webkit/Predictor;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Ldolphin/webkit/Predictor;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nativeCancelPrefetchUrl runing request: %s."

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 96
    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    # invokes: Ldolphin/webkit/Predictor;->nativeCancelPrefetchUrl(Ljava/lang/String;)V
    invoke-static {p1}, Ldolphin/webkit/Predictor;->access$200(Ljava/lang/String;)V

    .line 103
    :cond_2
    :goto_1
    iget-object v0, p0, Ldolphin/webkit/gb;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    # getter for: Ldolphin/webkit/Predictor;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Ldolphin/webkit/Predictor;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nativeCancelPrefetchUrl pending request: %s."

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 99
    :cond_3
    invoke-static {}, Ldolphin/webkit/WebViewCore;->initWebCoreThread()V

    .line 100
    # getter for: Ldolphin/webkit/Predictor;->sWebCoreHandler:Ldolphin/util/j;
    invoke-static {}, Ldolphin/webkit/Predictor;->access$300()Ldolphin/util/j;

    move-result-object v0

    # getter for: Ldolphin/webkit/Predictor;->sWebCoreHandler:Ldolphin/util/j;
    invoke-static {}, Ldolphin/webkit/Predictor;->access$300()Ldolphin/util/j;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2, p1}, Ldolphin/util/j;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldolphin/util/j;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Ldolphin/webkit/gb;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method
