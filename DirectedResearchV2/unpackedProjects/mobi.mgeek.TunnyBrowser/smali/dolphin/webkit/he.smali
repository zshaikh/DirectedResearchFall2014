.class Ldolphin/webkit/he;
.super Ljava/lang/Object;
.source "WebCoreThreadWatchdog.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static f:Ldolphin/webkit/he;


# instance fields
.field private a:Ldolphin/util/j;

.field private b:Landroid/os/Handler;

.field private c:Z

.field private d:Z

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ldolphin/webkit/WebViewClassic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ldolphin/util/j;)V
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/he;->d:Z

    .line 123
    iput-object p1, p0, Ldolphin/webkit/he;->a:Ldolphin/util/j;

    .line 124
    return-void
.end method

.method public static declared-synchronized a(Ldolphin/util/j;)Ldolphin/webkit/he;
    .locals 4

    .prologue
    .line 80
    const-class v1, Ldolphin/webkit/he;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldolphin/webkit/he;->f:Ldolphin/webkit/he;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Ldolphin/webkit/he;

    invoke-direct {v0, p0}, Ldolphin/webkit/he;-><init>(Ldolphin/util/j;)V

    sput-object v0, Ldolphin/webkit/he;->f:Ldolphin/webkit/he;

    .line 82
    new-instance v0, Ljava/lang/Thread;

    sget-object v2, Ldolphin/webkit/he;->f:Ldolphin/webkit/he;

    const-string v3, "WebCoreThreadWatchdog"

    invoke-direct {v0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 84
    :cond_0
    sget-object v0, Ldolphin/webkit/he;->f:Ldolphin/webkit/he;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a()V
    .locals 2

    .prologue
    .line 100
    const-class v1, Ldolphin/webkit/he;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldolphin/webkit/he;->f:Ldolphin/webkit/he;

    if-eqz v0, :cond_0

    .line 101
    sget-object v0, Ldolphin/webkit/he;->f:Ldolphin/webkit/he;

    invoke-direct {v0}, Ldolphin/webkit/he;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :cond_0
    monitor-exit v1

    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ldolphin/webkit/WebViewClassic;)V
    .locals 2

    .prologue
    .line 88
    const-class v1, Ldolphin/webkit/he;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldolphin/webkit/he;->f:Ldolphin/webkit/he;

    if-eqz v0, :cond_0

    .line 89
    sget-object v0, Ldolphin/webkit/he;->f:Ldolphin/webkit/he;

    invoke-direct {v0, p0}, Ldolphin/webkit/he;->c(Ldolphin/webkit/WebViewClassic;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_0
    monitor-exit v1

    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Ldolphin/webkit/he;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Ldolphin/webkit/he;->d:Z

    return v0
.end method

.method public static declared-synchronized b()V
    .locals 2

    .prologue
    .line 106
    const-class v1, Ldolphin/webkit/he;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldolphin/webkit/he;->f:Ldolphin/webkit/he;

    if-eqz v0, :cond_0

    .line 107
    sget-object v0, Ldolphin/webkit/he;->f:Ldolphin/webkit/he;

    invoke-direct {v0}, Ldolphin/webkit/he;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_0
    monitor-exit v1

    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b(Ldolphin/webkit/WebViewClassic;)V
    .locals 2

    .prologue
    .line 94
    const-class v1, Ldolphin/webkit/he;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldolphin/webkit/he;->f:Ldolphin/webkit/he;

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Ldolphin/webkit/he;->f:Ldolphin/webkit/he;

    invoke-direct {v0, p0}, Ldolphin/webkit/he;->d(Ldolphin/webkit/WebViewClassic;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :cond_0
    monitor-exit v1

    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Ldolphin/webkit/he;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Ldolphin/webkit/he;->c:Z

    return v0
.end method

.method static synthetic c(Ldolphin/webkit/he;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Ldolphin/webkit/he;->b:Landroid/os/Handler;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/he;->d:Z

    .line 129
    invoke-direct {p0}, Ldolphin/webkit/he;->d()V

    .line 130
    return-void
.end method

.method private c(Ldolphin/webkit/WebViewClassic;)V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Ldolphin/webkit/he;->e:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/he;->e:Ljava/util/Set;

    .line 115
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/he;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    return-void
.end method

.method static synthetic d(Ldolphin/webkit/he;)Ldolphin/util/j;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Ldolphin/webkit/he;->a:Ldolphin/util/j;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/he;->c:Z

    .line 135
    iget-object v0, p0, Ldolphin/webkit/he;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/he;->b:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 143
    iget-object v0, p0, Ldolphin/webkit/he;->b:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 144
    iget-object v0, p0, Ldolphin/webkit/he;->b:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 145
    iget-object v0, p0, Ldolphin/webkit/he;->a:Ldolphin/util/j;

    const/16 v1, 0xc5

    invoke-virtual {v0, v1}, Ldolphin/util/j;->removeMessages(I)V

    goto :goto_0
.end method

.method private d(Ldolphin/webkit/WebViewClassic;)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Ldolphin/webkit/he;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    .line 149
    iget-boolean v0, p0, Ldolphin/webkit/he;->d:Z

    if-eqz v0, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-boolean v0, p0, Ldolphin/webkit/he;->c:Z

    if-eqz v0, :cond_0

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/he;->c:Z

    .line 160
    iget-object v0, p0, Ldolphin/webkit/he;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Ldolphin/webkit/he;->a:Ldolphin/util/j;

    const/16 v1, 0xc5

    iget-object v2, p0, Ldolphin/webkit/he;->b:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ldolphin/util/j;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 169
    iget-object v0, p0, Ldolphin/webkit/he;->b:Landroid/os/Handler;

    iget-object v1, p0, Ldolphin/webkit/he;->b:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method static synthetic e(Ldolphin/webkit/he;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ldolphin/webkit/he;->c()V

    return-void
.end method

.method static synthetic f(Ldolphin/webkit/he;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Ldolphin/webkit/he;->e:Ljava/util/Set;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 173
    const-class v1, Ldolphin/webkit/he;

    monitor-enter v1

    .line 174
    :try_start_0
    new-instance v0, Ldolphin/webkit/hf;

    invoke-direct {v0, p0}, Ldolphin/webkit/hf;-><init>(Ldolphin/webkit/he;)V

    iput-object v0, p0, Ldolphin/webkit/he;->b:Landroid/os/Handler;

    .line 338
    monitor-exit v1

    .line 339
    return-void

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 343
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 345
    invoke-direct {p0}, Ldolphin/webkit/he;->f()V

    .line 349
    const-class v1, Ldolphin/webkit/he;

    monitor-enter v1

    .line 350
    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/he;->c:Z

    if-nez v0, :cond_0

    .line 351
    iget-object v0, p0, Ldolphin/webkit/he;->a:Ldolphin/util/j;

    const/16 v2, 0xc5

    iget-object v3, p0, Ldolphin/webkit/he;->b:Landroid/os/Handler;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ldolphin/util/j;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 353
    iget-object v0, p0, Ldolphin/webkit/he;->b:Landroid/os/Handler;

    iget-object v2, p0, Ldolphin/webkit/he;->b:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x7530

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 355
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 358
    return-void

    .line 355
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
