.class Lmobi/mgeek/TunnyBrowser/gf;
.super Lmobi/mgeek/TunnyBrowser/gg;
.source "SetupWizardActivity.java"


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

.field private b:Landroid/widget/CheckBox;

.field private c:Landroid/widget/CompoundButton;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 678
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/gf;->a:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    .line 679
    invoke-direct {p0, p1, p2}, Lmobi/mgeek/TunnyBrowser/gg;-><init>(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;Landroid/content/Context;)V

    .line 680
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 3

    .prologue
    .line 684
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gf;->d:Landroid/view/View;

    if-nez v0, :cond_0

    .line 685
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/gf;->e()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f03006c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/gf;->d:Landroid/view/View;

    .line 686
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gf;->d:Landroid/view/View;

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0801e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/gf;->b:Landroid/widget/CheckBox;

    .line 687
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gf;->b:Landroid/widget/CheckBox;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/gf;->a:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    invoke-static {v1}, Lcom/dolphin/browser/util/cu;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 688
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gf;->d:Landroid/view/View;

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0801df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/gf;->c:Landroid/widget/CompoundButton;

    .line 689
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gf;->c:Landroid/widget/CompoundButton;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/gf;->a:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    invoke-static {v1}, Lcom/dolphin/browser/util/cu;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 690
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/gf;->c:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/gf;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/Device;->supportMultiTouch(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 692
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gf;->d:Landroid/view/View;

    return-object v0

    .line 690
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gf;->a:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->b(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;)Lmobi/mgeek/TunnyBrowser/ge;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/ge;->d()V

    .line 698
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 704
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gf;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "MIUI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 705
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/gf;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/Browser;->e(Landroid/content/Context;)V

    .line 707
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gf;->a:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->a(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;)Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/gf;->e()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/gf;->c:Landroid/widget/CompoundButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->setShowZoomButton(Landroid/content/Context;Z)V

    .line 708
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gf;->a:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->b(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;)Lmobi/mgeek/TunnyBrowser/ge;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/ge;->c()V

    .line 709
    return-void
.end method
