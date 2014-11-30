.class Lcom/acmeaom/android/b/c/d/h;
.super Lcom/acmeaom/android/a/a/b/w;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/acmeaom/android/b/c/d/e;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/b/c/d/e;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/acmeaom/android/b/c/d/h;->a:Lcom/acmeaom/android/b/c/d/e;

    invoke-direct {p0}, Lcom/acmeaom/android/a/a/b/w;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/acmeaom/android/b/c/d/h;->a:Lcom/acmeaom/android/b/c/d/e;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v0, v1}, Lcom/acmeaom/android/b/c/d/e;->a(Lcom/acmeaom/android/b/c/d/e;Ljava/lang/Object;)V

    .line 51
    return-void
.end method
