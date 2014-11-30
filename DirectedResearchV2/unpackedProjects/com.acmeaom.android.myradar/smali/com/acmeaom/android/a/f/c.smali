.class final Lcom/acmeaom/android/a/f/c;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/location/Location;


# direct methods
.method constructor <init>(Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/acmeaom/android/a/f/c;->a:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 47
    new-instance v0, Lcom/acmeaom/android/a/a/d/a;

    iget-object v1, p0, Lcom/acmeaom/android/a/f/c;->a:Landroid/location/Location;

    invoke-direct {v0, v1}, Lcom/acmeaom/android/a/a/d/a;-><init>(Landroid/location/Location;)V

    invoke-static {v0}, Lcom/acmeaom/android/a/a/b/e;->a(Ljava/lang/Object;)Lcom/acmeaom/android/a/a/b/e;

    move-result-object v0

    .line 48
    invoke-static {}, Lcom/acmeaom/android/a/f/b;->e()Lcom/acmeaom/android/a/f/b;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/acmeaom/android/a/f/b;->a(Lcom/acmeaom/android/a/f/b;Lcom/acmeaom/android/a/f/e;Lcom/acmeaom/android/a/a/b/e;)V

    .line 49
    return-void
.end method
