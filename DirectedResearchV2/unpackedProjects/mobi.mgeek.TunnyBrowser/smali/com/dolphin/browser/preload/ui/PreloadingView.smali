.class public Lcom/dolphin/browser/preload/ui/PreloadingView;
.super Landroid/widget/FrameLayout;
.source "PreloadingView.java"


# static fields
.field private static final f:I

.field private static final g:I

.field private static final h:I

.field private static final o:[Ljava/lang/String;


# instance fields
.field private a:Lcom/dolphin/browser/preload/ui/PreloadingProgressBar;

.field private b:Landroid/support/v4/view/ViewPager2;

.field private c:Lcom/dolphin/browser/preload/ui/f;

.field private d:Z

.field private e:Lcom/dolphin/browser/preload/ui/h;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/app/Dialog;

.field private p:I

.field private q:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 257
    const/16 v0, 0x15

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v0

    sput v0, Lcom/dolphin/browser/preload/ui/PreloadingView;->f:I

    .line 258
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v0

    sput v0, Lcom/dolphin/browser/preload/ui/PreloadingView;->g:I

    .line 259
    const/16 v0, 0x1f

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v0

    sput v0, Lcom/dolphin/browser/preload/ui/PreloadingView;->h:I

    .line 268
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "."

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ".."

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "..."

    aput-object v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/preload/ui/PreloadingView;->o:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/preload/ui/PreloadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->d:Z

    .line 296
    const/4 v0, -0x1

    iput v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->p:I

    .line 297
    new-instance v0, Lcom/dolphin/browser/preload/ui/e;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/preload/ui/e;-><init>(Lcom/dolphin/browser/preload/ui/PreloadingView;)V

    iput-object v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->q:Ljava/lang/Runnable;

    .line 73
    invoke-direct {p0, p1}, Lcom/dolphin/browser/preload/ui/PreloadingView;->a(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/preload/ui/PreloadingView;I)I
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->p:I

    return p1
.end method

.method static synthetic a(Lcom/dolphin/browser/preload/ui/PreloadingView;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->n:Landroid/app/Dialog;

    return-object p1
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/dolphin/browser/preload/ui/PreloadingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 330
    invoke-virtual {p0}, Lcom/dolphin/browser/preload/ui/PreloadingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 331
    const/4 v0, 0x0

    .line 332
    const-string v3, "drawable"

    invoke-virtual {v1, p1, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 334
    if-eqz v2, :cond_0

    .line 336
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 341
    :cond_0
    :goto_0
    return-object v0

    .line 337
    :catch_0
    move-exception v1

    .line 338
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/preload/ui/PreloadingView;)Landroid/support/v4/view/ViewPager2;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->b:Landroid/support/v4/view/ViewPager2;

    return-object v0
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->a:Lcom/dolphin/browser/preload/ui/PreloadingProgressBar;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/preload/ui/PreloadingProgressBar;->b(I)V

    .line 437
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->a:Lcom/dolphin/browser/preload/ui/PreloadingProgressBar;

    invoke-virtual {v0}, Lcom/dolphin/browser/preload/ui/PreloadingProgressBar;->invalidate()V

    .line 438
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 152
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f03007b

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 153
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08021b

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/preload/ui/PreloadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/preload/ui/PreloadingProgressBar;

    iput-object v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->a:Lcom/dolphin/browser/preload/ui/PreloadingProgressBar;

    .line 154
    invoke-direct {p0}, Lcom/dolphin/browser/preload/ui/PreloadingView;->m()V

    .line 155
    invoke-direct {p0}, Lcom/dolphin/browser/preload/ui/PreloadingView;->k()V

    .line 156
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->a:Lcom/dolphin/browser/preload/ui/PreloadingProgressBar;

    iget-object v1, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->b:Landroid/support/v4/view/ViewPager2;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager2;->b()Landroid/support/v4/view/ae;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ae;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/preload/ui/PreloadingProgressBar;->a(I)V

    .line 157
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->a:Lcom/dolphin/browser/preload/ui/PreloadingProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/preload/ui/PreloadingProgressBar;->setVisibility(I)V

    .line 158
    invoke-direct {p0}, Lcom/dolphin/browser/preload/ui/PreloadingView;->j()V

    .line 159
    return-void
.end method

.method private a(Landroid/support/v4/view/ViewPager2;Lcom/dolphin/browser/preload/a/f;)V
    .locals 10

    .prologue
    const/4 v9, -0x1

    .line 219
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 224
    invoke-virtual {p2}, Lcom/dolphin/browser/preload/a/f;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 231
    invoke-direct {p0, v0}, Lcom/dolphin/browser/preload/ui/PreloadingView;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 232
    if-eqz v0, :cond_2

    .line 233
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/dolphin/browser/preload/ui/PreloadingView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 234
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/dolphin/browser/preload/ui/PreloadingView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 236
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 237
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 238
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 239
    sget v5, Lcom/dolphin/browser/preload/ui/PreloadingView;->f:I

    sget v6, Lcom/dolphin/browser/preload/ui/PreloadingView;->g:I

    sget v7, Lcom/dolphin/browser/preload/ui/PreloadingView;->f:I

    sget v8, Lcom/dolphin/browser/preload/ui/PreloadingView;->h:I

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 240
    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    invoke-virtual {p0}, Lcom/dolphin/browser/preload/ui/PreloadingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->screenHeightPixel(Landroid/content/Context;)I

    move-result v0

    const/16 v5, 0x1e0

    if-le v0, v5, :cond_3

    .line 243
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 247
    :goto_2
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 245
    :cond_3
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_2

    .line 250
    :cond_4
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->i:Landroid/view/View;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    new-instance v0, Lcom/dolphin/browser/preload/ui/f;

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/preload/ui/f;-><init>(Lcom/dolphin/browser/preload/ui/PreloadingView;Ljava/util/List;)V

    iput-object v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->c:Lcom/dolphin/browser/preload/ui/f;

    .line 252
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->b:Landroid/support/v4/view/ViewPager2;

    iget-object v1, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->c:Lcom/dolphin/browser/preload/ui/f;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager2;->a(Landroid/support/v4/view/ae;)V

    .line 253
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->b:Landroid/support/v4/view/ViewPager2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager2;->a(I)V

    .line 254
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->b:Landroid/support/v4/view/ViewPager2;

    new-instance v1, Lcom/dolphin/browser/preload/ui/g;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/preload/ui/g;-><init>(Lcom/dolphin/browser/preload/ui/PreloadingView;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager2;->a(Landroid/support/v4/view/cj;)V

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/dolphin/browser/preload/ui/PreloadingView;I)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/dolphin/browser/preload/ui/PreloadingView;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/preload/ui/PreloadingView;)Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->d:Z

    return v0
.end method

.method static synthetic c(Lcom/dolphin/browser/preload/ui/PreloadingView;)Z
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/dolphin/browser/preload/ui/PreloadingView;->i()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/dolphin/browser/preload/ui/PreloadingView;)Z
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/dolphin/browser/preload/ui/PreloadingView;->g()Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/dolphin/browser/preload/ui/PreloadingView;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/dolphin/browser/preload/ui/PreloadingView;->h()V

    return-void
