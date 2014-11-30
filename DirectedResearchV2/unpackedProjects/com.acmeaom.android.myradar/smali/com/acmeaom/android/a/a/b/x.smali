.class public Lcom/acmeaom/android/a/a/b/x;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final a:Lcom/acmeaom/android/a/a/b/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcom/acmeaom/android/a/a/b/x;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/b/x;-><init>()V

    sput-object v0, Lcom/acmeaom/android/a/a/b/x;->a:Lcom/acmeaom/android/a/a/b/x;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static a()Lcom/acmeaom/android/a/a/b/x;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/acmeaom/android/a/a/b/x;->a:Lcom/acmeaom/android/a/a/b/x;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/acmeaom/android/a/a/b/r;Lcom/acmeaom/android/a/a/b/z;)V
    .locals 4

    .prologue
    .line 12
    sget-object v0, Lcom/acmeaom/android/a/a/b/z;->a:Lcom/acmeaom/android/a/a/b/z;

    if-eq p2, v0, :cond_0

    .line 13
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 16
    :cond_0
    new-instance v0, Lcom/acmeaom/android/a/a/b/y;

    invoke-direct {v0, p0, p1}, Lcom/acmeaom/android/a/a/b/y;-><init>(Lcom/acmeaom/android/a/a/b/x;Lcom/acmeaom/android/a/a/b/r;)V

    .line 22
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 23
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    :goto_0
    return-void

    .line 25
    :cond_1
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/acmeaom/android/a/c/a;->a(IJ)Lcom/acmeaom/android/a/c/c;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/acmeaom/android/a/c/a;->a(Lcom/acmeaom/android/a/c/c;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
