.class abstract Lmobi/mgeek/TunnyBrowser/gg;
.super Ljava/lang/Object;
.source "SetupWizardActivity.java"


# instance fields
.field private a:Landroid/content/Context;

.field final synthetic f:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;


# direct methods
.method public constructor <init>(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 499
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/gg;->f:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/gg;->a:Landroid/content/Context;

    .line 501
    return-void
.end method


# virtual methods
.method public abstract a()Landroid/view/View;
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 509
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gg;->f:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->b(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;)Lmobi/mgeek/TunnyBrowser/ge;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0088

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/ge;->b(I)V

    .line 510
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gg;->f:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->b(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;)Lmobi/mgeek/TunnyBrowser/ge;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmobi/mgeek/TunnyBrowser/ge;->a(Z)V

    .line 511
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gg;->f:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->b(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;)Lmobi/mgeek/TunnyBrowser/ge;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e039a

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/ge;->c(I)V

    .line 512
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gg;->f:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->b(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;)Lmobi/mgeek/TunnyBrowser/ge;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmobi/mgeek/TunnyBrowser/ge;->b(Z)V

    .line 513
    return-void
.end method

.method public abstract c()V
.end method

.method public abstract d()V
.end method

.method public e()Landroid/content/Context;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gg;->a:Landroid/content/Context;

    return-object v0
.end method
