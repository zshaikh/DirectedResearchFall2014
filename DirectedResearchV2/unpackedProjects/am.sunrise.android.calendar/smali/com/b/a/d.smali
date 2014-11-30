.class abstract Lcom/b/a/d;
.super Ljava/lang/Object;
.source "BitmapHunter.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final n:Ljava/lang/Object;


# instance fields
.field final a:Lcom/b/a/ae;

.field final b:Lcom/b/a/o;

.field final c:Lcom/b/a/h;

.field final d:Lcom/b/a/au;

.field final e:Ljava/lang/String;

.field final f:Lcom/b/a/ap;

.field final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/b/a/a;",
            ">;"
        }
    .end annotation
.end field

.field final h:Z

.field i:Landroid/graphics/Bitmap;

.field j:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field k:Lcom/b/a/ak;

.field l:Ljava/lang/Exception;

.field m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/b/a/d;->n:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/b/a/ae;Lcom/b/a/o;Lcom/b/a/h;Lcom/b/a/au;Lcom/b/a/a;)V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/b/a/d;->a:Lcom/b/a/ae;

    .line 65
    iput-object p2, p0, Lcom/b/a/d;->b:Lcom/b/a/o;

    .line 66
    iput-object p3, p0, Lcom/b/a/d;->c:Lcom/b/a/h;

    .line 67
    iput-object p4, p0, Lcom/b/a/d;->d:Lcom/b/a/au;

    .line 68
    invoke-virtual {p5}, Lcom/b/a/a;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/d;->e:Ljava/lang/String;

    .line 69
    invoke-virtual {p5}, Lcom/b/a/a;->c()Lcom/b/a/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/d;->f:Lcom/b/a/ap;

    .line 70
    iget-boolean v0, p5, Lcom/b/a/a;->d:Z

    iput-boolean v0, p0, Lcom/b/a/d;->h:Z

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/b/a/d;->g:Ljava/util/List;

    .line 72
    invoke-virtual {p0, p5}, Lcom/b/a/d;->a(Lcom/b/a/a;)V

    .line 73
    return-void
.end method

