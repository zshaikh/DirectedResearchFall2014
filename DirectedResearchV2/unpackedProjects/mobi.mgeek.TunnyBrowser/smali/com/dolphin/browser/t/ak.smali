.class Lcom/dolphin/browser/t/ak;
.super Ljava/lang/Object;
.source "TabUIManager.java"

# interfaces
.implements Lcom/dolphin/browser/core/IWebView$SelectTextListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/t/l;

.field private b:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/t/l;)V
    .locals 0

    .prologue
    .line 507
    iput-object p1, p0, Lcom/dolphin/browser/t/ak;->a:Lcom/dolphin/browser/t/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateSelectTextButtons(Lcom/dolphin/browser/core/IWebView;)[Ljava/lang/String;
    .locals 8

    .prologue
    const v7, 0x7f0e0138

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 544
    iget-object v0, p0, Lcom/dolphin/browser/t/ak;->b:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 545
    invoke-static {}, Lcom/dolphin/browser/preload/m;->a()Lcom/dolphin/browser/preload/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/preload/m;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 546
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/dolphin/browser/t/ak;->a:Lcom/dolphin/browser/t/l;

    invoke-static {v1}, Lcom/dolphin/browser/t/l;->d(Lcom/dolphin/browser/t/l;)Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-virtual {v1, v7}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/dolphin/browser/t/ak;->a:Lcom/dolphin/browser/t/l;

    invoke-static {v1}, Lcom/dolphin/browser/t/l;->d(Lcom/dolphin/browser/t/l;)Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e053e

    invoke-virtual {v1, v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/dolphin/browser/t/ak;->a:Lcom/dolphin/browser/t/l;

    invoke-static {v1}, Lcom/dolphin/browser/t/l;->d(Lcom/dolphin/browser/t/l;)Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0580

    invoke-virtual {v1, v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/dolphin/browser/t/ak;->a:Lcom/dolphin/browser/t/l;

    invoke-static {v1}, Lcom/dolphin/browser/t/l;->d(Lcom/dolphin/browser/t/l;)Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0383

    invoke-virtual {v1, v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/dolphin/browser/t/ak;->b:[Ljava/lang/String;

    .line 558
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/t/ak;->b:[Ljava/lang/String;

    return-object v0

    .line 551
    :cond_1
    new-array v0, v6, [Ljava/lang/String;

    iget-object v1, p0, Lcom/dolphin/browser/t/ak;->a:Lcom/dolphin/browser/t/l;

    invoke-static {v1}, Lcom/dolphin/browser/t/l;->d(Lcom/dolphin/browser/t/l;)Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-virtual {v1, v7}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/dolphin/browser/t/ak;->a:Lcom/dolphin/browser/t/l;

    invoke-static {v1}, Lcom/dolphin/browser/t/l;->d(Lcom/dolphin/browser/t/l;)Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e053e

    invoke-virtual {v1, v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/dolphin/browser/t/ak;->a:Lcom/dolphin/browser/t/l;

    invoke-static {v1}, Lcom/dolphin/browser/t/l;->d(Lcom/dolphin/browser/t/l;)Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0580

    invoke-virtual {v1, v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/dolphin/browser/t/ak;->b:[Ljava/lang/String;

    goto :goto_0
.end method

.method public onSelectTextButtonClicked(Lcom/dolphin/browser/core/IWebView;ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 524
    packed-switch p2, :pswitch_data_0

    .line 539
    :goto_0
    :pswitch_0
    return-void

    .line 528
    :pswitch_1
    iget-object v0, p0, Lcom/dolphin/browser/t/ak;->a:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0, p3}, Lcom/dolphin/browser/t/l;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 531
    :pswitch_2
    iget-object v0, p0, Lcom/dolphin/browser/t/ak;->a:Lcom/dolphin/browser/t/l;

    invoke-static {v0}, Lcom/dolphin/browser/t/l;->d(Lcom/dolphin/browser/t/l;)Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/t/ak;->a:Lcom/dolphin/browser/t/l;

    invoke-virtual {v2}, Lcom/dolphin/browser/t/l;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/t/ak;->a:Lcom/dolphin/browser/t/l;

    invoke-virtual {v2}, Lcom/dolphin/browser/t/l;->s()Lcom/dolphin/browser/core/ITab;

    move-result-object v2

    invoke-interface {v2}, Lcom/dolphin/browser/core/ITab;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/dolphin/browser/t/ak;->a:Lcom/dolphin/browser/t/l;

    invoke-static {v3}, Lcom/dolphin/browser/t/l;->d(Lcom/dolphin/browser/t/l;)Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v3

    sget-object v4, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v4, 0x7f0e00e4

    invoke-virtual {v3, v4}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 536
    :pswitch_3
    iget-object v0, p0, Lcom/dolphin/browser/t/ak;->a:Lcom/dolphin/browser/t/l;

    invoke-static {v0, p3}, Lcom/dolphin/browser/t/l;->a(Lcom/dolphin/browser/t/l;Ljava/lang/String;)V

    goto :goto_0

    .line 524
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onSelectTextDone(Lcom/dolphin/browser/core/IWebView;)V
    .locals 0

    .prologue
    .line 519
    return-void
.end method

.method public onSelectTextStarted(Lcom/dolphin/browser/core/IWebView;)V
    .locals 0

    .prologue
    .line 514
    return-void
.end method
