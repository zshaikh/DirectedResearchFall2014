.class Lmobi/mgeek/TunnyBrowser/dm;
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
    .line 89
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/dm;->b:Lmobi/mgeek/TunnyBrowser/cz;

    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/dm;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 93
    invoke-static {}, Lcom/dolphin/browser/m/d;->a()Lcom/dolphin/browser/m/d;

    move-result-object v0

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/dm;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/m/d;->a(Landroid/content/Context;)V

    .line 94
    return-void
.end method
