.class Lcom/fusepowered/m1/android/MMAdImpl$BasicWebViewClientListener;
.super Lcom/fusepowered/m1/android/MMWebViewClient$MMWebViewClientListener;
.source "MMAdImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/android/MMAdImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BasicWebViewClientListener"
.end annotation


# instance fields
.field adImplRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/fusepowered/m1/android/MMAdImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/fusepowered/m1/android/MMAdImpl;)V
    .locals 1
    .parameter "adImpl"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/fusepowered/m1/android/MMWebViewClient$MMWebViewClientListener;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fusepowered/m1/android/MMAdImpl$BasicWebViewClientListener;->adImplRef:Ljava/lang/ref/WeakReference;

    .line 50
    return-void
.end method


# virtual methods
.method public onPageFinished(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 63
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMAdImpl$BasicWebViewClientListener;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/android/MMAdImpl;

    .line 64
    .local v0, adImpl:Lcom/fusepowered/m1/android/MMAdImpl;
    if-eqz v0, :cond_0

    .line 66
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fusepowered/m1/android/MMAdImpl;->setClickable(Z)V

    .line 68
    iget-object v1, v0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v1, v1, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, v0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v1, v1, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    monitor-enter v1

    .line 72
    :try_start_0
    iget-object v2, v0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v2, v2, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {v2}, Lcom/fusepowered/m1/android/MMWebView;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    iget-object v2, v0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v2, v2, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {v2}, Lcom/fusepowered/m1/android/MMWebView;->setMraidViewableVisible()V

    .line 76
    :goto_0
    monitor-exit v1

    .line 79
    :cond_0
    return-void

    .line 75
    :cond_1
    iget-object v2, v0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v2, v2, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {v2}, Lcom/fusepowered/m1/android/MMWebView;->setMraidViewableHidden()V

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method onPageStarted(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 55
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMAdImpl$BasicWebViewClientListener;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/android/MMAdImpl;

    .line 56
    .local v0, adImpl:Lcom/fusepowered/m1/android/MMAdImpl;
    if-eqz v0, :cond_0

    .line 57
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/m1/android/MMAdImpl;->setClickable(Z)V

    .line 58
    :cond_0
    return-void
.end method
