.class Lmobi/mgeek/TunnyBrowser/bl;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    .locals 0

    .prologue
    .line 955
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/bl;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 959
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/bl;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->l(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    .line 960
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/bl;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/bl;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Landroid/content/Intent;)Z

    .line 961
    return-void
.end method
