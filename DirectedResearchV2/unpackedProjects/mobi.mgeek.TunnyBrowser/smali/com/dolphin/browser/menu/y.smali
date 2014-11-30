.class public Lcom/dolphin/browser/menu/y;
.super Lcom/dolphin/browser/menu/a;
.source "PanelMenu.java"

# interfaces
.implements Landroid/support/v4/view/cc;
.implements Lcom/dolphin/browser/menu/ag;
.implements Lcom/dolphin/browser/ui/OrientationChangedListener;
.implements Ljava/util/Observer;


# instance fields
.field private e:Landroid/content/Context;

.field private f:Lcom/dolphin/browser/menu/PanelMenuTabBar;

.field private g:Lcom/dolphin/browser/menu/PanelMenuView;

.field private h:Landroid/widget/ImageView;

.field private i:Z

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/dolphin/browser/menu/a;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-direct {p0, p1}, Lcom/dolphin/browser/menu/y;->a(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 56
    iput-object p1, p0, Lcom/dolphin/browser/menu/y;->e:Landroid/content/Context;

    .line 57
    invoke-static {}, Lcom/dolphin/browser/menu/w;->a()Lcom/dolphin/browser/menu/w;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/menu/w;->addObserver(Ljava/util/Observer;)V

    .line 58
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 60
    new-instance v0, Lcom/dolphin/browser/menu/PanelMenuTabBar;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/menu/PanelMenuTabBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/menu/y;->f:Lcom/dolphin/browser/menu/PanelMenuTabBar;

    .line 61
    iget-object v0, p0, Lcom/dolphin/browser/menu/y;->f:Lcom/dolphin/browser/menu/PanelMenuTabBar;

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/menu/PanelMenuTabBar;->a(Lcom/dolphin/browser/menu/ag;)V

    .line 62
    iget-object v0, p0, Lcom/dolphin/browser/menu/y;->f:Lcom/dolphin/browser/menu/PanelMenuTabBar;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/menu/y;->addView(Landroid/view/View;)V

    .line 65
    new-instance v0, Lcom/dolphin/browser/menu/PanelMenuView;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/menu/PanelMenuView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/menu/y;->g:Lcom/dolphin/browser/menu/PanelMenuView;

    .line 66
    iget-object v0, p0, Lcom/dolphin/browser/menu/y;->g:Lcom/dolphin/browser/menu/PanelMenuView;

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/menu/PanelMenuView;->a(Landroid/support/v4/view/cc;)V

    .line 67
    iget-object v0, p0, Lcom/dolphin/browser/menu/y;->g:Lcom/dolphin/browser/menu/PanelMenuView;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/menu/y;->addView(Landroid/view/View;)V

    .line 68
    return-void
.end method

.method private a(Lcom/dolphin/browser/menu/w;I)V
    .locals 2

    .prologue
    .line 210
    invoke-static {}, Lcom/dolphin/browser/ui/a/a;->a()Lcom/dolphin/browser/ui/a/a;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/a/a;->d()Lcom/dolphin/browser/ui/a/c;

    move-result-object v0

    .line 212
    sget-object v1, Lcom/dolphin/browser/ui/a/c;->b:Lcom/dolphin/browser/ui/a/c;

    if-ne v1, v0, :cond_2

    .line 213
    const/4 v0, 0x1

    if-ne v0, p2, :cond_1

    .line 214
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/menu/y;->c(Lcom/dolphin/browser/menu/w;I)V

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/menu/y;->b(Lcom/dolphin/browser/menu/w;I)V

    goto :goto_0

    .line 218
    :cond_2
    sget-object v1, Lcom/dolphin/browser/ui/a/c;->c:Lcom/dolphin/browser/ui/a/c;

    if-ne v1, v0, :cond_0

    .line 219
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/menu/y;->b(Lcom/dolphin/browser/menu/w;I)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 422
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-boolean v2, p0, Lcom/dolphin/browser/menu/y;->i:Z

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 438
    :cond_1
    :goto_0
    return v0

    .line 425
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 426
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 428
    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 429
    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 430
    aget v5, v4, v1

    .line 431
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v5

    .line 432
    aget v4, v4, v0

    .line 433
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v7, v4

    .line 435
    if-lt v2, v5, :cond_3

    if-gt v2, v6, :cond_3

    if-lt v3, v4, :cond_3

    if-le v3, v7, :cond_1

    :cond_3
    move v0, v1

    .line 436
    goto :goto_0
.end method

.method private b(Lcom/dolphin/browser/menu/w;I)V
    .locals 9

    .prologue
    const/16 v8, 0x35

    const/4 v7, 0x0

    .line 225
    iget-object v0, p0, Lcom/dolphin/browser/menu/y;->f:Lcom/dolphin/browser/menu/PanelMenuTabBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/menu/y;->g:Lcom/dolphin/browser/menu/PanelMenuView;

    if-nez v0, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/menu/w;->a()Lcom/dolphin/browser/menu/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/w;->h()I

    move-result v0

    invoke-virtual {p0, v7, v7, v0, v7}, Lcom/dolphin/browser/menu/y;->setPadding(IIII)V

    .line 229
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/menu/y;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 230
    iget-object v0, p0, Lcom/dolphin/browser/menu/y;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b00c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 232
    iget-object v0, p0, Lcom/dolphin/browser/menu/y;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b00cf

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 234
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v3

    .line 235
    invoke-virtual {p1}, Lcom/dolphin/browser/menu/w;->b()I

    move-result v0

    mul-int/lit8 v4, v0, 0x3

    .line 237
    iget-object v0, p0, Lcom/dolphin/browser/menu/y;->f:Lcom/dolphin/browser/menu/PanelMenuTabBar;

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/PanelMenuTabBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 238
    iput v8, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 239
    iget-object v5, p0, Lcom/dolphin/browser/menu/y;->f:Lcom/dolphin/browser/menu/PanelMenuTabBar;

    sget-object v6, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v6, 0x7f02023b

    invoke-virtual {v3, v6}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/dolphin/browser/menu/PanelMenuTabBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 240
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 241
    invoke-static {}, Lcom/dolphin/browser/menu/w;->a()Lcom/dolphin/browser/menu/w;

    move-result-object v5

    invoke-virtual {v5}, Lcom/dolphin/browser/menu/w;->d()I

    move-result v5

    add-int/2addr v5, v2

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 243
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/y;->getPaddingTop()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v0, v7, v5, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 244
    iget-object v5, p0, Lcom/dolphin/browser/menu/y;->f:Lcom/dolphin/browser/menu/PanelMenuTabBar;

    invoke-virtual {v5, v7, v2, v7, v7}, Lcom/dolphin/browser/menu/PanelMenuTabBar;->setPadding(IIII)V

    .line 245
    iget-object v5, p0, Lcom/dolphin/browser/menu/y;->f:Lcom/dolphin/browser/menu/PanelMenuTabBar;

    invoke-virtual {v5, v0}, Lcom/dolphin/browser/menu/PanelMenuTabBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    iget-object v0, p0, Lcom/dolphin/browser/menu/y;->g:Lcom/dolphin/browser/menu/PanelMenuView;

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/PanelMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 249
    iput v8, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 250
    invoke-static {}, Lcom/dolphin/browser/menu/w;->a()Lcom/dolphin/browser/menu/w;

    move-result-object v5

    invoke-virtual {v5}, Lcom/dolphin/browser/menu/w;->d()I

    move-result v5

    add-int/2addr v1, v5

    invoke-virtual {p0}, Lcom/dolphin/browser/menu/y;->getPaddingTop()I

    move-result v5

    add-int/2addr v1, v5

    add-int/2addr v1, v2

    invoke-virtual {v0, v7, v1, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 253
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 254
    invoke-virtual {p1}, Lcom/dolphin/browser/menu/w;->c()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 255
    iget-object v1, p0, Lcom/dolphin/browser/menu/y;->g:Lcom/dolphin/browser/menu/PanelMenuView;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/menu/PanelMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    iget-object v0, p0, Lcom/dolphin/browser/menu/y;->g:Lcom/dolphin/browser/menu/PanelMenuView;

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f02023a

    invoke-virtual {v3, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/menu/PanelMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 258
    iget-object v0, p0, Lcom/dolphin/browser/menu/y;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b00ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 260
    iget-object v1, p0, Lcom/dolphin/browser/menu/y;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b00d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 262
    iget-object v2, p0, Lcom/dolphin/browser/menu/y;->g:Lcom/dolphin/browser/menu/PanelMenuView;

    invoke-virtual {v2, v0, v7, v0, v1}, Lcom/dolphin/browser/menu/PanelMenuView;->setPadding(IIII)V

    .line 263
    invoke-direct {p0}, Lcom/dolphin/browser/menu/y;->p()V

    goto/16 :goto_0
.end method

.method private c(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 143
    if-nez p1, :cond_0

    .line 144
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 146
    :cond_0
    const/4 v0, -0x3

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 147
    const/16 v0, 0x8

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 148
    const/16 v0, 0x3eb

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 149
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 150
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/y;->n()I

    move-result v0

    if-nez v0, :cond_1

    .line 151
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 155
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/menu/y;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    const/16 v0, 0x50

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 158
    const-string v0, "PanelMenu"

    const-string v1, "[optPanelParams] Portrait"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :goto_1
    return-object p1

    .line 153
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/y;->n()I

    move-result v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    .line 160
    :cond_2
    const/16 v0, 0x55

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 162
    const-string v0, "PanelMenu"

    const-string v1, "[optPanelParams] Landscape"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private c(Lcom/dolphin/browser/menu/w;I)V
    .locals 8

    .prologue
    const v7, 0x7f0a00b5

    const/16 v6, 0x50

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 268
    iget-object v0, p0, Lcom/dolphin/browser/menu/y;->f:Lcom/dolphin/browser/menu/PanelMenuTabBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/menu/y;->g:Lcom/dolphin/browser/menu/PanelMenuView;

    if-nez v0, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    invoke-virtual {p0, v4, v4, v4, v4}, Lcom/dolphin/browser/menu/y;->setPadding(IIII)V

    .line 272
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f0201e0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/menu/y;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 273
    iget-object v0, p0, Lcom/dolphin/browser/menu/y;->f:Lcom/dolphin/browser/menu/PanelMenuTabBar;

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/PanelMenuTabBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 274
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 275
    iget-object v1, p0, Lcom/dolphin/browser/menu/y;->f:Lcom/dolphin/browser/menu/PanelMenuTabBar;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v2, v7}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/menu/PanelMenuTabBar;->setBackgroundColor(I)V

    .line 277
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 278
    invoke-static {}, Lcom/dolphin/browser/menu/w;->a()Lcom/dolphin/browser/menu/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/menu/w;->d()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 279
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 280
    iget-object v1, p0, Lcom/dolphin/browser/menu/y;->f:Lcom/dolphin/browser/menu/PanelMenuTabBar;

    invoke-virtual {v1, v4, v4, v4, v4}, Lcom/dolphin/browser/menu/PanelMenuTabBar;->setPadding(IIII)V

    .line 281
    iget-object v1, p0, Lcom/dolphin/browser/menu/y;->f:Lcom/dolphin/browser/menu/PanelMenuTabBar;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/menu/PanelMenuTabBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    iget-object v0, p0, Lcom/dolphin/browser/menu/y;->g:Lcom/dolphin/browser/menu/PanelMenuView;

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/PanelMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 285
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 286
    invoke-static {}, Lcom/dolphin/browser/menu/w;->a()Lcom/dolphin/browser/menu/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/menu/w;->d()I

    move-result v1

    invoke-virtual {v0, v4, v4, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 288
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 289
    invoke-virtual {p1}, Lcom/dolphin/browser/menu/w;->c()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 290
    iget-object v1, p0, Lcom/dolphin/browser/menu/y;->g:Lcom/dolphin/browser/menu/PanelMenuView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v2, v7}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/menu/PanelMenuView;->setBackgroundColor(I)V

    .line 292
    iget-object v1, p0, Lcom/dolphin/browser/menu/y;->g:Lcom/dolphin/browser/menu/PanelMenuView;

    invoke-virtual {v1, v4, v4, v4, v4}, Lcom/dolphin/browser/menu/PanelMenuView;->setPadding(IIII)V

    .line 293
    iget-object v1, p0, Lcom/dolphin/browser/menu/y;->g:Lcom/dolphin/browser/menu/PanelMenuView;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/menu/PanelMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    iget-object v0, p0, Lcom/dolphin/browser/menu/y;->h:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/dolphin/browser/menu/y;->h:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private p()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 73
    iget-object v0, p0, Lcom/dolphin/browser/menu/y;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/dolphin/browser/menu/y;->h:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 75
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/dolphin/browser/menu/y;->e:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/dolphin/browser/menu/y;->h:Landroid/widget/ImageView;

    .line 76
    iget-object v1, p0, Lcom/dolphin/browser/menu/y;->h:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/menu/y;->addView(Landroid/view/View;)V

    .line 78
    :cond_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b00b0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget-object v3, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v3, 0x7f0b00ad

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 81
    const/16 v0, 0x35

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 82
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/y;->getPaddingTop()I

    move-result v0

    invoke-static {}, Lcom/dolphin/browser/menu/w;->a()Lcom/dolphin/browser/menu/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/menu/w;->i()I

    move-result v2

    invoke-virtual {v1, v4, v0, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 83
    iget-object v0, p0, Lcom/dolphin/browser/menu/y;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    iget-object v0, p0, Lcom/dolphin/browser/menu/y;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    return-void
.end method

.method private q()V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/dolphin/browser/menu/y;->g:Lcom/dolphin/browser/menu/PanelMenuView;

    if-nez v0, :cond_0

    .line 332
    :goto_0
    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/menu/y;->g:Lcom/dolphin/browser/menu/PanelMenuView;

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/PanelMenuView;->m()V

    goto :goto_0
.end method

.method private r()V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/dolphin/browser/menu/y;->j:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/menu/y;->removeView(Landroid/view/View;)V

    .line 418
    iget-object v0, p0, Lcom/dolphin/browser/menu/y;->k:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/menu/y;->removeView(Landroid/view/View;)V

    .line 419
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 5

    .prologue
    .line 337
    iget-object v0, p0, Lcom/dolphin/browser/menu/y;->f:Lcom/dolphin/browser/menu/PanelMenuTabBar;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/dolphin/browser/menu/y;->f:Lcom/dolphin/browser/menu/PanelMenuTabBar;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/menu/PanelMenuTabBar;->a(I)V

    .line 340
    :cond_0
    const-string v0, "PanelMenu"

    const-string v1, "[onPageSelected] %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 341
    return-void
.end method

.method public a(IFI)V
    .locals 0

    .prologue
    .line 324
    return-void
.end method

.method public a(IZ)V
    .locals 5

    .prologue
    .line 315
    const-string v0, "PanelMenu"

    const-string v1, "onTabSelectionChanged: %s, clicked: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 316
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/menu/y;->g:Lcom/dolphin/browser/menu/PanelMenuView;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/dolphin/browser/menu/y;->g:Lcom/dolphin/browser/menu/PanelMenuView;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/menu/PanelMenuView;->a(I)V

    .line 319
    :cond_0
    return-void
.end method

.method public a(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/dolphin/browser/menu/y;->c:Z

    if-eqz v0, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/menu/y;->onOrientationChanged(I)V

    .line 99
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/y;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_2

    .line 101
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 102
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 107
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/menu/y;->c:Z

    .line 108
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/y;->b()V

    .line 109
    iget-object v0, p0, Lcom/dolphin/browser/menu/y;->d:Lcom/dolphin/browser/menu/h;

    if-eqz v0, :cond_3

    .line 110
    iget-object v0, p0, Lcom/dolphin/browser/menu/y;->d:Lcom/dolphin/browser/menu/h;

    invoke-interface {v0, p0}, Lcom/dolphin/browser/menu/h;->a(Lcom/dolphin/browser/menu/a;)V

    .line 112
    :cond_3
    invoke-direct {p0}, Lcom/dolphin/browser/menu/y;->q()V

    .line 113
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/y;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 115
    invoke-direct {p0, p1}, Lcom/dolphin/browser/menu/y;->c(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    .line 116
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/y;->m()V

    .line 117
    invoke-static {p0, p1, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/WindowManager;)V

    .line 118
    invoke-static {}, Lcom/dolphin/browser/util/dk;->a()Lcom/dolphin/browser/util/dk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/util/dk;->g()V

    .line 119
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/y;->c()V

    goto :goto_0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 346
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/dolphin/browser/menu/y;->k:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/dolphin/browser/menu/y;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/y;->o()V

    .line 188
    :cond_0
    invoke-super {p0, p1}, Lcom/dolphin/browser/menu/a;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    const/4 v0, 0x1

    .line 194
    :goto_0
    return v0

    .line 191
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 192
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/y;->f()V

    .line 194
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()V
    .locals 2

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/dolphin/browser/menu/y;->c:Z

    if-nez v0, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/menu/y;->c:Z

    .line 130
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/y;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 132
    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 133
    iget-object v0, p0, Lcom/dolphin/browser/menu/y;->d:Lcom/dolphin/browser/menu/h;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/dolphin/browser/menu/y;->d:Lcom/dolphin/browser/menu/h;

    invoke-interface {v0, p0}, Lcom/dolphin/browser/menu/h;->b(Lcom/dolphin/browser/menu/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public m()V
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/dolphin/browser/menu/y;->h:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/dolphin/browser/menu/y;->h:Landroid/widget/ImageView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02021a

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/menu/y;->f:Lcom/dolphin/browser/menu/PanelMenuTabBar;

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/dolphin/browser/menu/y;->f:Lcom/dolphin/browser/menu/PanelMenuTabBar;

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/PanelMenuTabBar;->a()V

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/menu/y;->g:Lcom/dolphin/browser/menu/PanelMenuView;

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/dolphin/browser/menu/y;->g:Lcom/dolphin/browser/menu/PanelMenuView;

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/PanelMenuView;->l()V

    .line 180
    :cond_2
    return-void
.end method

.method public o()V
    .locals 1

    .prologue
    .line 359
    iget-boolean v0, p0, Lcom/dolphin/browser/menu/y;->i:Z

    if-eqz v0, :cond_0

    .line 360
    invoke-direct {p0}, Lcom/dolphin/browser/menu/y;->r()V

    .line 361
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/menu/y;->i:Z

    .line 363
    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1

    .prologue
    .line 307
    invoke-static {}, Lcom/dolphin/browser/menu/w;->a()Lcom/dolphin/browser/menu/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/menu/w;->a(I)V

    .line 308
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/y;->f()V

    .line 310
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 202
    invoke-static {}, Lcom/dolphin/browser/menu/w;->a()Lcom/dolphin/browser/menu/w;

    move-result-object v0

    .line 203
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/y;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 204
    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/menu/y;->a(Lcom/dolphin/browser/menu/w;I)V

    .line 205
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/y;->m()V

    .line 206
    return-void
.end method
