.class Lmobi/mgeek/TunnyBrowser/BrowserYesNoPreference;
.super Ldolphin/preference/YesNoPreference;
.source "BrowserYesNoPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ldolphin/preference/YesNoPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 104
    invoke-static {}, Lcom/dolphin/browser/l/e;->a()Lcom/dolphin/browser/l/e;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/dolphin/browser/l/e;->e()Z

    move-result v1

    .line 107
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2, p1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->n(Landroid/content/Context;)V

    .line 108
    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {v0}, Lcom/dolphin/browser/l/e;->f()V

    .line 111
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserYesNoPreference;->setEnabled(Z)V

    .line 113
    new-instance v0, Lmobi/mgeek/TunnyBrowser/cm;

    invoke-direct {v0, p0, p1}, Lmobi/mgeek/TunnyBrowser/cm;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserYesNoPreference;Landroid/content/Context;)V

    const-wide/16 v1, 0x32

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;J)V

    .line 120
    return-void
.end method

.method static synthetic a(Lmobi/mgeek/TunnyBrowser/BrowserYesNoPreference;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserYesNoPreference;->a(Landroid/content/Context;)V

    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    .line 70
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserYesNoPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 71
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    .line 72
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e0371

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setTitle(I)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e0372

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setMessage(I)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f0200b3

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a(Landroid/graphics/drawable/Drawable;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f0200b1

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->b(Landroid/graphics/drawable/Drawable;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0145

    new-instance v3, Lmobi/mgeek/TunnyBrowser/cl;

    invoke-direct {v3, p0}, Lmobi/mgeek/TunnyBrowser/cl;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserYesNoPreference;)V

    invoke-virtual {v0, v2, v3}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e06c1

    new-instance v3, Lmobi/mgeek/TunnyBrowser/ck;

    invoke-direct {v3, p0, v1}, Lmobi/mgeek/TunnyBrowser/ck;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserYesNoPreference;Landroid/content/Context;)V

    invoke-virtual {v0, v2, v3}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->create()Lcom/dolphin/browser/ui/fake/AlertDialog;

    move-result-object v0

    .line 100
    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 101
    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 3

    .prologue
    .line 31
    invoke-super {p0, p1}, Ldolphin/preference/YesNoPreference;->onDialogClosed(Z)V

    .line 33
    if-eqz p1, :cond_0

    .line 34
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserYesNoPreference;->setEnabled(Z)V

    .line 36
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserYesNoPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 37
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserYesNoPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 50
    const-string v2, "reset_default_preferences"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-static {}, Lcom/dolphin/browser/theme/ar;->a()Lcom/dolphin/browser/theme/i;

    move-result-object v1

    invoke-interface {v1}, Lcom/dolphin/browser/theme/i;->b()V

    .line 52
    invoke-static {}, Lcom/dolphin/browser/search/i;->a()Lcom/dolphin/browser/search/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/search/i;->b()V

    .line 53
    new-instance v1, Lcom/dolphin/browser/search/a/d;

    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserYesNoPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dolphin/browser/search/a/d;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-virtual {v1}, Lcom/dolphin/browser/search/a/d;->d()Ljava/util/List;

    .line 55
    invoke-static {}, Lcom/dolphin/browser/l/e;->a()Lcom/dolphin/browser/l/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/l/e;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserYesNoPreference;->b()V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserYesNoPreference;->a(Landroid/content/Context;)V

    goto :goto_0
.end method
