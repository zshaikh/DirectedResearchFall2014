.class public Lcom/b/a/as;
.super Ljava/lang/Object;
.source "RequestCreator.java"


# instance fields
.field private final a:Lcom/b/a/ae;

.field private final b:Lcom/b/a/ar;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:I

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:I

.field private i:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v2, p0, Lcom/b/a/as;->a:Lcom/b/a/ae;

    .line 57
    new-instance v0, Lcom/b/a/ar;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lcom/b/a/ar;-><init>(Landroid/net/Uri;I)V

    iput-object v0, p0, Lcom/b/a/as;->b:Lcom/b/a/ar;

    .line 58
    return-void
.end method

.method constructor <init>(Lcom/b/a/ae;Landroid/net/Uri;I)V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iget-boolean v0, p1, Lcom/b/a/ae;->k:Z

    if-eqz v0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Picasso instance already shut down. Cannot submit new requests."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    iput-object p1, p0, Lcom/b/a/as;->a:Lcom/b/a/ae;

    .line 52
    new-instance v0, Lcom/b/a/ar;

    invoke-direct {v0, p2, p3}, Lcom/b/a/ar;-><init>(Landroid/net/Uri;I)V

    iput-object v0, p0, Lcom/b/a/as;->b:Lcom/b/a/ar;

    .line 53
    return-void
.end method


# virtual methods
.method a()Lcom/b/a/as;
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/as;->e:Z

    .line 130
    return-object p0
.end method

.method public a(II)Lcom/b/a/as;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/b/a/as;->b:Lcom/b/a/ar;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/ar;->a(II)Lcom/b/a/ar;

    .line 144
    return-object p0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Lcom/b/a/as;
    .locals 2

    .prologue
    .line 85
    iget v0, p0, Lcom/b/a/as;->f:I

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Placeholder image already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    iput-object p1, p0, Lcom/b/a/as;->g:Landroid/graphics/drawable/Drawable;

    .line 89
    return-object p0
.end method

.method public a(Lcom/b/a/ba;)Lcom/b/a/as;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/b/a/as;->b:Lcom/b/a/ar;

    invoke-virtual {v0, p1}, Lcom/b/a/ar;->a(Lcom/b/a/ba;)Lcom/b/a/ar;

    .line 192
    return-object p0
.end method

.method public a(Landroid/widget/ImageView;)V
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/b/a/as;->a(Landroid/widget/ImageView;Lcom/b/a/j;)V

    .line 327
    return-void
.end method

