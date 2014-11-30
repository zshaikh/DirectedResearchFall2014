.class public Lcom/dolphin/browser/search/ui/SearchSettingsActivity;
.super Lmobi/mgeek/TunnyBrowser/BaseActivity;
.source "SearchSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:I

.field private f:Landroid/view/View;

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 36
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/search/ui/SearchSettingsActivity;->e:I

    .line 54
    iput-boolean v1, p0, Lcom/dolphin/browser/search/ui/SearchSettingsActivity;->g:Z

    .line 55
    iput-boolean v1, p0, Lcom/dolphin/browser/search/ui/SearchSettingsActivity;->h:Z

    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 95
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 96
    const-string v1, "vertical_search_enable"

    iget-boolean v2, p0, Lcom/dolphin/browser/search/ui/SearchSettingsActivity;->g:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dolphin/browser/search/ui/SearchSettingsActivity;->g:Z

    .line 97
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->c(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dolphin/browser/search/ui/SearchSettingsActivity;->h:Z

    .line 98
    iput v3, p0, Lcom/dolphin/browser/search/ui/SearchSettingsActivity;->e:I

    .line 103
    iput-boolean v3, p0, Lcom/dolphin/browser/search/ui/SearchSettingsActivity;->g:Z

    .line 123
    invoke-direct {p0}, Lcom/dolphin/browser/search/ui/SearchSettingsActivity;->d()V

    .line 124
    invoke-direct {p0}, Lcom/dolphin/browser/search/ui/SearchSettingsActivity;->c()V

    .line 133
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 136
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/SearchSettingsActivity;->b:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/dolphin/browser/util/cu;->d(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/SearchSettingsActivity;->a:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a01a0

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 141
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/SearchSettingsActivity;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/dolphin/browser/search/ui/SearchSettingsActivity;->c:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/dolphin/browser/theme/bf;->a(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 142
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/SearchSettingsActivity;->c:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00f3

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/SearchSettingsActivity;->f:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020278

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/SearchSettingsActivity;->d:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0201b6

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    return-void
.end method

.method private c()V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/SearchSettingsActivity;->b:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/dolphin/browser/search/ui/SearchSettingsActivity;->h:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 166
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/dolphin/browser/search/ui/SearchSettingsActivity;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/dolphin/browser/search/ui/SearchSettingsActivity;->h:Z

    .line 175
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dolphin/browser/search/ui/SearchSettingsActivity;->h:Z

    invoke-virtual {v0, p0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b(Landroid/content/Context;Z)V

    .line 176
    invoke-direct {p0}, Lcom/dolphin/browser/search/ui/SearchSettingsActivity;->d()V

    .line 177
    return-void

    .line 174
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/SearchSettingsActivity;->f:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 263
    invoke-direct {p0}, Lcom/dolphin/browser/search/ui/SearchSettingsActivity;->e()V

    .line 268
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 60
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Landroid/app/Activity;)V

    .line 63
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 64
    invoke-virtual {p0}, Lcom/dolphin/browser/search/ui/SearchSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a00f6

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f0300d7

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/ui/SearchSettingsActivity;->setContentView(I)V

    .line 68
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/ui/SearchSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 69
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 71
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800b6

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/ui/SearchSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/search/ui/SearchSettingsActivity;->d:Landroid/widget/ImageView;

    .line 73
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/ui/SearchSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/search/ui/SearchSettingsActivity;->c:Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/SearchSettingsActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dolphin/browser/search/ui/SearchSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e047e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802f9

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/ui/SearchSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/search/ui/SearchSettingsActivity;->a:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/SearchSettingsActivity;->a:Landroid/widget/TextView;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e049a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 77
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802fa

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/ui/SearchSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/search/ui/SearchSettingsActivity;->b:Landroid/widget/ImageView;

    .line 83
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802f8

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/ui/SearchSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/search/ui/SearchSettingsActivity;->f:Landroid/view/View;

    .line 86
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/SearchSettingsActivity;->f:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    invoke-direct {p0}, Lcom/dolphin/browser/search/ui/SearchSettingsActivity;->a()V

    .line 91
    invoke-direct {p0}, Lcom/dolphin/browser/search/ui/SearchSettingsActivity;->b()V

    .line 92
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 258
    return-void
.end method
