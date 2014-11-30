.class Ldolphin/webkit/hh;
.super Ldolphin/webkit/hi;
.source "WebCoreThreadWatchdog.java"


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Ldolphin/webkit/hf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 258
    const-class v0, Ldolphin/webkit/he;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ldolphin/webkit/hh;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ldolphin/webkit/hf;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Ldolphin/webkit/hh;->b:Ldolphin/webkit/hf;

    invoke-direct {p0, p1}, Ldolphin/webkit/hi;-><init>(Ldolphin/webkit/hf;)V

    return-void
.end method


# virtual methods
.method public onContinueWait()V
    .locals 4

    .prologue
    .line 277
    iget-object v0, p0, Ldolphin/webkit/hh;->b:Ldolphin/webkit/hf;

    iget-object v1, p0, Ldolphin/webkit/hh;->b:Ldolphin/webkit/hf;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Ldolphin/webkit/hf;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Ldolphin/webkit/hf;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 279
    return-void
.end method

.method public onStopWait()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Ldolphin/webkit/hh;->b:Ldolphin/webkit/hf;

    iget-object v0, v0, Ldolphin/webkit/hf;->a:Ldolphin/webkit/he;

    invoke-static {v0}, Ldolphin/webkit/he;->e(Ldolphin/webkit/he;)V

    .line 287
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 263
    sget-boolean v0, Ldolphin/webkit/hh;->a:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 264
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/hh;->c:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0, p0}, Ldolphin/webkit/WebViewProvider;->onWebCoreThreadHang(Ldolphin/webkit/WebView$WaitPolicyListener;)V

    .line 265
    return-void
.end method
