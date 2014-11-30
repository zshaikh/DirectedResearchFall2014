.class Lcom/acmeaom/android/a/a/b/y;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/acmeaom/android/a/a/b/r;

.field final synthetic b:Lcom/acmeaom/android/a/a/b/x;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/a/a/b/x;Lcom/acmeaom/android/a/a/b/r;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/acmeaom/android/a/a/b/y;->b:Lcom/acmeaom/android/a/a/b/x;

    iput-object p2, p0, Lcom/acmeaom/android/a/a/b/y;->a:Lcom/acmeaom/android/a/a/b/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 18
    invoke-static {}, Lcom/acmeaom/android/a/a/b/s;->a()Lcom/acmeaom/android/a/a/b/s;

    move-result-object v0

    iget-object v1, p0, Lcom/acmeaom/android/a/a/b/y;->a:Lcom/acmeaom/android/a/a/b/r;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/b/s;->a(Lcom/acmeaom/android/a/a/b/r;)V

    .line 19
    return-void
.end method
