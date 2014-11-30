.class Lmobi/mgeek/TunnyBrowser/ho;
.super Ljava/lang/Object;
.source "TermsOfUseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/TermsOfUseActivity;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/TermsOfUseActivity;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/ho;->a:Lmobi/mgeek/TunnyBrowser/TermsOfUseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 33
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Z)V

    .line 34
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ho;->a:Lmobi/mgeek/TunnyBrowser/TermsOfUseActivity;

    const-class v2, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    const-string v1, "setup_wizard_mode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 36
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ho;->a:Lmobi/mgeek/TunnyBrowser/TermsOfUseActivity;

    invoke-virtual {v1, v0}, Lmobi/mgeek/TunnyBrowser/TermsOfUseActivity;->startActivity(Landroid/content/Intent;)V

    .line 37
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ho;->a:Lmobi/mgeek/TunnyBrowser/TermsOfUseActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/TermsOfUseActivity;->finish()V

    .line 38
    return-void
.end method
