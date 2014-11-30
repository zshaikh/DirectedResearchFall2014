.class Ldolphin/webkit/k;
.super Landroid/os/Handler;
.source "BackgroundLoader.java"


# instance fields
.field final synthetic a:Ldolphin/webkit/j;


# direct methods
.method constructor <init>(Ldolphin/webkit/j;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Ldolphin/webkit/k;->a:Ldolphin/webkit/j;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 240
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 242
    :pswitch_0
    iget-object v0, p0, Ldolphin/webkit/k;->a:Ldolphin/webkit/j;

    invoke-static {v0}, Ldolphin/webkit/j;->f(Ldolphin/webkit/j;)Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebViewClassic;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :pswitch_1
    const-string v0, "BackgroundLoader"

    const-string v1, "MSG_OPEN_FAKE_VIDEOPLAYER"

    invoke-static {v0, v1}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Ldolphin/webkit/k;->a:Ldolphin/webkit/j;

    invoke-static {v0}, Ldolphin/webkit/j;->a(Ldolphin/webkit/j;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/k;->a:Ldolphin/webkit/j;

    invoke-static {v0}, Ldolphin/webkit/j;->a(Ldolphin/webkit/j;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 247
    invoke-static {}, Ldolphin/webkit/cx;->a()Ldolphin/webkit/cx;

    move-result-object v2

    iget-object v0, p0, Ldolphin/webkit/k;->a:Ldolphin/webkit/j;

    invoke-static {v0}, Ldolphin/webkit/j;->a(Ldolphin/webkit/j;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->l()Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Ldolphin/webkit/k;->a:Ldolphin/webkit/j;

    invoke-static {v0}, Ldolphin/webkit/j;->a(Ldolphin/webkit/j;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/WebViewClassic;

    const-string v4, ""

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v4, v1}, Ldolphin/webkit/cx;->a(Landroid/content/Context;Ldolphin/webkit/WebViewClassic;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
