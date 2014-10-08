.class Lcom/fusepowered/m1/android/MMJSObject;
.super Ljava/lang/Object;
.source "MMJSObject.java"


# instance fields
.field protected contextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field protected mmWebViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/fusepowered/m1/android/MMWebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getAdImplId(Ljava/lang/String;)J
    .locals 2
    .param p1, "creatorAdImplId"    # Ljava/lang/String;

    .prologue
    .line 68
    if-eqz p1, :cond_0

    .line 70
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-long v0, v0

    .line 72
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x4

    goto :goto_0
.end method

.method getBaseActivity()Lcom/fusepowered/m1/android/AdViewOverlayActivity;
    .locals 6

    .prologue
    .line 30
    iget-object v5, p0, Lcom/fusepowered/m1/android/MMJSObject;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fusepowered/m1/android/MMWebView;

    .line 31
    .local v4, "mmWebView":Lcom/fusepowered/m1/android/MMWebView;
    if-eqz v4, :cond_0

    .line 33
    invoke-virtual {v4}, Lcom/fusepowered/m1/android/MMWebView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 34
    .local v1, "activity":Landroid/app/Activity;
    instance-of v5, v1, Lcom/fusepowered/m1/android/MMActivity;

    if-eqz v5, :cond_0

    .line 36
    move-object v0, v1

    check-cast v0, Lcom/fusepowered/m1/android/MMActivity;

    move-object v3, v0

    .line 37
    .local v3, "mmActivity":Lcom/fusepowered/m1/android/MMActivity;
    invoke-virtual {v3}, Lcom/fusepowered/m1/android/MMActivity;->getWrappedActivity()Lcom/fusepowered/m1/android/MMBaseActivity;

    move-result-object v2

    .line 38
    .local v2, "baseActivity":Lcom/fusepowered/m1/android/MMBaseActivity;
    instance-of v5, v2, Lcom/fusepowered/m1/android/AdViewOverlayActivity;

    if-eqz v5, :cond_0

    .line 40
    check-cast v2, Lcom/fusepowered/m1/android/AdViewOverlayActivity;

    .end local v2    # "baseActivity":Lcom/fusepowered/m1/android/MMBaseActivity;
    move-object v5, v2

    .line 44
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v3    # "mmActivity":Lcom/fusepowered/m1/android/MMActivity;
    :goto_0
    return-object v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method runOnUiThreadFuture(Ljava/util/concurrent/Callable;)Lcom/fusepowered/m1/android/MMJSResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lcom/fusepowered/m1/android/MMJSResponse;",
            ">;)",
            "Lcom/fusepowered/m1/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lcom/fusepowered/m1/android/MMJSResponse;>;"
    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 50
    .local v1, "future":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Lcom/fusepowered/m1/android/MMJSResponse;>;"
    invoke-static {v1}, Lcom/fusepowered/m1/android/MMSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 53
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/fusepowered/m1/android/MMJSObject;
    check-cast p0, Lcom/fusepowered/m1/android/MMJSResponse;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, p0

    .line 63
    :goto_0
    return-object v2

    .line 55
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 57
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 63
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 59
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 61
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_1
.end method

.method setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fusepowered/m1/android/MMJSObject;->contextRef:Ljava/lang/ref/WeakReference;

    .line 21
    return-void
.end method

.method setMMWebView(Lcom/fusepowered/m1/android/MMWebView;)V
    .locals 1
    .param p1, "webView"    # Lcom/fusepowered/m1/android/MMWebView;

    .prologue
    .line 25
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fusepowered/m1/android/MMJSObject;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    .line 26
    return-void
.end method
