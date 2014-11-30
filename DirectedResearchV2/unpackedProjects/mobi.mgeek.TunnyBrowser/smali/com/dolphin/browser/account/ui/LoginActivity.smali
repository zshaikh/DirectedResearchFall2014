.class public Lcom/dolphin/browser/account/ui/LoginActivity;
.super Lmobi/mgeek/TunnyBrowser/BaseActivity;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/TextView;

.field private h:Lcom/dolphin/browser/account/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/dolphin/browser/account/ui/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_account_login_finished"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 76
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/account/ui/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/account/ui/LoginActivity;->finish()V

    .line 80
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/account/ui/LoginActivity;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/dolphin/browser/account/ui/LoginActivity;->a()V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/account/ui/LoginActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/dolphin/browser/account/ui/LoginActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    invoke-static {p0, p1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 166
    invoke-static {}, Lcom/dolphin/browser/q/c/b;->a()Lcom/dolphin/browser/q/c/b;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Lcom/dolphin/browser/q/c/b;->b()V

    .line 168
    const/16 v1, 0x64

    new-instance v2, Lcom/dolphin/browser/account/ui/c;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/account/ui/c;-><init>(Lcom/dolphin/browser/account/ui/LoginActivity;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/dolphin/browser/q/c/b;->a(Landroid/app/Activity;ILcom/dolphin/browser/q/c/o;)V

    .line 180
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 183
    invoke-static {}, Lcom/dolphin/browser/q/d/aa;->a()Lcom/dolphin/browser/q/d/aa;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Lcom/dolphin/browser/q/d/aa;->b()V

    .line 185
    new-instance v1, Lcom/dolphin/browser/account/ui/d;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/account/ui/d;-><init>(Lcom/dolphin/browser/account/ui/LoginActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/dolphin/browser/q/d/aa;->a(Landroid/app/Activity;Lcom/dolphin/browser/q/d/e;)V

    .line 198
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 201
    invoke-static {}, Lcom/dolphin/browser/q/b/ag;->a()Lcom/dolphin/browser/q/b/ag;

    move-result-object v0

    .line 202
    new-instance v1, Lcom/dolphin/browser/account/ui/e;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/account/ui/e;-><init>(Lcom/dolphin/browser/account/ui/LoginActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/dolphin/browser/q/b/ag;->a(Landroid/content/Context;Lcom/dolphin/browser/q/b/ax;)V

    .line 215
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 218
    invoke-static {}, Lcom/dolphin/browser/q/a/j;->a()Lcom/dolphin/browser/q/a/j;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Lcom/dolphin/browser/q/a/j;->b()V

    .line 220
    new-instance v1, Lcom/dolphin/browser/account/ui/f;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/account/ui/f;-><init>(Lcom/dolphin/browser/account/ui/LoginActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/dolphin/browser/q/a/j;->a(Landroid/content/Context;Lcom/dolphin/browser/q/a/p;)V

    .line 232
    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/account/d;)V
    .locals 4

    .prologue
    .line 87
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 88
    invoke-virtual {p0}, Lcom/dolphin/browser/account/ui/LoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a0003

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    iget-object v1, p0, Lcom/dolphin/browser/account/ui/LoginActivity;->a:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00fb

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    iget-object v1, p0, Lcom/dolphin/browser/account/ui/LoginActivity;->b:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020276

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    iget-object v1, p0, Lcom/dolphin/browser/account/ui/LoginActivity;->e:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0109

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    iget-object v1, p0, Lcom/dolphin/browser/account/ui/LoginActivity;->g:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a010d

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    sget-object v1, Lcom/dolphin/browser/account/d;->b:Lcom/dolphin/browser/account/d;

    if-ne p1, v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/dolphin/browser/account/ui/LoginActivity;->e:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0243

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 99
    iget-object v1, p0, Lcom/dolphin/browser/account/ui/LoginActivity;->g:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0006

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 100
    iget-object v1, p0, Lcom/dolphin/browser/account/ui/LoginActivity;->c:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02029e

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    iget-object v1, p0, Lcom/dolphin/browser/account/ui/LoginActivity;->d:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02029a

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    iget-object v1, p0, Lcom/dolphin/browser/account/ui/LoginActivity;->f:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02029d

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    sget-object v1, Lcom/dolphin/browser/account/d;->c:Lcom/dolphin/browser/account/d;

    if-ne p1, v1, :cond_2

    .line 108
    iget-object v1, p0, Lcom/dolphin/browser/account/ui/LoginActivity;->e:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0656

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 109
    iget-object v1, p0, Lcom/dolphin/browser/account/ui/LoginActivity;->g:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0009

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 110
    iget-object v1, p0, Lcom/dolphin/browser/account/ui/LoginActivity;->c:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0202ae

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    iget-object v1, p0, Lcom/dolphin/browser/account/ui/LoginActivity;->d:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0202aa

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    iget-object v1, p0, Lcom/dolphin/browser/account/ui/LoginActivity;->f:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0202ad

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 117
    :cond_2
    sget-object v1, Lcom/dolphin/browser/account/d;->d:Lcom/dolphin/browser/account/d;

    if-ne p1, v1, :cond_3

    .line 118
    iget-object v1, p0, Lcom/dolphin/browser/account/ui/LoginActivity;->e:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e058e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 119
    iget-object v1, p0, Lcom/dolphin/browser/account/ui/LoginActivity;->g:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0005

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 120
    iget-object v1, p0, Lcom/dolphin/browser/account/ui/LoginActivity;->c:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020297

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    iget-object v1, p0, Lcom/dolphin/browser/account/ui/LoginActivity;->d:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020293

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    iget-object v1, p0, Lcom/dolphin/browser/account/ui/LoginActivity;->f:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020296

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 127
    :cond_3
    sget-object v1, Lcom/dolphin/browser/account/d;->e:Lcom/dolphin/browser/account/d;

    if-ne p1, v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/dolphin/browser/account/ui/LoginActivity;->e:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e00c9

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 129
    iget-object v1, p0, Lcom/dolphin/browser/account/ui/LoginActivity;->g:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0004

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 130
    iget-object v1, p0, Lcom/dolphin/browser/account/ui/LoginActivity;->c:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020289

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    iget-object v1, p0, Lcom/dolphin/browser/account/ui/LoginActivity;->d:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020284

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    iget-object v1, p0, Lcom/dolphin/browser/account/ui/LoginActivity;->f:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020287

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 154
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 155
    invoke-static {}, Lcom/dolphin/browser/q/c/b;->a()Lcom/dolphin/browser/q/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/dolphin/browser/q/c/b;->a(IILandroid/content/Intent;)V

    .line 158
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/dolphin/browser/account/ui/LoginActivity;->h:Lcom/dolphin/browser/account/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/account/a;->a()Lcom/dolphin/browser/account/d;

    move-result-object v0

    .line 141
    sget-object v1, Lcom/dolphin/browser/account/d;->b:Lcom/dolphin/browser/account/d;

    if-ne v0, v1, :cond_1

    .line 142
    invoke-direct {p0}, Lcom/dolphin/browser/account/ui/LoginActivity;->b()V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    sget-object v1, Lcom/dolphin/browser/account/d;->c:Lcom/dolphin/browser/account/d;

    if-ne v0, v1, :cond_2

    .line 144
    invoke-direct {p0}, Lcom/dolphin/browser/account/ui/LoginActivity;->c()V

    goto :goto_0

    .line 145
    :cond_2
    sget-object v1, Lcom/dolphin/browser/account/d;->d:Lcom/dolphin/browser/account/d;

    if-ne v0, v1, :cond_3

    .line 146
    invoke-direct {p0}, Lcom/dolphin/browser/account/ui/LoginActivity;->d()V

    goto :goto_0

    .line 147
    :cond_3
    sget-object v1, Lcom/dolphin/browser/account/d;->e:Lcom/dolphin/browser/account/d;

    if-ne v0, v1, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/dolphin/browser/account/ui/LoginActivity;->e()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 42
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/dolphin/browser/account/ui/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 45
    const-string v1, "share_type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 47
    new-instance v1, Lcom/dolphin/browser/account/a;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/account/a;-><init>(I)V

    iput-object v1, p0, Lcom/dolphin/browser/account/ui/LoginActivity;->h:Lcom/dolphin/browser/account/a;

    .line 48
    iget-object v0, p0, Lcom/dolphin/browser/account/ui/LoginActivity;->h:Lcom/dolphin/browser/account/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/account/a;->a()Lcom/dolphin/browser/account/d;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/account/d;->f:Lcom/dolphin/browser/account/d;

    if-ne v0, v1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/dolphin/browser/account/ui/LoginActivity;->finish()V

    .line 71
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/account/ui/LoginActivity;->h:Lcom/dolphin/browser/account/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/account/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    invoke-direct {p0}, Lcom/dolphin/browser/account/ui/LoginActivity;->a()V

    goto :goto_0

    .line 57
    :cond_1
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Landroid/app/Activity;)V

    .line 58
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/account/ui/LoginActivity;->setContentView(I)V

    .line 59
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/account/ui/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/account/ui/LoginActivity;->a:Landroid/widget/TextView;

    .line 60
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08003e

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/account/ui/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/account/ui/LoginActivity;->b:Landroid/view/View;

    .line 61
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080042

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/account/ui/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/account/ui/LoginActivity;->e:Landroid/widget/TextView;

    .line 62
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080043

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/account/ui/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/account/ui/LoginActivity;->g:Landroid/widget/TextView;

    .line 63
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080040

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/account/ui/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/account/ui/LoginActivity;->c:Landroid/widget/ImageView;

    .line 64
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08003f

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/account/ui/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/account/ui/LoginActivity;->d:Landroid/view/View;

    .line 65
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080041

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/account/ui/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/account/ui/LoginActivity;->f:Landroid/widget/ImageView;

    .line 67
    iget-object v0, p0, Lcom/dolphin/browser/account/ui/LoginActivity;->a:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/dolphin/browser/account/ui/LoginActivity;->h:Lcom/dolphin/browser/account/a;

    invoke-virtual {v2}, Lcom/dolphin/browser/account/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0352

    invoke-virtual {p0, v2}, Lcom/dolphin/browser/account/ui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/dolphin/browser/account/ui/LoginActivity;->d:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/dolphin/browser/account/ui/LoginActivity;->h:Lcom/dolphin/browser/account/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/account/a;->a()Lcom/dolphin/browser/account/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/account/ui/LoginActivity;->a(Lcom/dolphin/browser/account/d;)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 162
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onDestroy()V

    .line 163
    return-void
.end method
