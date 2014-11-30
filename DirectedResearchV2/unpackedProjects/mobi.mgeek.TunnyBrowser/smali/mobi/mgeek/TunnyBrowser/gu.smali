.class Lmobi/mgeek/TunnyBrowser/gu;
.super Landroid/os/Handler;
.source "ShareActivity.java"


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/ShareActivity;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/ShareActivity;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/gu;->a:Lmobi/mgeek/TunnyBrowser/ShareActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 291
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_0

    .line 292
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/gu;->a:Lmobi/mgeek/TunnyBrowser/ShareActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lmobi/mgeek/TunnyBrowser/ShareActivity;->a(Lmobi/mgeek/TunnyBrowser/ShareActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 293
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gu;->a:Lmobi/mgeek/TunnyBrowser/ShareActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/ShareActivity;->b(Lmobi/mgeek/TunnyBrowser/ShareActivity;)Ljava/lang/Object;

    move-result-object v1

    .line 294
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 296
    monitor-exit v1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 298
    :catch_0
    move-exception v0

    goto :goto_0
.end method
