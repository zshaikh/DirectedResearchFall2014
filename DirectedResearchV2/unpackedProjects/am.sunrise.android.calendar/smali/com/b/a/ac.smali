.class Lcom/b/a/ac;
.super Lcom/b/a/d;
.source "NetworkBitmapHunter.java"


# instance fields
.field n:I

.field private final o:Lcom/b/a/t;


# direct methods
.method public constructor <init>(Lcom/b/a/ae;Lcom/b/a/o;Lcom/b/a/h;Lcom/b/a/au;Lcom/b/a/a;Lcom/b/a/t;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct/range {p0 .. p5}, Lcom/b/a/d;-><init>(Lcom/b/a/ae;Lcom/b/a/o;Lcom/b/a/h;Lcom/b/a/au;Lcom/b/a/a;)V

    .line 39
    iput-object p6, p0, Lcom/b/a/ac;->o:Lcom/b/a/t;

    .line 40
    const/4 v0, 0x2

    iput v0, p0, Lcom/b/a/ac;->n:I

    .line 41
    return-void
.end method

.method private a(Ljava/io/InputStream;Lcom/b/a/ap;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 76
    if-nez p1, :cond_0

    .line 108
    :goto_0
    return-object v0

    .line 79
    :cond_0
    new-instance v1, Lcom/b/a/z;

    invoke-direct {v1, p1}, Lcom/b/a/z;-><init>(Ljava/io/InputStream;)V

    .line 82
    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Lcom/b/a/z;->a(I)J

    move-result-wide v2

    .line 84
    invoke-static {v1}, Lcom/b/a/bd;->c(Ljava/io/InputStream;)Z

    move-result v4

    .line 85
    invoke-virtual {v1, v2, v3}, Lcom/b/a/z;->a(J)V

    .line 88
    if-eqz v4, :cond_2

    .line 89
    invoke-static {v1}, Lcom/b/a/bd;->b(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 90
    invoke-static {p2}, Lcom/b/a/ac;->b(Lcom/b/a/ap;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 91
    invoke-virtual {p2}, Lcom/b/a/ap;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    iput-boolean v6, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 94
    array-length v2, v0

    invoke-static {v0, v5, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 95
    iget v2, p2, Lcom/b/a/ap;->d:I

    iget v3, p2, Lcom/b/a/ap;->e:I

    invoke-static {v2, v3, v1}, Lcom/b/a/ac;->a(IILandroid/graphics/BitmapFactory$Options;)V

    .line 97
    :cond_1
    array-length v2, v0

    invoke-static {v0, v5, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 99
    :cond_2
    invoke-static {p2}, Lcom/b/a/ac;->b(Lcom/b/a/ap;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v4

    .line 100
    invoke-virtual {p2}, Lcom/b/a/ap;->b()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 101
    iput-boolean v6, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 103
    invoke-static {v1, v0, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 104
    iget v5, p2, Lcom/b/a/ap;->d:I

    iget v6, p2, Lcom/b/a/ap;->e:I

    invoke-static {v5, v6, v4}, Lcom/b/a/ac;->a(IILandroid/graphics/BitmapFactory$Options;)V

    .line 106
    invoke-virtual {v1, v2, v3}, Lcom/b/a/z;->a(J)V

    .line 108
    :cond_3
    invoke-static {v1, v0, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/b/a/ap;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 44
    iget v0, p0, Lcom/b/a/ac;->n:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 46
    :goto_0
    iget-object v1, p0, Lcom/b/a/ac;->o:Lcom/b/a/t;

    iget-object v2, p1, Lcom/b/a/ap;->a:Landroid/net/Uri;

    invoke-interface {v1, v2, v0}, Lcom/b/a/t;->a(Landroid/net/Uri;Z)Lcom/b/a/u;

    move-result-object v1

    .line 47
    if-nez v1, :cond_2

    .line 48
    const/4 v0, 0x0

    .line 62
    :cond_0
    :goto_1
    return-object v0

    .line 44
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 51
    :cond_2
    iget-boolean v0, v1, Lcom/b/a/u;->c:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/b/a/ak;->b:Lcom/b/a/ak;

    :goto_2
    iput-object v0, p0, Lcom/b/a/ac;->k:Lcom/b/a/ak;

    .line 53
    invoke-virtual {v1}, Lcom/b/a/u;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 54
    if-nez v0, :cond_0

    .line 58
    invoke-virtual {v1}, Lcom/b/a/u;->a()Ljava/io/InputStream;

    move-result-object v1

    .line 60
    :try_start_0
    invoke-direct {p0, v1, p1}, Lcom/b/a/ac;->a(Ljava/io/InputStream;Lcom/b/a/ap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 62
    invoke-static {v1}, Lcom/b/a/bd;->a(Ljava/io/InputStream;)V

    goto :goto_1

    .line 51
    :cond_3
    sget-object v0, Lcom/b/a/ak;->c:Lcom/b/a/ak;

    goto :goto_2

    .line 62
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/b/a/bd;->a(Ljava/io/InputStream;)V

    throw v0
.end method

.method a(ZLandroid/net/NetworkInfo;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 67
    iget v2, p0, Lcom/b/a/ac;->n:I

    if-lez v2, :cond_1

    move v2, v1

    .line 68
    :goto_0
    if-nez v2, :cond_2

    .line 72
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v2, v0

    .line 67
    goto :goto_0

    .line 71
    :cond_2
    iget v2, p0, Lcom/b/a/ac;->n:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/b/a/ac;->n:I

    .line 72
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method
