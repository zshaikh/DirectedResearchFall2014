.class Lmobi/mgeek/TunnyBrowser/go;
.super Lmobi/mgeek/TunnyBrowser/gi;
.source "SetupWizardActivity.java"


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;


# direct methods
.method public constructor <init>(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 660
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/go;->a:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    .line 661
    invoke-direct {p0, p1, p2}, Lmobi/mgeek/TunnyBrowser/gi;-><init>(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;Landroid/content/Context;)V

    .line 662
    new-instance v0, Lmobi/mgeek/TunnyBrowser/gd;

    invoke-static {p1}, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->c(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "user_agent"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lmobi/mgeek/TunnyBrowser/gd;-><init>(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)V

    .line 665
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0490

    invoke-virtual {v0, p2, v1}, Lmobi/mgeek/TunnyBrowser/gd;->c(Landroid/content/Context;I)V

    .line 666
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e04ee

    invoke-virtual {v0, p2, v1}, Lmobi/mgeek/TunnyBrowser/gd;->d(Landroid/content/Context;I)V

    .line 667
    sget-object v1, Lcom/dolphin/browser/n/a;->b:Lmobi/mgeek/TunnyBrowser/R$array;

    const v1, 0x7f070015

    invoke-virtual {v0, p2, v1}, Lmobi/mgeek/TunnyBrowser/gd;->a(Landroid/content/Context;I)V

    .line 668
    sget-object v1, Lcom/dolphin/browser/n/a;->b:Lmobi/mgeek/TunnyBrowser/R$array;

    const v1, 0x7f070016

    invoke-virtual {v0, p2, v1}, Lmobi/mgeek/TunnyBrowser/gd;->b(Landroid/content/Context;I)V

    .line 669
    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/go;->b:Lmobi/mgeek/TunnyBrowser/gh;

    .line 670
    return-void
.end method
