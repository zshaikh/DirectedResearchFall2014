.class public Lcom/dolphin/browser/theme/bf;
.super Ljava/lang/Object;
.source "WallpaperDrawer.java"

# interfaces
.implements Lcom/dolphin/browser/ui/aa;


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I

.field private static final d:I

.field private static e:Lcom/dolphin/browser/theme/bf;


# instance fields
.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Z

.field private i:Landroid/graphics/Rect;

.field private j:Landroid/graphics/Rect;

.field private k:Lcom/dolphin/browser/theme/aq;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xff

    .line 47
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->screenHeightPixel(Landroid/content/Context;)I

    move-result v0

    .line 48
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/util/DisplayManager;->screenWidthPixel(Landroid/content/Context;)I

    move-result v1

    .line 49
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/dolphin/browser/theme/bf;->d:I

    .line 52
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f020329

    sput v0, Lcom/dolphin/browser/theme/bf;->a:I

    .line 53
    const/16 v0, 0x5f

    const/16 v1, 0x8a

    const/16 v2, 0xc3

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/dolphin/browser/theme/bf;->b:I

    .line 54
    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/dolphin/browser/theme/bf;->c:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/dolphin/browser/theme/bf;->f:Landroid/graphics/drawable/Drawable;

    .line 57
    iput-object v0, p0, Lcom/dolphin/browser/theme/bf;->g:Landroid/graphics/drawable/Drawable;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/theme/bf;->h:Z

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/theme/bf;->i:Landroid/graphics/Rect;

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/theme/bf;->j:Landroid/graphics/Rect;

    .line 71
    new-instance v0, Lcom/dolphin/browser/theme/bg;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/theme/bg;-><init>(Lcom/dolphin/browser/theme/bf;)V

    iput-object v0, p0, Lcom/dolphin/browser/theme/bf;->k:Lcom/dolphin/browser/theme/aq;

    .line 64
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_0

    .line 66
    invoke-static {v0}, Lcom/dolphin/browser/theme/ar;->a(Landroid/content/Context;)Lcom/dolphin/browser/theme/i;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/ar;

    iget-object v1, p0, Lcom/dolphin/browser/theme/bf;->k:Lcom/dolphin/browser/theme/aq;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/theme/ar;->c(Lcom/dolphin/browser/theme/aq;)V

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/bf;->updateTheme()V

    .line 69
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 13

    .prologue
    .line 178
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 179
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 180
    if-lez v1, :cond_0

    if-gtz v0, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-object p1

    .line 184
    :cond_1
    sget v2, Lcom/dolphin/browser/theme/bf;->d:I

    if-le v0, v2, :cond_2

    .line 185
    int-to-float v1, v1

    sget v2, Lcom/dolphin/browser/theme/bf;->d:I

    int-to-float v2, v2

    int-to-float v0, v0

    div-float v0, v2, v0

    mul-float/2addr v0, v1

    float-to-int v1, v0

    .line 186
    sget v0, Lcom/dolphin/browser/theme/bf;->d:I

    .line 192
    :cond_2
    :try_start_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 193
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 198
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 199
    new-instance v6, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-direct {v6, v2, v7, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 200
    invoke-virtual {p1, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 201
    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 204
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v2

    .line 205
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 208
    invoke-static {v2}, Lcom/dolphin/browser/util/DisplayManager;->isLandscape(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 209
    invoke-static {v2}, Lcom/dolphin/browser/util/DisplayManager;->screenWidthPixel(Landroid/content/Context;)I

    .line 211
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/dolphin/browser/theme/bf;->h:Z

    move v2, v1

    .line 217
    :goto_1
    int-to-double v8, v2

    const-wide v10, 0x3fc47ae147ae147bL

    mul-double/2addr v8, v10

    double-to-int v8, v8

    .line 218
    int-to-double v9, v2

    const-wide v11, 0x3fc999999999999aL

    mul-double/2addr v9, v11

    double-to-int v2, v9

    .line 219
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 220
    const/4 v10, 0x0

    add-int v11, v2, v8

    invoke-virtual {p2, v10, v8, v1, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 221
    invoke-virtual {p2, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 224
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 225
    invoke-static {}, Lcom/dolphin/browser/theme/ar;->a()Lcom/dolphin/browser/theme/i;

    move-result-object v11

    sget-object v12, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v12, 0x7f0a015a

    invoke-interface {v11, v12}, Lcom/dolphin/browser/theme/i;->a(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 227
    new-instance v11, Landroid/graphics/Rect;

    const/4 v12, 0x0

    add-int/2addr v2, v8

    invoke-direct {v11, v12, v2, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v9, v11, v10}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 231
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 232
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 233
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 234
    invoke-virtual {v5, v4, v6, v6, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 236
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1, v7, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 213
    :cond_3
    invoke-static {v2}, Lcom/dolphin/browser/util/DisplayManager;->screenHeightPixel(Landroid/content/Context;)I

    .line 215
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/dolphin/browser/theme/bf;->h:Z

    move v2, v0

    goto :goto_1

    .line 194
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public static a(Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 282
    invoke-static {}, Lcom/dolphin/browser/util/cu;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    new-instance v0, Lcom/dolphin/browser/theme/bh;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/theme/bh;-><init>(Landroid/view/View;)V

    .line 285
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a0062

    invoke-static {v1}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0
.end method

.method public static a()Lcom/dolphin/browser/theme/bf;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/dolphin/browser/theme/bf;->e:Lcom/dolphin/browser/theme/bf;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/dolphin/browser/theme/bf;

    invoke-direct {v0}, Lcom/dolphin/browser/theme/bf;-><init>()V

    sput-object v0, Lcom/dolphin/browser/theme/bf;->e:Lcom/dolphin/browser/theme/bf;

    .line 43
    :cond_0
    sget-object v0, Lcom/dolphin/browser/theme/bf;->e:Lcom/dolphin/browser/theme/bf;

    return-object v0
.end method

.method private b()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/dolphin/browser/theme/bf;->h:Z

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/util/DisplayManager;->isLandscape(Landroid/content/Context;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/theme/bf;->g:Landroid/graphics/drawable/Drawable;

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/bf;->g:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 163
    invoke-direct {p0}, Lcom/dolphin/browser/theme/bf;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dolphin/browser/theme/bf;->f:Landroid/graphics/drawable/Drawable;

    :goto_0
    iput-object v0, p0, Lcom/dolphin/browser/theme/bf;->g:Landroid/graphics/drawable/Drawable;

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/theme/bf;->g:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/theme/bf;->f:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/dolphin/browser/theme/ar;->a()Lcom/dolphin/browser/theme/i;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020323

    invoke-interface {v1, v2}, Lcom/dolphin/browser/theme/i;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/theme/bf;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/dolphin/browser/theme/bf;->a(Landroid/view/View;Landroid/graphics/Canvas;I)V

    .line 112
    return-void
.end method

.method public a(Landroid/view/View;Landroid/graphics/Canvas;I)V
    .locals 8

    .prologue
    .line 116
    invoke-static {}, Lcom/dolphin/browser/util/cu;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/theme/bf;->i:Landroid/graphics/Rect;

    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 125
    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    .line 126
    if-nez v2, :cond_2

    .line 127
    iget-object v2, p0, Lcom/dolphin/browser/theme/bf;->j:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 131
    :goto_1
    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v3, v1

    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int v2, v1, p3

    .line 134
    invoke-direct {p0}, Lcom/dolphin/browser/theme/bf;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 135
    if-eqz v4, :cond_0

    .line 136
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v5, v1

    .line 137
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    .line 138
    int-to-float v6, v0

    div-float/2addr v6, v5

    .line 139
    sget v7, Lcom/dolphin/browser/theme/bf;->d:I

    int-to-float v7, v7

    div-float/2addr v7, v1

    .line 142
    cmpg-float v1, v7, v6

    if-gez v1, :cond_3

    .line 143
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v6

    float-to-int v1, v1

    .line 150
    :goto_2
    add-int/2addr v0, v2

    .line 151
    add-int/2addr v1, v3

    .line 152
    invoke-virtual {v4, v2, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 153
    invoke-virtual {v4, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 129
    :cond_2
    iget-object v2, p0, Lcom/dolphin/browser/theme/bf;->j:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 146
    :cond_3
    sget v1, Lcom/dolphin/browser/theme/bf;->d:I

    .line 147
    int-to-float v2, v2

    mul-float v6, v5, v7

    int-to-float v0, v0

    sub-float v0, v6, v0

    const/high16 v6, 0x40000000

    div-float/2addr v0, v6

    sub-float v0, v2, v0

    float-to-int v2, v0

    .line 148
    mul-float v0, v7, v5

    float-to-int v0, v0

    goto :goto_2
.end method

.method public updateTheme()V
    .locals 2

    .prologue
    .line 242
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/theme/ar;->a(Landroid/content/Context;)Lcom/dolphin/browser/theme/i;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f020329

    invoke-interface {v0, v1}, Lcom/dolphin/browser/theme/i;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/theme/bf;->f:Landroid/graphics/drawable/Drawable;

    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/theme/bf;->g:Landroid/graphics/drawable/Drawable;

    .line 245
    return-void
.end method
