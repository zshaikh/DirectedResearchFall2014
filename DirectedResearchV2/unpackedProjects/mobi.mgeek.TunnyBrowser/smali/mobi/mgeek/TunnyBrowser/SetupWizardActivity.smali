.class public Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;
.super Lmobi/mgeek/TunnyBrowser/BaseActivity;
.source "SetupWizardActivity.java"


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private b:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

.field private c:Lmobi/mgeek/TunnyBrowser/ge;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;-><init>()V

    .line 797
    return-void
.end method

.method static synthetic a(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;)Lmobi/mgeek/TunnyBrowser/BrowserSettings;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->b:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    return-object v0
.end method

.method private a(I)Lmobi/mgeek/TunnyBrowser/ge;
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 306
    new-instance v0, Lmobi/mgeek/TunnyBrowser/fz;

    invoke-direct {v0, p0, p0}, Lmobi/mgeek/TunnyBrowser/fz;-><init>(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;Landroid/content/Context;)V

    .line 310
    :goto_0
    return-object v0

    .line 307
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 308
    new-instance v0, Lmobi/mgeek/TunnyBrowser/gn;

    invoke-direct {v0, p0, p0}, Lmobi/mgeek/TunnyBrowser/gn;-><init>(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;Landroid/content/Context;)V

    goto :goto_0

    .line 310
    :cond_1
    new-instance v0, Lmobi/mgeek/TunnyBrowser/gk;

    invoke-direct {v0, p0, p0}, Lmobi/mgeek/TunnyBrowser/gk;-><init>(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;Landroid/content/Context;)V

    goto :goto_0
.end method

.method static synthetic b(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;)Lmobi/mgeek/TunnyBrowser/ge;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->c:Lmobi/mgeek/TunnyBrowser/ge;

    return-object v0
.end method

.method static synthetic c(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->a:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 328
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->c:Lmobi/mgeek/TunnyBrowser/ge;

    instance-of v0, v0, Lmobi/mgeek/TunnyBrowser/gk;

    if-nez v0, :cond_0

    .line 329
    const/4 v0, 0x1

    .line 331
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 288
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 289
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Landroid/app/Activity;)V

    .line 290
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f0300e6

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->setContentView(I)V

    .line 291
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020252

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 295
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->b:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    .line 296
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->a:Landroid/content/SharedPreferences;

    .line 298
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "setup_wizard_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 299
    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->a(I)Lmobi/mgeek/TunnyBrowser/ge;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->c:Lmobi/mgeek/TunnyBrowser/ge;

    .line 300
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->c:Lmobi/mgeek/TunnyBrowser/ge;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/ge;->b()V

    .line 301
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 316
    if-ne v1, p1, :cond_0

    .line 317
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 318
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 319
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0698

    invoke-virtual {p0, v1}, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 320
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 323
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method
