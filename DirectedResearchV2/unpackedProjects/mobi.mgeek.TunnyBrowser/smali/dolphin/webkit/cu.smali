.class Ldolphin/webkit/cu;
.super Ljava/lang/Object;
.source "HTML5Audio.java"


# instance fields
.field final synthetic a:Ldolphin/webkit/HTML5Audio;

.field private b:Z

.field private c:Z


# direct methods
.method constructor <init>(Ldolphin/webkit/HTML5Audio;Landroid/os/Looper;Ldolphin/webkit/WebViewClassic;)V
    .locals 2

    .prologue
    .line 102
    iput-object p1, p0, Ldolphin/webkit/cu;->a:Ldolphin/webkit/HTML5Audio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ldolphin/webkit/cv;

    invoke-direct {v1, p0, p1, p3}, Ldolphin/webkit/cv;-><init>(Ldolphin/webkit/cu;Ldolphin/webkit/HTML5Audio;Ldolphin/webkit/WebViewClassic;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 113
    return-void
.end method

.method static synthetic a(Ldolphin/webkit/cu;Z)Z
    .locals 0

    .prologue
    .line 99
    iput-boolean p1, p0, Ldolphin/webkit/cu;->c:Z

    return p1
.end method

.method static synthetic b(Ldolphin/webkit/cu;Z)Z
    .locals 0

    .prologue
    .line 99
    iput-boolean p1, p0, Ldolphin/webkit/cu;->b:Z

    return p1
.end method


# virtual methods
.method declared-synchronized a()Z
    .locals 1

    .prologue
    .line 115
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/cu;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 117
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    goto :goto_0

    .line 121
    :cond_0
    :try_start_2
    iget-boolean v0, p0, Ldolphin/webkit/cu;->c:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
