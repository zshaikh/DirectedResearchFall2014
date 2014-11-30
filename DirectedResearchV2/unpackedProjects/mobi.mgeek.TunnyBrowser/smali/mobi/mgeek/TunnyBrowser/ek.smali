.class Lmobi/mgeek/TunnyBrowser/ek;
.super Ljava/lang/Object;
.source "ExitManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lmobi/mgeek/TunnyBrowser/ei;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/ei;ZZ)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/ek;->c:Lmobi/mgeek/TunnyBrowser/ei;

    iput-boolean p2, p0, Lmobi/mgeek/TunnyBrowser/ek;->a:Z

    iput-boolean p3, p0, Lmobi/mgeek/TunnyBrowser/ek;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 372
    :try_start_0
    const-string v2, "exitApp"

    invoke-static {v2}, Lcom/dolphin/browser/util/Log;->i(Ljava/lang/String;)I

    .line 373
    const/4 v2, 0x0

    invoke-static {v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    .line 374
    const/4 v2, 0x0

    invoke-static {v2}, Lmobi/mgeek/TunnyBrowser/ei;->a(Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 375
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/ek;->c:Lmobi/mgeek/TunnyBrowser/ei;

    invoke-static {v2}, Lmobi/mgeek/TunnyBrowser/ei;->a(Lmobi/mgeek/TunnyBrowser/ei;)Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v2

    .line 376
    invoke-static {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->g(Landroid/content/Context;)V

    .line 377
    invoke-static {}, Lcom/dolphin/browser/core/CookieManager;->getInstance()Lcom/dolphin/browser/core/CookieManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dolphin/browser/core/CookieManager;->removeSessionCookie()V

    .line 379
    iget-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/ek;->a:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/ek;->c:Lmobi/mgeek/TunnyBrowser/ei;

    invoke-static {v3}, Lmobi/mgeek/TunnyBrowser/ei;->b(Lmobi/mgeek/TunnyBrowser/ei;)Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->Q()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 380
    :cond_0
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ek;->c:Lmobi/mgeek/TunnyBrowser/ei;

    invoke-static {v1}, Lmobi/mgeek/TunnyBrowser/ei;->b(Lmobi/mgeek/TunnyBrowser/ei;)Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->d(Landroid/content/Context;)V

    move v1, v0

    .line 386
    :goto_0
    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/ek;->c:Lmobi/mgeek/TunnyBrowser/ei;

    invoke-static {v3}, Lmobi/mgeek/TunnyBrowser/ei;->b(Lmobi/mgeek/TunnyBrowser/ei;)Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v3

    .line 387
    iget-boolean v4, p0, Lmobi/mgeek/TunnyBrowser/ek;->b:Z

    if-eqz v4, :cond_1

    .line 388
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->d(Landroid/content/Context;Z)V

    .line 391
    :cond_1
    invoke-virtual {v3}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->N()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 392
    invoke-virtual {v3, v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->h(Landroid/content/Context;)V

    move v1, v0

    .line 396
    :cond_2
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->Z()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_7

    .line 400
    :goto_1
    if-eqz v0, :cond_3

    .line 402
    const-wide/16 v0, 0xbb8

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 410
    :cond_3
    :goto_2
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->f()Z

    move-result v0

    if-nez v0, :cond_4

    .line 411
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 415
    :cond_4
    :goto_3
    return-void

    .line 383
    :cond_5
    :try_start_2
    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/ek;->c:Lmobi/mgeek/TunnyBrowser/ei;

    invoke-static {v3}, Lmobi/mgeek/TunnyBrowser/ei;->b(Lmobi/mgeek/TunnyBrowser/ei;)Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v3

    invoke-virtual {v3, v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->s(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 406
    :catch_0
    move-exception v0

    .line 407
    :try_start_3
    const-string v1, "exitApp"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 410
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->f()Z

    move-result v0

    if-nez v0, :cond_4

    .line 411
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_3

    .line 410
    :catchall_0
    move-exception v0

    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->f()Z

    move-result v1

    if-nez v1, :cond_6

    .line 411
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    :cond_6
    throw v0

    .line 403
    :catch_1
    move-exception v0

    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_1
.end method
