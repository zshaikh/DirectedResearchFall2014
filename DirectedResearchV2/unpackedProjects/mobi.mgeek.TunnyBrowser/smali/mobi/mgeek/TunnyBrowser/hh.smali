.class public Lmobi/mgeek/TunnyBrowser/hh;
.super Ljava/lang/Object;
.source "SplashController.java"


# instance fields
.field a:Z

.field b:Ljava/lang/Runnable;

.field final synthetic c:Lmobi/mgeek/TunnyBrowser/hf;

.field private d:Ljava/lang/Object;

.field private e:I


# direct methods
.method private constructor <init>(Lmobi/mgeek/TunnyBrowser/hf;)V
    .locals 1

    .prologue
    .line 81
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/hh;->c:Lmobi/mgeek/TunnyBrowser/hf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/hh;->d:Ljava/lang/Object;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/hh;->a:Z

    .line 74
    new-instance v0, Lmobi/mgeek/TunnyBrowser/hi;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/hi;-><init>(Lmobi/mgeek/TunnyBrowser/hh;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/hh;->b:Ljava/lang/Runnable;

    .line 83
    return-void
.end method

.method synthetic constructor <init>(Lmobi/mgeek/TunnyBrowser/hf;Lmobi/mgeek/TunnyBrowser/hg;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/hh;-><init>(Lmobi/mgeek/TunnyBrowser/hf;)V

    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 105
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/hh;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmobi/mgeek/TunnyBrowser/hh;->e:I

    if-nez v0, :cond_0

    .line 106
    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/hh;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 107
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/hh;->c:Lmobi/mgeek/TunnyBrowser/hf;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/hf;->a(Lmobi/mgeek/TunnyBrowser/hf;)V

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/hh;->a:Z

    .line 110
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 86
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/hh;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 87
    :try_start_0
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/hh;->d()V

    .line 88
    monitor-exit v1

    .line 89
    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 119
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/hh;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 120
    :try_start_0
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/hh;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmobi/mgeek/TunnyBrowser/hh;->e:I

    if-nez v0, :cond_0

    .line 121
    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/hh;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 122
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/hh;->c:Lmobi/mgeek/TunnyBrowser/hf;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/hf;->b(Lmobi/mgeek/TunnyBrowser/hf;)V

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/hh;->a:Z

    .line 125
    :cond_0
    monitor-exit v1

    .line 126
    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 129
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/hh;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 130
    :try_start_0
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/hh;->a:Z

    monitor-exit v1

    return v0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 136
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/hh;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 137
    :try_start_0
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/hh;->a:Z

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/hh;->c:Lmobi/mgeek/TunnyBrowser/hf;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/hf;->b(Lmobi/mgeek/TunnyBrowser/hf;)V

    .line 140
    :cond_0
    monitor-exit v1

    .line 141
    return-void

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
