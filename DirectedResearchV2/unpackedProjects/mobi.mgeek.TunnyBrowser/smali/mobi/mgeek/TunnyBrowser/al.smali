.class Lmobi/mgeek/TunnyBrowser/al;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Lcom/mgeek/android/util/s;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lmobi/mgeek/TunnyBrowser/BrowserActivity;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Z)V
    .locals 0

    .prologue
    .line 3917
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/al;->b:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    iput-boolean p2, p0, Lmobi/mgeek/TunnyBrowser/al;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 3921
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/al;->b:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->p(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isPrivateBrowsing()Z

    move-result v0

    .line 3922
    iget-boolean v1, p0, Lmobi/mgeek/TunnyBrowser/al;->a:Z

    if-eq v0, v1, :cond_0

    .line 3925
    if-eqz v0, :cond_1

    .line 3926
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/al;->b:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e04f7

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 3933
    :cond_0
    :goto_0
    return-void

    .line 3929
    :cond_1
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/al;->b:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e04f6

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method
