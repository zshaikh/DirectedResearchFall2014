.class Lmobi/mgeek/TunnyBrowser/gk;
.super Lmobi/mgeek/TunnyBrowser/ge;
.source "SetupWizardActivity.java"


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;


# direct methods
.method public constructor <init>(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 476
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/gk;->a:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    .line 477
    invoke-direct {p0, p1, p2}, Lmobi/mgeek/TunnyBrowser/ge;-><init>(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;Landroid/content/Context;)V

    .line 478
    invoke-virtual {p0, p2}, Lmobi/mgeek/TunnyBrowser/gk;->a(Landroid/content/Context;)V

    .line 479
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 483
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gk;->c:Ljava/util/List;

    new-instance v1, Lmobi/mgeek/TunnyBrowser/gq;

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/gk;->a:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/gk;->b:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lmobi/mgeek/TunnyBrowser/gq;-><init>(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    invoke-static {}, Lcom/dolphin/browser/util/Device;->isFroyoOrHigher()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gk;->c:Ljava/util/List;

    new-instance v1, Lmobi/mgeek/TunnyBrowser/ga;

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/gk;->a:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/gk;->b:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lmobi/mgeek/TunnyBrowser/ga;-><init>(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gk;->c:Ljava/util/List;

    new-instance v1, Lmobi/mgeek/TunnyBrowser/fy;

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/gk;->a:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/gk;->b:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lmobi/mgeek/TunnyBrowser/fy;-><init>(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gk;->c:Ljava/util/List;

    new-instance v1, Lmobi/mgeek/TunnyBrowser/gp;

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/gk;->a:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/gk;->b:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lmobi/mgeek/TunnyBrowser/gp;-><init>(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gk;->c:Ljava/util/List;

    new-instance v1, Lmobi/mgeek/TunnyBrowser/go;

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/gk;->a:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/gk;->b:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lmobi/mgeek/TunnyBrowser/go;-><init>(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gk;->c:Ljava/util/List;

    new-instance v1, Lmobi/mgeek/TunnyBrowser/gf;

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/gk;->a:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/gk;->b:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lmobi/mgeek/TunnyBrowser/gf;-><init>(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gk;->c:Ljava/util/List;

    new-instance v1, Lmobi/mgeek/TunnyBrowser/gb;

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/gk;->a:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/gk;->b:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lmobi/mgeek/TunnyBrowser/gb;-><init>(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    return-void
.end method
