.class Lcom/acmeaom/android/myradar/app/a/d;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/acmeaom/android/a/d/f;

.field final synthetic b:Lcom/acmeaom/android/myradar/app/a/a;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/myradar/app/a/a;Lcom/acmeaom/android/a/d/f;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/acmeaom/android/myradar/app/a/d;->b:Lcom/acmeaom/android/myradar/app/a/a;

    iput-object p2, p0, Lcom/acmeaom/android/myradar/app/a/d;->a:Lcom/acmeaom/android/a/d/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/a/d;->a:Lcom/acmeaom/android/a/d/f;

    invoke-virtual {v0, p2}, Lcom/acmeaom/android/a/d/f;->setBaseLayer(I)V

    .line 22
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/a/d;->b:Lcom/acmeaom/android/myradar/app/a/a;

    invoke-virtual {v0}, Lcom/acmeaom/android/myradar/app/a/a;->a()V

    .line 23
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 24
    return-void
.end method
