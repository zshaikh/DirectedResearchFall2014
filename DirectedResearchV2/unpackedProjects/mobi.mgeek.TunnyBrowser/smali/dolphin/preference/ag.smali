.class public Ldolphin/preference/ag;
.super Landroid/widget/LinearLayout;
.source "SetHomePageDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private a:Landroid/app/AlertDialog;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/CheckedTextView;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/CheckedTextView;

.field private g:I

.field private h:Landroid/widget/CheckBox;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/content/Context;

.field private l:Ldolphin/preference/ai;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldolphin/preference/ai;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/preference/ag;->l:Ldolphin/preference/ai;

    .line 43
    invoke-direct {p0, p1, p2}, Ldolphin/preference/ag;->a(Landroid/content/Context;Ldolphin/preference/ai;)V

    .line 44
    return-void
.end method

.method private a(Landroid/content/Context;Ldolphin/preference/ai;)V
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f0300bc

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 63
    iput-object p1, p0, Ldolphin/preference/ag;->k:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Ldolphin/preference/ag;->l:Ldolphin/preference/ai;

    .line 65
    invoke-direct {p0}, Ldolphin/preference/ag;->b()V

    .line 66
    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 214
    if-eqz p1, :cond_1

    .line 215
    iget v0, p0, Ldolphin/preference/ag;->g:I

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0802b4

    if-ne v0, v1, :cond_2

    .line 216
    invoke-direct {p0}, Ldolphin/preference/ag;->f()V

    .line 220
    :cond_0
    :goto_0
    iget-object v0, p0, Ldolphin/preference/ag;->l:Ldolphin/preference/ai;

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Ldolphin/preference/ag;->l:Ldolphin/preference/ai;

    invoke-interface {v0}, Ldolphin/preference/ai;->a()V

    .line 224
    :cond_1
    return-void

    .line 217
    :cond_2
    iget v0, p0, Ldolphin/preference/ag;->g:I

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08024e

    if-ne v0, v1, :cond_0

    .line 218
    invoke-direct {p0}, Ldolphin/preference/ag;->g()V

    goto :goto_0
.end method

.method static synthetic a(Ldolphin/preference/ag;)Z
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ldolphin/preference/ag;->d()Z

    move-result v0

    return v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 97
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v1

    .line 99
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08024c

    invoke-virtual {p0, v0}, Ldolphin/preference/ag;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldolphin/preference/ag;->d:Landroid/view/View;

    .line 100
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802b4

    invoke-virtual {p0, v0}, Ldolphin/preference/ag;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Ldolphin/preference/ag;->c:Landroid/widget/CheckedTextView;

    .line 101
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08024d

    invoke-virtual {p0, v0}, Ldolphin/preference/ag;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldolphin/preference/ag;->e:Landroid/view/View;

    .line 102
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08024e

    invoke-virtual {p0, v0}, Ldolphin/preference/ag;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Ldolphin/preference/ag;->f:Landroid/widget/CheckedTextView;

    .line 103
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08024f

    invoke-virtual {p0, v0}, Ldolphin/preference/ag;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Ldolphin/preference/ag;->b:Landroid/widget/EditText;

    .line 104
    iget-object v0, p0, Ldolphin/preference/ag;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 105
    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-direct {p0}, Ldolphin/preference/ag;->j()V

    .line 110
    :goto_0
    iget-object v0, p0, Ldolphin/preference/ag;->d:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Ldolphin/preference/ag;->e:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802b3

    invoke-virtual {p0, v0}, Ldolphin/preference/ag;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Ldolphin/preference/ag;->h:Landroid/widget/CheckBox;

    .line 114
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802b1

    invoke-virtual {p0, v0}, Ldolphin/preference/ag;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldolphin/preference/ag;->i:Landroid/view/View;

    .line 115
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802b2

    invoke-virtual {p0, v0}, Ldolphin/preference/ag;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldolphin/preference/ag;->j:Landroid/widget/TextView;

    .line 117
    iget-object v0, p0, Ldolphin/preference/ag;->i:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Ldolphin/preference/ag;->h:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 119
    iget-object v0, p0, Ldolphin/preference/ag;->h:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->R()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 121
    invoke-direct {p0}, Ldolphin/preference/ag;->c()V

    .line 122
    iget-object v0, p0, Ldolphin/preference/ag;->i:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 123
    return-void

    .line 108
    :cond_0
    invoke-direct {p0}, Ldolphin/preference/ag;->i()V

    goto :goto_0
