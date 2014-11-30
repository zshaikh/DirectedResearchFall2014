.class public Lcom/acmeaom/android/b/c/g/g;
.super Lcom/acmeaom/android/a/i/t;
.source "ProGuard"


# instance fields
.field public a:Lcom/acmeaom/android/b/c/g/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/acmeaom/android/a/i/t;-><init>()V

    return-void
.end method

.method public static a(Lcom/acmeaom/android/b/c/g/d;)Lcom/acmeaom/android/b/c/g/g;
    .locals 2

    .prologue
    .line 78
    invoke-static {}, Lcom/acmeaom/android/a/i/t;->a()Lcom/acmeaom/android/a/i/j;

    move-result-object v0

    .line 80
    const-string v1, "aaHurricaneRootController"

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/i/j;->a(Ljava/lang/String;)Lcom/acmeaom/android/a/i/t;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/b/c/g/g;

    .line 82
    invoke-virtual {v0, p0}, Lcom/acmeaom/android/b/c/g/g;->b(Lcom/acmeaom/android/b/c/g/d;)V

    .line 83
    return-object v0
.end method


# virtual methods
.method public b(Lcom/acmeaom/android/b/c/g/d;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/acmeaom/android/b/c/g/g;->a:Lcom/acmeaom/android/b/c/g/d;

    .line 88
    return-void
.end method

.method public c()Lcom/acmeaom/android/b/c/g/d;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/acmeaom/android/b/c/g/g;->a:Lcom/acmeaom/android/b/c/g/d;

    return-object v0
.end method
