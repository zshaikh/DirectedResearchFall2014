.class public Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;
.super Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;
.source "ChangePasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 60
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    .line 61
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a00f6

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 65
    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00f3

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e03fe

    invoke-virtual {p0, v2}, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080075

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 70
    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f02026a

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/util/bb;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800ab

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 75
    invoke-static {v0}, Lcom/dolphin/browser/theme/bf;->a(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080196

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->a:Landroid/widget/EditText;

    .line 78
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080197

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->b:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->a:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->b:Landroid/widget/TextView;

    invoke-direct {p0, v0, v2}, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->a(Landroid/widget/EditText;Landroid/widget/TextView;)V

    .line 81
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080198

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->c:Landroid/widget/EditText;

    .line 82
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080199

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->d:Landroid/widget/TextView;

    .line 83
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->c:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->d:Landroid/widget/TextView;

    invoke-direct {p0, v0, v2}, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->a(Landroid/widget/EditText;Landroid/widget/TextView;)V

    .line 85
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08019a

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->e:Landroid/widget/EditText;

    .line 86
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08019b

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->f:Landroid/widget/TextView;

    .line 87
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->e:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->f:Landroid/widget/TextView;

    invoke-direct {p0, v0, v2}, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->a(Landroid/widget/EditText;Landroid/widget/TextView;)V

    .line 89
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08019c

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->g:Landroid/widget/TextView;

    .line 90
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->g:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a006c

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08019d

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 94
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020117

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f020116

    invoke-static {p0, v2, v3}, Lcom/dolphin/browser/util/cu;->d(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0175

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 100
    return-void
.end method

.method private a(I)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 145
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080196

    if-ne p1, v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0410

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080198

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08019a

    if-ne p1, v0, :cond_0

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0414

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 7

    .prologue
    .line 104
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 105
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b008a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 106
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v3, 0x7f0b0089

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 107
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    const/4 v4, 0x0

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/16 v6, 0x14

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v3, v4

    .line 111
    invoke-static {p0}, Lcom/dolphin/browser/util/cu;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v4, 0x7f0a0005

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 113
    invoke-virtual {p1, v2, v1, v2, v1}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 114
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->a(Landroid/widget/TextView;)V

    .line 115
    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 117
    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const/high16 v1, 0x7f0a0000

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    new-instance v0, Lcom/dolphin/browser/DolphinService/ui/i;

    invoke-direct {v0, p0, p2, p1}, Lcom/dolphin/browser/DolphinService/ui/i;-><init>(Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;Landroid/widget/TextView;Landroid/widget/EditText;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 141
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->e()V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;I)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->a(I)V

    return-void
.end method

.method private a(Landroid/widget/EditText;)Z
    .locals 2

    .prologue
    .line 271
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->c(Ljava/lang/String;)I

    move-result v0

    .line 273
    if-eqz v0, :cond_0

    .line 274
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dolphin/browser/DolphinService/Account/b;->b(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 277
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 278
    const/4 v0, 0x0

    .line 280
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->h()V

    .line 173
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->a:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->a(Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->c:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->a(Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->e:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->a(Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->c()V

    .line 177
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->g()V

    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 181
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->g:Landroid/widget/TextView;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0414

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 183
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->g:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 229
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->d()V

    .line 188
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/dolphin/browser/DolphinService/ui/j;

    invoke-direct {v3, p0}, Lcom/dolphin/browser/DolphinService/ui/j;-><init>(Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/dolphin/browser/DolphinService/Account/b;->b(Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/DolphinService/WebService/a;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->f()V

    return-void
.end method

.method static synthetic d(Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->h:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->h:Landroid/app/ProgressDialog;

    .line 235
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->h:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 236
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->h:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->h:Landroid/app/ProgressDialog;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e05eb

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->h:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 241
    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->h:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->h:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/DialogInterface;)Z

    .line 248
    :cond_0
    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 252
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0382

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 253
    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 257
    new-instance v0, Lcom/dolphin/browser/DolphinService/ui/k;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/DolphinService/ui/k;-><init>(Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 267
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 285
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->g:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 293
    invoke-super {p0}, Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;->finish()V

    .line 294
    invoke-static {p0}, Lcom/mgeek/android/util/t;->a(Landroid/app/Activity;)V

    .line 295
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 163
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080075

    if-ne v0, v1, :cond_1

    .line 164
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->onBackPressed()V

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08019d

    if-ne v0, v1, :cond_0

    .line 166
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->b()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f03004b

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->setContentView(I)V

    .line 54
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->a()V

    .line 56
    return-void
.end method
