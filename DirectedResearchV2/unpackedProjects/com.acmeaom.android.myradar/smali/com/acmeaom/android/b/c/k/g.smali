.class public Lcom/acmeaom/android/b/c/k/g;
.super Lcom/acmeaom/android/a/i/t;
.source "ProGuard"


# instance fields
.field private a:Lcom/acmeaom/android/b/c/k/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/acmeaom/android/a/i/t;-><init>()V

    return-void
.end method

.method public static a(Lcom/acmeaom/android/b/c/k/a;)Lcom/acmeaom/android/a/i/t;
    .locals 2

    .prologue
    .line 75
    invoke-static {}, Lcom/acmeaom/android/a/i/t;->a()Lcom/acmeaom/android/a/i/j;

    move-result-object v0

    .line 77
    const-string v1, "aaWarningRootController"

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/i/j;->a(Ljava/lang/String;)Lcom/acmeaom/android/a/i/t;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/b/c/k/g;

    .line 79
    iput-object p0, v0, Lcom/acmeaom/android/b/c/k/g;->a:Lcom/acmeaom/android/b/c/k/a;

    .line 80
    return-object v0
.end method


# virtual methods
.method public c()Lcom/acmeaom/android/b/c/k/a;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/acmeaom/android/b/c/k/g;->a:Lcom/acmeaom/android/b/c/k/a;

    return-object v0
.end method
