.class Lcom/acmeaom/android/b/c/d/d;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/acmeaom/android/b/c/d/c;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/acmeaom/android/b/c/d/b;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/acmeaom/android/b/c/d/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/acmeaom/android/c/h/m;Lcom/acmeaom/android/c/c/f;)Lcom/acmeaom/android/b/c/d/a;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 46
    new-instance v0, Lcom/acmeaom/android/b/c/d/a;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/acmeaom/android/b/c/d/a;-><init>(Lcom/acmeaom/android/c/h/m;Ljava/lang/String;Lcom/acmeaom/android/a/a/b/ae;Lcom/acmeaom/android/c/c/f;ZLcom/acmeaom/android/b/c/d/b;)V

    return-object v0
.end method

.method public a(Lcom/acmeaom/android/c/h/m;Ljava/lang/String;Lcom/acmeaom/android/a/a/b/ae;Lcom/acmeaom/android/c/c/i;Z)Lcom/acmeaom/android/b/c/d/a;
    .locals 7

    .prologue
    .line 39
    new-instance v0, Lcom/acmeaom/android/b/c/d/a;

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/acmeaom/android/b/c/d/a;-><init>(Lcom/acmeaom/android/c/h/m;Ljava/lang/String;Lcom/acmeaom/android/a/a/b/ae;Lcom/acmeaom/android/c/c/f;ZLcom/acmeaom/android/b/c/d/b;)V

    return-object v0
.end method

.method public synthetic b(Lcom/acmeaom/android/c/h/m;Lcom/acmeaom/android/c/c/f;)Lcom/acmeaom/android/c/h/a;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/acmeaom/android/b/c/d/d;->a(Lcom/acmeaom/android/c/h/m;Lcom/acmeaom/android/c/c/f;)Lcom/acmeaom/android/b/c/d/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/acmeaom/android/c/h/m;Ljava/lang/String;Lcom/acmeaom/android/a/a/b/ae;Lcom/acmeaom/android/c/c/i;Z)Lcom/acmeaom/android/c/h/n;
    .locals 1

    .prologue
    .line 33
    invoke-virtual/range {p0 .. p5}, Lcom/acmeaom/android/b/c/d/d;->a(Lcom/acmeaom/android/c/h/m;Ljava/lang/String;Lcom/acmeaom/android/a/a/b/ae;Lcom/acmeaom/android/c/c/i;Z)Lcom/acmeaom/android/b/c/d/a;

    move-result-object v0

    return-object v0
.end method
