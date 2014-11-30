.class final Ldolphin/webkit/GeolocationService;
.super Ljava/lang/Object;
.source "GeolocationService.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation build Ldolphin/webkit/annotation/CalledByJNI;
.end annotation


# instance fields
.field private a:Landroid/location/LocationManager;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private mNativeObject:J
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-wide p2, p0, Ldolphin/webkit/GeolocationService;->mNativeObject:J

    .line 56
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Ldolphin/webkit/GeolocationService;->a:Landroid/location/LocationManager;

    .line 57
    iget-object v0, p0, Ldolphin/webkit/GeolocationService;->a:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 58
    const-string v0, "geolocationService"

    const-string v1, "Could not get location manager."

    invoke-static {v0, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    return-void
.end method

.method private a()V
    .locals 6

    .prologue
    .line 167
    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/GeolocationService;->a:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/GeolocationService;->d:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    :try_start_1
    iget-boolean v0, p0, Ldolphin/webkit/GeolocationService;->b:Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_0

    .line 172
    :try_start_2
    iget-object v0, p0, Ldolphin/webkit/GeolocationService;->a:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/GeolocationService;->e:Z
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    .line 180
    :cond_0
    :goto_1
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    const-string v0, "geolocationService"

    const-string v1, "Caught security exception registering for location updates from system. This should only happen in DumpRenderTree."

    invoke-static {v0, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 174
    :catch_1
    move-exception v0

    goto :goto_1

    .line 169
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 198
    iget-boolean v0, p0, Ldolphin/webkit/GeolocationService;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ldolphin/webkit/GeolocationService;->d:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ldolphin/webkit/GeolocationService;->e:Z

    if-nez v0, :cond_0

    .line 199
    iget-wide v0, p0, Ldolphin/webkit/GeolocationService;->mNativeObject:J

    invoke-static {v0, v1, p1}, Ldolphin/webkit/GeolocationService;->nativeNewErrorAvailable(JLjava/lang/String;)V

    .line 201
    :cond_0
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 186
    iget-object v0, p0, Ldolphin/webkit/GeolocationService;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 187
    iput-boolean v1, p0, Ldolphin/webkit/GeolocationService;->d:Z

    .line 188
    iput-boolean v1, p0, Ldolphin/webkit/GeolocationService;->e:Z

    .line 189
    return-void
.end method

.method private static native nativeNewErrorAvailable(JLjava/lang/String;)V
.end method

.method private static native nativeNewLocationAvailable(JLandroid/location/Location;)V
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    .prologue
    .line 109
    iget-boolean v0, p0, Ldolphin/webkit/GeolocationService;->c:Z

    if-eqz v0, :cond_0

    .line 110
    iget-wide v0, p0, Ldolphin/webkit/GeolocationService;->mNativeObject:J

    invoke-static {v0, v1, p1}, Ldolphin/webkit/GeolocationService;->nativeNewLocationAvailable(JLandroid/location/Location;)V

    .line 112
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 152
    const-string v0, "network"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    iput-boolean v1, p0, Ldolphin/webkit/GeolocationService;->d:Z

    .line 157
    :cond_0
    :goto_0
    const-string v0, "The last location provider was disabled"

    invoke-direct {p0, v0}, Ldolphin/webkit/GeolocationService;->a(Ljava/lang/String;)V

    .line 158
    return-void

    .line 154
    :cond_1
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iput-boolean v1, p0, Ldolphin/webkit/GeolocationService;->e:Z

    goto :goto_0
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 139
    const-string v0, "network"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    iput-boolean v1, p0, Ldolphin/webkit/GeolocationService;->d:Z

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iput-boolean v1, p0, Ldolphin/webkit/GeolocationService;->e:Z

    goto :goto_0
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 122
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    .line 123
    :goto_0
    const-string v1, "network"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 124
    iput-boolean v0, p0, Ldolphin/webkit/GeolocationService;->d:Z

    .line 128
    :cond_0
    :goto_1
    const-string v0, "The last location provider is no longer available"

    invoke-direct {p0, v0}, Ldolphin/webkit/GeolocationService;->a(Ljava/lang/String;)V

    .line 129
    return-void

    .line 122
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 125
    :cond_2
    const-string v1, "gps"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    iput-boolean v0, p0, Ldolphin/webkit/GeolocationService;->e:Z

    goto :goto_1
.end method

.method public setEnableGps(Z)V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 87
    iget-boolean v0, p0, Ldolphin/webkit/GeolocationService;->b:Z

    if-eq v0, p1, :cond_0

    .line 88
    iput-boolean p1, p0, Ldolphin/webkit/GeolocationService;->b:Z

    .line 89
    iget-boolean v0, p0, Ldolphin/webkit/GeolocationService;->c:Z

    if-eqz v0, :cond_0

    .line 92
    invoke-direct {p0}, Ldolphin/webkit/GeolocationService;->b()V

    .line 93
    invoke-direct {p0}, Ldolphin/webkit/GeolocationService;->a()V

    .line 95
    const-string v0, "The last location provider is no longer available"

    invoke-direct {p0, v0}, Ldolphin/webkit/GeolocationService;->a(Ljava/lang/String;)V

    .line 98
    :cond_0
    return-void
.end method

.method public start()Z
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 67
    invoke-direct {p0}, Ldolphin/webkit/GeolocationService;->a()V

    .line 68
    iput-boolean v0, p0, Ldolphin/webkit/GeolocationService;->c:Z

    .line 69
    iget-boolean v1, p0, Ldolphin/webkit/GeolocationService;->d:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Ldolphin/webkit/GeolocationService;->e:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stop()V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Ldolphin/webkit/GeolocationService;->b()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/GeolocationService;->c:Z

    .line 79
    return-void
.end method
