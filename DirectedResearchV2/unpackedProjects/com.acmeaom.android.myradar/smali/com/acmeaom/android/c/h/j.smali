.class Lcom/acmeaom/android/c/h/j;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/acmeaom/android/c/h/i;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/acmeaom/android/c/h/h;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/acmeaom/android/c/h/j;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/acmeaom/android/c/h/m;Lcom/acmeaom/android/c/c/f;)Lcom/acmeaom/android/c/h/a;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/acmeaom/android/c/h/g;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/acmeaom/android/c/h/g;-><init>(Lcom/acmeaom/android/c/h/m;Ljava/lang/String;Lcom/acmeaom/android/a/a/b/ae;Lcom/acmeaom/android/c/c/f;ZLcom/acmeaom/android/c/h/h;)V

    return-object v0
.end method

.method public b(Lcom/acmeaom/android/c/h/m;Ljava/lang/String;Lcom/acmeaom/android/a/a/b/ae;Lcom/acmeaom/android/c/c/i;Z)Lcom/acmeaom/android/c/h/n;
    .locals 7

    .prologue
    .line 33
    new-instance v0, Lcom/acmeaom/android/c/h/g;

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/acmeaom/android/c/h/g;-><init>(Lcom/acmeaom/android/c/h/m;Ljava/lang/String;Lcom/acmeaom/android/a/a/b/ae;Lcom/acmeaom/android/c/c/f;ZLcom/acmeaom/android/c/h/h;)V

    return-object v0
.end method
