.class Ldolphin/webkit/fv;
.super Landroid/view/View;
.source "PopupZoomer.java"


# static fields
.field static final synthetic b:Z

.field private static d:I

.field private static e:Landroid/graphics/drawable/NinePatchDrawable;

.field private static f:Landroid/graphics/Rect;

.field private static g:F

.field private static h:Landroid/graphics/drawable/NinePatchDrawable;


# instance fields
.field private A:F

.field private B:Landroid/graphics/PointF;

.field private C:Landroid/graphics/Bitmap;

.field private D:F

.field private E:F

.field private F:F

.field private G:F

.field private H:F

.field private I:F

.field private J:Landroid/widget/PopupWindow;

.field private K:Landroid/view/View;

.field private L:Landroid/view/GestureDetector;

.field final a:Landroid/os/Handler;

.field private c:Ldolphin/webkit/fx;

.field private i:Landroid/view/animation/Interpolator;

.field private j:Landroid/view/animation/Interpolator;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:J

.field private q:J

.field private r:Landroid/graphics/RectF;

.field private s:Landroid/graphics/Rect;

.field private t:F

.field private u:F

.field private v:F

.field private w:Landroid/graphics/RectF;

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Ldolphin/webkit/fv;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ldolphin/webkit/fv;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Z)V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 185
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/webkit/fv;->c:Ldolphin/webkit/fx;

    .line 69
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/fv;->i:Landroid/view/animation/Interpolator;

    .line 70
    new-instance v0, Ldolphin/webkit/fz;

    iget-object v1, p0, Ldolphin/webkit/fv;->i:Landroid/view/animation/Interpolator;

    invoke-direct {v0, v1}, Ldolphin/webkit/fz;-><init>(Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Ldolphin/webkit/fv;->j:Landroid/view/animation/Interpolator;

    .line 72
    iput-boolean v2, p0, Ldolphin/webkit/fv;->k:Z

    .line 73
    iput-boolean v2, p0, Ldolphin/webkit/fv;->l:Z

    .line 74
    iput-boolean v2, p0, Ldolphin/webkit/fv;->m:Z

    .line 75
    iput-boolean v2, p0, Ldolphin/webkit/fv;->n:Z

    .line 76
    iput-boolean v2, p0, Ldolphin/webkit/fv;->o:Z

    .line 78
    iput-wide v5, p0, Ldolphin/webkit/fv;->p:J

    .line 82
    iput-wide v5, p0, Ldolphin/webkit/fv;->q:J

    .line 90
    iput v3, p0, Ldolphin/webkit/fv;->t:F

    iput v3, p0, Ldolphin/webkit/fv;->u:F

    .line 92
    const/high16 v0, 0x3f800000

    iput v0, p0, Ldolphin/webkit/fv;->v:F

    .line 98
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/fv;->B:Landroid/graphics/PointF;

    .line 127
    new-instance v0, Ldolphin/webkit/fy;

    invoke-direct {v0, p0}, Ldolphin/webkit/fy;-><init>(Ldolphin/webkit/fv;)V

    iput-object v0, p0, Ldolphin/webkit/fv;->a:Landroid/os/Handler;

    .line 187
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ldolphin/webkit/fv;->setVisibility(I)V

    .line 188
    invoke-virtual {p0, v4}, Ldolphin/webkit/fv;->setFocusable(Z)V

    .line 189
    invoke-virtual {p0, v4}, Ldolphin/webkit/fv;->setFocusableInTouchMode(Z)V

    .line 191
    new-instance v0, Ldolphin/webkit/fw;

    invoke-direct {v0, p0}, Ldolphin/webkit/fw;-><init>(Ldolphin/webkit/fv;)V

    .line 224
    new-instance v1, Landroid/view/GestureDetector;

    invoke-direct {v1, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Ldolphin/webkit/fv;->L:Landroid/view/GestureDetector;

    .line 226
    iput-object p2, p0, Ldolphin/webkit/fv;->K:Landroid/view/View;

    .line 227
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ldolphin/webkit/fv;->J:Landroid/widget/PopupWindow;

    .line 228
    iget-object v0, p0, Ldolphin/webkit/fv;->J:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 229
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 230
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 231
    iget-object v1, p0, Ldolphin/webkit/fv;->J:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 233
    iput-boolean p3, p0, Ldolphin/webkit/fv;->o:Z

    .line 234
    invoke-direct {p0}, Ldolphin/webkit/fv;->d()Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v0

    sput-object v0, Ldolphin/webkit/fv;->h:Landroid/graphics/drawable/NinePatchDrawable;

    .line 235
    return-void
.end method

.method private static a(FFF)F
    .locals 1

    .prologue
    .line 177
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    :goto_0
    return p1

    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method private static a(III)I
    .locals 0

    .prologue
    .line 181
    if-ge p0, p1, :cond_0

    :goto_0
    return p1

    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method static synthetic a(Ldolphin/webkit/fv;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Ldolphin/webkit/fv;->J:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public static a(F)V
    .locals 0

    .prologue
    .line 147
    sput p0, Ldolphin/webkit/fv;->g:F

    .line 148
    return-void
.end method

.method static synthetic a(Ldolphin/webkit/fv;FF)Z
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ldolphin/webkit/fv;->b(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Ldolphin/webkit/fv;FF)Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ldolphin/webkit/fv;->c(FF)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    const/high16 v3, 0x41c80000

    .line 313
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Ldolphin/webkit/fv;->J:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x19

    int-to-float v1, v1

    iget-object v2, p0, Ldolphin/webkit/fv;->J:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x19

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Ldolphin/webkit/fv;->r:Landroid/graphics/RectF;

    .line 317
    iput-object p1, p0, Ldolphin/webkit/fv;->s:Landroid/graphics/Rect;

    .line 318
    return-void
.end method

.method private b(FF)Z
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Ldolphin/webkit/fv;->w:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Ldolphin/webkit/fv;)Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Ldolphin/webkit/fv;->k:Z

    return v0
.end method

.method private c(FF)Landroid/graphics/PointF;
    .locals 4

    .prologue
    .line 508
    iget v0, p0, Ldolphin/webkit/fv;->t:F

    sub-float v0, p1, v0

    .line 509
    iget v1, p0, Ldolphin/webkit/fv;->u:F

    sub-float v1, p2, v1

    .line 510
    iget-object v2, p0, Ldolphin/webkit/fv;->B:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Ldolphin/webkit/fv;->B:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v3

    iget v3, p0, Ldolphin/webkit/fv;->D:F

    sub-float/2addr v0, v3

    iget v3, p0, Ldolphin/webkit/fv;->v:F

    div-float/2addr v0, v3

    add-float/2addr v0, v2

    .line 511
    iget-object v2, p0, Ldolphin/webkit/fv;->B:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Ldolphin/webkit/fv;->B:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v3

    iget v3, p0, Ldolphin/webkit/fv;->E:F

    sub-float/2addr v1, v3

    iget v3, p0, Ldolphin/webkit/fv;->v:F

    div-float/2addr v1, v3

    add-float/2addr v1, v2

    .line 513
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2
.end method

.method static synthetic c(Ldolphin/webkit/fv;)Ldolphin/webkit/fx;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Ldolphin/webkit/fv;->c:Ldolphin/webkit/fx;

    return-object v0
.end method

.method private c(Z)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/fv;->k:Z

    .line 273
    iput-boolean p1, p0, Ldolphin/webkit/fv;->l:Z

    .line 274
    iput-wide v4, p0, Ldolphin/webkit/fv;->q:J

    .line 275
    if-eqz p1, :cond_1

    .line 276
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ldolphin/webkit/fv;->setVisibility(I)V

    .line 277
    invoke-direct {p0}, Ldolphin/webkit/fv;->e()V

    .line 283
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ldolphin/webkit/fv;->p:J

    .line 284
    invoke-virtual {p0}, Ldolphin/webkit/fv;->invalidate()V

    .line 285
    return-void

    .line 279
    :cond_1
    iget-wide v0, p0, Ldolphin/webkit/fv;->p:J

    const-wide/16 v2, 0x12c

    add-long/2addr v0, v2

    .line 280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Ldolphin/webkit/fv;->q:J

    .line 281
    iget-wide v0, p0, Ldolphin/webkit/fv;->q:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    iput-wide v4, p0, Ldolphin/webkit/fv;->q:J

    goto :goto_0
.end method

.method private d()Landroid/graphics/drawable/NinePatchDrawable;
    .locals 2

    .prologue
    .line 155
    sget-boolean v0, Ldolphin/webkit/fv;->b:Z

    if-nez v0, :cond_0

    sget v0, Ldolphin/webkit/fv;->d:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 156
    :cond_0
    sget-object v0, Ldolphin/webkit/fv;->e:Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v0, :cond_1

    .line 157
    iget-boolean v0, p0, Ldolphin/webkit/fv;->o:Z

    if-eqz v0, :cond_2

    .line 158
    invoke-static {}, Ldolphin/webkit/WebKitResources;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Ldolphin/webkit/R$drawable;->popupzoomer_overlay_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v0, Ldolphin/webkit/fv;->e:Landroid/graphics/drawable/NinePatchDrawable;

    .line 164
    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Ldolphin/webkit/fv;->f:Landroid/graphics/Rect;

    .line 165
    sget-object v0, Ldolphin/webkit/fv;->e:Landroid/graphics/drawable/NinePatchDrawable;

    sget-object v1, Ldolphin/webkit/fv;->f:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 167
    invoke-static {}, Ldolphin/webkit/WebKitResources;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 168
    const/high16 v1, 0x41800000

    mul-float/2addr v0, v1

    .line 169
    invoke-static {v0}, Ldolphin/webkit/fv;->a(F)V

    .line 171
    :cond_1
    sget-object v0, Ldolphin/webkit/fv;->e:Landroid/graphics/drawable/NinePatchDrawable;

    return-object v0

    .line 161
    :cond_2
    invoke-static {}, Ldolphin/webkit/WebKitResources;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Ldolphin/webkit/R$drawable;->popupzoomer_overlay:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v0, Ldolphin/webkit/fv;->e:Landroid/graphics/drawable/NinePatchDrawable;

    goto :goto_0
.end method

.method private e()V
    .locals 10

    .prologue
    const/high16 v9, 0x40000000

    const/high16 v8, 0x3f000000

    const/high16 v7, -0x40800000

    const/4 v6, 0x0

    const/high16 v5, 0x41c80000

    .line 321
    iget-object v0, p0, Ldolphin/webkit/fv;->s:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/fv;->B:Landroid/graphics/PointF;

    if-nez v0, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    iget-object v0, p0, Ldolphin/webkit/fv;->C:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Ldolphin/webkit/fv;->s:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Ldolphin/webkit/fv;->v:F

    .line 327
    iget-object v0, p0, Ldolphin/webkit/fv;->B:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Ldolphin/webkit/fv;->v:F

    iget-object v2, p0, Ldolphin/webkit/fv;->B:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Ldolphin/webkit/fv;->s:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 328
    iget-object v1, p0, Ldolphin/webkit/fv;->B:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Ldolphin/webkit/fv;->v:F

    iget-object v3, p0, Ldolphin/webkit/fv;->B:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Ldolphin/webkit/fv;->s:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 329
    iget-object v2, p0, Ldolphin/webkit/fv;->C:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    .line 330
    iget-object v3, p0, Ldolphin/webkit/fv;->C:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    .line 332
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Ldolphin/webkit/fv;->w:Landroid/graphics/RectF;

    .line 333
    iget-object v0, p0, Ldolphin/webkit/fv;->J:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v0

    .line 334
    iget-object v1, p0, Ldolphin/webkit/fv;->J:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v1

    .line 339
    iput v6, p0, Ldolphin/webkit/fv;->t:F

    .line 340
    iput v6, p0, Ldolphin/webkit/fv;->u:F

    .line 346
    iget-object v2, p0, Ldolphin/webkit/fv;->w:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v2, v5

    if-gez v2, :cond_8

    .line 347
    iget-object v0, p0, Ldolphin/webkit/fv;->w:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float v0, v5, v0

    iput v0, p0, Ldolphin/webkit/fv;->t:F

    .line 348
    iget-object v0, p0, Ldolphin/webkit/fv;->w:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, p0, Ldolphin/webkit/fv;->t:F

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 349
    iget-object v0, p0, Ldolphin/webkit/fv;->w:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->right:F

    iget v3, p0, Ldolphin/webkit/fv;->t:F

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 355
    :cond_2
    :goto_1
    iget-object v0, p0, Ldolphin/webkit/fv;->w:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_9

    .line 356
    iget-object v0, p0, Ldolphin/webkit/fv;->w:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float v0, v5, v0

    iput v0, p0, Ldolphin/webkit/fv;->u:F

    .line 357
    iget-object v0, p0, Ldolphin/webkit/fv;->w:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Ldolphin/webkit/fv;->u:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 358
    iget-object v0, p0, Ldolphin/webkit/fv;->w:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Ldolphin/webkit/fv;->u:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 367
    :cond_3
    :goto_2
    iput v6, p0, Ldolphin/webkit/fv;->I:F

    iput v6, p0, Ldolphin/webkit/fv;->H:F

    iput v6, p0, Ldolphin/webkit/fv;->G:F

    iput v6, p0, Ldolphin/webkit/fv;->F:F

    .line 368
    iget-object v0, p0, Ldolphin/webkit/fv;->r:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Ldolphin/webkit/fv;->t:F

    add-float/2addr v0, v1

    iget-object v1, p0, Ldolphin/webkit/fv;->w:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 369
    iget-object v0, p0, Ldolphin/webkit/fv;->r:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Ldolphin/webkit/fv;->w:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    iput v0, p0, Ldolphin/webkit/fv;->F:F

    .line 370
    :cond_4
    iget-object v0, p0, Ldolphin/webkit/fv;->r:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Ldolphin/webkit/fv;->t:F

    add-float/2addr v0, v1

    iget-object v1, p0, Ldolphin/webkit/fv;->w:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 371
    iget-object v0, p0, Ldolphin/webkit/fv;->r:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Ldolphin/webkit/fv;->w:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    iput v0, p0, Ldolphin/webkit/fv;->G:F

    .line 372
    :cond_5
    iget-object v0, p0, Ldolphin/webkit/fv;->r:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Ldolphin/webkit/fv;->u:F

    add-float/2addr v0, v1

    iget-object v1, p0, Ldolphin/webkit/fv;->w:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 373
    iget-object v0, p0, Ldolphin/webkit/fv;->r:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Ldolphin/webkit/fv;->w:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    iput v0, p0, Ldolphin/webkit/fv;->I:F

    .line 374
    :cond_6
    iget-object v0, p0, Ldolphin/webkit/fv;->r:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Ldolphin/webkit/fv;->u:F

    add-float/2addr v0, v1

    iget-object v1, p0, Ldolphin/webkit/fv;->w:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    .line 375
    iget-object v0, p0, Ldolphin/webkit/fv;->r:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Ldolphin/webkit/fv;->w:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    iput v0, p0, Ldolphin/webkit/fv;->H:F

    .line 376
    :cond_7
    iget-object v0, p0, Ldolphin/webkit/fv;->w:Landroid/graphics/RectF;

    iget-object v1, p0, Ldolphin/webkit/fv;->r:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 378
    iget-object v0, p0, Ldolphin/webkit/fv;->B:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Ldolphin/webkit/fv;->w:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    iput v0, p0, Ldolphin/webkit/fv;->x:F

    .line 379
    iget-object v0, p0, Ldolphin/webkit/fv;->w:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Ldolphin/webkit/fv;->B:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Ldolphin/webkit/fv;->z:F

    .line 380
    iget-object v0, p0, Ldolphin/webkit/fv;->B:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Ldolphin/webkit/fv;->w:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    iput v0, p0, Ldolphin/webkit/fv;->y:F

    .line 381
    iget-object v0, p0, Ldolphin/webkit/fv;->w:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Ldolphin/webkit/fv;->B:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Ldolphin/webkit/fv;->A:F

    .line 382
    iget v0, p0, Ldolphin/webkit/fv;->G:F

    iget v1, p0, Ldolphin/webkit/fv;->F:F

    sub-float/2addr v0, v1

    .line 383
    iget v1, p0, Ldolphin/webkit/fv;->I:F

    iget v2, p0, Ldolphin/webkit/fv;->H:F

    sub-float/2addr v1, v2

    .line 384
    iget-object v2, p0, Ldolphin/webkit/fv;->B:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Ldolphin/webkit/fv;->s:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Ldolphin/webkit/fv;->s:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v9

    div-float/2addr v2, v3

    add-float/2addr v2, v8

    .line 385
    iget-object v3, p0, Ldolphin/webkit/fv;->B:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Ldolphin/webkit/fv;->s:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Ldolphin/webkit/fv;->s:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v9

    div-float/2addr v3, v4

    add-float/2addr v3, v8

    .line 386
    mul-float/2addr v0, v2

    mul-float/2addr v0, v7

    iput v0, p0, Ldolphin/webkit/fv;->D:F

    .line 387
    mul-float v0, v1, v3

    mul-float/2addr v0, v7

    iput v0, p0, Ldolphin/webkit/fv;->E:F

    .line 388
    iget v0, p0, Ldolphin/webkit/fv;->D:F

    iget v1, p0, Ldolphin/webkit/fv;->F:F

    iget v2, p0, Ldolphin/webkit/fv;->G:F

    invoke-static {v0, v1, v2}, Ldolphin/webkit/fv;->a(FFF)F

    move-result v0

    iput v0, p0, Ldolphin/webkit/fv;->D:F

    .line 389
    iget v0, p0, Ldolphin/webkit/fv;->E:F

    iget v1, p0, Ldolphin/webkit/fv;->H:F

    iget v2, p0, Ldolphin/webkit/fv;->I:F

    invoke-static {v0, v1, v2}, Ldolphin/webkit/fv;->a(FFF)F

    move-result v0

    iput v0, p0, Ldolphin/webkit/fv;->E:F

    goto/16 :goto_0

    .line 350
    :cond_8
    iget-object v2, p0, Ldolphin/webkit/fv;->w:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    add-int/lit8 v3, v0, -0x19

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 351
    add-int/lit8 v0, v0, -0x19

    int-to-float v0, v0

    iget-object v2, p0, Ldolphin/webkit/fv;->w:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v2

    iput v0, p0, Ldolphin/webkit/fv;->t:F

    .line 352
    iget-object v0, p0, Ldolphin/webkit/fv;->w:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->right:F

    iget v3, p0, Ldolphin/webkit/fv;->t:F

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 353
    iget-object v0, p0, Ldolphin/webkit/fv;->w:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, p0, Ldolphin/webkit/fv;->t:F

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->left:F

    goto/16 :goto_1

    .line 359
    :cond_9
    iget-object v0, p0, Ldolphin/webkit/fv;->w:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-int/lit8 v2, v1, -0x19

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 360
    add-int/lit8 v0, v1, -0x19

    int-to-float v0, v0

    iget-object v1, p0, Ldolphin/webkit/fv;->w:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    iput v0, p0, Ldolphin/webkit/fv;->u:F

    .line 361
    iget-object v0, p0, Ldolphin/webkit/fv;->w:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Ldolphin/webkit/fv;->u:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 362
    iget-object v0, p0, Ldolphin/webkit/fv;->w:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Ldolphin/webkit/fv;->u:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    goto/16 :goto_2
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 294
    iput-boolean v0, p0, Ldolphin/webkit/fv;->k:Z

    .line 295
    iput-boolean v0, p0, Ldolphin/webkit/fv;->l:Z

    .line 296
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ldolphin/webkit/fv;->q:J

    .line 297
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ldolphin/webkit/fv;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Ldolphin/webkit/fv;->C:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/webkit/fv;->C:Landroid/graphics/Bitmap;

    .line 300
    iget-object v0, p0, Ldolphin/webkit/fv;->a:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 301
    return-void
.end method

.method public a(FF)V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Ldolphin/webkit/fv;->B:Landroid/graphics/PointF;

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 309
    iget-object v0, p0, Ldolphin/webkit/fv;->B:Landroid/graphics/PointF;

    iput p2, v0, Landroid/graphics/PointF;->y:F

    .line 310
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 242
    iget-object v0, p0, Ldolphin/webkit/fv;->C:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Ldolphin/webkit/fv;->C:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/webkit/fv;->C:Landroid/graphics/Bitmap;

    .line 246
    :cond_0
    iput-object p1, p0, Ldolphin/webkit/fv;->C:Landroid/graphics/Bitmap;

    .line 250
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Ldolphin/webkit/fv;->C:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 251
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 252
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 253
    sget v3, Ldolphin/webkit/fv;->g:F

    sget v4, Ldolphin/webkit/fv;->g:F

    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 257
    sget-object v2, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 258
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 259
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 260
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 261
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 262
    return-void
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 5

    .prologue
    .line 288
    iget-object v0, p0, Ldolphin/webkit/fv;->J:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 289
    iget-object v0, p0, Ldolphin/webkit/fv;->J:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 290
    iget-object v0, p0, Ldolphin/webkit/fv;->J:Landroid/widget/PopupWindow;

    iget-object v1, p0, Ldolphin/webkit/fv;->K:Landroid/view/View;

    const/16 v2, 0x33

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 291
    return-void
.end method

.method public a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 461
    iget-boolean v0, p0, Ldolphin/webkit/fv;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/fv;->C:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    invoke-virtual {p0, p2}, Ldolphin/webkit/fv;->a(Landroid/graphics/Rect;)V

    .line 463
    invoke-direct {p0, p1}, Ldolphin/webkit/fv;->b(Landroid/graphics/Rect;)V

    .line 464
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ldolphin/webkit/fv;->c(Z)V

    goto :goto_0
.end method

.method public a(Ldolphin/webkit/fx;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Ldolphin/webkit/fv;->c:Ldolphin/webkit/fx;

    .line 239
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 130
    iput-boolean p1, p0, Ldolphin/webkit/fv;->m:Z

    .line 131
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 468
    iget-boolean v0, p0, Ldolphin/webkit/fv;->l:Z

    if-nez v0, :cond_0

    .line 475
    :goto_0
    return-void

    .line 471
    :cond_0
    if-eqz p1, :cond_1

    .line 472
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ldolphin/webkit/fv;->c(Z)V

    goto :goto_0

    .line 474
    :cond_1
    invoke-virtual {p0}, Ldolphin/webkit/fv;->a()V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 304
    iget-boolean v0, p0, Ldolphin/webkit/fv;->l:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ldolphin/webkit/fv;->k:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()F
    .locals 1

    .prologue
    .line 504
    iget v0, p0, Ldolphin/webkit/fv;->v:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/high16 v5, 0x3f800000

    .line 395
    invoke-virtual {p0}, Ldolphin/webkit/fv;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/fv;->C:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    iget-boolean v0, p0, Ldolphin/webkit/fv;->m:Z

    if-eqz v0, :cond_2

    .line 398
    invoke-virtual {p0}, Ldolphin/webkit/fv;->a()V

    goto :goto_0

    .line 402
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Ldolphin/webkit/fv;->p:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Ldolphin/webkit/fv;->q:J

    add-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x43960000

    div-float/2addr v0, v1

    .line 404
    const/4 v1, 0x0

    invoke-static {v0, v1, v5}, Ldolphin/webkit/fv;->a(FFF)F

    move-result v0

    .line 405
    cmpl-float v1, v0, v5

    if-ltz v1, :cond_3

    .line 406
    iput-boolean v7, p0, Ldolphin/webkit/fv;->k:Z

    .line 407
    invoke-virtual {p0}, Ldolphin/webkit/fv;->b()Z

    move-result v1

    if-nez v1, :cond_4

    .line 408
    invoke-virtual {p0}, Ldolphin/webkit/fv;->a()V

    goto :goto_0

    .line 413
    :cond_3
    const-wide/16 v1, 0x28

    invoke-virtual {p0, v1, v2}, Ldolphin/webkit/fv;->postInvalidateDelayed(J)V

    .line 416
    :cond_4
    iget-boolean v1, p0, Ldolphin/webkit/fv;->l:Z

    if-eqz v1, :cond_5

    .line 417
    iget-object v1, p0, Ldolphin/webkit/fv;->i:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 423
    :goto_1
    const/high16 v1, 0x42a00000

    mul-float/2addr v1, v0

    float-to-int v1, v1

    invoke-virtual {p1, v1, v7, v7, v7}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 424
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 429
    iget v1, p0, Ldolphin/webkit/fv;->v:F

    sub-float/2addr v1, v5

    mul-float/2addr v1, v0

    iget v2, p0, Ldolphin/webkit/fv;->v:F

    div-float/2addr v1, v2

    iget v2, p0, Ldolphin/webkit/fv;->v:F

    div-float v2, v5, v2

    add-float/2addr v1, v2

    .line 431
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 434
    iget v3, p0, Ldolphin/webkit/fv;->t:F

    neg-float v3, v3

    sub-float v4, v5, v0

    mul-float/2addr v3, v4

    iget v4, p0, Ldolphin/webkit/fv;->v:F

    div-float/2addr v3, v4

    .line 435
    iget v4, p0, Ldolphin/webkit/fv;->u:F

    neg-float v4, v4

    sub-float/2addr v5, v0

    mul-float/2addr v4, v5

    iget v5, p0, Ldolphin/webkit/fv;->v:F

    div-float/2addr v4, v5

    .line 437
    iget-object v5, p0, Ldolphin/webkit/fv;->B:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget v6, p0, Ldolphin/webkit/fv;->x:F

    mul-float/2addr v6, v1

    sub-float/2addr v5, v6

    add-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v2, Landroid/graphics/Rect;->left:I

    .line 438
    iget-object v5, p0, Ldolphin/webkit/fv;->B:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v6, p0, Ldolphin/webkit/fv;->y:F

    mul-float/2addr v6, v1

    sub-float/2addr v5, v6

    add-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v2, Landroid/graphics/Rect;->top:I

    .line 439
    iget-object v5, p0, Ldolphin/webkit/fv;->B:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget v6, p0, Ldolphin/webkit/fv;->z:F

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    add-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 440
    iget-object v3, p0, Ldolphin/webkit/fv;->B:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v5, p0, Ldolphin/webkit/fv;->A:F

    mul-float/2addr v1, v5

    add-float/2addr v1, v3

    add-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 441
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 447
    iget-object v1, p0, Ldolphin/webkit/fv;->C:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v8, v2, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 449
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 451
    sget-object v1, Ldolphin/webkit/fv;->h:Landroid/graphics/drawable/NinePatchDrawable;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    sget-object v4, Ldolphin/webkit/fv;->f:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sget-object v5, Ldolphin/webkit/fv;->f:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    iget v5, v2, Landroid/graphics/Rect;->right:I

    sget-object v6, Ldolphin/webkit/fv;->f:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sget-object v6, Ldolphin/webkit/fv;->f:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v6

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 455
    const/high16 v1, 0x437f0000

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/16 v1, 0xff

    invoke-static {v0, v7, v1}, Ldolphin/webkit/fv;->a(III)I

    move-result v0

    .line 456
    sget-object v1, Ldolphin/webkit/fv;->h:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 457
    sget-object v0, Ldolphin/webkit/fv;->h:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 419
    :cond_5
    iget-object v1, p0, Ldolphin/webkit/fv;->j:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    goto/16 :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Ldolphin/webkit/fv;->L:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 485
    const/4 v0, 0x1

    return v0
.end method
