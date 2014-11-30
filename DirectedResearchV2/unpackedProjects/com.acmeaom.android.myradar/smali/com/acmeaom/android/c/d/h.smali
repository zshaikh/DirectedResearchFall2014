.class Lcom/acmeaom/android/c/d/h;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/acmeaom/android/a/d/e;

.field final synthetic b:Lcom/acmeaom/android/c/d/e;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/c/d/e;Lcom/acmeaom/android/a/d/e;)V
    .locals 0

    .prologue
    .line 615
    iput-object p1, p0, Lcom/acmeaom/android/c/d/h;->b:Lcom/acmeaom/android/c/d/e;

    iput-object p2, p0, Lcom/acmeaom/android/c/d/h;->a:Lcom/acmeaom/android/a/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/acmeaom/android/c/d/h;->a:Lcom/acmeaom/android/a/d/e;

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/acmeaom/android/c/d/h;->a:Lcom/acmeaom/android/a/d/e;

    invoke-interface {v0}, Lcom/acmeaom/android/a/d/e;->a()V

    .line 620
    :cond_0
    return-void
.end method