.method public a(Landroid/widget/ImageView;Lcom/b/a/j;)V
    .locals 10

    .prologue
    .line 339
    if-nez p1, :cond_0

    .line 340
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/b/a/as;->b:Lcom/b/a/ar;

    invoke-virtual {v0}, Lcom/b/a/ar;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 344
    iget-object v0, p0, Lcom/b/a/as;->a:Lcom/b/a/ae;

    invoke-virtual {v0, p1}, Lcom/b/a/ae;->a(Landroid/widget/ImageView;)V

    .line 345
    iget v0, p0, Lcom/b/a/as;->f:I

    iget-object v1, p0, Lcom/b/a/as;->g:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0, v1}, Lcom/b/a/an;->a(Landroid/widget/ImageView;ILandroid/graphics/drawable/Drawable;)V

    .line 386
    :cond_1
    :goto_0
    return-void

    .line 349
    :cond_2
    iget-boolean v0, p0, Lcom/b/a/as;->e:Z

    if-eqz v0, :cond_6

    .line 350
    iget-object v0, p0, Lcom/b/a/as;->b:Lcom/b/a/ar;

    invoke-virtual {v0}, Lcom/b/a/ar;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 351
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fit cannot be used with resize."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_3
    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    .line 354
    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    .line 355
    if-eqz v0, :cond_4

    if-nez v1, :cond_5

    .line 356
    :cond_4
    iget v0, p0, Lcom/b/a/as;->f:I

    iget-object v1, p0, Lcom/b/a/as;->g:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0, v1}, Lcom/b/a/an;->a(Landroid/widget/ImageView;ILandroid/graphics/drawable/Drawable;)V

    .line 357
    iget-object v0, p0, Lcom/b/a/as;->a:Lcom/b/a/ae;

    new-instance v1, Lcom/b/a/n;

    invoke-direct {v1, p0, p1, p2}, Lcom/b/a/n;-><init>(Lcom/b/a/as;Landroid/widget/ImageView;Lcom/b/a/j;)V

    invoke-virtual {v0, p1, v1}, Lcom/b/a/ae;->a(Landroid/widget/ImageView;Lcom/b/a/n;)V

    goto :goto_0

    .line 360
    :cond_5
    iget-object v2, p0, Lcom/b/a/as;->b:Lcom/b/a/ar;

    invoke-virtual {v2, v0, v1}, Lcom/b/a/ar;->a(II)Lcom/b/a/ar;

    .line 363
    :cond_6
    iget-object v0, p0, Lcom/b/a/as;->a:Lcom/b/a/ae;

    iget-object v1, p0, Lcom/b/a/as;->b:Lcom/b/a/ar;

    invoke-virtual {v1}, Lcom/b/a/ar;->d()Lcom/b/a/ap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/ae;->a(Lcom/b/a/ap;)Lcom/b/a/ap;

    move-result-object v3

    .line 364
    invoke-static {v3}, Lcom/b/a/bd;->a(Lcom/b/a/ap;)Ljava/lang/String;

    move-result-object v8

    .line 366
    iget-boolean v0, p0, Lcom/b/a/as;->c:Z

    if-nez v0, :cond_7

    .line 367
    iget-object v0, p0, Lcom/b/a/as;->a:Lcom/b/a/ae;

    invoke-virtual {v0, v8}, Lcom/b/a/ae;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 368
    if-eqz v2, :cond_7

    .line 369
    iget-object v0, p0, Lcom/b/a/as;->a:Lcom/b/a/ae;

    invoke-virtual {v0, p1}, Lcom/b/a/ae;->a(Landroid/widget/ImageView;)V

    .line 370
    iget-object v0, p0, Lcom/b/a/as;->a:Lcom/b/a/ae;

    iget-object v1, v0, Lcom/b/a/ae;->c:Landroid/content/Context;

    sget-object v3, Lcom/b/a/ak;->a:Lcom/b/a/ak;

    iget-boolean v4, p0, Lcom/b/a/as;->d:Z

    iget-object v0, p0, Lcom/b/a/as;->a:Lcom/b/a/ae;

    iget-boolean v5, v0, Lcom/b/a/ae;->j:Z

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/b/a/an;->a(Landroid/widget/ImageView;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/b/a/ak;ZZ)V

    .line 372
    if-eqz p2, :cond_1

    .line 373
    invoke-interface {p2}, Lcom/b/a/j;->a()V

    goto :goto_0

    .line 379
    :cond_7
    iget v0, p0, Lcom/b/a/as;->f:I

    iget-object v1, p0, Lcom/b/a/as;->g:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0, v1}, Lcom/b/a/an;->a(Landroid/widget/ImageView;ILandroid/graphics/drawable/Drawable;)V

    .line 381
    new-instance v0, Lcom/b/a/x;

    iget-object v1, p0, Lcom/b/a/as;->a:Lcom/b/a/ae;

    iget-boolean v4, p0, Lcom/b/a/as;->c:Z

    iget-boolean v5, p0, Lcom/b/a/as;->d:Z

    iget v6, p0, Lcom/b/a/as;->h:I

    iget-object v7, p0, Lcom/b/a/as;->i:Landroid/graphics/drawable/Drawable;

    move-object v2, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/b/a/x;-><init>(Lcom/b/a/ae;Landroid/widget/ImageView;Lcom/b/a/ap;ZZILandroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/b/a/j;)V

    .line 385
    iget-object v1, p0, Lcom/b/a/as;->a:Lcom/b/a/ae;

    invoke-virtual {v1, v0}, Lcom/b/a/ae;->a(Lcom/b/a/a;)V

    goto/16 :goto_0
.end method

