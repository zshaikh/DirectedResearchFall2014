.class Lcom/b/a/at;
.super Lcom/b/a/d;
.source "ResourceBitmapHunter.java"


# instance fields
.field private final n:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/b/a/ae;Lcom/b/a/o;Lcom/b/a/h;Lcom/b/a/au;Lcom/b/a/a;)V
    .locals 6

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/b/a/d;-><init>(Lcom/b/a/ae;Lcom/b/a/o;Lcom/b/a/h;Lcom/b/a/au;Lcom/b/a/a;)V

    .line 32
    iput-object p1, p0, Lcom/b/a/at;->n:Landroid/content/Context;

    .line 33
    return-void
.end method

.method private a(Landroid/content/res/Resources;ILcom/b/a/ap;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 46
    invoke-static {p3}, Lcom/b/a/at;->b(Lcom/b/a/ap;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 47
    invoke-virtual {p3}, Lcom/b/a/ap;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 49
    invoke-static {p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 50
    iget v1, p3, Lcom/b/a/ap;->d:I

    iget v2, p3, Lcom/b/a/ap;->e:I

    invoke-static {v1, v2, v0}, Lcom/b/a/at;->a(IILandroid/graphics/BitmapFactory$Options;)V

    .line 52
    :cond_0
    invoke-static {p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a(Lcom/b/a/ap;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/b/a/at;->n:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/b/a/bd;->a(Landroid/content/Context;Lcom/b/a/ap;)Landroid/content/res/Resources;

    move-result-object v0

    .line 37
    invoke-static {v0, p1}, Lcom/b/a/bd;->a(Landroid/content/res/Resources;Lcom/b/a/ap;)I

    move-result v1

    .line 38
    invoke-direct {p0, v0, v1, p1}, Lcom/b/a/at;->a(Landroid/content/res/Resources;ILcom/b/a/ap;)Landroid/graphics/Bitmap;

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
