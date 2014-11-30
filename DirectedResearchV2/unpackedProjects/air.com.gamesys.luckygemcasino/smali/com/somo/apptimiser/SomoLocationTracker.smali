.class Lcom/somo/apptimiser/SomoLocationTracker;
.super Ljava/lang/Object;
.source "SomoLocationTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/somo/apptimiser/SomoLocationTracker$1;,
        Lcom/somo/apptimiser/SomoLocationTracker$Listener;,
        Lcom/somo/apptimiser/SomoLocationTracker$TimeOut;
    }
.end annotation


# static fields
.field private static final TRACKING_TIMEOUT_MILLIS:J = 0x1d4c0L

.field private static final VALID_LOCATION_TIMEOUT_MILLIS:J = 0xdbba0L

.field private static final log:Lcom/somo/apptimiser/SomoLogger;


# instance fields
.field private mCurrentLocation:Landroid/location/Location;

.field private mListener:Lcom/somo/apptimiser/SomoLocationTracker$Listener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private final mSettings:Lcom/somo/apptimiser/SomoConfiguration$LocationSettings;

.field private mTimeOut:Lcom/somo/apptimiser/SomoLocationTracker$TimeOut;

.field private mTimeoutHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/somo/apptimiser/SomoLogger;->getLogger()Lcom/somo/apptimiser/SomoLogger;

    move-result-object v0

    sput-object v0, Lcom/somo/apptimiser/SomoLocationTracker;->log:Lcom/somo/apptimiser/SomoLogger;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/somo/apptimiser/SomoConfiguration$LocationSettings;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settings"    # Lcom/somo/apptimiser/SomoConfiguration$LocationSettings;

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/somo/apptimiser/SomoLocationTracker;->mListener:Lcom/somo/apptimiser/SomoLocationTracker$Listener;

    .line 32
    iput-object v0, p0, Lcom/somo/apptimiser/SomoLocationTracker;->mCurrentLocation:Landroid/location/Location;

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/somo/apptimiser/SomoLocationTracker;->mTimeoutHandler:Landroid/os/Handler;

    .line 35
    new-instance v0, Lcom/somo/apptimiser/SomoLocationTracker$TimeOut;

    invoke-direct {v0, p0}, Lcom/somo/apptimiser/SomoLocationTracker$TimeOut;-><init>(Lcom/somo/apptimiser/SomoLocationTracker;)V

    iput-object v0, p0, Lcom/somo/apptimiser/SomoLocationTracker;->mTimeOut:Lcom/somo/apptimiser/SomoLocationTracker$TimeOut;

    .line 40
    iput-object p2, p0, Lcom/somo/apptimiser/SomoLocationTracker;->mSettings:Lcom/somo/apptimiser/SomoConfiguration$LocationSettings;

    .line 41
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/somo/apptimiser/SomoLocationTracker;->mLocationManager:Landroid/location/LocationManager;

    .line 43
    return-void
.end method

.method static synthetic access$100()Lcom/somo/apptimiser/SomoLogger;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/somo/apptimiser/SomoLocationTracker;->log:Lcom/somo/apptimiser/SomoLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/somo/apptimiser/SomoLocationTracker;)Landroid/location/Location;
    .locals 1
    .param p0, "x0"    # Lcom/somo/apptimiser/SomoLocationTracker;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/somo/apptimiser/SomoLocationTracker;->mCurrentLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$202(Lcom/somo/apptimiser/SomoLocationTracker;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0, "x0"    # Lcom/somo/apptimiser/SomoLocationTracker;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/somo/apptimiser/SomoLocationTracker;->mCurrentLocation:Landroid/location/Location;

    return-object p1
.end method

.method private isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "provider1"    # Ljava/lang/String;
    .param p2, "provider2"    # Ljava/lang/String;

    .prologue
    .line 250
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 251
    :cond_0
    const/4 v0, 0x0

    .line 253
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/somo/apptimiser/SomoLocationTracker;->mCurrentLocation:Landroid/location/Location;

    return-object v0
.end method

