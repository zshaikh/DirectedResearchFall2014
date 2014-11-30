.class Lmobi/mgeek/TunnyBrowser/fy;
.super Lmobi/mgeek/TunnyBrowser/gi;
.source "SetupWizardActivity.java"


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;


# direct methods
.method public constructor <init>(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 629
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/fy;->a:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    .line 630
    invoke-direct {p0, p1, p2}, Lmobi/mgeek/TunnyBrowser/gi;-><init>(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;Landroid/content/Context;)V

    .line 631
    new-instance v0, Lmobi/mgeek/TunnyBrowser/fx;

    invoke-static {p1}, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->c(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "save_cache_to_sdcard"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lmobi/mgeek/TunnyBrowser/fx;-><init>(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)V

    .line 633
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0150

    invoke-virtual {v0, p2, v1}, Lmobi/mgeek/TunnyBrowser/fx;->c(Landroid/content/Context;I)V

    .line 634
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0151

    invoke-virtual {v0, p2, v1}, Lmobi/mgeek/TunnyBrowser/fx;->d(Landroid/content/Context;I)V

    .line 635
    new-array v1, v6, [Ljava/lang/String;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e00d7

    invoke-virtual {p1, v2}, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e00d8

    invoke-virtual {p1, v2}, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/fx;->a([Ljava/lang/CharSequence;)V

    .line 638
    new-array v1, v6, [Ljava/lang/CharSequence;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/fx;->b([Ljava/lang/CharSequence;)V

    .line 641
    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/fy;->b:Lmobi/mgeek/TunnyBrowser/gh;

    .line 642
    return-void
.end method
