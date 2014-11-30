.class Lcom/acmeaom/android/c/g/d;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/acmeaom/android/c/g/b;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/c/g/b;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/acmeaom/android/c/g/d;->a:Lcom/acmeaom/android/c/g/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 236
    const-string v0, "starting render thread"

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->f(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/acmeaom/android/c/g/d;->a:Lcom/acmeaom/android/c/g/b;

    iget-object v1, p0, Lcom/acmeaom/android/c/g/d;->a:Lcom/acmeaom/android/c/g/b;

    invoke-static {v1}, Lcom/acmeaom/android/c/g/b;->a(Lcom/acmeaom/android/c/g/b;)Lcom/acmeaom/android/a/a/b/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/c/g/b;->a(Lcom/acmeaom/android/a/a/b/h;)V

    .line 238
    const-string v0, "render thread stopped"

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->f(Ljava/lang/String;)V

    .line 239
    return-void
.end method
