.class Lcom/acmeaom/android/c/h/r;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/acmeaom/android/c/h/q;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/acmeaom/android/c/h/o;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/acmeaom/android/c/h/r;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/acmeaom/android/c/h/m;Lcom/acmeaom/android/c/c/f;)Lcom/acmeaom/android/c/h/a;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 65
    new-instance v0, Lcom/acmeaom/android/c/h/n;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/acmeaom/android/c/h/n;-><init>(Lcom/acmeaom/android/c/h/m;Ljava/lang/String;Lcom/acmeaom/android/a/a/b/ae;Lcom/acmeaom/android/c/c/f;Z)V

    return-object v0
.end method

.method public b(Lcom/acmeaom/android/c/h/m;Ljava/lang/String;Lcom/acmeaom/android/a/a/b/ae;Lcom/acmeaom/android/c/c/i;Z)Lcom/acmeaom/android/c/h/n;
    .locals 6

    .prologue
    .line 60
    new-instance v0, Lcom/acmeaom/android/c/h/n;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/acmeaom/android/c/h/n;-><init>(Lcom/acmeaom/android/c/h/m;Ljava/lang/String;Lcom/acmeaom/android/a/a/b/ae;Lcom/acmeaom/android/c/c/f;Z)V

    return-object v0
.end method
