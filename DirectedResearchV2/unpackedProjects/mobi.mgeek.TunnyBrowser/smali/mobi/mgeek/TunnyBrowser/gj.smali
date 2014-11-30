.class Lmobi/mgeek/TunnyBrowser/gj;
.super Lmobi/mgeek/TunnyBrowser/gg;
.source "SetupWizardActivity.java"


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 552
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/gj;->a:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    .line 553
    invoke-direct {p0, p1, p2}, Lmobi/mgeek/TunnyBrowser/gg;-><init>(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;Landroid/content/Context;)V

    .line 554
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 3

    .prologue
    .line 558
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gj;->b:Landroid/view/View;

    if-nez v0, :cond_0

    .line 559
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/gj;->e()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f030109

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/gj;->b:Landroid/view/View;

    .line 561
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gj;->b:Landroid/view/View;

    return-object v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 566
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/gg;->b()V

    .line 567
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gj;->a:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->b(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;)Lmobi/mgeek/TunnyBrowser/ge;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0002

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/ge;->c(I)V

    .line 568
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gj;->a:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->b(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;)Lmobi/mgeek/TunnyBrowser/ge;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/ge;->d()V

    .line 573
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 577
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/gj;->e()Landroid/content/Context;

    move-result-object v0

    .line 578
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/gj;->a:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    invoke-static {v1}, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->a(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;)Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Z)V

    .line 579
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->C()V

    .line 580
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->t()V

    .line 581
    invoke-static {}, Lcom/dolphin/browser/preload/m;->a()Lcom/dolphin/browser/preload/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/preload/m;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->loadUrl(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 582
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gj;->a:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->finish()V

    .line 583
    return-void
.end method
