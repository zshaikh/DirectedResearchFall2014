.class public Lcom/e/a/z;
.super Landroid/graphics/drawable/Drawable;
.source "SVGDrawable.java"


# static fields
.field private static f:Z


# instance fields
.field private a:F

.field private b:F

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/e/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private g:Landroid/graphics/Bitmap;

.field private h:Landroid/graphics/Paint;

.field private i:Landroid/graphics/Canvas;

.field private j:Landroid/graphics/Paint;

.field private k:Lcom/e/a/ac;

.field private l:Z

.field private m:I

.field private n:Lcom/e/a/a;

.field private o:Lcom/e/a/a;

.field private p:Lcom/e/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 59
    sput-boolean v0, Lcom/e/a/z;->f:Z

    .line 66
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "HTC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/e/a/z;->f:Z

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 2

    .prologue
    .line 149
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/e/a/z;-><init>(Ljava/io/InputStream;Lcom/e/a/a;)V

    .line 150
    return-void
.end method

.method private constructor <init>(Lcom/e/a/ac;Landroid/content/res/Resources;)V
    .locals 1

    .prologue
    .line 559
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 58
    const/16 v0, 0xff

    iput v0, p0, Lcom/e/a/z;->e:I

    .line 144
    const/4 v0, -0x1

    iput v0, p0, Lcom/e/a/z;->m:I

    .line 263
    new-instance v0, Lcom/e/a/aa;

    invoke-direct {v0, p0}, Lcom/e/a/aa;-><init>(Lcom/e/a/z;)V

    iput-object v0, p0, Lcom/e/a/z;->p:Lcom/e/a/a;

    .line 560
    new-instance v0, Lcom/e/a/ac;

    invoke-direct {v0, p1}, Lcom/e/a/ac;-><init>(Lcom/e/a/ac;)V

    iput-object v0, p0, Lcom/e/a/z;->k:Lcom/e/a/ac;

    .line 561
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/e/a/z;->c:Ljava/util/ArrayList;

    .line 562
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/e/a/z;->d:Ljava/util/ArrayList;

    .line 563
    return-void
.end method

