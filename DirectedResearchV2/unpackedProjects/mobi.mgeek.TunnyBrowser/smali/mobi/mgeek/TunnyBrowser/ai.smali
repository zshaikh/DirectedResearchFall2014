.class Lmobi/mgeek/TunnyBrowser/ai;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Lmobi/mgeek/TunnyBrowser/gx;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    .locals 0

    .prologue
    .line 798
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/ai;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;I)V
    .locals 1

    .prologue
    .line 802
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->isMOTO2_3_4()Z

    move-result v0

    if-nez v0, :cond_0

    .line 803
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ai;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->j(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Lcom/dolphin/browser/titlebar/q;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/dolphin/browser/titlebar/q;->c(I)V

    .line 804
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ai;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Lcom/mgeek/android/ui/MainScreen;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mgeek/android/ui/MainScreen;->a(Landroid/graphics/Canvas;I)V

    .line 806
    :cond_0
    return-void
.end method
