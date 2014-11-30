.class Lmobi/mgeek/TunnyBrowser/gi;
.super Lmobi/mgeek/TunnyBrowser/gg;
.source "SetupWizardActivity.java"


# instance fields
.field protected b:Lmobi/mgeek/TunnyBrowser/gh;

.field final synthetic c:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;


# direct methods
.method public constructor <init>(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 589
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/gi;->c:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    .line 590
    invoke-direct {p0, p1, p2}, Lmobi/mgeek/TunnyBrowser/gg;-><init>(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;Landroid/content/Context;)V

    .line 591
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 2

    .prologue
    .line 595
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gi;->b:Lmobi/mgeek/TunnyBrowser/gh;

    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/gi;->e()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/gh;->b(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gi;->c:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->b(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;)Lmobi/mgeek/TunnyBrowser/ge;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/ge;->d()V

    .line 601
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 605
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gi;->c:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->c(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 606
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/gi;->b:Lmobi/mgeek/TunnyBrowser/gh;

    invoke-virtual {v1, v0}, Lmobi/mgeek/TunnyBrowser/gh;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 607
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 608
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gi;->c:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->b(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;)Lmobi/mgeek/TunnyBrowser/ge;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/ge;->c()V

    .line 609
    return-void
.end method
