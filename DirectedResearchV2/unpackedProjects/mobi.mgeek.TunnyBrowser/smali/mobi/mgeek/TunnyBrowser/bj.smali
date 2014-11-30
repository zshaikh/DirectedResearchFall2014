.class Lmobi/mgeek/TunnyBrowser/bj;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Lmobi/mgeek/util/CrashReporter/t;


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lmobi/mgeek/TunnyBrowser/BrowserActivity;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 898
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/bj;->b:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/bj;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 4

    .prologue
    .line 903
    if-eqz p1, :cond_0

    .line 904
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/bj;->b:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->o(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Lcom/dolphin/browser/t/l;

    move-result-object v0

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/bj;->a:Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/t/l;->a(Landroid/os/Bundle;Z)V

    .line 907
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/bj;->b:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->c(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lmobi/mgeek/TunnyBrowser/bk;

    invoke-direct {v1, p0, p1}, Lmobi/mgeek/TunnyBrowser/bk;-><init>(Lmobi/mgeek/TunnyBrowser/bj;Z)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 926
    :cond_0
    return-void
.end method
