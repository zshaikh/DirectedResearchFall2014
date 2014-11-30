.class Lcom/acmeaom/android/b/c/e/b;
.super Lcom/acmeaom/android/a/a/b/w;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/acmeaom/android/b/c/e/a;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/b/c/e/a;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/acmeaom/android/b/c/e/b;->a:Lcom/acmeaom/android/b/c/e/a;

    invoke-direct {p0}, Lcom/acmeaom/android/a/a/b/w;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 41
    iget-object v1, p0, Lcom/acmeaom/android/b/c/e/b;->a:Lcom/acmeaom/android/b/c/e/a;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/acmeaom/android/b/c/e/a;->a(Lcom/acmeaom/android/b/c/e/a;Ljava/lang/String;)V

    .line 42
    return-void
.end method
