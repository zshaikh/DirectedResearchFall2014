.class Lcom/b/a/m;
.super Lcom/b/a/d;
.source "ContentStreamBitmapHunter.java"


# instance fields
.field final n:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/b/a/ae;Lcom/b/a/o;Lcom/b/a/h;Lcom/b/a/au;Lcom/b/a/a;)V
    .locals 6

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/b/a/d;-><init>(Lcom/b/a/ae;Lcom/b/a/o;Lcom/b/a/h;Lcom/b/a/au;Lcom/b/a/a;)V

    .line 33
    iput-object p1, p0, Lcom/b/a/m;->n:Landroid/content/Context;

    .line 34
    return-void
.end method


# virtual methods
.method a(Lcom/b/a/ap;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/b/a/m;->c(Lcom/b/a/ap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method a()Lcom/b/a/ak;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/b/a/ak;->b:Lcom/b/a/ak;

    return-object v0
.end method

.method protected c(Lcom/b/a/ap;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 46
    iget-object v0, p0, Lcom/b/a/m;->n:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 47
    invoke-static {p1}, Lcom/b/a/m;->b(Lcom/b/a/ap;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    .line 48
    invoke-virtual {p1}, Lcom/b/a/ap;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 52
    :try_start_0
    iget-object v3, p1, Lcom/b/a/ap;->a:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 53
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-static {v1}, Lcom/b/a/bd;->a(Ljava/io/InputStream;)V

    .line 57
    iget v1, p1, Lcom/b/a/ap;->d:I

    iget v3, p1, Lcom/b/a/ap;->e:I

    invoke-static {v1, v3, v2}, Lcom/b/a/m;->a(IILandroid/graphics/BitmapFactory$Options;)V

    .line 59
    :cond_0
    iget-object v1, p1, Lcom/b/a/ap;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 61
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 63
    invoke-static {v0}, Lcom/b/a/bd;->a(Ljava/io/InputStream;)V

    return-object v1

    .line 55
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/b/a/bd;->a(Ljava/io/InputStream;)V

    throw v0

    .line 63
    :catchall_1
    move-exception v1

    invoke-static {v0}, Lcom/b/a/bd;->a(Ljava/io/InputStream;)V

    throw v1
.end method
