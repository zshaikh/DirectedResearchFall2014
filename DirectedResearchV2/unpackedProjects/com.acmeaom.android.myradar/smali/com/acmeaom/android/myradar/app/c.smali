.class public Lcom/acmeaom/android/myradar/app/c;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field private a:Landroid/location/Location;

.field private b:Landroid/location/LocationManager;

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/c;->b:Landroid/location/LocationManager;

    .line 34
    :try_start_0
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 35
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 36
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 38
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/c;->b:Landroid/location/LocationManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/c;->c:Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/c;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/c;->b:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/c;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, p0, v2}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 42
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/c;->b:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/c;->a:Landroid/location/Location;

    .line 43
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/c;->a:Landroid/location/Location;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/c;->b:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/c;->b:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, p0, v2}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 47
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/c;->b:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/c;->a:Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :cond_2
    :goto_1
    const-string v0, "network"

    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/c;->a:Landroid/location/Location;

    if-nez v0, :cond_3

    .line 58
    sget-object v0, Lcom/acmeaom/android/a/c/b;->a:Lcom/acmeaom/android/a/c/b;

    const-wide v1, 0x2540be400L

    invoke-static {v0, v1, v2}, Lcom/acmeaom/android/a/c/a;->a(Lcom/acmeaom/android/a/c/b;J)Lcom/acmeaom/android/a/c/j;

    move-result-object v0

    invoke-static {}, Lcom/acmeaom/android/a/c/a;->a()Lcom/acmeaom/android/a/c/c;

    move-result-object v1

    new-instance v2, Lcom/acmeaom/android/myradar/app/d;

    invoke-direct {v2, p0}, Lcom/acmeaom/android/myradar/app/d;-><init>(Lcom/acmeaom/android/myradar/app/c;)V

    invoke-static {v0, v1, v2}, Lcom/acmeaom/android/a/c/a;->a(Lcom/acmeaom/android/a/c/j;Lcom/acmeaom/android/a/c/c;Ljava/lang/Runnable;)V

    .line 72
    :cond_3
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/c;->a:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/c;->a:Landroid/location/Location;

    invoke-static {v0}, Lcom/acmeaom/android/a/f/b;->a(Landroid/location/Location;)V

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/acmeaom/android/myradar/app/c;)Landroid/location/Location;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/c;->a:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic a(Lcom/acmeaom/android/myradar/app/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/acmeaom/android/myradar/app/c;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/acmeaom/android/myradar/app/c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static b()Z
    .locals 3

    .prologue
    .line 113
    sget-object v0, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 114
    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    .line 116
    const-string v2, "network"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 119
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/acmeaom/android/myradar/app/c;)Landroid/location/LocationManager;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/c;->b:Landroid/location/LocationManager;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/location/Location;
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/c;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 92
    :goto_0
    return-object v0

    .line 80
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/c;->a:Landroid/location/Location;

    if-nez v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/c;->b:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/c;->a:Landroid/location/Location;

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/c;->b:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/c;->c:Ljava/lang/String;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, p0, v2}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_1
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/c;->a:Landroid/location/Location;

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/acmeaom/android/myradar/app/c;->a:Landroid/location/Location;

    .line 97
    invoke-static {p1}, Lcom/acmeaom/android/a/f/b;->a(Landroid/location/Location;)V

    .line 98
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "provider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->e(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "provider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->e(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "provider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " extras: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->e(Ljava/lang/String;)V

    .line 110
    return-void
.end method
