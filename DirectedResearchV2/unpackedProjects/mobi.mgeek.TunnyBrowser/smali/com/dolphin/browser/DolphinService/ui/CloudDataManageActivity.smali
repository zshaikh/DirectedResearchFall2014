.class public Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;
.super Lmobi/mgeek/TunnyBrowser/BaseActivity;
.source "CloudDataManageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/app/ProgressDialog;

.field private b:Landroid/view/ViewGroup;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;-><init>()V

    return-void
.end method

.method private a(II)Landroid/view/View;
    .locals 5

    .prologue
    .line 293
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a006b

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    .line 294
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f03004d

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 295
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08019f

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 296
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 297
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 298
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801a0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 299
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v3

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v4, 0x7f0a006a

    invoke-virtual {v3, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 300
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801a1

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 301
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 304
    return-object v2
.end method

.method private a()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 70
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    .line 71
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a00f6

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080075

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 74
    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f02026a

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/util/bb;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800ab

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 79
    invoke-static {v0}, Lcom/dolphin/browser/theme/bf;->a(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 82
    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00f3

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e00fd

    invoke-virtual {p0, v2}, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08019e

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->b:Landroid/view/ViewGroup;

    .line 87
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 89
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08011c

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->c:Landroid/widget/Button;

    .line 90
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->c:Landroid/widget/Button;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02004f

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->c:Landroid/widget/Button;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0177

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 94
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->c:Landroid/widget/Button;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e00ef

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 95
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 98
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080195

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->d:Landroid/widget/TextView;

    .line 99
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->d:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a006b

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    return-void
.end method

.method private a(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 274
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->a:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 275
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->a:Landroid/app/ProgressDialog;

    .line 276
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 277
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->a:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->a:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 282
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->h()V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 161
    .line 162
    const-string v0, "bookmark"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 163
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->b:Landroid/view/ViewGroup;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e00c4

    invoke-direct {p0, v2, v0}, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->a(II)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 164
    const-string v0, "tab"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 165
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->b:Landroid/view/ViewGroup;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e03cd

    invoke-direct {p0, v2, v0}, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->a(II)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 166
    const-string v0, "extension"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 167
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->b:Landroid/view/ViewGroup;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e01e7

    invoke-direct {p0, v2, v0}, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->a(II)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 168
    const-string v0, "history"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 169
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->b:Landroid/view/ViewGroup;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0305

    invoke-direct {p0, v2, v0}, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->a(II)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 170
    const-string v0, "theme"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 171
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->b:Landroid/view/ViewGroup;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0639

    invoke-direct {p0, v2, v0}, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->a(II)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 172
    const-string v0, "password"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 173
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->b:Landroid/view/ViewGroup;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0423

    invoke-direct {p0, v2, v0}, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->a(II)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 175
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 106
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0348

    invoke-direct {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->a(I)V

    .line 107
    new-instance v0, Lcom/dolphin/browser/DolphinService/ui/o;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/DolphinService/ui/o;-><init>(Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;)V

    .line 143
    new-instance v1, Lcom/dolphin/browser/DolphinService/WebService/d;

    new-instance v2, Lcom/dolphin/browser/DolphinService/ui/p;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/DolphinService/ui/p;-><init>(Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;)V

    invoke-direct {v1, v2, v0}, Lcom/dolphin/browser/DolphinService/WebService/d;-><init>(Lcom/dolphin/browser/DolphinService/WebService/c;Lcom/dolphin/browser/DolphinService/WebService/a;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 157
    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->c()V

    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0347

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 183
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->finish()V

    .line 184
    return-void
.end method

.method static synthetic c(Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->g()V

    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 188
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e021f

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 189
    return-void
.end method

.method static synthetic d(Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->d()V

    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0220

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 194
    invoke-static {}, Lcom/dolphin/browser/bookmarks/d;->b()V

    .line 195
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->finish()V

    .line 196
    return-void
.end method

.method static synthetic e(Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->e()V

    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 200
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 203
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0040

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00d9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e03c1

    new-instance v2, Lcom/dolphin/browser/DolphinService/ui/q;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/DolphinService/ui/q;-><init>(Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0127

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 215
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 219
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0221

    invoke-direct {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->a(I)V

    .line 220
    new-instance v0, Lcom/dolphin/browser/DolphinService/ui/r;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/DolphinService/ui/r;-><init>(Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;)V

    .line 245
    new-instance v1, Lcom/dolphin/browser/DolphinService/WebService/d;

    new-instance v2, Lcom/dolphin/browser/DolphinService/ui/s;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/DolphinService/ui/s;-><init>(Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;)V

    invoke-direct {v1, v2, v0}, Lcom/dolphin/browser/DolphinService/WebService/d;-><init>(Lcom/dolphin/browser/DolphinService/WebService/c;Lcom/dolphin/browser/DolphinService/WebService/a;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 259
    return-void
.end method

.method private h()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->a:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/DialogInterface;)Z

    .line 289
    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 310
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->finish()V

    .line 311
    invoke-static {p0}, Lcom/mgeek/android/util/t;->a(Landroid/app/Activity;)V

    .line 312
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 264
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 265
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080075

    if-ne v0, v1, :cond_1

    .line 266
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->onBackPressed()V

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08011c

    if-ne v0, v1, :cond_0

    .line 268
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->f()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 58
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const-string v0, "BookmarkSyncActivityLife"

    const-string v1, "CloudDataManageActivity.onCreate"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Landroid/app/Activity;)V

    .line 62
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f03004c

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->setContentView(I)V

    .line 63
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->a()V

    .line 64
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->b()V

    .line 66
    return-void
.end method
