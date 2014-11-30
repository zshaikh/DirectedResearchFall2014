.class public Lcom/acmeaom/android/a/f/m;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private final a:Lcom/acmeaom/android/c/d/e;


# direct methods
.method public constructor <init>(Lcom/acmeaom/android/c/d/e;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/acmeaom/android/a/f/m;->a:Lcom/acmeaom/android/c/d/e;

    .line 20
    return-void
.end method

.method static synthetic a(Lcom/acmeaom/android/a/f/m;)Landroid/view/View;
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/acmeaom/android/a/f/m;->b()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/acmeaom/android/c/d/e;)Lcom/acmeaom/android/a/f/m;
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/acmeaom/android/a/f/m;

    invoke-direct {v0, p0}, Lcom/acmeaom/android/a/f/m;-><init>(Lcom/acmeaom/android/c/d/e;)V

    return-object v0
.end method

.method private b()Landroid/view/View;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/acmeaom/android/a/f/m;->a:Lcom/acmeaom/android/c/d/e;

    iget-object v0, v0, Lcom/acmeaom/android/c/d/e;->c:Lcom/acmeaom/android/a/d/d;

    invoke-interface {v0}, Lcom/acmeaom/android/a/d/d;->getMapActivity()Lcom/acmeaom/android/a/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acmeaom/android/a/d/b;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/acmeaom/android/a/i/q;
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/acmeaom/android/a/f/m;->b()Landroid/view/View;

    move-result-object v1

    .line 28
    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/acmeaom/android/a/i/r;

    invoke-direct {v0, v1}, Lcom/acmeaom/android/a/i/r;-><init>(Landroid/view/View;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/acmeaom/android/a/f/m;->a:Lcom/acmeaom/android/c/d/e;

    iget-object v0, v0, Lcom/acmeaom/android/c/d/e;->c:Lcom/acmeaom/android/a/d/d;

    invoke-interface {v0}, Lcom/acmeaom/android/a/d/d;->getMapActivity()Lcom/acmeaom/android/a/d/b;

    move-result-object v0

    new-instance v1, Lcom/acmeaom/android/a/f/n;

    invoke-direct {v1, p0, p1}, Lcom/acmeaom/android/a/f/n;-><init>(Lcom/acmeaom/android/a/f/m;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/d/b;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 47
    return-void
.end method
