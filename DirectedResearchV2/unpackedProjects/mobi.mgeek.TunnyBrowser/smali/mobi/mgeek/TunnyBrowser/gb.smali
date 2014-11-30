.class Lmobi/mgeek/TunnyBrowser/gb;
.super Lmobi/mgeek/TunnyBrowser/gg;
.source "SetupWizardActivity.java"


# instance fields
.field protected a:Landroid/widget/CheckBox;

.field protected b:Landroid/widget/CheckBox;

.field protected c:Landroid/widget/CheckBox;

.field protected d:Landroid/widget/CheckBox;

.field final synthetic e:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 719
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/gb;->e:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    .line 720
    invoke-direct {p0, p1, p2}, Lmobi/mgeek/TunnyBrowser/gg;-><init>(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;Landroid/content/Context;)V

    .line 721
    return-void
.end method

.method static synthetic a(Lmobi/mgeek/TunnyBrowser/gb;)V
    .locals 0

    .prologue
    .line 712
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/gb;->f()V

    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 790
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getVersionCode()I

    move-result v0

    .line 791
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getChannelName()Ljava/lang/String;

    move-result-object v1

    .line 792
    const-string v2, "activateaftwiz"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gb;->e:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->finish()V

    .line 794
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 3

    .prologue
    .line 725
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gb;->g:Landroid/view/View;

    if-nez v0, :cond_0

    .line 726
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/gb;->e()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f0300e7

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 727
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080316

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/gb;->a:Landroid/widget/CheckBox;

    .line 729
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gb;->a:Landroid/widget/CheckBox;

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/gb;->e:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 730
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080318

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/gb;->b:Landroid/widget/CheckBox;

    .line 732
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gb;->b:Landroid/widget/CheckBox;

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/gb;->e:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 733
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080317

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/gb;->d:Landroid/widget/CheckBox;

    .line 735
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gb;->d:Landroid/widget/CheckBox;

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/gb;->e:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 736
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080319

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/gb;->c:Landroid/widget/CheckBox;

    .line 737
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gb;->c:Landroid/widget/CheckBox;

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/gb;->e:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 738
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gb;->c:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 739
    iput-object v1, p0, Lmobi/mgeek/TunnyBrowser/gb;->g:Landroid/view/View;

    .line 741
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gb;->g:Landroid/view/View;

    return-object v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 746
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/gg;->b()V

    .line 747
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gb;->e:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->b(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;)Lmobi/mgeek/TunnyBrowser/ge;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/ge;->a(Z)V

    .line 748
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gb;->e:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->b(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;)Lmobi/mgeek/TunnyBrowser/ge;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0277

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/ge;->c(I)V

    .line 749
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gb;->e:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->b(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;)Lmobi/mgeek/TunnyBrowser/ge;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/ge;->d()V

    .line 754
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 758
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 760
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/gb;->a:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 761
    new-instance v1, Lcom/dolphin/browser/bookmarks/TucuxiBookmarkImporter;

    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/gb;->e()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dolphin/browser/bookmarks/TucuxiBookmarkImporter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    :cond_0
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/gb;->b:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 765
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/gb;->e()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/bookmarks/o;->a(Landroid/content/Context;)Lcom/dolphin/browser/bookmarks/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    :cond_1
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/gb;->d:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 769
    new-instance v1, Lcom/dolphin/browser/bookmarks/m;

    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/gb;->e()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dolphin/browser/bookmarks/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 772
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 773
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/gb;->e()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lmobi/mgeek/TunnyBrowser/gc;

    invoke-direct {v2, p0}, Lmobi/mgeek/TunnyBrowser/gc;-><init>(Lmobi/mgeek/TunnyBrowser/gb;)V

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/bookmarks/d;->a(Landroid/content/Context;Lcom/dolphin/browser/bookmarks/k;Ljava/util/List;)V

    .line 787
    :goto_0
    return-void

    .line 785
    :cond_3
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/gb;->f()V

    goto :goto_0
.end method
