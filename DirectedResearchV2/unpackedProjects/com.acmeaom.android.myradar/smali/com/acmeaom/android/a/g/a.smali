.class public Lcom/acmeaom/android/a/g/a;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private final a:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/acmeaom/android/a/g/a;->a:Landroid/graphics/Bitmap;

    .line 17
    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/acmeaom/android/a/g/a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    const-string v0, "use after recycle exception"

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/String;)V

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/a/g/a;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public c()Lcom/acmeaom/android/a/a/c/d;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcom/acmeaom/android/a/a/c/d;

    iget-object v1, p0, Lcom/acmeaom/android/a/g/a;->a:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Lcom/acmeaom/android/a/a/c/d;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method