.method isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 14
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "currentBestLocation"    # Landroid/location/Location;

    .prologue
    .line 200
    if-nez p2, :cond_0

    .line 202
    const/4 v10, 0x1

    .line 237
    :goto_0
    return v10

    .line 206
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getTime()J

    move-result-wide v12

    sub-long v8, v10, v12

    .line 207
    .local v8, "timeDelta":J
    const-wide/32 v10, 0x1d4c0

    cmp-long v10, v8, v10

    if-lez v10, :cond_1

    const/4 v6, 0x1

    .line 208
    .local v6, "isSignificantlyNewer":Z
    :goto_1
    const-wide/32 v10, -0x1d4c0

    cmp-long v10, v8, v10

    if-gez v10, :cond_2

    const/4 v7, 0x1

    .line 209
    .local v7, "isSignificantlyOlder":Z
    :goto_2
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_3

    const/4 v4, 0x1

    .line 212
    .local v4, "isNewer":Z
    :goto_3
    if-eqz v6, :cond_4

    .line 213
    const/4 v10, 0x1

    goto :goto_0

    .line 207
    .end local v4    # "isNewer":Z
    .end local v6    # "isSignificantlyNewer":Z
    .end local v7    # "isSignificantlyOlder":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 208
    .restart local v6    # "isSignificantlyNewer":Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 209
    .restart local v7    # "isSignificantlyOlder":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 215
    .restart local v4    # "isNewer":Z
    :cond_4
    if-eqz v7, :cond_5

    .line 216
    const/4 v10, 0x0

    goto :goto_0

    .line 220
    :cond_5
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getAccuracy()F

    move-result v11

    sub-float/2addr v10, v11

    float-to-int v0, v10

    .line 221
    .local v0, "accuracyDelta":I
    if-lez v0, :cond_6

    const/4 v2, 0x1

    .line 222
    .local v2, "isLessAccurate":Z
    :goto_4
    if-gez v0, :cond_7

    const/4 v3, 0x1

    .line 223
    .local v3, "isMoreAccurate":Z
    :goto_5
    const/16 v10, 0xc8

    if-le v0, v10, :cond_8

    const/4 v5, 0x1

    .line 226
    .local v5, "isSignificantlyLessAccurate":Z
    :goto_6
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/somo/apptimiser/SomoLocationTracker;->isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 230
    .local v1, "isFromSameProvider":Z
    if-eqz v3, :cond_9

    .line 231
    const/4 v10, 0x1

    goto :goto_0

    .line 221
    .end local v1    # "isFromSameProvider":Z
    .end local v2    # "isLessAccurate":Z
    .end local v3    # "isMoreAccurate":Z
    .end local v5    # "isSignificantlyLessAccurate":Z
    :cond_6
    const/4 v2, 0x0

    goto :goto_4

    .line 222
    .restart local v2    # "isLessAccurate":Z
    :cond_7
    const/4 v3, 0x0

    goto :goto_5

    .line 223
    .restart local v3    # "isMoreAccurate":Z
    :cond_8
    const/4 v5, 0x0

    goto :goto_6

    .line 232
    .restart local v1    # "isFromSameProvider":Z
    .restart local v5    # "isSignificantlyLessAccurate":Z
    :cond_9
    if-eqz v4, :cond_a

    if-nez v2, :cond_a

    .line 233
    const/4 v10, 0x1

    goto :goto_0

    .line 234
    :cond_a
    if-eqz v4, :cond_b

    if-nez v5, :cond_b

    if-eqz v1, :cond_b

    .line 235
    const/4 v10, 0x1

    goto :goto_0

    .line 237
    :cond_b
    const/4 v10, 0x0

    goto :goto_0
.end method

