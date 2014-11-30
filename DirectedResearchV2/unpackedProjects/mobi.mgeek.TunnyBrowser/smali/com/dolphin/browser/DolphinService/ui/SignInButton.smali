.class public Lcom/dolphin/browser/DolphinService/ui/SignInButton;
.super Landroid/widget/LinearLayout;
.source "SignInButton.java"

# interfaces
.implements Lcom/dolphin/browser/DolphinService/Account/l;
.implements Ljava/util/Observer;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/DolphinService/ui/SignInButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/SignInButton;->b()V

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/DolphinService/ui/SignInButton;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/SignInButton;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic b(Lcom/dolphin/browser/DolphinService/ui/SignInButton;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/SignInButton;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/SignInButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f03005e

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 49
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801ce

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/SignInButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/SignInButton;->a:Landroid/widget/TextView;

    .line 50
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801cf

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/SignInButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/SignInButton;->b:Landroid/widget/TextView;

    .line 51
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080177

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/SignInButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/SignInButton;->c:Landroid/widget/ImageView;

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/SignInButton;->setOrientation(I)V

    .line 54
    invoke-static {}, Lcom/dolphin/browser/DolphinService/c;->a()Lcom/dolphin/browser/DolphinService/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/DolphinService/c;->addObserver(Ljava/util/Observer;)V

    .line 55
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/DolphinService/Account/b;->a(Lcom/dolphin/browser/DolphinService/Account/l;)V

    .line 56
    return-void
.end method

.method private b(Lcom/dolphin/browser/DolphinService/Account/a;)V
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lcom/dolphin/browser/DolphinService/ui/co;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/DolphinService/ui/co;-><init>(Lcom/dolphin/browser/DolphinService/ui/SignInButton;Lcom/dolphin/browser/DolphinService/Account/a;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 131
    return-void
.end method

.method static synthetic c(Lcom/dolphin/browser/DolphinService/ui/SignInButton;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/SignInButton;->b:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const v3, 0x7f02001f

    .line 60
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 61
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/DolphinService/Account/b;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/SignInButton;->a:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e05a4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 63
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/SignInButton;->b:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e035f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 64
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 65
    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/SignInButton;->c:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/SignInButton;->a:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0062

    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/SignInButton;->b:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a006b

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    return-void

    .line 67
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/DolphinService/Account/b;->e()Lcom/dolphin/browser/DolphinService/Account/a;

    move-result-object v1

    .line 68
    invoke-static {v1}, Lcom/dolphin/browser/DolphinService/e;->a(Lcom/dolphin/browser/DolphinService/Account/a;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 69
    if-eqz v2, :cond_1

    .line 70
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/SignInButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 71
    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/SignInButton;->c:Landroid/widget/ImageView;

    invoke-static {v3}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    :goto_1
    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/SignInButton;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/dolphin/browser/DolphinService/Account/a;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/SignInButton;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/dolphin/browser/DolphinService/Account/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 73
    :cond_1
    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 74
    iget-object v3, p0, Lcom/dolphin/browser/DolphinService/ui/SignInButton;->c:Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public a(Lcom/dolphin/browser/DolphinService/Account/a;)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/SignInButton;->b(Lcom/dolphin/browser/DolphinService/Account/a;)V

    .line 118
    return-void
.end method

.method public a(Lcom/dolphin/browser/DolphinService/Account/a;Z)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/SignInButton;->b(Lcom/dolphin/browser/DolphinService/Account/a;)V

    .line 112
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 136
    new-instance v0, Lcom/dolphin/browser/DolphinService/ui/cp;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/DolphinService/ui/cp;-><init>(Lcom/dolphin/browser/DolphinService/ui/SignInButton;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 148
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 87
    new-instance v0, Lcom/dolphin/browser/DolphinService/ui/cn;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/DolphinService/ui/cn;-><init>(Lcom/dolphin/browser/DolphinService/ui/SignInButton;)V

    sget-object v1, Lcom/dolphin/browser/util/t;->b:Lcom/dolphin/browser/util/t;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;Lcom/dolphin/browser/util/t;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 106
    return-void
.end method
