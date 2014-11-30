.class Lcom/dolphin/browser/t/ai;
.super Ljava/lang/Object;
.source "TabUIManager.java"

# interfaces
.implements Lcom/dolphin/browser/core/IWebView$ContextPanelListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/t/l;

.field private b:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/t/l;)V
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Lcom/dolphin/browser/t/ai;->a:Lcom/dolphin/browser/t/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContextItemClicked(Lcom/dolphin/browser/core/IWebView;I)V
    .locals 3

    .prologue
    .line 465
    packed-switch p2, :pswitch_data_0

    .line 488
    :goto_0
    return-void

    .line 468
    :pswitch_0
    iget-object v0, p0, Lcom/dolphin/browser/t/ai;->a:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->u()Z

    .line 469
    const-string v0, "home"

    const-string v1, "longpressmenu"

    const-string v2, "selecttext"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 474
    :pswitch_1
    iget-object v0, p0, Lcom/dolphin/browser/t/ai;->a:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->v()Z

    .line 475
    const-string v0, "home"

    const-string v1, "longpressmenu"

    const-string v2, "findonpage"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 480
    :pswitch_2
    iget-object v0, p0, Lcom/dolphin/browser/t/ai;->a:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->w()Z

    .line 481
    const-string v0, "home"

    const-string v1, "longpressmenu"

    const-string v2, "closetab"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 465
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateContextPanel(Lcom/dolphin/browser/core/IWebView;)[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 451
    iget-object v0, p0, Lcom/dolphin/browser/t/ai;->b:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 452
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dolphin/browser/t/ai;->a:Lcom/dolphin/browser/t/l;

    invoke-static {v2}, Lcom/dolphin/browser/t/l;->d(Lcom/dolphin/browser/t/l;)Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e0558

    invoke-virtual {v2, v3}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dolphin/browser/t/ai;->a:Lcom/dolphin/browser/t/l;

    invoke-static {v2}, Lcom/dolphin/browser/t/l;->d(Lcom/dolphin/browser/t/l;)Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e0275

    invoke-virtual {v2, v3}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/dolphin/browser/t/ai;->a:Lcom/dolphin/browser/t/l;

    invoke-static {v1}, Lcom/dolphin/browser/t/l;->d(Lcom/dolphin/browser/t/l;)Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e00fc

    invoke-virtual {v1, v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/dolphin/browser/t/ai;->b:[Ljava/lang/String;

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/t/ai;->a:Lcom/dolphin/browser/t/l;

    invoke-static {v0}, Lcom/dolphin/browser/t/l;->d(Lcom/dolphin/browser/t/l;)Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    invoke-virtual {v0, v4}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->b(I)V

    .line 459
    iget-object v0, p0, Lcom/dolphin/browser/t/ai;->b:[Ljava/lang/String;

    return-object v0
.end method
