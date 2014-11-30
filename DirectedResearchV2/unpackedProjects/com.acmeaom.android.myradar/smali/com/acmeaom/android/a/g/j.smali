.class Lcom/acmeaom/android/a/g/j;
.super Lcom/android/a/a/n;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/acmeaom/android/a/g/e;


# direct methods
.method public constructor <init>(Lcom/acmeaom/android/a/g/e;Ljava/lang/String;Lcom/android/a/v;IILandroid/graphics/Bitmap$Config;Lcom/android/a/u;)V
    .locals 7

    .prologue
    .line 34
    iput-object p1, p0, Lcom/acmeaom/android/a/g/j;->a:Lcom/acmeaom/android/a/g/e;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 35
    invoke-direct/range {v0 .. v6}, Lcom/android/a/a/n;-><init>(Ljava/lang/String;Lcom/android/a/v;IILandroid/graphics/Bitmap$Config;Lcom/android/a/u;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/BitmapFactory$Options;)V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/acmeaom/android/a/g/j;->a:Lcom/acmeaom/android/a/g/e;

    invoke-static {v0}, Lcom/acmeaom/android/a/g/e;->b(Lcom/acmeaom/android/a/g/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 55
    :cond_0
    return-void
.end method

.method public c()Lcom/android/a/r;
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/acmeaom/android/a/g/j;->a:Lcom/acmeaom/android/a/g/e;

    invoke-static {v0}, Lcom/acmeaom/android/a/g/e;->a(Lcom/acmeaom/android/a/g/e;)Lcom/acmeaom/android/a/a/b/ae;

    move-result-object v0

    sget-object v1, Lcom/acmeaom/android/a/a/b/ae;->d:Lcom/acmeaom/android/a/a/b/ae;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/b/ae;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 41
    sget-object v0, Lcom/android/a/r;->c:Lcom/android/a/r;

    .line 45
    :goto_0
    return-object v0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/a/g/j;->a:Lcom/acmeaom/android/a/g/e;

    invoke-static {v0}, Lcom/acmeaom/android/a/g/e;->a(Lcom/acmeaom/android/a/g/e;)Lcom/acmeaom/android/a/a/b/ae;

    move-result-object v0

    sget-object v1, Lcom/acmeaom/android/a/a/b/ae;->c:Lcom/acmeaom/android/a/a/b/ae;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/b/ae;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-nez v0, :cond_1

    .line 43
    sget-object v0, Lcom/android/a/r;->b:Lcom/android/a/r;

    goto :goto_0

    .line 45
    :cond_1
    sget-object v0, Lcom/android/a/r;->a:Lcom/android/a/r;

    goto :goto_0
.end method
