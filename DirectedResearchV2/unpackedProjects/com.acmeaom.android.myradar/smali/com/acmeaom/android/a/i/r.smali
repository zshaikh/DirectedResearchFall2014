.class public Lcom/acmeaom/android/a/i/r;
.super Lcom/acmeaom/android/a/i/q;
.source "ProGuard"


# instance fields
.field private final a:Landroid/view/View;

.field private b:Z

.field private final c:Landroid/os/Handler;

.field private final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/acmeaom/android/a/i/q;-><init>()V

    .line 54
    new-instance v0, Lcom/acmeaom/android/a/i/s;

    invoke-direct {v0, p0}, Lcom/acmeaom/android/a/i/s;-><init>(Lcom/acmeaom/android/a/i/r;)V

    iput-object v0, p0, Lcom/acmeaom/android/a/i/r;->d:Ljava/lang/Runnable;

    .line 41
    iput-object p1, p0, Lcom/acmeaom/android/a/i/r;->a:Landroid/view/View;

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/acmeaom/android/a/i/r;->c:Landroid/os/Handler;

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/acmeaom/android/a/i/r;)Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/acmeaom/android/a/i/r;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/acmeaom/android/a/i/r;)Landroid/view/View;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/acmeaom/android/a/i/r;->a:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/acmeaom/android/a/i/r;->b:Z

    .line 51
    iget-object v0, p0, Lcom/acmeaom/android/a/i/r;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/acmeaom/android/a/i/r;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    return-void
.end method
