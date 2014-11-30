.class Ldolphin/webkit/hr;
.super Ljava/lang/Object;
.source "WebSettingsClassic.java"


# instance fields
.field final synthetic a:Ldolphin/webkit/WebSettingsClassic;

.field private b:Ldolphin/util/j;


# direct methods
.method private constructor <init>(Ldolphin/webkit/WebSettingsClassic;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Ldolphin/webkit/hr;->a:Ldolphin/webkit/WebSettingsClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldolphin/webkit/WebSettingsClassic;Ldolphin/webkit/hq;)V
    .locals 0

    .prologue
    .line 298
    invoke-direct {p0, p1}, Ldolphin/webkit/hr;-><init>(Ldolphin/webkit/WebSettingsClassic;)V

    return-void
.end method

.method private declared-synchronized a()V
    .locals 1

    .prologue
    .line 310
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ldolphin/webkit/hr;->b()V

    .line 313
    new-instance v0, Ldolphin/webkit/hs;

    invoke-direct {v0, p0}, Ldolphin/webkit/hs;-><init>(Ldolphin/webkit/hr;)V

    iput-object v0, p0, Ldolphin/webkit/hr;->b:Ldolphin/util/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    monitor-exit p0

    return-void

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Ldolphin/webkit/hr;)V
    .locals 0

    .prologue
    .line 298
    invoke-direct {p0}, Ldolphin/webkit/hr;->b()V

    return-void
.end method

.method private declared-synchronized a(Landroid/os/Message;)Z
    .locals 1

    .prologue
    .line 370
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/hr;->b:Ldolphin/util/j;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Ldolphin/webkit/hr;->b:Ldolphin/util/j;

    invoke-virtual {v0, p1}, Ldolphin/util/j;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    const/4 v0, 0x1

    .line 374
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 370
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Ldolphin/webkit/hr;Landroid/os/Message;)Z
    .locals 1

    .prologue
    .line 298
    invoke-direct {p0, p1}, Ldolphin/webkit/hr;->a(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 351
    iget-object v1, p0, Ldolphin/webkit/hr;->a:Ldolphin/webkit/WebSettingsClassic;

    monitor-enter v1

    .line 352
    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/hr;->a:Ldolphin/webkit/WebSettingsClassic;

    # getter for: Ldolphin/webkit/WebSettingsClassic;->mRenderPriority:Ldolphin/webkit/WebSettings$RenderPriority;
    invoke-static {v0}, Ldolphin/webkit/WebSettingsClassic;->access$700(Ldolphin/webkit/WebSettingsClassic;)Ldolphin/webkit/WebSettings$RenderPriority;

    move-result-object v0

    sget-object v2, Ldolphin/webkit/WebSettings$RenderPriority;->NORMAL:Ldolphin/webkit/WebSettings$RenderPriority;

    if-ne v0, v2, :cond_1

    .line 353
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 363
    :cond_0
    :goto_0
    monitor-exit v1

    .line 364
    return-void

    .line 355
    :cond_1
    iget-object v0, p0, Ldolphin/webkit/hr;->a:Ldolphin/webkit/WebSettingsClassic;

    # getter for: Ldolphin/webkit/WebSettingsClassic;->mRenderPriority:Ldolphin/webkit/WebSettings$RenderPriority;
    invoke-static {v0}, Ldolphin/webkit/WebSettingsClassic;->access$700(Ldolphin/webkit/WebSettingsClassic;)Ldolphin/webkit/WebSettings$RenderPriority;

    move-result-object v0

    sget-object v2, Ldolphin/webkit/WebSettings$RenderPriority;->HIGH:Ldolphin/webkit/WebSettings$RenderPriority;

    if-ne v0, v2, :cond_2

    .line 356
    const/4 v0, -0x1

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_0

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 359
    :cond_2
    :try_start_1
    iget-object v0, p0, Ldolphin/webkit/hr;->a:Ldolphin/webkit/WebSettingsClassic;

    # getter for: Ldolphin/webkit/WebSettingsClassic;->mRenderPriority:Ldolphin/webkit/WebSettings$RenderPriority;
    invoke-static {v0}, Ldolphin/webkit/WebSettingsClassic;->access$700(Ldolphin/webkit/WebSettingsClassic;)Ldolphin/webkit/WebSettings$RenderPriority;

    move-result-object v0

    sget-object v2, Ldolphin/webkit/WebSettings$RenderPriority;->LOW:Ldolphin/webkit/WebSettings$RenderPriority;

    if-ne v0, v2, :cond_0

    .line 360
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static synthetic b(Ldolphin/webkit/hr;)V
    .locals 0

    .prologue
    .line 298
    invoke-direct {p0}, Ldolphin/webkit/hr;->a()V

    return-void
.end method
