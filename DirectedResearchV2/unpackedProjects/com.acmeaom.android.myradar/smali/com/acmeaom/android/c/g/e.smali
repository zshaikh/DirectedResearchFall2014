.class Lcom/acmeaom/android/c/g/e;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/acmeaom/android/a/a/b/h;

.field final synthetic b:Lcom/acmeaom/android/c/g/b;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/c/g/b;Lcom/acmeaom/android/a/a/b/h;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/acmeaom/android/c/g/e;->b:Lcom/acmeaom/android/c/g/b;

    iput-object p2, p0, Lcom/acmeaom/android/c/g/e;->a:Lcom/acmeaom/android/a/a/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 348
    const-string v0, "starting buffer thread"

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->f(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/acmeaom/android/c/g/e;->b:Lcom/acmeaom/android/c/g/b;

    iget-object v1, p0, Lcom/acmeaom/android/c/g/e;->a:Lcom/acmeaom/android/a/a/b/h;

    invoke-static {v0, v1}, Lcom/acmeaom/android/c/g/b;->a(Lcom/acmeaom/android/c/g/b;Lcom/acmeaom/android/a/a/b/h;)V

    .line 350
    const-string v0, "buffer thread stopped"

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->f(Ljava/lang/String;)V

    .line 351
    return-void
.end method
