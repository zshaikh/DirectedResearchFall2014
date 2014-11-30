.class public Lmobi/mgeek/TunnyBrowser/TermsOfUseActivity;
.super Lmobi/mgeek/TunnyBrowser/BaseActivity;
.source "TermsOfUseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 19
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    const-string v1, "setup_wizard_mode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 23
    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/TermsOfUseActivity;->startActivity(Landroid/content/Intent;)V

    .line 24
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/TermsOfUseActivity;->finish()V

    .line 50
    :goto_0
    return-void

    .line 27
    :cond_0
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/TermsOfUseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020252

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 28
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f03010a

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/TermsOfUseActivity;->setContentView(I)V

    .line 29
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08039d

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/TermsOfUseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lmobi/mgeek/TunnyBrowser/ho;

    invoke-direct {v1, p0}, Lmobi/mgeek/TunnyBrowser/ho;-><init>(Lmobi/mgeek/TunnyBrowser/TermsOfUseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08039c

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/TermsOfUseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lmobi/mgeek/TunnyBrowser/hp;

    invoke-direct {v1, p0}, Lmobi/mgeek/TunnyBrowser/hp;-><init>(Lmobi/mgeek/TunnyBrowser/TermsOfUseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method