.method public a(Lcom/b/a/ay;)V
    .locals 6

    .prologue
    .line 284
    if-nez p1, :cond_0

    .line 285
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_0
    iget-boolean v0, p0, Lcom/b/a/as;->e:Z

    if-eqz v0, :cond_1

    .line 288
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fit cannot be used with a Target."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_1
    iget v0, p0, Lcom/b/a/as;->f:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/b/a/as;->a:Lcom/b/a/ae;

    iget-object v0, v0, Lcom/b/a/ae;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/b/a/as;->f:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 295
    :goto_0
    iget-object v1, p0, Lcom/b/a/as;->b:Lcom/b/a/ar;

    invoke-virtual {v1}, Lcom/b/a/ar;->a()Z

    move-result v1

    if-nez v1, :cond_3

    .line 296
    iget-object v1, p0, Lcom/b/a/as;->a:Lcom/b/a/ae;

    invoke-virtual {v1, p1}, Lcom/b/a/ae;->a(Lcom/b/a/ay;)V

    .line 297
    invoke-interface {p1, v0}, Lcom/b/a/ay;->b(Landroid/graphics/drawable/Drawable;)V

    .line 317
    :goto_1
    return-void

    .line 291
    :cond_2
    iget-object v0, p0, Lcom/b/a/as;->g:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 301
    :cond_3
    iget-object v1, p0, Lcom/b/a/as;->a:Lcom/b/a/ae;

    iget-object v2, p0, Lcom/b/a/as;->b:Lcom/b/a/ar;

    invoke-virtual {v2}, Lcom/b/a/ar;->d()Lcom/b/a/ap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/b/a/ae;->a(Lcom/b/a/ap;)Lcom/b/a/ap;

    move-result-object v3

    .line 302
    invoke-static {v3}, Lcom/b/a/bd;->a(Lcom/b/a/ap;)Ljava/lang/String;

    move-result-object v5

    .line 304
    iget-boolean v1, p0, Lcom/b/a/as;->c:Z

    if-nez v1, :cond_4

    .line 305
    iget-object v1, p0, Lcom/b/a/as;->a:Lcom/b/a/ae;

    invoke-virtual {v1, v5}, Lcom/b/a/ae;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 306
    if-eqz v1, :cond_4

    .line 307
    iget-object v0, p0, Lcom/b/a/as;->a:Lcom/b/a/ae;

    invoke-virtual {v0, p1}, Lcom/b/a/ae;->a(Lcom/b/a/ay;)V

    .line 308
    sget-object v0, Lcom/b/a/ak;->a:Lcom/b/a/ak;

    invoke-interface {p1, v1, v0}, Lcom/b/a/ay;->a(Landroid/graphics/Bitmap;Lcom/b/a/ak;)V

    goto :goto_1

    .line 313
    :cond_4
    invoke-interface {p1, v0}, Lcom/b/a/ay;->b(Landroid/graphics/drawable/Drawable;)V

    .line 315
    new-instance v0, Lcom/b/a/az;

    iget-object v1, p0, Lcom/b/a/as;->a:Lcom/b/a/ae;

    iget-boolean v4, p0, Lcom/b/a/as;->c:Z

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/b/a/az;-><init>(Lcom/b/a/ae;Lcom/b/a/ay;Lcom/b/a/ap;ZLjava/lang/String;)V

    .line 316
    iget-object v1, p0, Lcom/b/a/as;->a:Lcom/b/a/ae;

    invoke-virtual {v1, v0}, Lcom/b/a/ae;->a(Lcom/b/a/a;)V

    goto :goto_1
.end method

.method public b()Lcom/b/a/as;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/b/a/as;->b:Lcom/b/a/ar;

    invoke-virtual {v0}, Lcom/b/a/ar;->c()Lcom/b/a/ar;

    .line 154
    return-object p0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)Lcom/b/a/as;
    .locals 2

    .prologue
    .line 106
    if-nez p1, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error image may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    iget v0, p0, Lcom/b/a/as;->h:I

    if-eqz v0, :cond_1

    .line 110
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error image already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_1
    iput-object p1, p0, Lcom/b/a/as;->i:Landroid/graphics/drawable/Drawable;

    .line 113
    return-object p0
.end method
