.class public Lcom/dolphin/browser/ui/view/WebImageView;
.super Landroid/widget/ImageView;
.source "WebImageView.java"


# static fields
.field private static final y:[I


# instance fields
.field private A:Z

.field private B:I

.field private C:Z

.field private D:Landroid/graphics/Matrix;

.field private E:Landroid/graphics/drawable/Drawable;

.field private F:Lcom/dolphin/browser/b/h;

.field private G:Landroid/view/View$OnClickListener;

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Landroid/widget/ImageView$ScaleType;

.field private k:I

.field private l:Z

.field private m:Lcom/dolphin/browser/ui/view/aa;

.field private n:Lcom/dolphin/browser/ui/view/z;

.field private o:Z

.field private p:Landroid/graphics/Bitmap;

.field private q:Z

.field private r:Landroid/graphics/Path;

.field private s:Landroid/graphics/Paint;

.field private t:I

.field private u:I

.field private v:I

.field private w:Z

.field private x:Landroid/widget/ImageView$ScaleType;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 170
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a7

    aput v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/ui/view/WebImageView;->y:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dolphin/browser/ui/view/WebImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 122
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    iput-boolean v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->c:Z

    .line 61
    iput-boolean v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->d:Z

    .line 62
    iput-boolean v1, p0, Lcom/dolphin/browser/ui/view/WebImageView;->e:Z

    .line 72
    sget-object v2, Lcom/dolphin/browser/ui/view/aa;->b:Lcom/dolphin/browser/ui/view/aa;

    iput-object v2, p0, Lcom/dolphin/browser/ui/view/WebImageView;->m:Lcom/dolphin/browser/ui/view/aa;

    .line 190
    iput-boolean v1, p0, Lcom/dolphin/browser/ui/view/WebImageView;->A:Z

    .line 440
    new-instance v2, Lcom/dolphin/browser/ui/view/y;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/ui/view/y;-><init>(Lcom/dolphin/browser/ui/view/WebImageView;)V

    iput-object v2, p0, Lcom/dolphin/browser/ui/view/WebImageView;->F:Lcom/dolphin/browser/b/h;

    .line 832
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/dolphin/browser/ui/view/WebImageView;->G:Landroid/view/View$OnClickListener;

    .line 124
    sget-object v2, Lcom/dolphin/browser/core/R$styleable;->w_WebImageView:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 126
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v4

    move v2, v1

    .line 127
    :goto_0
    if-ge v2, v4, :cond_1

    .line 128
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    .line 129
    packed-switch v5, :pswitch_data_0

    .line 127
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    :pswitch_0
    iget-boolean v6, p0, Lcom/dolphin/browser/ui/view/WebImageView;->c:Z

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/dolphin/browser/ui/view/WebImageView;->c:Z

    goto :goto_1

    .line 134
    :pswitch_1
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/dolphin/browser/ui/view/WebImageView;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 137
    :pswitch_2
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/dolphin/browser/ui/view/WebImageView;->b(Landroid/graphics/drawable/Drawable;)V

    .line 139
    :pswitch_3
    invoke-virtual {v3, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 140
    if-nez v5, :cond_0

    .line 141
    sget-object v5, Lcom/dolphin/browser/ui/view/aa;->b:Lcom/dolphin/browser/ui/view/aa;

    iput-object v5, p0, Lcom/dolphin/browser/ui/view/WebImageView;->m:Lcom/dolphin/browser/ui/view/aa;

    goto :goto_1

    .line 143
    :cond_0
    sget-object v5, Lcom/dolphin/browser/ui/view/aa;->a:Lcom/dolphin/browser/ui/view/aa;

    iput-object v5, p0, Lcom/dolphin/browser/ui/view/WebImageView;->m:Lcom/dolphin/browser/ui/view/aa;

    goto :goto_1

    .line 147
    :pswitch_4
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/dolphin/browser/ui/view/WebImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_1

    .line 151
    :cond_1
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 152
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    iput-object v2, p0, Lcom/dolphin/browser/ui/view/WebImageView;->j:Landroid/widget/ImageView$ScaleType;

    .line 153
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    iput-object v2, p0, Lcom/dolphin/browser/ui/view/WebImageView;->x:Landroid/widget/ImageView$ScaleType;

    .line 154
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->getVisibility()I

    move-result v2

    iput v2, p0, Lcom/dolphin/browser/ui/view/WebImageView;->k:I

    .line 159
    iput v1, p0, Lcom/dolphin/browser/ui/view/WebImageView;->u:I

    .line 160
    iput v1, p0, Lcom/dolphin/browser/ui/view/WebImageView;->v:I

    .line 161
    iput v1, p0, Lcom/dolphin/browser/ui/view/WebImageView;->t:I

    .line 162
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/dolphin/browser/ui/view/WebImageView;->r:Landroid/graphics/Path;

    .line 163
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/dolphin/browser/ui/view/WebImageView;->s:Landroid/graphics/Paint;

    .line 164
    iget-object v2, p0, Lcom/dolphin/browser/ui/view/WebImageView;->s:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 165
    iget-object v2, p0, Lcom/dolphin/browser/ui/view/WebImageView;->s:Landroid/graphics/Paint;

    iget v3, p0, Lcom/dolphin/browser/ui/view/WebImageView;->u:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 166
    iget-object v2, p0, Lcom/dolphin/browser/ui/view/WebImageView;->s:Landroid/graphics/Paint;

    iget v3, p0, Lcom/dolphin/browser/ui/view/WebImageView;->t:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 167
    iget v2, p0, Lcom/dolphin/browser/ui/view/WebImageView;->u:I

    if-lez v2, :cond_2

    :goto_2
    iput-boolean v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->w:Z

    .line 168
    return-void

    :cond_2
    move v0, v1

    .line 167
    goto :goto_2

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private a(Landroid/graphics/Matrix;II)Landroid/graphics/Matrix;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 263
    iget v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->B:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 265
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, p2

    int-to-float v3, p3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 266
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 267
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    .line 268
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->getWidth()I

    move-result v2

    sub-int v1, v2, v1

    div-int/lit8 v1, v1, 0x2

    .line 269
    int-to-float v1, v1

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 270
    iput-object v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->D:Landroid/graphics/Matrix;

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->D:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/ui/view/WebImageView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 618
    iput-object p1, p0, Lcom/dolphin/browser/ui/view/WebImageView;->p:Landroid/graphics/Bitmap;

    .line 620
    if-nez p1, :cond_0

    .line 621
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/view/WebImageView;->c(Landroid/graphics/drawable/Drawable;)V

    .line 625
    :goto_0
    return-void

    .line 623
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/view/WebImageView;->c(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 6

    .prologue
    .line 795
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->getWidth()I

    move-result v0

    .line 796
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->getHeight()I

    move-result v4

    .line 797
    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v3, v0

    int-to-float v4, v4

    iget-object v5, p0, Lcom/dolphin/browser/ui/view/WebImageView;->s:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 800
    :goto_0
    return-void

    .line 798
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Landroid/graphics/Matrix;)V
    .locals 9

    .prologue
    .line 764
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 765
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->getWidth()I

    move-result v1

    .line 766
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->getHeight()I

    move-result v2

    .line 767
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->getScrollX()I

    move-result v3

    .line 768
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->getScrollY()I

    move-result v4

    .line 769
    iget-object v5, p0, Lcom/dolphin/browser/ui/view/WebImageView;->h:Landroid/graphics/drawable/Drawable;

    if-ne v0, v5, :cond_1

    .line 770
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->r:Landroid/graphics/Path;

    .line 771
    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 772
    new-instance v5, Landroid/graphics/RectF;

    int-to-float v6, v3

    int-to-float v7, v4

    add-int/2addr v1, v3

    int-to-float v1, v1

    add-int/2addr v2, v4

    int-to-float v2, v2

    invoke-direct {v5, v6, v7, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 773
    iget v1, p0, Lcom/dolphin/browser/ui/view/WebImageView;->v:I

    int-to-float v1, v1

    iget v2, p0, Lcom/dolphin/browser/ui/view/WebImageView;->v:I

    int-to-float v2, v2

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 791
    :cond_0
    :goto_0
    return-void

    .line 775
    :cond_1
    if-eqz v0, :cond_0

    .line 776
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->v:I

    if-lez v0, :cond_0

    .line 777
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 778
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 779
    invoke-virtual {p1, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 780
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->r:Landroid/graphics/Path;

    .line 781
    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 782
    new-instance v6, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->getPaddingLeft()I

    move-result v7

    add-int/2addr v7, v3

    int-to-float v7, v7

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->getPaddingTop()I

    move-result v8

    add-int/2addr v8, v4

    int-to-float v8, v8

    add-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    add-int/2addr v2, v4

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-direct {v6, v7, v8, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 785
    invoke-virtual {v6, v5}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 786
    iget v1, p0, Lcom/dolphin/browser/ui/view/WebImageView;->v:I

    int-to-float v1, v1

    iget v2, p0, Lcom/dolphin/browser/ui/view/WebImageView;->v:I

    int-to-float v2, v2

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 789
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/ui/view/WebImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/dolphin/browser/ui/view/WebImageView;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/ui/view/WebImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/dolphin/browser/ui/view/WebImageView;->c(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 230
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 231
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 232
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 236
    :goto_0
    return-object v0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 236
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/dolphin/browser/ui/view/WebImageView;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->f()V

    return-void
.end method

.method private c(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 574
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->n:Lcom/dolphin/browser/ui/view/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->n:Lcom/dolphin/browser/ui/view/z;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/ui/view/z;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 575
    :cond_0
    if-nez p1, :cond_3

    .line 576
    iget-object p1, p0, Lcom/dolphin/browser/ui/view/WebImageView;->h:Landroid/graphics/drawable/Drawable;

    .line 577
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->x:Landroid/widget/ImageView$ScaleType;

    if-eqz v0, :cond_1

    .line 578
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->x:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/view/WebImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 585
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 586
    iget v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->k:I

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->getVisibility()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 587
    iget v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->k:I

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 594
    :cond_2
    :goto_1
    return-void

    .line 583
    :cond_3
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->b()V

    goto :goto_0

    .line 590
    :cond_4
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->n:Lcom/dolphin/browser/ui/view/z;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->n:Lcom/dolphin/browser/ui/view/z;

    invoke-interface {v0}, Lcom/dolphin/browser/ui/view/z;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 591
    const/16 v0, 0x8

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/dolphin/browser/ui/view/WebImageView;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->i()V

    return-void
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->E:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->E:Landroid/graphics/drawable/Drawable;

    .line 256
    const/4 v0, 0x1

    .line 258
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 407
    iget-boolean v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->d:Z

    if-eqz v0, :cond_0

    .line 408
    invoke-direct {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->i()V

    .line 409
    invoke-direct {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->e()V

    .line 410
    invoke-static {}, Lcom/dolphin/browser/b/a;->a()Lcom/dolphin/browser/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/ui/view/WebImageView;->F:Lcom/dolphin/browser/b/h;

    iget-object v2, p0, Lcom/dolphin/browser/ui/view/WebImageView;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/b/a;->b(Lcom/dolphin/browser/b/h;Ljava/lang/String;)V

    .line 430
    :goto_0
    return-void

    .line 412
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/b/a;->a()Lcom/dolphin/browser/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/ui/view/WebImageView;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/b/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    invoke-direct {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->i()V

    .line 414
    invoke-direct {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->e()V

    .line 415
    invoke-static {}, Lcom/dolphin/browser/b/a;->a()Lcom/dolphin/browser/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/ui/view/WebImageView;->F:Lcom/dolphin/browser/b/h;

    iget-object v2, p0, Lcom/dolphin/browser/ui/view/WebImageView;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/b/a;->b(Lcom/dolphin/browser/b/h;Ljava/lang/String;)V

    goto :goto_0

    .line 416
    :cond_1
    iget-boolean v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->e:Z

    if-eqz v0, :cond_2

    .line 417
    invoke-direct {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->i()V

    .line 418
    invoke-direct {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->e()V

    .line 419
    invoke-static {}, Lcom/dolphin/browser/b/a;->a()Lcom/dolphin/browser/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/ui/view/WebImageView;->F:Lcom/dolphin/browser/b/h;

    iget-object v2, p0, Lcom/dolphin/browser/ui/view/WebImageView;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/b/a;->b(Lcom/dolphin/browser/b/h;Ljava/lang/String;)V

    goto :goto_0

    .line 421
    :cond_2
    invoke-static {}, Lcom/dolphin/browser/b/a;->a()Lcom/dolphin/browser/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/ui/view/WebImageView;->F:Lcom/dolphin/browser/b/h;

    iget-object v2, p0, Lcom/dolphin/browser/ui/view/WebImageView;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/b/a;->a(Lcom/dolphin/browser/b/h;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 422
    invoke-direct {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->i()V

    .line 423
    invoke-direct {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->e()V

    .line 424
    invoke-static {}, Lcom/dolphin/browser/b/a;->a()Lcom/dolphin/browser/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/ui/view/WebImageView;->F:Lcom/dolphin/browser/b/h;

    iget-object v2, p0, Lcom/dolphin/browser/ui/view/WebImageView;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/b/a;->b(Lcom/dolphin/browser/b/h;Ljava/lang/String;)V

    goto :goto_0

    .line 426
    :cond_3
    invoke-direct {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->j()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/dolphin/browser/ui/view/WebImageView;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->j()V

    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 462
    iget-boolean v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->l:Z

    if-nez v0, :cond_0

    .line 463
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->l:Z

    .line 464
    iget-boolean v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->c:Z

    if-eqz v0, :cond_0

    .line 465
    invoke-direct {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->g()V

    .line 466
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->f:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 467
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 468
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->f:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 471
    :cond_0
    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 519
    iget-boolean v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->l:Z

    if-eqz v0, :cond_0

    .line 520
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->l:Z

    .line 521
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/view/WebImageView;->c(Landroid/graphics/drawable/Drawable;)V

    .line 522
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->f:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 526
    :cond_0
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 541
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->f:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 542
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dolphin/browser/core/R$drawable;->w_spinner:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->f:Landroid/graphics/drawable/Drawable;

    .line 544
    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 547
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->i:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 548
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dolphin/browser/core/R$drawable;->w_video_play_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->i:Landroid/graphics/drawable/Drawable;

    .line 550
    :cond_0
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 803
    iput-boolean v1, p0, Lcom/dolphin/browser/ui/view/WebImageView;->e:Z

    .line 804
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->G:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 805
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/ui/view/WebImageView;->setClickable(Z)V

    .line 809
    :goto_0
    return-void

    .line 807
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/view/WebImageView;->setClickable(Z)V

    goto :goto_0
.end method

.method private j()V
    .locals 1

    .prologue
    .line 812
    iget-boolean v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->d:Z

    if-nez v0, :cond_0

    .line 813
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->e:Z

    .line 814
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/view/WebImageView;->setClickable(Z)V

    .line 816
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 362
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->p:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 364
    iput-object v1, p0, Lcom/dolphin/browser/ui/view/WebImageView;->p:Landroid/graphics/Bitmap;

    .line 367
    :cond_0
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/ui/view/WebImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 368
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 557
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->g:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/dolphin/browser/ui/view/WebImageView;->h:Landroid/graphics/drawable/Drawable;

    if-ne v0, v1, :cond_0

    .line 558
    iput-object p1, p0, Lcom/dolphin/browser/ui/view/WebImageView;->g:Landroid/graphics/drawable/Drawable;

    .line 559
    iput-object p1, p0, Lcom/dolphin/browser/ui/view/WebImageView;->h:Landroid/graphics/drawable/Drawable;

    .line 563
    :goto_0
    return-void

    .line 561
    :cond_0
    iput-object p1, p0, Lcom/dolphin/browser/ui/view/WebImageView;->g:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 377
    invoke-direct {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->f()V

    .line 378
    if-nez p1, :cond_1

    .line 379
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->a:Ljava/lang/String;

    .line 380
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->b:Ljava/lang/String;

    .line 381
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->a()V

    .line 382
    invoke-direct {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->i()V

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->a()V

    .line 388
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 389
    iput-object p1, p0, Lcom/dolphin/browser/ui/view/WebImageView;->a:Ljava/lang/String;

    .line 390
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->b:Ljava/lang/String;

    .line 391
    invoke-direct {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->j()V

    .line 392
    invoke-direct {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->d()V

    goto :goto_0

    .line 394
    :cond_2
    invoke-direct {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->i()V

    .line 397
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 398
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/view/WebImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 399
    :catch_0
    move-exception v0

    .line 400
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/view/WebImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->j:Landroid/widget/ImageView$ScaleType;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->j:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/view/WebImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 603
    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 632
    instance-of v0, p1, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 633
    iput-object p1, p0, Lcom/dolphin/browser/ui/view/WebImageView;->f:Landroid/graphics/drawable/Drawable;

    .line 638
    return-void

    .line 635
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "loadingDrawable must implements interface android.graphics.drawable.Animatable"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 174
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 175
    iget-boolean v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->A:Z

    if-eqz v0, :cond_1

    .line 176
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->getDrawableState()[I

    move-result-object v1

    .line 177
    const/4 v0, 0x0

    .line 178
    if-eqz v1, :cond_0

    .line 179
    sget-object v0, Lcom/dolphin/browser/ui/view/WebImageView;->y:[I

    invoke-static {v0, v1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    .line 181
    :cond_0
    if-eqz v0, :cond_2

    .line 182
    iget v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->z:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/ui/view/WebImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 187
    :cond_1
    :goto_0
    return-void

    .line 184
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/view/WebImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 489
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 490
    iget-boolean v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->l:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->f:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 494
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->q:Z

    .line 495
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 496
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/view/WebImageView;->a(Ljava/lang/String;)V

    .line 498
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 502
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 503
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->f:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 507
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->q:Z

    .line 508
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->a:Ljava/lang/String;

    .line 509
    iget-object v1, p0, Lcom/dolphin/browser/ui/view/WebImageView;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 510
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->a()V

    .line 512
    :cond_1
    iput-object v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->b:Ljava/lang/String;

    .line 513
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 278
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 279
    if-nez v4, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    const-string v0, "mDrawableWidth"

    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/view/WebImageView;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 283
    const-string v0, "mDrawableHeight"

    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/view/WebImageView;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 284
    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    .line 287
    iget v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->v:I

    if-lez v0, :cond_3

    const/4 v0, 0x1

    move v2, v0

    .line 288
    :goto_1
    const-string v0, "mDrawMatrix"

    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/view/WebImageView;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    .line 289
    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->getPaddingTop()I

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->getPaddingLeft()I

    move-result v1

    if-nez v1, :cond_4

    .line 290
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 327
    :goto_2
    if-nez v2, :cond_2

    iget-boolean v1, p0, Lcom/dolphin/browser/ui/view/WebImageView;->w:Z

    if-eqz v1, :cond_2

    .line 328
    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/ui/view/WebImageView;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :cond_2
    :goto_3
    iget-boolean v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->o:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->l:Z

    if-nez v0, :cond_0

    .line 335
    invoke-direct {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->h()V

    .line 336
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/dolphin/browser/ui/view/WebImageView;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/dolphin/browser/ui/view/WebImageView;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 338
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 340
    iget-object v1, p0, Lcom/dolphin/browser/ui/view/WebImageView;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 341
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_3
    move v2, v3

    .line 287
    goto :goto_1

    .line 292
    :cond_4
    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v7

    .line 293
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 295
    const-string v1, "mCropToPadding"

    invoke-direct {p0, v1}, Lcom/dolphin/browser/ui/view/WebImageView;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 296
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->getScrollX()I

    move-result v1

    .line 297
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->getScrollY()I

    move-result v8

    .line 298
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->getPaddingLeft()I

    move-result v9

    add-int/2addr v9, v1

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->getPaddingTop()I

    move-result v10

    add-int/2addr v10, v8

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->getRight()I

    move-result v11

    add-int/2addr v1, v11

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->getLeft()I

    move-result v11

    sub-int/2addr v1, v11

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->getPaddingRight()I

    move-result v11

    sub-int/2addr v1, v11

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->getBottom()I

    move-result v11

    add-int/2addr v8, v11

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->getTop()I

    move-result v11

    sub-int/2addr v8, v11

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->getPaddingBottom()I

    move-result v11

    sub-int/2addr v8, v11

    invoke-virtual {p1, v9, v10, v1, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 302
    :cond_5
    invoke-static {p1}, Lcom/dolphin/browser/util/DisplayManager;->isHardwareAccelerated(Landroid/graphics/Canvas;)Z

    move-result v1

    .line 303
    if-eqz v2, :cond_6

    .line 304
    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/view/WebImageView;->a(Landroid/graphics/Matrix;)V

    .line 305
    iget v8, p0, Lcom/dolphin/browser/ui/view/WebImageView;->v:I

    if-eqz v8, :cond_6

    if-nez v1, :cond_6

    .line 306
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 307
    iget-object v8, p0, Lcom/dolphin/browser/ui/view/WebImageView;->r:Landroid/graphics/Path;

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 310
    :cond_6
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->getPaddingLeft()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->getPaddingTop()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 312
    if-eqz v0, :cond_7

    .line 313
    iget-boolean v8, p0, Lcom/dolphin/browser/ui/view/WebImageView;->l:Z

    if-nez v8, :cond_9

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v8

    iget-object v9, p0, Lcom/dolphin/browser/ui/view/WebImageView;->j:Landroid/widget/ImageView$ScaleType;

    if-ne v8, v9, :cond_9

    iget-boolean v8, p0, Lcom/dolphin/browser/ui/view/WebImageView;->C:Z

    if-eqz v8, :cond_9

    .line 314
    invoke-direct {p0, v0, v5, v6}, Lcom/dolphin/browser/ui/view/WebImageView;->a(Landroid/graphics/Matrix;II)Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 319
    :cond_7
    :goto_4
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 320
    if-eqz v2, :cond_8

    .line 321
    iget v4, p0, Lcom/dolphin/browser/ui/view/WebImageView;->v:I

    if-eqz v4, :cond_8

    if-nez v1, :cond_8

    .line 322
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 325
    :cond_8
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 330
    :catch_0
    move-exception v0

    .line 331
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_3

    .line 316
    :cond_9
    :try_start_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 200
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 201
    if-eqz p1, :cond_0

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->E:Landroid/graphics/drawable/Drawable;

    .line 204
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 208
    sget-object v0, Lcom/dolphin/browser/ui/view/aa;->b:Lcom/dolphin/browser/ui/view/aa;

    iget-object v1, p0, Lcom/dolphin/browser/ui/view/WebImageView;->m:Lcom/dolphin/browser/ui/view/aa;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/view/aa;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 226
    :goto_0
    return-void

    .line 211
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 214
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_1

    .line 215
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 219
    :goto_1
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v2, :cond_2

    .line 220
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 224
    :goto_2
    invoke-virtual {p0, v1, v0}, Lcom/dolphin/browser/ui/view/WebImageView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 217
    :cond_1
    invoke-static {v3, p2}, Lcom/dolphin/browser/ui/view/WebImageView;->getDefaultSize(II)I

    move-result v0

    goto :goto_1

    .line 222
    :cond_2
    invoke-static {v3, p1}, Lcom/dolphin/browser/ui/view/WebImageView;->getDefaultSize(II)I

    move-result v1

    goto :goto_2
.end method

.method public performClick()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 820
    iget-boolean v1, p0, Lcom/dolphin/browser/ui/view/WebImageView;->d:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/dolphin/browser/ui/view/WebImageView;->e:Z

    if-nez v1, :cond_0

    .line 821
    iput-boolean v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->e:Z

    .line 822
    invoke-direct {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->d()V

    .line 825
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/ImageView;->performClick()Z

    move-result v0

    goto :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 608
    iput-object p1, p0, Lcom/dolphin/browser/ui/view/WebImageView;->p:Landroid/graphics/Bitmap;

    .line 610
    if-nez p1, :cond_0

    .line 611
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/view/WebImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 615
    :goto_0
    return-void

    .line 613
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/view/WebImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 567
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->a:Ljava/lang/String;

    .line 568
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->b:Ljava/lang/String;

    .line 569
    invoke-direct {p0, p1}, Lcom/dolphin/browser/ui/view/WebImageView;->c(Landroid/graphics/drawable/Drawable;)V

    .line 570
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .prologue
    .line 434
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->a:Ljava/lang/String;

    .line 435
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/WebImageView;->b:Ljava/lang/String;

    .line 436
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->b()V

    .line 437
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 438
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 349
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 351
    if-eqz v0, :cond_1

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/view/WebImageView;->a(Ljava/lang/String;)V

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/WebImageView;->b()V

    .line 355
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 863
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 864
    iput-object p1, p0, Lcom/dolphin/browser/ui/view/WebImageView;->G:Landroid/view/View$OnClickListener;

    .line 865
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .prologue
    .line 483
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 484
    iput p1, p0, Lcom/dolphin/browser/ui/view/WebImageView;->k:I

    .line 485
    return-void
.end method
