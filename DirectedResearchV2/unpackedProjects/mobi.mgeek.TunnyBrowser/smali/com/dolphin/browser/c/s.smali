.class Lcom/dolphin/browser/c/s;
.super Ljava/lang/Object;
.source "PanelMenuCommand.java"

# interfaces
.implements Lcom/mgeek/android/util/s;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

.field final synthetic b:Z

.field final synthetic c:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

.field final synthetic d:Lcom/dolphin/browser/c/r;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/c/r;Lmobi/mgeek/TunnyBrowser/BrowserSettings;ZLmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/dolphin/browser/c/s;->d:Lcom/dolphin/browser/c/r;

    iput-object p2, p0, Lcom/dolphin/browser/c/s;->a:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    iput-boolean p3, p0, Lcom/dolphin/browser/c/s;->b:Z

    iput-object p4, p0, Lcom/dolphin/browser/c/s;->c:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 224
    iget-object v0, p0, Lcom/dolphin/browser/c/s;->a:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isPrivateBrowsing()Z

    move-result v1

    .line 225
    iget-boolean v0, p0, Lcom/dolphin/browser/c/s;->b:Z

    if-eq v1, v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/dolphin/browser/c/s;->d:Lcom/dolphin/browser/c/r;

    iget-object v2, p0, Lcom/dolphin/browser/c/s;->c:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/c/r;->a(Lcom/dolphin/browser/c/r;ZLandroid/content/Context;)V

    .line 229
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/k/k;

    invoke-static {v1}, Lcom/dolphin/browser/c/r;->a(Z)Lcom/dolphin/browser/k/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/k;->f(Lcom/dolphin/browser/k/l;)V

    .line 233
    :cond_0
    return-void
.end method
