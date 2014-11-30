.class Lmobi/mgeek/TunnyBrowser/dx;
.super Ljava/lang/Object;
.source "DeferredTaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

.field final synthetic b:Lmobi/mgeek/TunnyBrowser/cz;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/cz;Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/dx;->b:Lmobi/mgeek/TunnyBrowser/cz;

    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/dx;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/dx;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-static {}, Lcom/dolphin/browser/voice/command/j;->a()Lcom/dolphin/browser/voice/command/j;

    move-result-object v0

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/dx;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    new-instance v2, Lmobi/mgeek/TunnyBrowser/dy;

    invoke-direct {v2, p0}, Lmobi/mgeek/TunnyBrowser/dy;-><init>(Lmobi/mgeek/TunnyBrowser/dx;)V

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/voice/command/j;->a(Landroid/content/Context;Lcom/dolphin/browser/voice/command/l;)V

    .line 141
    :cond_0
    return-void
.end method
