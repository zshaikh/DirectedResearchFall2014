.class Lcom/acmeaom/android/a/i/s;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/acmeaom/android/a/i/r;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/a/i/r;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/acmeaom/android/a/i/s;->a:Lcom/acmeaom/android/a/i/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/acmeaom/android/a/i/s;->a:Lcom/acmeaom/android/a/i/r;

    invoke-static {v0}, Lcom/acmeaom/android/a/i/r;->a(Lcom/acmeaom/android/a/i/r;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 57
    :goto_0
    iget-object v1, p0, Lcom/acmeaom/android/a/i/s;->a:Lcom/acmeaom/android/a/i/r;

    invoke-static {v1}, Lcom/acmeaom/android/a/i/r;->b(Lcom/acmeaom/android/a/i/r;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 58
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
