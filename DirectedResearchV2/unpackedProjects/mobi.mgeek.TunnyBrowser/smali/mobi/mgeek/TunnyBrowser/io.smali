.class Lmobi/mgeek/TunnyBrowser/io;
.super Ljava/lang/Object;
.source "WebViewCallbackHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/ib;

.field private b:Lcom/dolphin/browser/core/IWebView;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/ib;Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 503
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/io;->a:Lmobi/mgeek/TunnyBrowser/ib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 505
    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/io;->b:Lcom/dolphin/browser/core/IWebView;

    .line 506
    iput-object p3, p0, Lmobi/mgeek/TunnyBrowser/io;->c:Ljava/lang/String;

    .line 507
    iput p4, p0, Lmobi/mgeek/TunnyBrowser/io;->d:I

    .line 508
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 513
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/io;->b:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/io;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/io;->b:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/io;->b:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->getProgress()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/dolphin/browser/share/box/p;->a()Lcom/dolphin/browser/share/box/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/share/box/p;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/io;->b:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->copyBackForwardList2()Lcom/dolphin/browser/core/IWebBackForwardList;

    move-result-object v0

    .line 516
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 517
    :goto_0
    iget v1, p0, Lmobi/mgeek/TunnyBrowser/io;->d:I

    if-ne v1, v0, :cond_0

    .line 518
    invoke-static {}, Lcom/dolphin/browser/share/box/p;->a()Lcom/dolphin/browser/share/box/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/share/box/p;->b()I

    move-result v0

    .line 519
    invoke-static {}, Lcom/dolphin/browser/share/box/p;->a()Lcom/dolphin/browser/share/box/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/share/box/p;->c()I

    move-result v1

    .line 520
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/io;->b:Lcom/dolphin/browser/core/IWebView;

    invoke-static {v2, v0, v1}, Lcom/dolphin/browser/util/dt;->a(Lcom/dolphin/browser/core/IWebView;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 522
    invoke-static {}, Lcom/dolphin/browser/share/box/p;->a()Lcom/dolphin/browser/share/box/p;

    move-result-object v1

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/io;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/dolphin/browser/share/box/p;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 525
    :cond_0
    return-void

    .line 516
    :cond_1
    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebBackForwardList;->getSize()I

    move-result v0

    goto :goto_0
.end method
