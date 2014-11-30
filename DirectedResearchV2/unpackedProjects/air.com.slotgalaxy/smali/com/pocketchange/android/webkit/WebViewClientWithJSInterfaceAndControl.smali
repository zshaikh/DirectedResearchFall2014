.class public Lcom/pocketchange/android/webkit/WebViewClientWithJSInterfaceAndControl;
.super Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "jsInterface"    # Ljava/lang/Object;
    .param p2, "jsControl"    # Ljava/lang/String;

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterfaceAndControl;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "jsInterface"    # Ljava/lang/Object;
    .param p2, "jsControl"    # Ljava/lang/String;
    .param p3, "debug"    # Z

    .prologue
    .line 18
    invoke-direct {p0, p1, p3}, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface;-><init>(Ljava/lang/Object;Z)V

    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterfaceAndControl;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 20
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterfaceAndControl;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 24
    if-nez v0, :cond_0

    .line 39
    :goto_0
    return-void

    .line 27
    :cond_0
    iget-boolean v1, p0, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterfaceAndControl;->debug:Z

    if-eqz v1, :cond_1

    .line 28
    const-string v1, "WebViewClientWithJSInterfaceAndControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterfaceAndControl;->logMsgPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Scheduling execution of JS control"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_1
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 31
    new-instance v2, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterfaceAndControl$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterfaceAndControl$1;-><init>(Lcom/pocketchange/android/webkit/WebViewClientWithJSInterfaceAndControl;Ljava/lang/String;Landroid/webkit/WebView;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