.end method

.method private c()V
    .locals 6

    .prologue
    const v5, 0x7f0200ab

    const/4 v4, 0x0

    const v3, 0x7f0a01a0

    .line 127
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 128
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0800b6

    invoke-virtual {p0, v1}, Ldolphin/preference/ag;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a014d

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 130
    iget-object v1, p0, Ldolphin/preference/ag;->i:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020274

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    iget-object v1, p0, Ldolphin/preference/ag;->h:Landroid/widget/CheckBox;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0171

    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 134
    iget-object v1, p0, Ldolphin/preference/ag;->h:Landroid/widget/CheckBox;

    iget-object v2, p0, Ldolphin/preference/ag;->k:Landroid/content/Context;

    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->d(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v4, v4, v2, v4}, Landroid/widget/CheckBox;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 136
    iget-object v1, p0, Ldolphin/preference/ag;->c:Landroid/widget/CheckedTextView;

    iget-object v2, p0, Ldolphin/preference/ag;->k:Landroid/content/Context;

    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->c(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    iget-object v1, p0, Ldolphin/preference/ag;->c:Landroid/widget/CheckedTextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 138
    iget-object v1, p0, Ldolphin/preference/ag;->f:Landroid/widget/CheckedTextView;

    iget-object v2, p0, Ldolphin/preference/ag;->k:Landroid/content/Context;

    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->c(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    iget-object v1, p0, Ldolphin/preference/ag;->f:Landroid/widget/CheckedTextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 141
    iget-object v1, p0, Ldolphin/preference/ag;->e:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v0, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 142
    iget-object v1, p0, Ldolphin/preference/ag;->d:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v0, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    iget-object v1, p0, Ldolphin/preference/ag;->j:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 145
    iget-object v0, p0, Ldolphin/preference/ag;->b:Landroid/widget/EditText;

    iget-object v1, p0, Ldolphin/preference/ag;->k:Landroid/content/Context;

    invoke-static {v1}, Lcom/dolphin/browser/util/cu;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    invoke-virtual {p0}, Ldolphin/preference/ag;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 147
    invoke-virtual {p0}, Ldolphin/preference/ag;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b0089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 148
    iget-object v2, p0, Ldolphin/preference/ag;->b:Landroid/widget/EditText;

    invoke-virtual {v2, v1, v0, v1, v0}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 149
    iget-object v0, p0, Ldolphin/preference/ag;->b:Landroid/widget/EditText;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0180

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 150
    return-void
.end method

.method private d()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 188
    const/4 v1, 0x1

    .line 189
    iget v2, p0, Ldolphin/preference/ag;->g:I

    sget-object v3, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v3, 0x7f08024e

    if-ne v2, v3, :cond_1

    .line 191
    :try_start_0
    invoke-direct {p0}, Ldolphin/preference/ag;->h()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 192
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 195
    invoke-direct {p0}, Ldolphin/preference/ag;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_0
    invoke-direct {p0, v0}, Ldolphin/preference/ag;->a(Z)V

    .line 209
    return v0

    .line 197
    :cond_0
    :try_start_1
    invoke-static {v2}, Lcom/dolphin/browser/util/BrowserUtil;->getBookmarkUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 198
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 199
    iget-object v2, p0, Ldolphin/preference/ag;->b:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 202
    :catch_0
    move-exception v1

    .line 205
    invoke-direct {p0}, Ldolphin/preference/ag;->e()V

    goto :goto_0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 230
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    iget-object v1, p0, Ldolphin/preference/ag;->k:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00c3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e03c1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 233
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 237
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    iget-object v1, p0, Ldolphin/preference/ag;->k:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->c(Landroid/content/Context;Z)V

    .line 238
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 242
    iget-object v0, p0, Ldolphin/preference/ag;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-static {}, Lcom/dolphin/browser/search/c/c;->a()Lcom/dolphin/browser/search/c/c;

    move-result-object v1

    const-string v2, "home_page"

    invoke-virtual {v1, v0, v2}, Lcom/dolphin/browser/search/c/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v1

    iget-object v2, p0, Ldolphin/preference/ag;->k:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->setHomePage(Landroid/content/Context;Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method private h()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Ldolphin/preference/ag;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method private i()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 255
    iget-object v0, p0, Ldolphin/preference/ag;->c:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 256
    iget-object v0, p0, Ldolphin/preference/ag;->f:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 257
    iget-object v0, p0, Ldolphin/preference/ag;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 258
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08024e

    iput v0, p0, Ldolphin/preference/ag;->g:I

    .line 259
    iget-object v0, p0, Ldolphin/preference/ag;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 261
    return-void
.end method

.method private j()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 265
    iget-object v0, p0, Ldolphin/preference/ag;->c:Landroid/widget/CheckedTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 266
    iget-object v0, p0, Ldolphin/preference/ag;->f:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 267
    iget-object v0, p0, Ldolphin/preference/ag;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 268
    invoke-direct {p0}, Ldolphin/preference/ag;->k()V

    .line 269
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802b4

    iput v0, p0, Ldolphin/preference/ag;->g:I

    .line 270
    iget-object v0, p0, Ldolphin/preference/ag;->b:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 272
    return-void
.end method

.method private k()V
    .locals 3

    .prologue
    .line 276
    iget-object v0, p0, Ldolphin/preference/ag;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 277
    iget-object v0, p0, Ldolphin/preference/ag;->k:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 279
    iget-object v1, p0, Ldolphin/preference/ag;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 280
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 70
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    iget-object v1, p0, Ldolphin/preference/ag;->k:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0477

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e03c1

    new-instance v2, Ldolphin/preference/ah;

    invoke-direct {v2, p0}, Ldolphin/preference/ah;-><init>(Ldolphin/preference/ag;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Ldolphin/preference/ag;->a:Landroid/app/AlertDialog;

    .line 80
    iget-object v0, p0, Ldolphin/preference/ag;->a:Landroid/app/AlertDialog;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 81
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    .line 156
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v1

    .line 157
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f0800b5

    if-ne v0, v2, :cond_1

    .line 158
    iget-object v0, p0, Ldolphin/preference/ag;->k:Landroid/content/Context;

    invoke-virtual {v1, v0, p2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->l(Landroid/content/Context;Z)V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f0802b3

    if-ne v0, v2, :cond_0

    .line 160
    iget-object v0, p0, Ldolphin/preference/ag;->k:Landroid/content/Context;

    invoke-virtual {v1, v0, p2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->m(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 167
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08024c

    if-ne v0, v1, :cond_1

    .line 168
    invoke-direct {p0}, Ldolphin/preference/ag;->j()V

    .line 169
    const-string v0, "settings_new"

    const-string v1, "set_homepage"

    const-string v2, "newtab"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08024d

    if-ne v0, v1, :cond_2

    .line 172
    invoke-direct {p0}, Ldolphin/preference/ag;->i()V

    .line 173
    iget-object v0, p0, Ldolphin/preference/ag;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 174
    const-string v0, "settings_new"

    const-string v1, "set_homepage"

    const-string v2, "custom"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0802b1

    if-ne v0, v1, :cond_0

    .line 177
    iget-object v0, p0, Ldolphin/preference/ag;->h:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 178
    :goto_1
    iget-object v1, p0, Ldolphin/preference/ag;->h:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 179
    iget-object v0, p0, Ldolphin/preference/ag;->h:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "enable"

    .line 181
    :goto_2
    const-string v1, "settings_new"

    const-string v2, "show_mostvisitedfolder"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 179
    :cond_4
    const-string v0, "disable"

    goto :goto_2
.end method
