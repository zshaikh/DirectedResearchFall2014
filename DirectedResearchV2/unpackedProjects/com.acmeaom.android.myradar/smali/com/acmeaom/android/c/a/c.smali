.class Lcom/acmeaom/android/c/a/c;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/acmeaom/android/c/a/a;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/c/a/a;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/acmeaom/android/c/a/c;->b:Lcom/acmeaom/android/c/a/a;

    iput-object p2, p0, Lcom/acmeaom/android/c/a/c;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/acmeaom/android/c/a/c;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/b/b/a;

    invoke-interface {v0}, Lcom/acmeaom/android/b/b/a;->a()Lcom/acmeaom/android/a/i/t;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Lcom/acmeaom/android/a/i/t;->b()Landroid/content/Intent;

    move-result-object v0

    .line 260
    iget-object v1, p0, Lcom/acmeaom/android/c/a/c;->b:Lcom/acmeaom/android/c/a/a;

    iget-object v1, v1, Lcom/acmeaom/android/c/a/a;->c:Lcom/acmeaom/android/a/d/d;

    invoke-interface {v1}, Lcom/acmeaom/android/a/d/d;->getMapActivity()Lcom/acmeaom/android/a/d/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/acmeaom/android/a/d/b;->a(Landroid/content/Intent;)V

    .line 261
    return-void
.end method
