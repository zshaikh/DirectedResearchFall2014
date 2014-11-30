.class Lmobi/mgeek/TunnyBrowser/ez;
.super Ljava/lang/Object;
.source "FindDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/ew;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/ew;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/ez;->a:Lmobi/mgeek/TunnyBrowser/ew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ez;->a:Lmobi/mgeek/TunnyBrowser/ew;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/ew;->b(Lmobi/mgeek/TunnyBrowser/ew;)Lcom/dolphin/browser/core/IWebView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No WebView for FindDialog::onClick"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 60
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ez;->a:Lmobi/mgeek/TunnyBrowser/ew;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/ew;->b(Lmobi/mgeek/TunnyBrowser/ew;)Lcom/dolphin/browser/core/IWebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/IWebView;->findNext(Z)V

    .line 61
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ez;->a:Lmobi/mgeek/TunnyBrowser/ew;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/ew;->c(Lmobi/mgeek/TunnyBrowser/ew;)V

    .line 62
    return-void
.end method
