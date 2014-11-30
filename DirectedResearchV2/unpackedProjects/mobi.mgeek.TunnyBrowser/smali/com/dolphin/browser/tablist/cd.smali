.class public Lcom/dolphin/browser/tablist/cd;
.super Ljava/lang/Object;
.source "TabListSwipeGuide.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/dolphin/browser/tablist/ac;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/FrameLayout$LayoutParams;

.field private e:Lcom/g/a/s;

.field private f:I

.field private g:Lcom/g/a/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/dolphin/browser/tablist/ac;)V
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/dolphin/browser/tablist/ce;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/tablist/ce;-><init>(Lcom/dolphin/browser/tablist/cd;)V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/cd;->g:Lcom/g/a/b;

    .line 28
    iput-object p1, p0, Lcom/dolphin/browser/tablist/cd;->a:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/dolphin/browser/tablist/cd;->b:Lcom/dolphin/browser/tablist/ac;

    .line 31
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/cd;->c:Landroid/widget/ImageView;

    .line 32
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/cd;->d:Landroid/widget/FrameLayout$LayoutParams;

    .line 34
    iget-object v0, p0, Lcom/dolphin/browser/tablist/cd;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b0131

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/tablist/cd;->f:I

    .line 37
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/cd;->a()V

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/tablist/cd;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/dolphin/browser/tablist/cd;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic b(Lcom/dolphin/browser/tablist/cd;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/dolphin/browser/tablist/cd;->d:Landroid/widget/FrameLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic c(Lcom/dolphin/browser/tablist/cd;)Lcom/dolphin/browser/tablist/ac;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/dolphin/browser/tablist/cd;->b:Lcom/dolphin/browser/tablist/ac;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/dolphin/browser/tablist/cd;->c:Landroid/widget/ImageView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0202cd

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    return-void
.end method

.method public b()V
    .locals 9

    .prologue
    const/4 v3, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 76
    iget-object v0, p0, Lcom/dolphin/browser/tablist/cd;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b00e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 77
    iget-object v1, p0, Lcom/dolphin/browser/tablist/cd;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/dolphin/browser/util/DisplayManager;->isPortrait(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/dolphin/browser/tablist/cd;->d:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 79
    iget-object v0, p0, Lcom/dolphin/browser/tablist/cd;->d:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/dolphin/browser/tablist/cd;->f:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 80
    iget-object v0, p0, Lcom/dolphin/browser/tablist/cd;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->screenWidthPixel(Landroid/content/Context;)I

    move-result v0

    .line 81
    iget-object v1, p0, Lcom/dolphin/browser/tablist/cd;->c:Landroid/widget/ImageView;

    const-string v2, "translationX"

    new-array v3, v3, [F

    div-int/lit8 v4, v0, 0x4

    int-to-float v4, v4

    aput v4, v3, v6

    mul-int/lit8 v4, v0, 0x3

    div-int/lit8 v4, v4, 0x4

    int-to-float v4, v4

    aput v4, v3, v7

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    aput v0, v3, v8

    invoke-static {v1, v2, v3}, Lcom/g/a/s;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/g/a/s;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/tablist/cd;->e:Lcom/g/a/s;

    .line 95
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/tablist/cd;->e:Lcom/g/a/s;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/g/a/s;->b(J)Lcom/g/a/s;

    .line 96
    iget-object v0, p0, Lcom/dolphin/browser/tablist/cd;->e:Lcom/g/a/s;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/cd;->g:Lcom/g/a/b;

    invoke-virtual {v0, v1}, Lcom/g/a/s;->a(Lcom/g/a/b;)V

    .line 97
    iget-object v0, p0, Lcom/dolphin/browser/tablist/cd;->e:Lcom/g/a/s;

    invoke-virtual {v0}, Lcom/g/a/s;->a()V

    .line 98
    return-void

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/tablist/cd;->d:Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x5

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 86
    iget-object v1, p0, Lcom/dolphin/browser/tablist/cd;->d:Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 87
    iget-object v0, p0, Lcom/dolphin/browser/tablist/cd;->d:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/dolphin/browser/tablist/cd;->f:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 88
    iget-object v0, p0, Lcom/dolphin/browser/tablist/cd;->c:Landroid/widget/ImageView;

    const-string v1, "translationY"

    new-array v2, v3, [F

    aput v5, v2, v6

    iget-object v3, p0, Lcom/dolphin/browser/tablist/cd;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v4, 0x7f0b0132

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    aput v3, v2, v7

    aput v5, v2, v8

    invoke-static {v0, v1, v2}, Lcom/g/a/s;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/g/a/s;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/tablist/cd;->e:Lcom/g/a/s;

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/dolphin/browser/tablist/cd;->e:Lcom/g/a/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/tablist/cd;->e:Lcom/g/a/s;

    invoke-virtual {v0}, Lcom/g/a/s;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/dolphin/browser/tablist/cd;->e:Lcom/g/a/s;

    invoke-virtual {v0}, Lcom/g/a/s;->b()V

    .line 104
    :cond_0
    return-void
.end method
