.class public final Lcom/b/a/ar;
.super Ljava/lang/Object;
.source "Request.java"


# instance fields
.field private a:Landroid/net/Uri;

.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:Z

.field private g:F

.field private h:F

.field private i:F

.field private j:Z

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/b/a/ba;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/graphics/Bitmap$Config;


# direct methods
.method constructor <init>(Landroid/net/Uri;I)V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/b/a/ar;->a:Landroid/net/Uri;

    .line 143
    iput p2, p0, Lcom/b/a/ar;->b:I

    .line 144
    return-void
.end method


# virtual methods
.method public a(II)Lcom/b/a/ar;
    .locals 2

    .prologue
    .line 201
    if-gtz p1, :cond_0

    .line 202
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Width must be positive number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_0
    if-gtz p2, :cond_1

    .line 205
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Height must be positive number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_1
    iput p1, p0, Lcom/b/a/ar;->c:I

    .line 208
    iput p2, p0, Lcom/b/a/ar;->d:I

    .line 209
    return-object p0
.end method

.method public a(Lcom/b/a/ba;)Lcom/b/a/ar;
    .locals 2

    .prologue
    .line 294
    if-nez p1, :cond_0

    .line 295
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Transformation must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/b/a/ar;->k:Ljava/util/List;

    if-nez v0, :cond_1

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/b/a/ar;->k:Ljava/util/List;

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/b/a/ar;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    return-object p0
.end method

.method a()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/b/a/ar;->a:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/b/a/ar;->b:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()Z
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/b/a/ar;->c:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lcom/b/a/ar;
    .locals 2

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/b/a/ar;->f:Z

    if-eqz v0, :cond_0

    .line 228
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Center crop can not be used after calling centerInside"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/ar;->e:Z

    .line 231
    return-object p0
.end method

.method public d()Lcom/b/a/ap;
    .locals 14

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/b/a/ar;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/b/a/ar;->e:Z

    if-eqz v0, :cond_0

    .line 307
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Center crop and center inside can not be used together."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_0
    iget-boolean v0, p0, Lcom/b/a/ar;->e:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/b/a/ar;->c:I

    if-nez v0, :cond_1

    .line 310
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Center crop requires calling resize."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_1
    iget-boolean v0, p0, Lcom/b/a/ar;->f:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/b/a/ar;->c:I

    if-nez v0, :cond_2

    .line 313
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Center inside requires calling resize."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_2
    new-instance v0, Lcom/b/a/ap;

    iget-object v1, p0, Lcom/b/a/ar;->a:Landroid/net/Uri;

    iget v2, p0, Lcom/b/a/ar;->b:I

    iget-object v3, p0, Lcom/b/a/ar;->k:Ljava/util/List;

    iget v4, p0, Lcom/b/a/ar;->c:I

    iget v5, p0, Lcom/b/a/ar;->d:I

    iget-boolean v6, p0, Lcom/b/a/ar;->e:Z

    iget-boolean v7, p0, Lcom/b/a/ar;->f:Z

    iget v8, p0, Lcom/b/a/ar;->g:F

    iget v9, p0, Lcom/b/a/ar;->h:F

    iget v10, p0, Lcom/b/a/ar;->i:F

    iget-boolean v11, p0, Lcom/b/a/ar;->j:Z

    iget-object v12, p0, Lcom/b/a/ar;->l:Landroid/graphics/Bitmap$Config;

    const/4 v13, 0x0

    invoke-direct/range {v0 .. v13}, Lcom/b/a/ap;-><init>(Landroid/net/Uri;ILjava/util/List;IIZZFFFZLandroid/graphics/Bitmap$Config;Lcom/b/a/aq;)V

    return-object v0
.end method
