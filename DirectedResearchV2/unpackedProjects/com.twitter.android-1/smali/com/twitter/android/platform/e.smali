.class public final Lcom/twitter/android/platform/e;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/location/LocationManager;)Z
    .locals 1

    const-string v0, "network"

    invoke-static {p0, v0}, Lcom/twitter/android/platform/e;->a(Landroid/location/LocationManager;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "gps"

    invoke-static {p0, v0}, Lcom/twitter/android/platform/e;->a(Landroid/location/LocationManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/location/LocationManager;Landroid/location/LocationListener;)Z
    .locals 1

    const-string v0, "gps"

    invoke-static {p0, p1, v0}, Lcom/twitter/android/platform/e;->a(Landroid/location/LocationManager;Landroid/location/LocationListener;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "network"

    invoke-static {p0, p1, v0}, Lcom/twitter/android/platform/e;->a(Landroid/location/LocationManager;Landroid/location/LocationListener;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/location/LocationManager;Landroid/location/LocationListener;Ljava/lang/String;)Z
    .locals 6

    invoke-static {p0, p2}, Lcom/twitter/android/platform/e;->a(Landroid/location/LocationManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/location/LocationManager;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/location/LocationManager;)Landroid/location/Location;
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
