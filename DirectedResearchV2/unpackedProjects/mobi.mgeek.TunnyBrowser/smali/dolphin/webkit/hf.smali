.class Ldolphin/webkit/hf;
.super Landroid/os/Handler;
.source "WebCoreThreadWatchdog.java"


# instance fields
.field final synthetic a:Ldolphin/webkit/he;


# direct methods
.method constructor <init>(Ldolphin/webkit/he;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Ldolphin/webkit/hf;->a:Ldolphin/webkit/he;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 328
    return-void
.end method

.method private a(Ldolphin/webkit/hi;)Z
    .locals 6

    .prologue
    .line 307
    const/4 v1, 0x0

    .line 308
    const-class v2, Ldolphin/webkit/he;

    monitor-enter v2

    .line 309
    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/hf;->a:Ldolphin/webkit/he;

    invoke-static {v0}, Ldolphin/webkit/he;->f(Ldolphin/webkit/he;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 312
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/WebViewClassic;

    .line 314
    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->e()Landroid/view/View;

    move-result-object v4

    .line 316
    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Landroid/support/j;->a(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 318
    invoke-virtual {p1, v0}, Ldolphin/webkit/hi;->a(Ldolphin/webkit/WebViewProvider;)Ldolphin/webkit/hi;

    .line 319
    invoke-virtual {v4, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result v0

    .line 324
    :goto_0
    monitor-exit v2

    return v0

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    const-wide/16 v3, 0x3a98

    const/16 v2, 0x66

    const/16 v1, 0x65

    .line 178
    iget-object v0, p0, Ldolphin/webkit/hf;->a:Ldolphin/webkit/he;

    invoke-static {v0}, Ldolphin/webkit/he;->a(Ldolphin/webkit/he;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 185
    :pswitch_0
    const-class v1, Ldolphin/webkit/he;

    monitor-enter v1

    .line 186
    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/hf;->a:Ldolphin/webkit/he;

    invoke-static {v0}, Ldolphin/webkit/he;->b(Ldolphin/webkit/he;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 187
    monitor-exit v1

    goto :goto_0

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 194
    :cond_2
    const/16 v0, 0x65

    :try_start_1
    invoke-virtual {p0, v0}, Ldolphin/webkit/hf;->removeMessages(I)V

    .line 195
    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Ldolphin/webkit/hf;->removeMessages(I)V

    .line 196
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Ldolphin/webkit/hf;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x7530

    invoke-virtual {p0, v0, v2, v3}, Ldolphin/webkit/hf;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 197
    iget-object v0, p0, Ldolphin/webkit/hf;->a:Ldolphin/webkit/he;

    invoke-static {v0}, Ldolphin/webkit/he;->d(Ldolphin/webkit/he;)Ldolphin/util/j;

    move-result-object v0

    iget-object v2, p0, Ldolphin/webkit/hf;->a:Ldolphin/webkit/he;

    invoke-static {v2}, Ldolphin/webkit/he;->d(Ldolphin/webkit/he;)Ldolphin/util/j;

    move-result-object v2

    const/16 v3, 0xc5

    iget-object v4, p0, Ldolphin/webkit/hf;->a:Ldolphin/webkit/he;

    invoke-static {v4}, Ldolphin/webkit/he;->c(Ldolphin/webkit/he;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ldolphin/util/j;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x2710

    invoke-virtual {v0, v2, v3, v4}, Ldolphin/util/j;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 201
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 209
    :pswitch_1
    new-instance v0, Ldolphin/webkit/hg;

    invoke-direct {v0, p0}, Ldolphin/webkit/hg;-><init>(Ldolphin/webkit/hf;)V

    invoke-direct {p0, v0}, Ldolphin/webkit/hf;->a(Ldolphin/webkit/hi;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    invoke-virtual {p0, v1}, Ldolphin/webkit/hf;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4}, Ldolphin/webkit/hf;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 258
    :pswitch_2
    new-instance v0, Ldolphin/webkit/hh;

    invoke-direct {v0, p0}, Ldolphin/webkit/hh;-><init>(Ldolphin/webkit/hf;)V

    invoke-direct {p0, v0}, Ldolphin/webkit/hf;->a(Ldolphin/webkit/hi;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    invoke-virtual {p0, v2}, Ldolphin/webkit/hf;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4}, Ldolphin/webkit/hf;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 183
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
