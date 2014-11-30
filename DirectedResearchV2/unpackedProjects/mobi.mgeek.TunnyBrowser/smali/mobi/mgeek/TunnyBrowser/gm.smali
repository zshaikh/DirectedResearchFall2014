.class Lmobi/mgeek/TunnyBrowser/gm;
.super Ljava/lang/Object;
.source "SetupWizardActivity.java"

# interfaces
.implements Lcom/mobosquare/sdk/subscription/c;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/gl;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/gl;)V
    .locals 0

    .prologue
    .line 868
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/gm;->a:Lmobi/mgeek/TunnyBrowser/gl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 877
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gm;->a:Lmobi/mgeek/TunnyBrowser/gl;

    iget-object v0, v0, Lmobi/mgeek/TunnyBrowser/gl;->a:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->removeDialog(I)V

    .line 878
    return-void
.end method

.method public a(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 882
    if-eqz p1, :cond_0

    .line 883
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gm;->a:Lmobi/mgeek/TunnyBrowser/gl;

    iget-object v0, v0, Lmobi/mgeek/TunnyBrowser/gl;->a:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0649

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 885
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gm;->a:Lmobi/mgeek/TunnyBrowser/gl;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/gl;->f()V

    .line 890
    :goto_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gm;->a:Lmobi/mgeek/TunnyBrowser/gl;

    iget-object v0, v0, Lmobi/mgeek/TunnyBrowser/gl;->a:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->removeDialog(I)V

    .line 891
    return-void

    .line 887
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gm;->a:Lmobi/mgeek/TunnyBrowser/gl;

    iget-object v0, v0, Lmobi/mgeek/TunnyBrowser/gl;->a:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0648

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 872
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gm;->a:Lmobi/mgeek/TunnyBrowser/gl;

    iget-object v0, v0, Lmobi/mgeek/TunnyBrowser/gl;->a:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->showDialog(I)V

    .line 873
    return-void
.end method