.end method

.method static synthetic f(Lcom/dolphin/browser/preload/ui/PreloadingView;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/dolphin/browser/preload/ui/PreloadingView;->n()V

    return-void
.end method

.method static synthetic f()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/dolphin/browser/preload/ui/PreloadingView;->o:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/dolphin/browser/preload/ui/PreloadingView;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->n:Landroid/app/Dialog;

    return-object v0
.end method

.method private g()Z
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->b:Landroid/support/v4/view/ViewPager2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->b:Landroid/support/v4/view/ViewPager2;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager2;->b()Landroid/support/v4/view/ae;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->b:Landroid/support/v4/view/ViewPager2;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager2;->f()I

    move-result v0

    iget-object v1, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->b:Landroid/support/v4/view/ViewPager2;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager2;->b()Landroid/support/v4/view/ae;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ae;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic h(Lcom/dolphin/browser/preload/ui/PreloadingView;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->p:I

    return v0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->e:Lcom/dolphin/browser/preload/ui/h;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->e:Lcom/dolphin/browser/preload/ui/h;

    invoke-interface {v0}, Lcom/dolphin/browser/preload/ui/h;->a()V

    .line 130
    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/dolphin/browser/preload/ui/PreloadingView;)I
    .locals 2

    .prologue
    .line 37
    iget v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->p:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->p:I

    return v0
.end method

.method private i()Z
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic j(Lcom/dolphin/browser/preload/ui/PreloadingView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 162
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 163
    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a001a

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/preload/ui/PreloadingView;->setBackgroundColor(I)V

    .line 164
    return-void
.end method

.method static synthetic k(Lcom/dolphin/browser/preload/ui/PreloadingView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->q:Ljava/lang/Runnable;

    return-object v0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 167
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08021a

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/preload/ui/PreloadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager2;

    iput-object v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->b:Landroid/support/v4/view/ViewPager2;

    .line 168
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->b:Landroid/support/v4/view/ViewPager2;

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f0202b7

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager2;->setBackgroundResource(I)V

    .line 169
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->b:Landroid/support/v4/view/ViewPager2;

    invoke-static {}, Lcom/dolphin/browser/preload/m;->a()Lcom/dolphin/browser/preload/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/preload/m;->m()Lcom/dolphin/browser/preload/a/f;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/preload/ui/PreloadingView;->a(Landroid/support/v4/view/ViewPager2;Lcom/dolphin/browser/preload/a/f;)V

    .line 171
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->b:Landroid/support/v4/view/ViewPager2;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager2;->b()Landroid/support/v4/view/ae;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->b:Landroid/support/v4/view/ViewPager2;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager2;->b()Landroid/support/v4/view/ae;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ae;->a()I

    move-result v0

    if-nez v0, :cond_1

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->b:Landroid/support/v4/view/ViewPager2;

    invoke-direct {p0}, Lcom/dolphin/browser/preload/ui/PreloadingView;->l()Lcom/dolphin/browser/preload/a/f;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/preload/ui/PreloadingView;->a(Landroid/support/v4/view/ViewPager2;Lcom/dolphin/browser/preload/a/f;)V

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->b:Landroid/support/v4/view/ViewPager2;

    new-instance v1, Lcom/dolphin/browser/preload/ui/c;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/preload/ui/c;-><init>(Lcom/dolphin/browser/preload/ui/PreloadingView;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager2;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 204
    return-void
.end method

.method private l()Lcom/dolphin/browser/preload/a/f;
    .locals 3

    .prologue
    .line 207
    const/4 v0, 0x0

    .line 209
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/preload/b;->a()Lcom/dolphin/browser/preload/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/preload/b;->k()Ljava/lang/String;

    move-result-object v1

    .line 211
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/dolphin/browser/preload/a/f;->a(Lorg/json/JSONObject;)Lcom/dolphin/browser/preload/a/f;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 215
    :goto_0
    return-object v0

    .line 212
    :catch_0
    move-exception v1

    .line 213
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic l(Lcom/dolphin/browser/preload/ui/PreloadingView;)Lcom/dolphin/browser/preload/ui/PreloadingProgressBar;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->a:Lcom/dolphin/browser/preload/ui/PreloadingProgressBar;

    return-object v0
.end method

.method private m()V
    .locals 3

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/dolphin/browser/preload/ui/PreloadingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f03007c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->i:Landroid/view/View;

    .line 274
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->i:Landroid/view/View;

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08021c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->j:Landroid/view/View;

    .line 275
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->i:Landroid/view/View;

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08021f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->k:Landroid/view/View;

    .line 277
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->i:Landroid/view/View;

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080221

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->l:Landroid/widget/TextView;

    .line 278
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->k:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->i:Landroid/view/View;

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080223

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->m:Landroid/widget/TextView;

    .line 281
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dolphin/browser/preload/ui/PreloadingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a011a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 282
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->m:Landroid/widget/TextView;

    new-instance v1, Lcom/dolphin/browser/preload/ui/d;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/preload/ui/d;-><init>(Lcom/dolphin/browser/preload/ui/PreloadingView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    return-void
.end method

.method private n()V
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->b:Landroid/support/v4/view/ViewPager2;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager2;->e()V

    .line 443
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->d:Z

    .line 444
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 100
    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/preload/ui/b;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/preload/ui/b;-><init>(Lcom/dolphin/browser/preload/ui/PreloadingView;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 117
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->c:Lcom/dolphin/browser/preload/ui/f;

    if-eqz v0, :cond_1

    .line 78
    if-eqz p1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->c:Lcom/dolphin/browser/preload/ui/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/dolphin/browser/preload/ui/f;->a(ILandroid/view/View;)V

    .line 81
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/preload/ui/a;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/preload/ui/a;-><init>(Lcom/dolphin/browser/preload/ui/PreloadingView;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 92
    :cond_1
    return-void
.end method

.method public a(Lcom/dolphin/browser/preload/ui/h;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->e:Lcom/dolphin/browser/preload/ui/h;

    .line 135
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 138
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->k:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->a:Lcom/dolphin/browser/preload/ui/PreloadingProgressBar;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/preload/ui/PreloadingProgressBar;->setVisibility(I)V

    .line 141
    return-void
.end method

.method public c()Landroid/view/View;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingView;->j:Landroid/view/View;

    return-object v0
.end method

.method public d()V
    .locals 0

    .prologue
    .line 313
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 322
    return-void
.end method
