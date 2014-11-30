.class public Lmobi/mgeek/TunnyBrowser/BaseExpandableListActivity;
.super Landroid/app/ExpandableListActivity;
.source "BaseExpandableListActivity.java"


# instance fields
.field private a:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/ExpandableListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 57
    invoke-static {p0}, Lcom/dolphin/browser/util/bj;->a(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 19
    invoke-static {p0}, Lcom/dolphin/browser/util/bj;->a(Landroid/content/Context;)V

    .line 20
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Landroid/app/Activity;)V

    .line 21
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BaseExpandableListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 23
    const/16 v1, 0xa

    const-string v2, "TunnyBrowser"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BaseExpandableListActivity;->a:Landroid/os/PowerManager$WakeLock;

    .line 24
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onPause()V

    .line 43
    invoke-static {p0}, Lcom/dolphin/browser/util/ae;->b(Landroid/content/Context;)V

    .line 45
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BaseExpandableListActivity;->a:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BaseExpandableListActivity;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    :try_start_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BaseExpandableListActivity;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onResume()V

    .line 29
    invoke-static {p0}, Lcom/dolphin/browser/util/ae;->a(Landroid/content/Context;)V

    .line 31
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BaseExpandableListActivity;->a:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isKeepScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    :try_start_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BaseExpandableListActivity;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method
