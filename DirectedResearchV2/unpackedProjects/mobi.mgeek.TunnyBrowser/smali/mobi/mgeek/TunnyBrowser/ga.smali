.class Lmobi/mgeek/TunnyBrowser/ga;
.super Lmobi/mgeek/TunnyBrowser/gi;
.source "SetupWizardActivity.java"


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;


# direct methods
.method public constructor <init>(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 613
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/ga;->a:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    .line 614
    invoke-direct {p0, p1, p2}, Lmobi/mgeek/TunnyBrowser/gi;-><init>(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;Landroid/content/Context;)V

    .line 615
    new-instance v0, Lmobi/mgeek/TunnyBrowser/gd;

    invoke-static {p1}, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->c(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "plugin_state"

    sget-object v3, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2, v3}, Lmobi/mgeek/TunnyBrowser/gd;-><init>(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)V

    .line 617
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0281

    invoke-virtual {v0, p2, v1}, Lmobi/mgeek/TunnyBrowser/gd;->c(Landroid/content/Context;I)V

    .line 618
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0282

    invoke-virtual {v0, p2, v1}, Lmobi/mgeek/TunnyBrowser/gd;->d(Landroid/content/Context;I)V

    .line 619
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e0043

    invoke-virtual {p1, v3}, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e03c6

    invoke-virtual {p1, v3}, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e038d

    invoke-virtual {p1, v3}, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/gd;->a([Ljava/lang/CharSequence;)V

    .line 623
    sget-object v1, Lcom/dolphin/browser/n/a;->b:Lmobi/mgeek/TunnyBrowser/R$array;

    const v1, 0x7f070029

    invoke-virtual {v0, p2, v1}, Lmobi/mgeek/TunnyBrowser/gd;->b(Landroid/content/Context;I)V

    .line 624
    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/ga;->b:Lmobi/mgeek/TunnyBrowser/gh;

    .line 625
    return-void
.end method
