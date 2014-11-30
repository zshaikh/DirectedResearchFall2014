.class public Lcom/dolphin/browser/language/LanguageSettingsActivity;
.super Lmobi/mgeek/TunnyBrowser/BaseActivity;
.source "LanguageSettingsActivity.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ListView;

.field private c:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;-><init>()V

    .line 78
    new-instance v0, Lcom/dolphin/browser/language/h;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/language/h;-><init>(Lcom/dolphin/browser/language/LanguageSettingsActivity;)V

    iput-object v0, p0, Lcom/dolphin/browser/language/LanguageSettingsActivity;->c:Landroid/widget/AdapterView$OnItemClickListener;

    .line 26
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 42
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Landroid/app/Activity;)V

    .line 43
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f030097

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/language/LanguageSettingsActivity;->setContentView(I)V

    .line 44
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800ab

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/language/LanguageSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 45
    invoke-static {v0}, Lcom/dolphin/browser/theme/bf;->a(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    invoke-direct {p0}, Lcom/dolphin/browser/language/LanguageSettingsActivity;->b()V

    .line 47
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/language/LanguageSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/language/LanguageSettingsActivity;->a:Landroid/widget/TextView;

    .line 48
    iget-object v0, p0, Lcom/dolphin/browser/language/LanguageSettingsActivity;->a:Landroid/widget/TextView;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e04ab

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 49
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080044

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/language/LanguageSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/dolphin/browser/language/LanguageSettingsActivity;->b:Landroid/widget/ListView;

    .line 50
    iget-object v0, p0, Lcom/dolphin/browser/language/LanguageSettingsActivity;->b:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 51
    iget-object v0, p0, Lcom/dolphin/browser/language/LanguageSettingsActivity;->b:Landroid/widget/ListView;

    new-instance v1, Lcom/dolphin/browser/language/f;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/language/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 52
    iget-object v0, p0, Lcom/dolphin/browser/language/LanguageSettingsActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/dolphin/browser/language/LanguageSettingsActivity;->c:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 53
    invoke-direct {p0}, Lcom/dolphin/browser/language/LanguageSettingsActivity;->c()V

    .line 54
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 58
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080075

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/language/LanguageSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 59
    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020020

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/util/bb;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    new-instance v1, Lcom/dolphin/browser/language/g;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/language/g;-><init>(Lcom/dolphin/browser/language/LanguageSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 72
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Lcom/dolphin/browser/language/LanguageSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a00f2

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    iget-object v1, p0, Lcom/dolphin/browser/language/LanguageSettingsActivity;->a:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00f3

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    iget-object v0, p0, Lcom/dolphin/browser/language/LanguageSettingsActivity;->a:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/dolphin/browser/util/dr;->a(Landroid/widget/TextView;)V

    .line 76
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 108
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->finish()V

    .line 109
    invoke-static {p0}, Lcom/mgeek/android/util/t;->a(Landroid/app/Activity;)V

    .line 110
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/language/LanguageSettingsActivity;->setResult(I)V

    .line 102
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onBackPressed()V

    .line 103
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-direct {p0}, Lcom/dolphin/browser/language/LanguageSettingsActivity;->a()V

    .line 38
    return-void
.end method
