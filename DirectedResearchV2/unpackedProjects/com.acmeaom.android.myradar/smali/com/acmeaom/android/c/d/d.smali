.class public Lcom/acmeaom/android/c/d/d;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private final a:Lcom/acmeaom/android/a/a/d/b;

.field private final b:Lcom/acmeaom/android/a/g/m;


# direct methods
.method public constructor <init>(Lcom/acmeaom/android/a/a/d/b;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {p1}, Lcom/acmeaom/android/a/a/d/b;->a(Lcom/acmeaom/android/a/a/d/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    iput-object p1, p0, Lcom/acmeaom/android/c/d/d;->a:Lcom/acmeaom/android/a/a/d/b;

    .line 26
    invoke-static {p1}, Lcom/acmeaom/android/c/d/d;->a(Lcom/acmeaom/android/a/a/d/b;)Lcom/acmeaom/android/a/g/m;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/c/d/d;->b:Lcom/acmeaom/android/a/g/m;

    .line 32
    :goto_0
    return-void

    .line 28
    :cond_0
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->c()V

    .line 29
    iput-object v1, p0, Lcom/acmeaom/android/c/d/d;->a:Lcom/acmeaom/android/a/a/d/b;

    .line 30
    iput-object v1, p0, Lcom/acmeaom/android/c/d/d;->b:Lcom/acmeaom/android/a/g/m;

    goto :goto_0
.end method

.method public static a(Lcom/acmeaom/android/a/a/d/b;)Lcom/acmeaom/android/a/g/m;
    .locals 1

    .prologue
    .line 41
    invoke-static {p0}, Lcom/acmeaom/android/c/h/m;->a(Lcom/acmeaom/android/a/a/d/b;)Lcom/acmeaom/android/a/g/m;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/acmeaom/android/a/g/m;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/acmeaom/android/c/d/d;->b:Lcom/acmeaom/android/a/g/m;

    return-object v0
.end method
