.class public Lmobi/mgeek/TunnyBrowser/AddSpeedDail;
.super Lmobi/mgeek/TunnyBrowser/BaseActivity;
.source "AddSpeedDail.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/view/View$OnClickListener;

.field private m:Landroid/view/View$OnClickListener;

.field private n:Lcom/dolphin/browser/extensions/ThemeManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;-><init>()V

    .line 43
    new-instance v0, Lmobi/mgeek/TunnyBrowser/f;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/f;-><init>(Lmobi/mgeek/TunnyBrowser/AddSpeedDail;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->l:Landroid/view/View$OnClickListener;

    .line 72
    new-instance v0, Lmobi/mgeek/TunnyBrowser/g;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/g;-><init>(Lmobi/mgeek/TunnyBrowser/AddSpeedDail;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->m:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lmobi/mgeek/TunnyBrowser/AddSpeedDail;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method private a()V
    .locals 7

    .prologue
    const v6, 0x7f0a0180

    const v5, 0x7f0a0173

    const v4, 0x7f0a0042

    const v3, 0x7f020348

    .line 141
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->a:Landroid/view/View;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->n:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02009a

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/util/cu;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->b:Landroid/view/View;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->n:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020096

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->n:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->n:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->n:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0046

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->e:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/dolphin/browser/util/cu;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->e:Landroid/widget/EditText;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v6}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 152
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->g:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/dolphin/browser/util/cu;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 153
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->g:Landroid/widget/EditText;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v6}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 154
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 155
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b0089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 156
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->e:Landroid/widget/EditText;

    invoke-virtual {v2, v1, v0, v1, v0}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 157
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->g:Landroid/widget/EditText;

    invoke-virtual {v2, v1, v0, v1, v0}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 159
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->n:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0200b0

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 161
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->n:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 162
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->n:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0200ae

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->n:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 166
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->n:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 168
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->k:Landroid/widget/ImageView;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->n:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 171
    return-void
.end method

.method static synthetic b(Lmobi/mgeek/TunnyBrowser/AddSpeedDail;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->g:Landroid/widget/EditText;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 189
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->e:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->g:Landroid/widget/EditText;

    if-nez v0, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 193
    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->g:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 194
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 195
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 196
    :goto_2
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 197
    if-eqz v0, :cond_2

    .line 198
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->e:Landroid/widget/EditText;

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e0224

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 200
    :cond_2
    if-eqz v1, :cond_0

    .line 201
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->g:Landroid/widget/EditText;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0225

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 194
    goto :goto_1

    :cond_4
    move v1, v2

    .line 195
    goto :goto_2
.end method

.method static synthetic c(Lmobi/mgeek/TunnyBrowser/AddSpeedDail;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->b()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .prologue
    .line 176
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 177
    new-instance v0, Lmobi/mgeek/TunnyBrowser/h;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/h;-><init>(Lmobi/mgeek/TunnyBrowser/AddSpeedDail;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;J)V

    .line 185
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const v4, 0x7f0a0095

    .line 85
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Landroid/app/Activity;)V

    .line 87
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->requestWindowFeature(I)Z

    .line 88
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->n:Lcom/dolphin/browser/extensions/ThemeManager;

    .line 92
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->setContentView(I)V

    .line 94
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800dc

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->a:Landroid/view/View;

    .line 95
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800dd

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->b:Landroid/view/View;

    .line 97
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800cc

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->c:Landroid/widget/TextView;

    .line 98
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->c:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e053a

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 100
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->l:Landroid/view/View$OnClickListener;

    .line 101
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800da

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->h:Landroid/widget/TextView;

    .line 102
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_1

    .line 109
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    const-string v2, "url"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v1

    move-object v1, v0

    .line 113
    :goto_0
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->e:Landroid/widget/EditText;

    .line 114
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->e:Landroid/widget/EditText;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-static {v4}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHighlightColor(I)V

    .line 117
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800d2

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->g:Landroid/widget/EditText;

    .line 118
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->g:Landroid/widget/EditText;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0010

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 121
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->g:Landroid/widget/EditText;

    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-static {v4}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHighlightColor(I)V

    .line 123
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800d0

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->d:Landroid/widget/TextView;

    .line 124
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800d1

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->f:Landroid/widget/TextView;

    .line 126
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800d8

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->i:Landroid/widget/TextView;

    .line 127
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 133
    :cond_0
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800d7

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->j:Landroid/widget/ImageView;

    .line 134
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800d9

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->k:Landroid/widget/ImageView;

    .line 136
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->a()V

    .line 137
    return-void

    :cond_1
    move-object v2, v1

    goto/16 :goto_0
.end method
