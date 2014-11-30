.class Lmobi/mgeek/TunnyBrowser/dd;
.super Ljava/lang/Object;
.source "DeferredTaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

.field final synthetic c:Lmobi/mgeek/TunnyBrowser/cz;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/cz;Landroid/content/Intent;Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/dd;->c:Lmobi/mgeek/TunnyBrowser/cz;

    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/dd;->a:Landroid/content/Intent;

    iput-object p3, p0, Lmobi/mgeek/TunnyBrowser/dd;->b:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 210
    invoke-static {}, Lcom/dolphin/browser/update/f;->a()Lcom/dolphin/browser/update/f;

    move-result-object v1

    .line 212
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/dd;->a:Landroid/content/Intent;

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/dd;->b:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v1, v0, v2}, Lcom/dolphin/browser/update/f;->a(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 214
    const/4 v0, 0x0

    .line 215
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/dd;->a:Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 216
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/dd;->a:Landroid/content/Intent;

    const-string v2, "pending_intent"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 220
    :cond_0
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/dd;->b:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v1, v0, v2}, Lcom/dolphin/browser/update/f;->a(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 222
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/dd;->c:Lmobi/mgeek/TunnyBrowser/cz;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/cz;->d(Lmobi/mgeek/TunnyBrowser/cz;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lmobi/mgeek/TunnyBrowser/de;

    invoke-direct {v1, p0}, Lmobi/mgeek/TunnyBrowser/de;-><init>(Lmobi/mgeek/TunnyBrowser/dd;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 234
    :cond_1
    return-void
.end method
