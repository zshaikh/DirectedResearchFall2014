.class public Lcom/dolphin/browser/c/h;
.super Lcom/dolphin/browser/c/a;
.source "CloseCurrentTabCommand.java"


# instance fields
.field private a:Lcom/g/a/d;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/widget/FrameLayout;

.field private d:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/dolphin/browser/c/a;-><init>()V

    .line 36
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/c/h;->c:Landroid/widget/FrameLayout;

    .line 37
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/c/h;->d:Landroid/widget/ImageView;

    .line 38
    iget-object v0, p0, Lcom/dolphin/browser/c/h;->c:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/dolphin/browser/c/h;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/c/h;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/dolphin/browser/c/h;->c:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;)Lcom/g/a/d;
    .locals 11

    .prologue
    const-wide/16 v9, 0xc8

    const/4 v8, 0x2

    const v4, 0x3f4ccccd

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 42
    iget-object v0, p0, Lcom/dolphin/browser/c/h;->d:Landroid/widget/ImageView;

    const-string v1, "scaleY"

    new-array v2, v7, [F

    aput v4, v2, v6

    invoke-static {v0, v1, v2}, Lcom/g/a/s;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/g/a/s;

    move-result-object v0

    .line 44
    invoke-virtual {v0, v9, v10}, Lcom/g/a/s;->b(J)Lcom/g/a/s;

    .line 45
    iget-object v1, p0, Lcom/dolphin/browser/c/h;->d:Landroid/widget/ImageView;

    const-string v2, "scaleX"

    new-array v3, v7, [F

    aput v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/g/a/s;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/g/a/s;

    move-result-object v1

    .line 47
    invoke-virtual {v1, v9, v10}, Lcom/g/a/s;->b(J)Lcom/g/a/s;

    .line 48
    iget-object v2, p0, Lcom/dolphin/browser/c/h;->d:Landroid/widget/ImageView;

    const-string v3, "translationY"

    new-array v4, v8, [F

    const/4 v5, 0x0

    aput v5, v4, v6

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Lcom/g/a/s;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/g/a/s;

    move-result-object v2

    .line 51
    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v3, v4}, Lcom/g/a/s;->b(J)Lcom/g/a/s;

    .line 53
    new-instance v3, Lcom/g/a/d;

    invoke-direct {v3}, Lcom/g/a/d;-><init>()V

    .line 54
    new-instance v4, Lcom/dolphin/browser/c/i;

    invoke-direct {v4, p0, p1}, Lcom/dolphin/browser/c/i;-><init>(Lcom/dolphin/browser/c/h;Landroid/view/ViewGroup;)V

    .line 76
    invoke-virtual {v3, v4}, Lcom/g/a/d;->a(Lcom/g/a/b;)V

    .line 77
    new-array v4, v8, [Lcom/g/a/a;

    aput-object v1, v4, v6

    aput-object v0, v4, v7

    invoke-virtual {v3, v4}, Lcom/g/a/d;->a([Lcom/g/a/a;)V

    .line 78
    invoke-virtual {v3, v2}, Lcom/g/a/d;->a(Lcom/g/a/a;)Lcom/g/a/g;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/g/a/g;->b(Lcom/g/a/a;)Lcom/g/a/g;

    .line 79
    return-object v3
.end method

.method static synthetic b(Lcom/dolphin/browser/c/h;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/dolphin/browser/c/h;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/dolphin/browser/c/h;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/dolphin/browser/c/h;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/c/h;->b:Landroid/graphics/Bitmap;

    .line 87
    :cond_0
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000

    .line 90
    iget-object v0, p0, Lcom/dolphin/browser/c/h;->d:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/g/c/a;->h(Landroid/view/View;F)V

    .line 91
    iget-object v0, p0, Lcom/dolphin/browser/c/h;->d:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/g/c/a;->e(Landroid/view/View;F)V

    .line 92
    iget-object v0, p0, Lcom/dolphin/browser/c/h;->d:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/g/c/a;->f(Landroid/view/View;F)V

    .line 93
    return-void
.end method

.method static synthetic c(Lcom/dolphin/browser/c/h;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/dolphin/browser/c/h;->b()V

    return-void
.end method

.method private d()V
    .locals 6

    .prologue
    .line 96
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v2

    .line 97
    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/c/h;->a:Lcom/g/a/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dolphin/browser/c/h;->a:Lcom/g/a/d;

    invoke-virtual {v0}, Lcom/g/a/d;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->Z()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 102
    const/4 v1, 0x0

    .line 104
    :try_start_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 106
    iput-object v1, p0, Lcom/dolphin/browser/c/h;->b:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_1
    if-eqz v1, :cond_3

    .line 111
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 112
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 113
    iget-object v3, p0, Lcom/dolphin/browser/c/h;->d:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 114
    iget-object v1, p0, Lcom/dolphin/browser/c/h;->a:Lcom/g/a/d;

    if-nez v1, :cond_2

    .line 115
    invoke-direct {p0, v0}, Lcom/dolphin/browser/c/h;->a(Landroid/view/ViewGroup;)Lcom/g/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/c/h;->a:Lcom/g/a/d;

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/c/h;->a:Lcom/g/a/d;

    invoke-virtual {v0}, Lcom/g/a/d;->a()V

    .line 119
    :cond_3
    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->closeCurrentWindow()V

    .line 120
    const-string v0, "tablist"

    const-string v1, "swipeclose"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :catch_0
    move-exception v3

    goto :goto_1

    .line 107
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method static synthetic d(Lcom/dolphin/browser/c/h;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/dolphin/browser/c/h;->c()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/dolphin/browser/c/h;->d()V

    .line 127
    const/4 v0, 0x1

    return v0
.end method
