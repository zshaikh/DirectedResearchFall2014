.class Lcom/acmeaom/android/myradar/app/d;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/acmeaom/android/myradar/app/c;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/myradar/app/c;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/acmeaom/android/myradar/app/d;->a:Lcom/acmeaom/android/myradar/app/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 60
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/d;->a:Lcom/acmeaom/android/myradar/app/c;

    invoke-static {v0}, Lcom/acmeaom/android/myradar/app/c;->a(Lcom/acmeaom/android/myradar/app/c;)Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/d;->a:Lcom/acmeaom/android/myradar/app/c;

    const-string v1, "gps"

    invoke-static {v0, v1}, Lcom/acmeaom/android/myradar/app/c;->a(Lcom/acmeaom/android/myradar/app/c;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/d;->a:Lcom/acmeaom/android/myradar/app/c;

    invoke-static {v0}, Lcom/acmeaom/android/myradar/app/c;->c(Lcom/acmeaom/android/myradar/app/c;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/d;->a:Lcom/acmeaom/android/myradar/app/c;

    invoke-static {v1}, Lcom/acmeaom/android/myradar/app/c;->b(Lcom/acmeaom/android/myradar/app/c;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/acmeaom/android/myradar/app/d;->a:Lcom/acmeaom/android/myradar/app/c;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
