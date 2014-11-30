.class Lcom/acmeaom/android/a/g/f;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/android/a/v;


# instance fields
.field final synthetic a:Lcom/acmeaom/android/a/g/i;

.field final synthetic b:Lcom/acmeaom/android/a/g/e;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/a/g/e;Lcom/acmeaom/android/a/g/i;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/acmeaom/android/a/g/f;->b:Lcom/acmeaom/android/a/g/e;

    iput-object p2, p0, Lcom/acmeaom/android/a/g/f;->a:Lcom/acmeaom/android/a/g/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 81
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/acmeaom/android/a/c/a;->a(IJ)Lcom/acmeaom/android/a/c/c;

    move-result-object v0

    new-instance v1, Lcom/acmeaom/android/a/g/g;

    invoke-direct {v1, p0, p1}, Lcom/acmeaom/android/a/g/g;-><init>(Lcom/acmeaom/android/a/g/f;Landroid/graphics/Bitmap;)V

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/c/a;->a(Lcom/acmeaom/android/a/c/c;Ljava/lang/Runnable;)V

    .line 90
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 79
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/acmeaom/android/a/g/f;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
