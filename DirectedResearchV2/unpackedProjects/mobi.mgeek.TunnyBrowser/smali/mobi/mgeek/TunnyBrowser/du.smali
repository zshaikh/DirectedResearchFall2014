.class Lmobi/mgeek/TunnyBrowser/du;
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
    .line 97
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/du;->b:Lmobi/mgeek/TunnyBrowser/cz;

    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/du;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/du;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lcom/dolphin/browser/message/g;->a(Landroid/content/Context;)V

    .line 103
    return-void
.end method