.method start()V
    .locals 14

    .prologue
    const-wide/32 v12, 0xdbba0

    const/4 v11, 0x1

    .line 52
    iget-object v0, p0, Lcom/somo/apptimiser/SomoLocationTracker;->mListener:Lcom/somo/apptimiser/SomoLocationTracker$Listener;

    if-nez v0, :cond_5

    .line 53
    new-instance v0, Lcom/somo/apptimiser/SomoLocationTracker$Listener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/somo/apptimiser/SomoLocationTracker$Listener;-><init>(Lcom/somo/apptimiser/SomoLocationTracker;Lcom/somo/apptimiser/SomoLocationTracker$1;)V

    iput-object v0, p0, Lcom/somo/apptimiser/SomoLocationTracker;->mListener:Lcom/somo/apptimiser/SomoLocationTracker$Listener;

    .line 55
    const/4 v7, 0x1

    .line 56
    .local v7, "bTrackLocation":Z
    const/4 v6, 0x0

    .line 59
    .local v6, "bFineListenerRegistered":Z
    iget-object v0, p0, Lcom/somo/apptimiser/SomoLocationTracker;->mSettings:Lcom/somo/apptimiser/SomoConfiguration$LocationSettings;

    iget-boolean v0, v0, Lcom/somo/apptimiser/SomoConfiguration$LocationSettings;->mAccuracyFine:Z

    if-ne v0, v11, :cond_1

    .line 60
    iget-object v0, p0, Lcom/somo/apptimiser/SomoLocationTracker;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/somo/apptimiser/SomoLocationTracker;->mCurrentLocation:Landroid/location/Location;

    .line 63
    sget-object v0, Lcom/somo/apptimiser/SomoLocationTracker;->log:Lcom/somo/apptimiser/SomoLogger;

    const-string v1, "Location tracker: Find location fine accuracy"

    invoke-virtual {v0, v1}, Lcom/somo/apptimiser/SomoLogger;->d(Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/somo/apptimiser/SomoLocationTracker;->mCurrentLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/somo/apptimiser/SomoLocationTracker;->mCurrentLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v9

    .line 69
    .local v9, "lLastUpdate":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v12

    cmp-long v0, v9, v0

    if-lez v0, :cond_0

    .line 70
    sget-object v0, Lcom/somo/apptimiser/SomoLocationTracker;->log:Lcom/somo/apptimiser/SomoLogger;

    const-string v1, "Location tracker: Have stored and valid fine accuracy location"

    invoke-virtual {v0, v1}, Lcom/somo/apptimiser/SomoLogger;->d(Ljava/lang/String;)I

    .line 71
    const/4 v7, 0x0

    .line 76
    .end local v9    # "lLastUpdate":J
    :cond_0
    if-ne v7, v11, :cond_1

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/somo/apptimiser/SomoLocationTracker;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    iget-object v2, p0, Lcom/somo/apptimiser/SomoLocationTracker;->mSettings:Lcom/somo/apptimiser/SomoConfiguration$LocationSettings;

    iget-wide v2, v2, Lcom/somo/apptimiser/SomoConfiguration$LocationSettings;->mMinTimeMillis:J

    iget-object v4, p0, Lcom/somo/apptimiser/SomoLocationTracker;->mSettings:Lcom/somo/apptimiser/SomoConfiguration$LocationSettings;

    iget v4, v4, Lcom/somo/apptimiser/SomoConfiguration$LocationSettings;->mMinDistanceMeters:F

    iget-object v5, p0, Lcom/somo/apptimiser/SomoLocationTracker;->mListener:Lcom/somo/apptimiser/SomoLocationTracker$Listener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    const/4 v6, 0x1

    .line 94
    :cond_1
    :goto_0
    if-ne v7, v11, :cond_4

    iget-object v0, p0, Lcom/somo/apptimiser/SomoLocationTracker;->mSettings:Lcom/somo/apptimiser/SomoConfiguration$LocationSettings;

    iget-boolean v0, v0, Lcom/somo/apptimiser/SomoConfiguration$LocationSettings;->mAccuracyCoarse:Z

    if-ne v0, v11, :cond_4

    .line 95
    iget-object v0, p0, Lcom/somo/apptimiser/SomoLocationTracker;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/somo/apptimiser/SomoLocationTracker;->mCurrentLocation:Landroid/location/Location;

    .line 98
    sget-object v0, Lcom/somo/apptimiser/SomoLocationTracker;->log:Lcom/somo/apptimiser/SomoLogger;

    const-string v1, "Location tracker: Find location coarse accuracy"

    invoke-virtual {v0, v1}, Lcom/somo/apptimiser/SomoLogger;->d(Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/somo/apptimiser/SomoLocationTracker;->mCurrentLocation:Landroid/location/Location;

    if-eqz v0, :cond_3

    .line 102
    iget-object v0, p0, Lcom/somo/apptimiser/SomoLocationTracker;->mCurrentLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v9

    .line 104
    .restart local v9    # "lLastUpdate":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v12

    cmp-long v0, v9, v0

    if-lez v0, :cond_3

    .line 106
    sget-object v0, Lcom/somo/apptimiser/SomoLocationTracker;->log:Lcom/somo/apptimiser/SomoLogger;

    const-string v1, "Location tracker: Have stored and valid coarse location"

    invoke-virtual {v0, v1}, Lcom/somo/apptimiser/SomoLogger;->d(Ljava/lang/String;)I

    .line 109
    if-eqz v6, :cond_2

    .line 110
    invoke-virtual {p0}, Lcom/somo/apptimiser/SomoLocationTracker;->stop()V

    .line 112
    :cond_2
    const/4 v7, 0x0

    .line 117
    .end local v9    # "lLastUpdate":J
    :cond_3
    if-ne v7, v11, :cond_4

    .line 122
    :try_start_1
    iget-object v0, p0, Lcom/somo/apptimiser/SomoLocationTracker;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    iget-object v2, p0, Lcom/somo/apptimiser/SomoLocationTracker;->mSettings:Lcom/somo/apptimiser/SomoConfiguration$LocationSettings;

    iget-wide v2, v2, Lcom/somo/apptimiser/SomoConfiguration$LocationSettings;->mMinTimeMillis:J

    iget-object v4, p0, Lcom/somo/apptimiser/SomoLocationTracker;->mSettings:Lcom/somo/apptimiser/SomoConfiguration$LocationSettings;

    iget v4, v4, Lcom/somo/apptimiser/SomoConfiguration$LocationSettings;->mMinDistanceMeters:F

    iget-object v5, p0, Lcom/somo/apptimiser/SomoLocationTracker;->mListener:Lcom/somo/apptimiser/SomoLocationTracker$Listener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 133
    :cond_4
    :goto_1
    if-ne v7, v11, :cond_5

    .line 134
    iget-object v0, p0, Lcom/somo/apptimiser/SomoLocationTracker;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/somo/apptimiser/SomoLocationTracker;->mTimeOut:Lcom/somo/apptimiser/SomoLocationTracker$TimeOut;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 137
    .end local v6    # "bFineListenerRegistered":Z
    .end local v7    # "bTrackLocation":Z
    :cond_5
    return-void

    .line 85
    .restart local v6    # "bFineListenerRegistered":Z
    .restart local v7    # "bTrackLocation":Z
    :catch_0
    move-exception v8

    .line 86
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    sget-object v0, Lcom/somo/apptimiser/SomoLocationTracker;->log:Lcom/somo/apptimiser/SomoLogger;

    const-string v1, "LocationManager.GPS_PROVIDER not found"

    invoke-virtual {v0, v1}, Lcom/somo/apptimiser/SomoLogger;->d(Ljava/lang/String;)I

    goto :goto_0

    .line 126
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v8

    .line 127
    .restart local v8    # "e":Ljava/lang/IllegalArgumentException;
    sget-object v0, Lcom/somo/apptimiser/SomoLocationTracker;->log:Lcom/somo/apptimiser/SomoLogger;

    const-string v1, "LocationManager.NETWORK_PROVIDER not found"

    invoke-virtual {v0, v1}, Lcom/somo/apptimiser/SomoLogger;->d(Ljava/lang/String;)I

    goto :goto_1
.end method

.method stop()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/somo/apptimiser/SomoLocationTracker;->mListener:Lcom/somo/apptimiser/SomoLocationTracker$Listener;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/somo/apptimiser/SomoLocationTracker;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/somo/apptimiser/SomoLocationTracker;->mTimeOut:Lcom/somo/apptimiser/SomoLocationTracker$TimeOut;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 159
    iget-object v0, p0, Lcom/somo/apptimiser/SomoLocationTracker;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/somo/apptimiser/SomoLocationTracker;->mListener:Lcom/somo/apptimiser/SomoLocationTracker$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/somo/apptimiser/SomoLocationTracker;->mListener:Lcom/somo/apptimiser/SomoLocationTracker$Listener;

    .line 162
    :cond_0
    return-void
.end method
