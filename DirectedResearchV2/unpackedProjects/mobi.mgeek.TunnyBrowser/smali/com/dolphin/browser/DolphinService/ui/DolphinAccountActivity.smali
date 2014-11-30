.class public Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;
.super Lmobi/mgeek/TunnyBrowser/BaseActivity;
.source "DolphinAccountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;-><init>()V

    .line 493
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->c:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->c:Landroid/net/Uri;

    return-object p1
.end method

.method private a()V
    .locals 6

    .prologue
    const v5, 0x7f020277

    .line 82
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    .line 83
    sget-object v0, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v0, 0x7f0a006f

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    .line 84
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v4, 0x7f0a00f2

    invoke-virtual {v1, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 88
    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a00f3

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v4, 0x7f0e0003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800ab

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 92
    invoke-static {v0}, Lcom/dolphin/browser/theme/bf;->a(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080075

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 95
    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v3

    sget-object v4, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v4, 0x7f02026a

    invoke-virtual {v3, v4}, Lcom/dolphin/browser/util/bb;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801a8

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 100
    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f020275

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801a9

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 104
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 106
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080177

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->a:Landroid/widget/ImageView;

    .line 107
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->e()Lcom/dolphin/browser/DolphinService/Account/a;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/e;->a(Lcom/dolphin/browser/DolphinService/Account/a;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 108
    if-nez v0, :cond_0

    .line 109
    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v0

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f02001f

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/util/bb;->f(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 110
    iget-object v3, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->a:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    :goto_0
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801aa

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 117
    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v1, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801ab

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 122
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801ac

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->b:Landroid/widget/TextView;

    .line 125
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->b:Landroid/widget/TextView;

    invoke-static {}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801ad

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 129
    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v1, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801ae

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 134
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801af

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 137
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f02027b

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08011c

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 141
    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02004f

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0177

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 145
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0358

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 146
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    return-void

    .line 112
    :cond_0
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 113
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->a:Landroid/widget/ImageView;

    invoke-static {v3}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Landroid/app/AlertDialog;IZ)V
    .locals 0

    .prologue
    .line 57
    invoke-static {p0, p1, p2}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->b(Landroid/app/AlertDialog;IZ)V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/16 v2, 0x40

    .line 465
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 466
    if-eqz v0, :cond_0

    .line 467
    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 468
    if-nez v0, :cond_1

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, v2, v2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 474
    invoke-direct {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->a:Landroid/widget/ImageView;

    const/high16 v1, 0x42000000

    invoke-static {p1, v1}, Lcom/dolphin/browser/pagedrop/e/a;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 482
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->e()Lcom/dolphin/browser/DolphinService/Account/a;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/e;->b(Lcom/dolphin/browser/DolphinService/Account/a;)Ljava/io/File;

    move-result-object v0

    .line 483
    new-instance v1, Lcom/dolphin/browser/DolphinService/ui/aj;

    invoke-direct {v1, p0, v0, p1}, Lcom/dolphin/browser/DolphinService/ui/aj;-><init>(Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;Ljava/io/File;Landroid/graphics/Bitmap;)V

    .line 484
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/DolphinService/ui/aj;->d([Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 485
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->a(Ljava/io/File;)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 447
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/DolphinService/ui/ai;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/DolphinService/ui/ai;-><init>(Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;)V

    invoke-virtual {v0, p1, v1}, Lcom/dolphin/browser/DolphinService/Account/b;->a(Ljava/io/File;Lcom/dolphin/browser/DolphinService/WebService/a;)V

    .line 461
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 296
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/DolphinService/Account/b;->a(Ljava/lang/String;)V

    .line 298
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/dolphin/browser/DolphinService/ui/ag;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/DolphinService/ui/ag;-><init>(Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/DolphinService/Account/b;->a(Ljava/io/File;Lcom/dolphin/browser/DolphinService/WebService/a;)V

    .line 310
    return-void
.end method

.method private b()V
    .locals 6

    .prologue
    const v5, 0x7f0e00e1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 172
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 174
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->j()Z

    move-result v0

    .line 176
    if-eqz v0, :cond_0

    .line 177
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-virtual {p0, v5}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e061c

    invoke-virtual {p0, v2}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 185
    :goto_0
    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e04fc

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e00d9

    invoke-virtual {p0, v2}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/dolphin/browser/DolphinService/ui/ad;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/DolphinService/ui/ad;-><init>(Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 225
    return-void

    .line 181
    :cond_0
    new-array v0, v4, [Ljava/lang/String;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-virtual {p0, v5}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    goto :goto_0
.end method

.method private static b(Landroid/app/AlertDialog;IZ)V
    .locals 1

    .prologue
    .line 280
    instance-of v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog;

    if-eqz v0, :cond_1

    .line 281
    check-cast p0, Lcom/dolphin/browser/ui/fake/AlertDialog;

    .line 282
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/fake/AlertDialog;->getButtonTextView(I)Landroid/widget/TextView;

    move-result-object v0

    .line 283
    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 288
    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->h()V

    return-void
.end method

.method private c()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 229
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f030095

    invoke-static {p0, v0, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 230
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080161

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 231
    invoke-static {p0}, Lcom/dolphin/browser/util/cu;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 232
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a0180

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 233
    invoke-static {}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 234
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 235
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v3, 0x7f0b008a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 236
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v4, 0x7f0b0089

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 237
    invoke-virtual {v0, v3, v2, v3, v2}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 238
    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0095

    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHighlightColor(I)V

    .line 240
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e01e9

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e00d9

    invoke-virtual {v1, v2, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e03c1

    new-instance v3, Lcom/dolphin/browser/DolphinService/ui/ae;

    invoke-direct {v3, p0, v0}, Lcom/dolphin/browser/DolphinService/ui/ae;-><init>(Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 252
    new-instance v2, Lcom/dolphin/browser/DolphinService/ui/af;

    invoke-direct {v2, p0, v1}, Lcom/dolphin/browser/DolphinService/ui/af;-><init>(Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 275
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 276
    return-void
.end method

.method static synthetic c(Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->i()V

    return-void
.end method

.method private static d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->e()Lcom/dolphin/browser/DolphinService/Account/a;

    move-result-object v0

    .line 315
    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/a;->k()Ljava/lang/String;

    move-result-object v0

    .line 318
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()V
    .locals 0

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->f()V

    .line 324
    return-void
.end method

.method private f()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 328
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 330
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v2, 0x7f030054

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 331
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801c2

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 332
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v3

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v4, 0x7f0a0042

    invoke-virtual {v3, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 334
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e035b

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e01e8

    new-instance v2, Lcom/dolphin/browser/DolphinService/ui/ah;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/DolphinService/ui/ah;-><init>(Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e01e6

    invoke-virtual {v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 355
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 356
    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 358
    :cond_0
    return-void
.end method

.method private g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 362
    .line 363
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->e()Lcom/dolphin/browser/DolphinService/Account/a;

    move-result-object v0

    .line 364
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/a;->j()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/dolphin/browser/q/c/b;->a()Lcom/dolphin/browser/q/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/q/c/b;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e024a

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 370
    :goto_0
    return-object v0

    .line 368
    :cond_0
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e035a

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 375
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    .line 376
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->e(Z)V

    .line 377
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 381
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 382
    invoke-static {p0, v0}, Lcom/mgeek/android/util/t;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 383
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->finish()V

    .line 384
    return-void
.end method

.method private j()Z
    .locals 2

    .prologue
    .line 489
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Landroid/net/Uri;)V
    .locals 5

    .prologue
    const/16 v4, 0x40

    const/4 v3, 0x1

    .line 393
    if-nez p1, :cond_0

    .line 411
    :goto_0
    return-void

    .line 396
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 397
    const-string v1, "image/*"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 402
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 404
    const-string v1, "outputX"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 405
    const-string v1, "outputY"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 406
    const-string v1, "return-data"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 408
    const/4 v1, 0x3

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 409
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 415
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->finish()V

    .line 416
    invoke-static {p0}, Lcom/mgeek/android/util/t;->a(Landroid/app/Activity;)V

    .line 417
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 422
    invoke-super {p0, p1, p2, p3}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 423
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 424
    packed-switch p1, :pswitch_data_0

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 426
    :pswitch_0
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->c:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->c:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->a(Landroid/net/Uri;)V

    goto :goto_0

    .line 431
    :pswitch_1
    if-eqz p3, :cond_0

    .line 432
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->a(Landroid/net/Uri;)V

    goto :goto_0

    .line 436
    :pswitch_2
    invoke-direct {p0, p3}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 424
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 154
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080075

    if-ne v0, v1, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->onBackPressed()V

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0801a8

    if-ne v0, v1, :cond_2

    .line 157
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->b()V

    goto :goto_0

    .line 158
    :cond_2
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0801aa

    if-ne v0, v1, :cond_3

    .line 159
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->c()V

    goto :goto_0

    .line 160
    :cond_3
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0801ad

    if-ne v0, v1, :cond_4

    .line 162
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 163
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 164
    :cond_4
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08011c

    if-ne v0, v1, :cond_0

    .line 165
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->e()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 71
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const-string v0, "BookmarkSyncActivityLife"

    const-string v1, "DolphinAccountActivity.onCreate"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Landroid/app/Activity;)V

    .line 74
    invoke-static {p0}, Lcom/dolphin/browser/DolphinService/Account/b;->a(Landroid/content/Context;)Lcom/dolphin/browser/DolphinService/Account/b;

    .line 75
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f03004f

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->setContentView(I)V

    .line 77
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->a()V

    .line 78
    return-void
.end method
