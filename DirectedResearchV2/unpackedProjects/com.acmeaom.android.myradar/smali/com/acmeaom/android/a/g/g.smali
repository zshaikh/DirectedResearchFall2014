.class Lcom/acmeaom/android/a/g/g;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/acmeaom/android/a/g/f;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/a/g/f;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/acmeaom/android/a/g/g;->b:Lcom/acmeaom/android/a/g/f;

    iput-object p2, p0, Lcom/acmeaom/android/a/g/g;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 83
    iget-object v0, p0, Lcom/acmeaom/android/a/g/g;->a:Landroid/graphics/Bitmap;

    .line 84
    iget-object v1, p0, Lcom/acmeaom/android/a/g/g;->b:Lcom/acmeaom/android/a/g/f;

    iget-object v1, v1, Lcom/acmeaom/android/a/g/f;->b:Lcom/acmeaom/android/a/g/e;

    invoke-static {v1}, Lcom/acmeaom/android/a/g/e;->b(Lcom/acmeaom/android/a/g/e;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/acmeaom/android/a/g/g;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/acmeaom/android/a/g/g;->a:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/acmeaom/android/a/g/e;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/acmeaom/android/a/g/g;->b:Lcom/acmeaom/android/a/g/f;

    iget-object v1, v1, Lcom/acmeaom/android/a/g/f;->a:Lcom/acmeaom/android/a/g/i;

    iget-object v2, p0, Lcom/acmeaom/android/a/g/g;->b:Lcom/acmeaom/android/a/g/f;

    iget-object v2, v2, Lcom/acmeaom/android/a/g/f;->b:Lcom/acmeaom/android/a/g/e;

    new-instance v3, Lcom/acmeaom/android/a/g/a;

    invoke-direct {v3, v0}, Lcom/acmeaom/android/a/g/a;-><init>(Landroid/graphics/Bitmap;)V

    invoke-interface {v1, v2, v3}, Lcom/acmeaom/android/a/g/i;->a(Lcom/acmeaom/android/a/g/e;Lcom/acmeaom/android/a/g/a;)V

    .line 88
    return-void
.end method
