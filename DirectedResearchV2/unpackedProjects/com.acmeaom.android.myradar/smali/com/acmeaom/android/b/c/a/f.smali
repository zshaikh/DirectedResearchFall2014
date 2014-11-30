.class public Lcom/acmeaom/android/b/c/a/f;
.super Lcom/acmeaom/android/a/i/t;
.source "ProGuard"


# instance fields
.field private a:Lcom/acmeaom/android/b/c/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/acmeaom/android/a/i/t;-><init>()V

    return-void
.end method

.method public static a(Lcom/acmeaom/android/b/c/a/a;)Lcom/acmeaom/android/b/c/a/f;
    .locals 2

    .prologue
    .line 62
    invoke-static {}, Lcom/acmeaom/android/a/i/t;->a()Lcom/acmeaom/android/a/i/j;

    move-result-object v0

    .line 64
    const-string v1, "aaAirmetSigmetRootController"

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/i/j;->a(Ljava/lang/String;)Lcom/acmeaom/android/a/i/t;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/b/c/a/f;

    .line 66
    invoke-direct {v0, p0}, Lcom/acmeaom/android/b/c/a/f;->b(Lcom/acmeaom/android/b/c/a/a;)V

    .line 67
    return-object v0
.end method

.method private b(Lcom/acmeaom/android/b/c/a/a;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/acmeaom/android/b/c/a/f;->a:Lcom/acmeaom/android/b/c/a/a;

    .line 212
    return-void
.end method


# virtual methods
.method public c()Lcom/acmeaom/android/b/c/a/a;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/acmeaom/android/b/c/a/f;->a:Lcom/acmeaom/android/b/c/a/a;

    return-object v0
.end method