.method synthetic constructor <init>(Lcom/e/a/ac;Landroid/content/res/Resources;Lcom/e/a/aa;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/e/a/z;-><init>(Lcom/e/a/ac;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/e/a/z;-><init>(Ljava/io/InputStream;Lcom/e/a/a;)V

    .line 158
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/e/a/a;)V
    .locals 2

    .prologue
    .line 168
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 58
    const/16 v0, 0xff

    iput v0, p0, Lcom/e/a/z;->e:I

    .line 144
    const/4 v0, -0x1

    iput v0, p0, Lcom/e/a/z;->m:I

    .line 263
    new-instance v0, Lcom/e/a/aa;

    invoke-direct {v0, p0}, Lcom/e/a/aa;-><init>(Lcom/e/a/z;)V

    iput-object v0, p0, Lcom/e/a/z;->p:Lcom/e/a/a;

    .line 169
    new-instance v0, Lcom/e/a/ac;

    invoke-static {p1, p2}, Lcom/e/a/af;->a(Ljava/io/InputStream;Lcom/e/a/a;)Lcom/e/a/c;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/e/a/ac;-><init>(Lcom/e/a/c;)V

    iput-object v0, p0, Lcom/e/a/z;->k:Lcom/e/a/ac;

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/e/a/z;->c:Ljava/util/ArrayList;

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/e/a/z;->d:Ljava/util/ArrayList;

    .line 172
    return-void
.end method

.method public static a(II)I
    .locals 2

    .prologue
    .line 278
    const/16 v0, 0xff

    if-ne v0, p1, :cond_0

    .line 285
    :goto_0
    return p0

    .line 281
    :cond_0
    shr-int/lit8 v0, p1, 0x7

    add-int/2addr v0, p1

    .line 282
    ushr-int/lit8 v1, p0, 0x18

    .line 283
    mul-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 284
    shl-int/lit8 v1, p0, 0x8

    ushr-int/lit8 v1, v1, 0x8

    shl-int/lit8 v0, v0, 0x18

    or-int p0, v1, v0

    .line 285
    goto :goto_0
.end method

.method private a([I)I
    .locals 4

    .prologue
    .line 566
    iget-object v2, p0, Lcom/e/a/z;->c:Ljava/util/ArrayList;

    .line 567
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 568
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 569
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 573
    :goto_1
    return v0

    .line 568
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 573
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static synthetic a(Lcom/e/a/z;)Lcom/e/a/a;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/e/a/z;->n:Lcom/e/a/a;

    return-object v0
.end method

.method static synthetic b(Lcom/e/a/z;)Lcom/e/a/a;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/e/a/z;->o:Lcom/e/a/a;

    return-object v0
.end method

.method static synthetic c(Lcom/e/a/z;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/e/a/z;->e:I

    return v0
.end method

.method private d(I)Z
    .locals 1

    .prologue
    .line 441
    iget v0, p0, Lcom/e/a/z;->m:I

    if-ne p1, v0, :cond_0

    .line 442
    const/4 v0, 0x0

    .line 452
    :goto_0
    return v0

    .line 444
    :cond_0
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/e/a/z;->c()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 445
    iget-object v0, p0, Lcom/e/a/z;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/e/a/a;

    iput-object v0, p0, Lcom/e/a/z;->n:Lcom/e/a/a;

    .line 446
    iput p1, p0, Lcom/e/a/z;->m:I

    .line 451
    :goto_1
    invoke-virtual {p0}, Lcom/e/a/z;->invalidateSelf()V

    .line 452
    const/4 v0, 0x1

    goto :goto_0

    .line 448
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/e/a/z;->n:Lcom/e/a/a;

    .line 449
    const/4 v0, -0x1

    iput v0, p0, Lcom/e/a/z;->m:I

    goto :goto_1
.end method


# virtual methods
.method protected a()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 183
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/e/a/z;->b()V

    .line 359
    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-virtual {p0, v0, p1}, Lcom/e/a/z;->a([II)V

    .line 360
    return-void
.end method

.method public a(III)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 345
    invoke-virtual {p0}, Lcom/e/a/z;->b()V

    .line 346
    new-array v0, v3, [I

    const v1, -0x101009e

    aput v1, v0, v2

    invoke-virtual {p0, v0, p3}, Lcom/e/a/z;->a([II)V

    .line 347
    new-array v0, v3, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    invoke-virtual {p0, v0, p2}, Lcom/e/a/z;->a([II)V

    .line 348
    new-array v0, v3, [I

    const v1, 0x101009c

    aput v1, v0, v2

    invoke-virtual {p0, v0, p2}, Lcom/e/a/z;->a([II)V

    .line 349
    new-array v0, v3, [I

    const v1, 0x10100a1

    aput v1, v0, v2

    invoke-virtual {p0, v0, p2}, Lcom/e/a/z;->a([II)V

    .line 350
    new-array v0, v2, [I

    invoke-virtual {p0, v0, p1}, Lcom/e/a/z;->a([II)V

    .line 351
    return-void
.end method

.method public a(Landroid/content/res/ColorStateList;)V
    .locals 5

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/e/a/z;->b()V

    .line 373
    invoke-static {p1}, Lcom/e/a/ab;->a(Landroid/content/res/ColorStateList;)Landroid/util/Pair;

    move-result-object v1

    .line 374
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, [[I

    .line 375
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [I

    .line 376
    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 377
    aget-object v3, v0, v2

    aget v4, v1, v2

    invoke-virtual {p0, v3, v4}, Lcom/e/a/z;->a([II)V

    .line 376
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 379
    :cond_0
    return-void
.end method

.method public a(Lcom/e/a/a;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/e/a/z;->o:Lcom/e/a/a;

    .line 180
    return-void
.end method

.method public a([II)V
    .locals 1

    .prologue
    .line 328
    new-instance v0, Lcom/e/a/ad;

    invoke-direct {v0, p2}, Lcom/e/a/ad;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lcom/e/a/z;->a([ILcom/e/a/a;)V

    .line 329
    return-void
.end method

.method public a([ILcom/e/a/a;)V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/e/a/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    iget-object v0, p0, Lcom/e/a/z;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    invoke-virtual {p0}, Lcom/e/a/z;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/e/a/z;->onStateChange([I)Z

    .line 336
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/e/a/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/e/a/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 417
    iget-object v0, p0, Lcom/e/a/z;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 420
    :cond_0
    invoke-virtual {p0}, Lcom/e/a/z;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/e/a/z;->onStateChange([I)Z

    .line 421
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/e/a/z;->k:Lcom/e/a/ac;

    invoke-virtual {v0, p1}, Lcom/e/a/ac;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    invoke-virtual {p0}, Lcom/e/a/z;->invalidateSelf()V

    .line 597
    :cond_0
    return-void
.end method

.method public b(Lcom/e/a/a;)V
    .locals 1

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/e/a/z;->b()V

    .line 368
    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-virtual {p0, v0, p1}, Lcom/e/a/z;->a([ILcom/e/a/a;)V

    .line 369
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/e/a/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/e/a/z;->k:Lcom/e/a/ac;

    invoke-virtual {v0, p1}, Lcom/e/a/ac;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    invoke-virtual {p0}, Lcom/e/a/z;->invalidateSelf()V

    .line 611
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 206
    iget-object v0, p0, Lcom/e/a/z;->k:Lcom/e/a/ac;

    iget-object v3, v0, Lcom/e/a/ac;->a:Lcom/e/a/c;

    .line 207
    if-eqz v3, :cond_0

    .line 208
    iget-object v0, p0, Lcom/e/a/z;->j:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 209
    invoke-virtual {p0}, Lcom/e/a/z;->a()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/e/a/z;->j:Landroid/graphics/Paint;

    .line 210
    iget-object v0, p0, Lcom/e/a/z;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 215
    :goto_0
    invoke-virtual {p0}, Lcom/e/a/z;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 216
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-nez v0, :cond_2

    .line 261
    :cond_0
    :goto_1
    return-void

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/e/a/z;->j:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 213
    iget-object v0, p0, Lcom/e/a/z;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto :goto_0

    .line 219
    :cond_2
    sget-boolean v0, Lcom/e/a/z;->f:Z

    if-eqz v0, :cond_8

    .line 220
    iget-object v0, p0, Lcom/e/a/z;->g:Landroid/graphics/Bitmap;

    .line 221
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne v1, v2, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eq v1, v2, :cond_7

    .line 223
    :cond_3
    if-eqz v0, :cond_4

    .line 224
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 226
    :cond_4
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 227
    iput-object v0, p0, Lcom/e/a/z;->g:Landroid/graphics/Bitmap;

    .line 231
    :goto_2
    iget-object v1, p0, Lcom/e/a/z;->h:Landroid/graphics/Paint;

    .line 232
    if-nez v1, :cond_5

    .line 233
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 234
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 235
    iput-object v1, p0, Lcom/e/a/z;->h:Landroid/graphics/Paint;

    .line 237
    :cond_5
    iget-object v2, p0, Lcom/e/a/z;->i:Landroid/graphics/Canvas;

    .line 238
    if-nez v2, :cond_6

    .line 239
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 240
    iput-object v2, p0, Lcom/e/a/z;->i:Landroid/graphics/Canvas;

    .line 242
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 243
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 244
    iget v5, v4, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 245
    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 246
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 247
    iget v4, p0, Lcom/e/a/z;->a:F

    iget v5, p0, Lcom/e/a/z;->b:F

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 248
    iget-object v4, p0, Lcom/e/a/z;->j:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/e/a/z;->p:Lcom/e/a/a;

    invoke-virtual {v3, v2, v4, v5}, Lcom/e/a/c;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/e/a/a;)V

    .line 249
    invoke-virtual {p1, v0, v6, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 250
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 251
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_1

    .line 229
    :cond_7
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_2

    .line 253
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 254
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 255
    iget v0, v4, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, v4, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 256
    iget v0, p0, Lcom/e/a/z;->a:F

    iget v1, p0, Lcom/e/a/z;->b:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 257
    iget-object v0, p0, Lcom/e/a/z;->j:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/e/a/z;->p:Lcom/e/a/a;

    invoke-virtual {v3, p1, v0, v1}, Lcom/e/a/c;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/e/a/a;)V

    .line 258
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_1
.end method

.method public getAlpha()I
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Override"
        }
    .end annotation

    .prologue
    .line 320
    iget v0, p0, Lcom/e/a/z;->e:I

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 467
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lcom/e/a/z;->k:Lcom/e/a/ac;

    iget v1, v1, Lcom/e/a/ac;->b:I

    or-int/2addr v0, v1

    return v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 472
    iget-object v0, p0, Lcom/e/a/z;->k:Lcom/e/a/ac;

    invoke-virtual {p0}, Lcom/e/a/z;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lcom/e/a/ac;->b:I

    .line 473
    iget-object v0, p0, Lcom/e/a/z;->k:Lcom/e/a/ac;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/e/a/z;->k:Lcom/e/a/ac;

    iget v0, v0, Lcom/e/a/ac;->f:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/e/a/z;->k:Lcom/e/a/ac;

    iget v0, v0, Lcom/e/a/ac;->e:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 301
    const/4 v0, -0x3

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/e/a/z;->c()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 457
    iget-boolean v0, p0, Lcom/e/a/z;->l:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 458
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/e/a/z;->c:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/e/a/z;->c:Ljava/util/ArrayList;

    .line 459
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/e/a/z;->d:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/e/a/z;->d:Ljava/util/ArrayList;

    .line 460
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/e/a/z;->l:Z

    .line 462
    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000

    .line 187
    iget-object v0, p0, Lcom/e/a/z;->k:Lcom/e/a/ac;

    iget-object v0, v0, Lcom/e/a/ac;->a:Lcom/e/a/c;

    .line 188
    if-nez v0, :cond_0

    .line 189
    iput v2, p0, Lcom/e/a/z;->a:F

    .line 190
    iput v2, p0, Lcom/e/a/z;->b:F

    .line 202
    :goto_0
    return-void

    .line 192
    :cond_0
    invoke-virtual {v0}, Lcom/e/a/c;->d()I

    move-result v1

    .line 193
    invoke-virtual {v0}, Lcom/e/a/c;->e()I

    move-result v0

    .line 194
    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    .line 195
    :cond_1
    iput v2, p0, Lcom/e/a/z;->a:F

    .line 196
    iput v2, p0, Lcom/e/a/z;->b:F

    goto :goto_0

    .line 198
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    int-to-float v1, v1

    div-float v1, v2, v1

    iput v1, p0, Lcom/e/a/z;->a:F

    .line 199
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    iput v0, p0, Lcom/e/a/z;->b:F

    goto :goto_0
.end method

.method protected onStateChange([I)Z
    .locals 1

    .prologue
    .line 430
    invoke-direct {p0, p1}, Lcom/e/a/z;->a([I)I

    move-result v0

    .line 431
    if-gez v0, :cond_0

    .line 432
    sget-object v0, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-direct {p0, v0}, Lcom/e/a/z;->a([I)I

    move-result v0

    .line 434
    :cond_0
    invoke-direct {p0, v0}, Lcom/e/a/z;->d(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 435
    const/4 v0, 0x1

    .line 437
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 312
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    iget v0, p0, Lcom/e/a/z;->e:I

    if-eq v0, p1, :cond_0

    .line 313
    iput p1, p0, Lcom/e/a/z;->e:I

    .line 314
    invoke-virtual {p0}, Lcom/e/a/z;->invalidateSelf()V

    .line 316
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 325
    return-void
.end method

.method public setDither(Z)V
    .locals 0

    .prologue
    .line 308
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 0

    .prologue
    .line 305
    return-void
.end method
