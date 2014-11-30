.class public Lcom/acmeaom/android/c/h/c;
.super Lcom/acmeaom/android/c/h/n;
.source "ProGuard"


# static fields
.field public static final a:Lcom/acmeaom/android/c/h/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/acmeaom/android/c/h/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/acmeaom/android/c/h/f;-><init>(Lcom/acmeaom/android/c/h/d;)V

    sput-object v0, Lcom/acmeaom/android/c/h/c;->a:Lcom/acmeaom/android/c/h/e;

    return-void
.end method

.method protected constructor <init>(Lcom/acmeaom/android/c/h/m;Ljava/lang/String;Lcom/acmeaom/android/a/a/b/ae;Lcom/acmeaom/android/c/c/f;Z)V
    .locals 0

    .prologue
    .line 58
    invoke-direct/range {p0 .. p5}, Lcom/acmeaom/android/c/h/n;-><init>(Lcom/acmeaom/android/c/h/m;Ljava/lang/String;Lcom/acmeaom/android/a/a/b/ae;Lcom/acmeaom/android/c/c/f;Z)V

    .line 59
    return-void
.end method


# virtual methods
.method protected c(Lcom/acmeaom/android/c/g/a;)Lcom/acmeaom/android/c/g/b/g;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p1}, Lcom/acmeaom/android/c/g/a;->h()Lcom/acmeaom/android/c/g/b/g;

    move-result-object v0

    return-object v0
.end method

.method protected c()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method protected f()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    return v0
.end method
