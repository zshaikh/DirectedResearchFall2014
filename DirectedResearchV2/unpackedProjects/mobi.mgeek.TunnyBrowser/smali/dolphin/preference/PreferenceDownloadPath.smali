.class public Ldolphin/preference/PreferenceDownloadPath;
.super Ldolphin/preference/Preference;
.source "PreferenceDownloadPath.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/content/Context;

.field private d:Lcom/dolphin/browser/download/ui/ao;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/dolphin/browser/n/a;->c:Lmobi/mgeek/TunnyBrowser/R$attr;

    const/high16 v0, 0x7f010000

    invoke-direct {p0, p1, p2, v0}, Ldolphin/preference/PreferenceDownloadPath;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-direct {p0, p1}, Ldolphin/preference/PreferenceDownloadPath;->a(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/dolphin/browser/n/a;->c:Lmobi/mgeek/TunnyBrowser/R$attr;

    const/high16 v0, 0x7f010000

    invoke-direct {p0, p1, p2, v0}, Ldolphin/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-direct {p0, p1}, Ldolphin/preference/PreferenceDownloadPath;->a(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method static synthetic a(Ldolphin/preference/PreferenceDownloadPath;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Ldolphin/preference/PreferenceDownloadPath;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Ldolphin/preference/PreferenceDownloadPath;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Ldolphin/preference/PreferenceDownloadPath;->e:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 46
    iput-object p1, p0, Ldolphin/preference/PreferenceDownloadPath;->c:Landroid/content/Context;

    .line 47
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->K()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldolphin/preference/PreferenceDownloadPath;->e:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 54
    invoke-super {p0, p1}, Ldolphin/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 55
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080035

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldolphin/preference/PreferenceDownloadPath;->a:Landroid/widget/TextView;

    .line 56
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldolphin/preference/PreferenceDownloadPath;->b:Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Ldolphin/preference/PreferenceDownloadPath;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Ldolphin/preference/PreferenceDownloadPath;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Ldolphin/preference/PreferenceDownloadPath;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p0, Ldolphin/preference/PreferenceDownloadPath;->a:Landroid/widget/TextView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a01a1

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 62
    :cond_0
    iget-object v0, p0, Ldolphin/preference/PreferenceDownloadPath;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Ldolphin/preference/PreferenceDownloadPath;->b:Landroid/widget/TextView;

    iget-object v1, p0, Ldolphin/preference/PreferenceDownloadPath;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Ldolphin/preference/PreferenceDownloadPath;->b:Landroid/widget/TextView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00f7

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    :cond_1
    return-void
.end method

.method protected onClick()V
    .locals 3

    .prologue
    .line 71
    invoke-super {p0}, Ldolphin/preference/Preference;->onClick()V

    .line 73
    iget-object v0, p0, Ldolphin/preference/PreferenceDownloadPath;->d:Lcom/dolphin/browser/download/ui/ao;

    if-nez v0, :cond_1

    .line 74
    new-instance v0, Lcom/dolphin/browser/download/ui/ao;

    iget-object v1, p0, Ldolphin/preference/PreferenceDownloadPath;->c:Landroid/content/Context;

    iget-object v2, p0, Ldolphin/preference/PreferenceDownloadPath;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/download/ui/ao;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 75
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/download/ui/ao;->setCancelable(Z)V

    .line 76
    new-instance v1, Ldolphin/preference/u;

    invoke-direct {v1, p0}, Ldolphin/preference/u;-><init>(Ldolphin/preference/PreferenceDownloadPath;)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/download/ui/ao;->a(Lcom/dolphin/browser/download/ui/av;)V

    .line 89
    iput-object v0, p0, Ldolphin/preference/PreferenceDownloadPath;->d:Lcom/dolphin/browser/download/ui/ao;

    .line 94
    :goto_0
    iget-object v0, p0, Ldolphin/preference/PreferenceDownloadPath;->d:Lcom/dolphin/browser/download/ui/ao;

    invoke-virtual {v0}, Lcom/dolphin/browser/download/ui/ao;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Ldolphin/preference/PreferenceDownloadPath;->d:Lcom/dolphin/browser/download/ui/ao;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 97
    :cond_0
    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Ldolphin/preference/PreferenceDownloadPath;->d:Lcom/dolphin/browser/download/ui/ao;

    invoke-virtual {v0}, Lcom/dolphin/browser/download/ui/ao;->a()V

    goto :goto_0
.end method
