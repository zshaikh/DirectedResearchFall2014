.class Lcom/b/a/c;
.super Lcom/b/a/d;
.source "AssetBitmapHunter.java"


# static fields
.field private static final n:I


# instance fields
.field private o:Landroid/content/res/AssetManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "file:///android_asset/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/b/a/c;->n:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/b/a/ae;Lcom/b/a/o;Lcom/b/a/h;Lcom/b/a/au;Lcom/b/a/a;)V
    .locals 6

    .prologue
    .line 22
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/b/a/d;-><init>(Lcom/b/a/ae;Lcom/b/a/o;Lcom/b/a/h;Lcom/b/a/au;Lcom/b/a/a;)V

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/c;->o:Landroid/content/res/AssetManager;

    .line 24
    return-void
.end method


# virtual methods
.method a(Lcom/b/a/ap;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 27
    iget-object v0, p1, Lcom/b/a/ap;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/b/a/c;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-virtual {p0, v0}, Lcom/b/a/c;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 36
    iget-object v0, p0, Lcom/b/a/c;->f:Lcom/b/a/ap;

    invoke-static {v0}, Lcom/b/a/c;->b(Lcom/b/a/ap;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 37
    iget-object v2, p0, Lcom/b/a/c;->f:Lcom/b/a/ap;

    invoke-virtual {v2}, Lcom/b/a/ap;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 41
    :try_start_0
    iget-object v2, p0, Lcom/b/a/c;->o:Landroid/content/res/AssetManager;

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 42
    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-static {v1}, Lcom/b/a/bd;->a(Ljava/io/InputStream;)V

    .line 46
    iget-object v1, p0, Lcom/b/a/c;->f:Lcom/b/a/ap;

    iget v1, v1, Lcom/b/a/ap;->d:I

    iget-object v2, p0, Lcom/b/a/c;->f:Lcom/b/a/ap;

    iget v2, v2, Lcom/b/a/ap;->e:I

    invoke-static {v1, v2, v0}, Lcom/b/a/c;->a(IILandroid/graphics/BitmapFactory$Options;)V

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/b/a/c;->o:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 50
    const/4 v2, 0x0

    :try_start_1
    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 52
    invoke-static {v1}, Lcom/b/a/bd;->a(Ljava/io/InputStream;)V

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/b/a/bd;->a(Ljava/io/InputStream;)V

    throw v0

    .line 52
    :catchall_1
    move-exception v0

    invoke-static {v1}, Lcom/b/a/bd;->a(Ljava/io/InputStream;)V

    throw v0
.end method

.method a()Lcom/b/a/ak;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/b/a/ak;->b:Lcom/b/a/ak;

    return-object v0
.end method