.method static a(Lcom/b/a/ap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 296
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 297
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 304
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 306
    invoke-virtual {p0}, Lcom/b/a/ap;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 307
    iget v0, p0, Lcom/b/a/ap;->d:I

    .line 308
    iget v1, p0, Lcom/b/a/ap;->e:I

    .line 310
    iget v6, p0, Lcom/b/a/ap;->h:F

    .line 311
    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-eqz v7, :cond_0

    .line 312
    iget-boolean v7, p0, Lcom/b/a/ap;->k:Z

    if-eqz v7, :cond_3

    .line 313
    iget v7, p0, Lcom/b/a/ap;->i:F

    iget v8, p0, Lcom/b/a/ap;->j:F

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 319
    :cond_0
    :goto_0
    iget-boolean v6, p0, Lcom/b/a/ap;->f:Z

    if-eqz v6, :cond_5

    .line 320
    int-to-float v0, v0

    int-to-float v6, v3

    div-float/2addr v0, v6

    .line 321
    int-to-float v1, v1

    int-to-float v6, v2

    div-float/2addr v1, v6

    .line 323
    cmpl-float v6, v0, v1

    if-lez v6, :cond_4

    .line 325
    int-to-float v6, v2

    div-float/2addr v1, v0

    mul-float/2addr v1, v6

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    .line 326
    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    move v9, v3

    move v3, v2

    move v2, v9

    .line 334
    :goto_1
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    move v9, v1

    move v1, v4

    move v4, v9

    move v10, v3

    move v3, v2

    move v2, v10

    .line 350
    :goto_2
    if-eqz p2, :cond_1

    .line 351
    int-to-float v0, p2

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 354
    :cond_1
    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 356
    if-eq v0, p1, :cond_2

    .line 357
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    move-object p1, v0

    .line 361
    :cond_2
    return-object p1

    .line 315
    :cond_3
    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    .line 330
    :cond_4
    int-to-float v6, v3

    div-float/2addr v0, v1

    mul-float/2addr v0, v6

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    .line 331
    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    move v9, v1

    move v1, v2

    move v2, v0

    move v0, v9

    move v10, v4

    move v4, v3

    move v3, v10

    .line 332
    goto :goto_1

    .line 335
    :cond_5
    iget-boolean v6, p0, Lcom/b/a/ap;->g:Z

    if-eqz v6, :cond_7

    .line 336
    int-to-float v0, v0

    int-to-float v6, v3

    div-float/2addr v0, v6

    .line 337
    int-to-float v1, v1

    int-to-float v6, v2

    div-float/2addr v1, v6

    .line 338
    cmpg-float v6, v0, v1

    if-gez v6, :cond_6

    .line 339
    :goto_3
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    move v1, v4

    move v9, v4

    move v4, v2

    move v2, v9

    .line 340
    goto :goto_2

    :cond_6
    move v0, v1

    .line 338
    goto :goto_3

    .line 340
    :cond_7
    if-eqz v0, :cond_9

    if-eqz v1, :cond_9

    if-ne v0, v3, :cond_8

    if-eq v1, v2, :cond_9

    .line 344
    :cond_8
    int-to-float v0, v0

    int-to-float v6, v3

    div-float/2addr v0, v6

    .line 345
    int-to-float v1, v1

    int-to-float v6, v2

    div-float/2addr v1, v6

    .line 346
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_9
    move v1, v4

    move v9, v4

    move v4, v2

    move v2, v9

    goto :goto_2
.end method

.method static a(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/b/a/ba;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 245
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    move v3, v0

    move-object v2, p1

    :goto_0
    if-ge v3, v4, :cond_4

    .line 246
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ba;

    .line 247
    invoke-interface {v0, v2}, Lcom/b/a/ba;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 249
    if-nez p1, :cond_1

    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transformation "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/b/a/ba;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " returned null after "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " previous transformation(s).\n\nTransformation list:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 256
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ba;

    .line 257
    invoke-interface {v0}, Lcom/b/a/ba;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 259
    :cond_0
    sget-object v0, Lcom/b/a/ae;->a:Landroid/os/Handler;

    new-instance v3, Lcom/b/a/e;

    invoke-direct {v3, v2}, Lcom/b/a/e;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v0, v1

    .line 292
    :goto_2
    return-object v0

    .line 267
    :cond_1
    if-ne p1, v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 268
    sget-object v2, Lcom/b/a/ae;->a:Landroid/os/Handler;

    new-instance v3, Lcom/b/a/f;

    invoke-direct {v3, v0}, Lcom/b/a/f;-><init>(Lcom/b/a/ba;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v0, v1

    .line 275
    goto :goto_2

    .line 279
    :cond_2
    if-eq p1, v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 280
    sget-object v2, Lcom/b/a/ae;->a:Landroid/os/Handler;

    new-instance v3, Lcom/b/a/g;

    invoke-direct {v3, v0}, Lcom/b/a/g;-><init>(Lcom/b/a/ba;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v0, v1

    .line 287
    goto :goto_2

    .line 245
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move-object v2, p1

    goto/16 :goto_0

    :cond_4
    move-object v0, v2

    .line 292
    goto :goto_2
.end method

.method static a(Landroid/content/Context;Lcom/b/a/ae;Lcom/b/a/o;Lcom/b/a/h;Lcom/b/a/au;Lcom/b/a/a;Lcom/b/a/t;)Lcom/b/a/d;
    .locals 7

    .prologue
    .line 193
    invoke-virtual {p5}, Lcom/b/a/a;->c()Lcom/b/a/ap;

    move-result-object v0

    iget v0, v0, Lcom/b/a/ap;->b:I

    if-eqz v0, :cond_0

    .line 194
    new-instance v0, Lcom/b/a/at;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/b/a/at;-><init>(Landroid/content/Context;Lcom/b/a/ae;Lcom/b/a/o;Lcom/b/a/h;Lcom/b/a/au;Lcom/b/a/a;)V

    .line 215
    :goto_0
    return-object v0

    .line 196
    :cond_0
    invoke-virtual {p5}, Lcom/b/a/a;->c()Lcom/b/a/ap;

    move-result-object v0

    iget-object v0, v0, Lcom/b/a/ap;->a:Landroid/net/Uri;

    .line 197
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 198
    const-string v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 199
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const-string v2, "photo"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 201
    new-instance v0, Lcom/b/a/k;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/b/a/k;-><init>(Landroid/content/Context;Lcom/b/a/ae;Lcom/b/a/o;Lcom/b/a/h;Lcom/b/a/au;Lcom/b/a/a;)V

    goto :goto_0

    .line 202
    :cond_1
    const-string v1, "media"

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    new-instance v0, Lcom/b/a/aa;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/b/a/aa;-><init>(Landroid/content/Context;Lcom/b/a/ae;Lcom/b/a/o;Lcom/b/a/h;Lcom/b/a/au;Lcom/b/a/a;)V

    goto :goto_0

    .line 205
    :cond_2
    new-instance v0, Lcom/b/a/m;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/b/a/m;-><init>(Landroid/content/Context;Lcom/b/a/ae;Lcom/b/a/o;Lcom/b/a/h;Lcom/b/a/au;Lcom/b/a/a;)V

    goto :goto_0

    .line 207
    :cond_3
    const-string v2, "file"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 208
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "android_asset"

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 209
    new-instance v0, Lcom/b/a/c;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/b/a/c;-><init>(Landroid/content/Context;Lcom/b/a/ae;Lcom/b/a/o;Lcom/b/a/h;Lcom/b/a/au;Lcom/b/a/a;)V

    goto/16 :goto_0

    .line 211
    :cond_4
    new-instance v0, Lcom/b/a/w;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/b/a/w;-><init>(Landroid/content/Context;Lcom/b/a/ae;Lcom/b/a/o;Lcom/b/a/h;Lcom/b/a/au;Lcom/b/a/a;)V

    goto/16 :goto_0

    .line 212
    :cond_5
    const-string v0, "android.resource"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 213
    new-instance v0, Lcom/b/a/at;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/b/a/at;-><init>(Landroid/content/Context;Lcom/b/a/ae;Lcom/b/a/o;Lcom/b/a/h;Lcom/b/a/au;Lcom/b/a/a;)V

    goto/16 :goto_0

    .line 215
    :cond_6
    new-instance v0, Lcom/b/a/ac;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/b/a/ac;-><init>(Lcom/b/a/ae;Lcom/b/a/o;Lcom/b/a/h;Lcom/b/a/au;Lcom/b/a/a;Lcom/b/a/t;)V

    goto/16 :goto_0
.end method

.method static a(IIIILandroid/graphics/BitmapFactory$Options;)V
    .locals 3

    .prologue
    .line 233
    const/4 v0, 0x1

    .line 234
    if-gt p3, p1, :cond_0

    if-le p2, p0, :cond_1

    .line 235
    :cond_0
    int-to-float v0, p3

    int-to-float v1, p1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 236
    int-to-float v1, p2

    int-to-float v2, p0

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 237
    if-ge v0, v1, :cond_2

    .line 240
    :cond_1
    :goto_0
    iput v0, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 241
    const/4 v0, 0x0

    iput-boolean v0, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 242
    return-void

    :cond_2
    move v0, v1

    .line 237
    goto :goto_0
.end method

.method static a(IILandroid/graphics/BitmapFactory$Options;)V
    .locals 2

    .prologue
    .line 228
    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {p0, p1, v0, v1, p2}, Lcom/b/a/d;->a(IIIILandroid/graphics/BitmapFactory$Options;)V

    .line 229
    return-void
.end method

.method static b(Lcom/b/a/ap;)Landroid/graphics/BitmapFactory$Options;
    .locals 2

    .prologue
    .line 220
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 221
    iget-object v1, p0, Lcom/b/a/ap;->l:Landroid/graphics/Bitmap$Config;

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/b/a/ap;->l:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 224
    :cond_0
    return-object v0
.end method


# virtual methods
.method abstract a(Lcom/b/a/ap;)Landroid/graphics/Bitmap;
.end method

.method a()Lcom/b/a/ak;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/b/a/d;->k:Lcom/b/a/ak;

    return-object v0
.end method

.method protected a(I)V
    .locals 0

    .prologue
    .line 76
    iput p1, p0, Lcom/b/a/d;->m:I

    .line 77
    return-void
.end method

.method a(Lcom/b/a/a;)V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/b/a/d;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    return-void
.end method

.method a(ZLandroid/net/NetworkInfo;)Z
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method b()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/b/a/d;->h:Z

    if-nez v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/b/a/d;->c:Lcom/b/a/h;

    iget-object v1, p0, Lcom/b/a/d;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/b/a/h;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_1

    .line 117
    iget-object v1, p0, Lcom/b/a/d;->d:Lcom/b/a/au;

    invoke-virtual {v1}, Lcom/b/a/au;->a()V

    .line 118
    sget-object v1, Lcom/b/a/ak;->a:Lcom/b/a/ak;

    iput-object v1, p0, Lcom/b/a/d;->k:Lcom/b/a/ak;

    .line 140
    :cond_0
    :goto_0
    return-object v0

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/b/a/d;->f:Lcom/b/a/ap;

    invoke-virtual {p0, v0}, Lcom/b/a/d;->a(Lcom/b/a/ap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_0

    .line 126
    iget-object v1, p0, Lcom/b/a/d;->d:Lcom/b/a/au;

    invoke-virtual {v1, v0}, Lcom/b/a/au;->a(Landroid/graphics/Bitmap;)V

    .line 127
    iget-object v1, p0, Lcom/b/a/d;->f:Lcom/b/a/ap;

    invoke-virtual {v1}, Lcom/b/a/ap;->c()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/b/a/d;->m:I

    if-eqz v1, :cond_0

    .line 128
    :cond_2
    sget-object v1, Lcom/b/a/d;->n:Ljava/lang/Object;

    monitor-enter v1

    .line 129
    :try_start_0
    iget-object v2, p0, Lcom/b/a/d;->f:Lcom/b/a/ap;

    invoke-virtual {v2}, Lcom/b/a/ap;->d()Z

    move-result v2

    if-nez v2, :cond_3

    iget v2, p0, Lcom/b/a/d;->m:I

    if-eqz v2, :cond_4

    .line 130
    :cond_3
    iget-object v2, p0, Lcom/b/a/d;->f:Lcom/b/a/ap;

    iget v3, p0, Lcom/b/a/d;->m:I

    invoke-static {v2, v0, v3}, Lcom/b/a/d;->a(Lcom/b/a/ap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 132
    :cond_4
    iget-object v2, p0, Lcom/b/a/d;->f:Lcom/b/a/ap;

    invoke-virtual {v2}, Lcom/b/a/ap;->e()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 133
    iget-object v2, p0, Lcom/b/a/d;->f:Lcom/b/a/ap;

    iget-object v2, v2, Lcom/b/a/ap;->c:Ljava/util/List;

    invoke-static {v2, v0}, Lcom/b/a/d;->a(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 135
    :cond_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    iget-object v1, p0, Lcom/b/a/d;->d:Lcom/b/a/au;

    invoke-virtual {v1, v0}, Lcom/b/a/au;->b(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method b(Lcom/b/a/a;)V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/b/a/d;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 149
    return-void
.end method

.method c()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 152
    iget-object v1, p0, Lcom/b/a/d;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/b/a/d;->j:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/b/a/d;->j:Ljava/util/concurrent/Future;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method d()Z
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/b/a/d;->j:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/d;->j:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/b/a/d;->h:Z

    return v0
.end method

.method f()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/b/a/d;->i:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/b/a/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method h()Lcom/b/a/ap;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/b/a/d;->f:Lcom/b/a/ap;

    return-object v0
.end method

.method i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/b/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/b/a/d;->g:Ljava/util/List;

    return-object v0
.end method

.method j()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/b/a/d;->l:Ljava/lang/Exception;

    return-object v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 81
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Picasso-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/d;->f:Lcom/b/a/ap;

    invoke-virtual {v2}, Lcom/b/a/ap;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/b/a/d;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/d;->i:Landroid/graphics/Bitmap;

    .line 85
    iget-object v0, p0, Lcom/b/a/d;->i:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/b/a/d;->b:Lcom/b/a/o;

    invoke-virtual {v0, p0}, Lcom/b/a/o;->c(Lcom/b/a/d;)V
    :try_end_0
    .catch Lcom/b/a/v; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "Picasso-Idle"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 107
    :goto_1
    return-void

    .line 88
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/b/a/d;->b:Lcom/b/a/o;

    invoke-virtual {v0, p0}, Lcom/b/a/o;->a(Lcom/b/a/d;)V
    :try_end_1
    .catch Lcom/b/a/v; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    :try_start_2
    iput-object v0, p0, Lcom/b/a/d;->l:Ljava/lang/Exception;

    .line 92
    iget-object v0, p0, Lcom/b/a/d;->b:Lcom/b/a/o;

    invoke-virtual {v0, p0}, Lcom/b/a/o;->c(Lcom/b/a/d;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "Picasso-Idle"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_1

    .line 93
    :catch_1
    move-exception v0

    .line 94
    :try_start_3
    iput-object v0, p0, Lcom/b/a/d;->l:Ljava/lang/Exception;

    .line 95
    iget-object v0, p0, Lcom/b/a/d;->b:Lcom/b/a/o;

    invoke-virtual {v0, p0}, Lcom/b/a/o;->b(Lcom/b/a/d;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 105
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "Picasso-Idle"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_1

    .line 96
    :catch_2
    move-exception v0

    .line 97
    :try_start_4
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 98
    iget-object v2, p0, Lcom/b/a/d;->d:Lcom/b/a/au;

    invoke-virtual {v2}, Lcom/b/a/au;->f()Lcom/b/a/ax;

    move-result-object v2

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v2, v3}, Lcom/b/a/ax;->a(Ljava/io/PrintWriter;)V

    .line 99
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v2, p0, Lcom/b/a/d;->l:Ljava/lang/Exception;

    .line 100
    iget-object v0, p0, Lcom/b/a/d;->b:Lcom/b/a/o;

    invoke-virtual {v0, p0}, Lcom/b/a/o;->c(Lcom/b/a/d;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 105
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "Picasso-Idle"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_1

    .line 101
    :catch_3
    move-exception v0

    .line 102
    :try_start_5
    iput-object v0, p0, Lcom/b/a/d;->l:Ljava/lang/Exception;

    .line 103
    iget-object v0, p0, Lcom/b/a/d;->b:Lcom/b/a/o;

    invoke-virtual {v0, p0}, Lcom/b/a/o;->c(Lcom/b/a/d;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 105
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "Picasso-Idle"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "Picasso-Idle"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v0
.end method
