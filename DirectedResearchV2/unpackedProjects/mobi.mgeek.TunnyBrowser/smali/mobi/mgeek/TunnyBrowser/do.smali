.class Lmobi/mgeek/TunnyBrowser/do;
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
    .line 312
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/do;->b:Lmobi/mgeek/TunnyBrowser/cz;

    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/do;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/do;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lcom/dolphin/browser/webkit/management/a;->a(Landroid/content/Context;)V

    .line 317
    return-void
.end method
