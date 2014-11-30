.class public Lcom/acmeaom/android/c/e/a;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Lcom/acmeaom/android/a/a/e/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FLcom/acmeaom/android/a/i/d;)V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {}, Lcom/acmeaom/android/a/a/c/a;->a()Lcom/acmeaom/android/a/a/c/a;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/acmeaom/android/a/a/e/a;->a(Ljava/lang/String;FLcom/acmeaom/android/a/a/c/a;)Lcom/acmeaom/android/a/a/e/a;

    move-result-object v0

    .line 53
    new-instance v1, Lcom/acmeaom/android/c/e/b;

    invoke-direct {v1, p0, v0, p4}, Lcom/acmeaom/android/c/e/b;-><init>(Lcom/acmeaom/android/c/e/a;Lcom/acmeaom/android/a/a/e/a;Lcom/acmeaom/android/a/i/d;)V

    .line 63
    sget-object v0, Lcom/acmeaom/android/a/a/b/b;->a:Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/acmeaom/android/a/a/b/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/util/HashMap;)Lcom/acmeaom/android/a/a/b/a;

    move-result-object v0

    .line 66
    invoke-static {v0}, Lcom/acmeaom/android/a/a/e/c;->a(Lcom/acmeaom/android/a/a/b/a;)Lcom/acmeaom/android/a/a/e/c;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/c/e/a;->a:Lcom/acmeaom/android/a/a/e/c;

    .line 68
    return-void
.end method


# virtual methods
.method public a()Lcom/acmeaom/android/a/a/c/n;
    .locals 5

    .prologue
    const v4, 0x7f7fffff

    const/4 v1, 0x0

    .line 76
    invoke-static {v1, v1}, Lcom/acmeaom/android/a/a/b/c;->a(II)Lcom/acmeaom/android/a/a/b/c;

    move-result-object v0

    .line 77
    invoke-static {v1, v1}, Lcom/acmeaom/android/a/a/b/c;->a(II)Lcom/acmeaom/android/a/a/b/c;

    move-result-object v1

    .line 78
    iget-object v2, p0, Lcom/acmeaom/android/c/e/a;->a:Lcom/acmeaom/android/a/a/e/c;

    const/4 v3, 0x0

    invoke-static {v4, v4}, Lcom/acmeaom/android/a/a/c/n;->a(FF)Lcom/acmeaom/android/a/a/c/n;

    move-result-object v4

    invoke-static {v2, v0, v3, v4, v1}, Lcom/acmeaom/android/a/a/e/c;->a(Lcom/acmeaom/android/a/a/e/c;Lcom/acmeaom/android/a/a/b/c;Ljava/util/HashMap;Lcom/acmeaom/android/a/a/c/n;Lcom/acmeaom/android/a/a/b/c;)Lcom/acmeaom/android/a/a/c/n;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/acmeaom/android/a/a/c/d;Lcom/acmeaom/android/a/a/c/m;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-static {v0, v0}, Lcom/acmeaom/android/a/a/b/c;->a(II)Lcom/acmeaom/android/a/a/b/c;

    move-result-object v0

    .line 88
    invoke-static {}, Lcom/acmeaom/android/a/a/c/a;->a()Lcom/acmeaom/android/a/a/c/a;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/acmeaom/android/a/a/c/i;->a(Lcom/acmeaom/android/a/a/c/m;Lcom/acmeaom/android/a/a/c/a;)Lcom/acmeaom/android/a/a/c/i;

    move-result-object v1

    .line 89
    iget-object v2, p0, Lcom/acmeaom/android/c/e/a;->a:Lcom/acmeaom/android/a/a/e/c;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Lcom/acmeaom/android/a/a/e/b;->a(Lcom/acmeaom/android/a/a/e/c;Lcom/acmeaom/android/a/a/b/c;Lcom/acmeaom/android/a/a/c/i;Ljava/util/HashMap;)Lcom/acmeaom/android/a/a/e/b;

    move-result-object v0

    .line 92
    invoke-static {v0, p1}, Lcom/acmeaom/android/a/a/e/b;->a(Lcom/acmeaom/android/a/a/e/b;Lcom/acmeaom/android/a/a/c/d;)V

    .line 94
    return-void
.end method
