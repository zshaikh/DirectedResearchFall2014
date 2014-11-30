.class Lmobi/mgeek/TunnyBrowser/gq;
.super Lmobi/mgeek/TunnyBrowser/gg;
.source "SetupWizardActivity.java"


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 518
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/gq;->a:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    .line 519
    invoke-direct {p0, p1, p2}, Lmobi/mgeek/TunnyBrowser/gg;-><init>(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;Landroid/content/Context;)V

    .line 520
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 3

    .prologue
    .line 526
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gq;->b:Landroid/view/View;

    if-nez v0, :cond_0

    .line 527
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/gq;->e()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f030126

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/gq;->b:Landroid/view/View;

    .line 529
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gq;->b:Landroid/view/View;

    return-object v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 543
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gq;->a:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->b(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;)Lmobi/mgeek/TunnyBrowser/ge;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/ge;->a(Z)V

    .line 544
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gq;->a:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->b(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;)Lmobi/mgeek/TunnyBrowser/ge;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e039a

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/ge;->c(I)V

    .line 545
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gq;->a:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->b(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;)Lmobi/mgeek/TunnyBrowser/ge;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/ge;->b(Z)V

    .line 546
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 534
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gq;->a:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->b(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;)Lmobi/mgeek/TunnyBrowser/ge;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/ge;->c()V

    .line 539
    return-void
.end method
