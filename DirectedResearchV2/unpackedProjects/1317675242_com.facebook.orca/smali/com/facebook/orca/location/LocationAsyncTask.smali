.class public Lcom/facebook/orca/location/LocationAsyncTask;
.super Ljava/lang/Object;
.source "LocationAsyncTask.java"

# interfaces
.implements Lcom/facebook/orca/common/async/Deferrable;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/os/Handler;

.field private final c:Landroid/location/LocationManager;

.field private final d:Lcom/facebook/orca/location/LocationCache;

.field private e:Lcom/facebook/orca/server/GetDeviceLocationParams;

.field private f:Lcom/facebook/orca/common/async/Deferred;

.field private g:Lcom/facebook/orca/server/OrcaServiceProgressCallback;

.field private h:Lcom/facebook/orca/location/LocationResult;

.field private i:Lcom/facebook/orca/location/LocationAsyncTask$MyLocationListener;

.field private j:Lcom/facebook/orca/location/LocationAsyncTask$GeocodingAsyncTask;

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;Lcom/facebook/orca/location/LocationCache;)V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/facebook/orca/location/LocationAsyncTask;->a:Landroid/content/Context;

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/location/LocationAsyncTask;->b:Landroid/os/Handler;

    .line 56
    iput-object p2, p0, Lcom/facebook/orca/location/LocationAsyncTask;->c:Landroid/location/LocationManager;

    .line 57
    iput-object p3, p0, Lcom/facebook/orca/location/LocationAsyncTask;->d:Lcom/facebook/orca/location/LocationCache;

    .line 58
    invoke-virtual {p3}, Lcom/facebook/orca/location/LocationCache;->a()Lcom/facebook/orca/location/LocationResult;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/location/LocationAsyncTask;->h:Lcom/facebook/orca/location/LocationResult;

    .line 59
    new-instance v0, Lcom/facebook/orca/location/LocationAsyncTask$MyLocationListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/location/LocationAsyncTask$MyLocationListener;-><init>(Lcom/facebook/orca/location/LocationAsyncTask;Lcom/facebook/orca/location/LocationAsyncTask$1;)V

    iput-object v0, p0, Lcom/facebook/orca/location/LocationAsyncTask;->i:Lcom/facebook/orca/location/LocationAsyncTask$MyLocationListener;

    .line 60
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/facebook/orca/location/LocationAsyncTask;->c:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/facebook/orca/location/LocationAsyncTask;->i:Lcom/facebook/orca/location/LocationAsyncTask$MyLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 91
    return-void
.end method

.method private a(Landroid/location/Address;)V
    .locals 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/facebook/orca/location/LocationAsyncTask;->h:Lcom/facebook/orca/location/LocationResult;

    if-nez v0, :cond_0

    .line 188
    :goto_0
    return-void

    .line 181
    :cond_0
    new-instance v0, Lcom/facebook/orca/location/LocationResult;

    iget-object v1, p0, Lcom/facebook/orca/location/LocationAsyncTask;->h:Lcom/facebook/orca/location/LocationResult;

    invoke-virtual {v1}, Lcom/facebook/orca/location/LocationResult;->b()Landroid/location/Location;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/facebook/orca/location/LocationResult;-><init>(Landroid/location/Location;Landroid/location/Address;)V

    iput-object v0, p0, Lcom/facebook/orca/location/LocationAsyncTask;->h:Lcom/facebook/orca/location/LocationResult;

    .line 182
    iget-object v0, p0, Lcom/facebook/orca/location/LocationAsyncTask;->d:Lcom/facebook/orca/location/LocationCache;

    iget-object v1, p0, Lcom/facebook/orca/location/LocationAsyncTask;->h:Lcom/facebook/orca/location/LocationResult;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/location/LocationCache;->a(Lcom/facebook/orca/location/LocationResult;)V

    .line 183
    const-string v0, "orca:LocationAsyncTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Geocoding complete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-direct {p0}, Lcom/facebook/orca/location/LocationAsyncTask;->c()V

    .line 187
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/orca/location/LocationAsyncTask;->a(Z)V

    goto :goto_0
.end method

.method private a(Landroid/location/Location;)V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/facebook/orca/location/LocationAsyncTask;->h:Lcom/facebook/orca/location/LocationResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/location/LocationAsyncTask;->h:Lcom/facebook/orca/location/LocationResult;

    invoke-virtual {v0}, Lcom/facebook/orca/location/LocationResult;->b()Landroid/location/Location;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/location/LocationAsyncTask;->a(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    :cond_0
    new-instance v0, Lcom/facebook/orca/location/LocationResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/facebook/orca/location/LocationResult;-><init>(Landroid/location/Location;Landroid/location/Address;)V

    iput-object v0, p0, Lcom/facebook/orca/location/LocationAsyncTask;->h:Lcom/facebook/orca/location/LocationResult;

    .line 96
    iget-object v0, p0, Lcom/facebook/orca/location/LocationAsyncTask;->d:Lcom/facebook/orca/location/LocationCache;

    iget-object v1, p0, Lcom/facebook/orca/location/LocationAsyncTask;->h:Lcom/facebook/orca/location/LocationResult;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/location/LocationCache;->a(Lcom/facebook/orca/location/LocationResult;)V

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/location/LocationAsyncTask;->e:Lcom/facebook/orca/server/GetDeviceLocationParams;

    invoke-virtual {v0}, Lcom/facebook/orca/server/GetDeviceLocationParams;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    invoke-direct {p0}, Lcom/facebook/orca/location/LocationAsyncTask;->d()V

    .line 101
    :cond_2
    invoke-direct {p0}, Lcom/facebook/orca/location/LocationAsyncTask;->c()V

    .line 102
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iget-object v1, p0, Lcom/facebook/orca/location/LocationAsyncTask;->e:Lcom/facebook/orca/server/GetDeviceLocationParams;

    invoke-virtual {v1}, Lcom/facebook/orca/server/GetDeviceLocationParams;->b()J

    move-result-wide v1

    long-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 103
    invoke-direct {p0}, Lcom/facebook/orca/location/LocationAsyncTask;->a()V

    .line 107
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/orca/location/LocationAsyncTask;->a(Z)V

    .line 108
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/location/LocationAsyncTask;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/facebook/orca/location/LocationAsyncTask;->b()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/location/LocationAsyncTask;Landroid/location/Address;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/facebook/orca/location/LocationAsyncTask;->a(Landroid/location/Address;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/location/LocationAsyncTask;Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/facebook/orca/location/LocationAsyncTask;->a(Landroid/location/Location;)V

    return-void
.end method

.method private a(Z)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 129
    iget-boolean v0, p0, Lcom/facebook/orca/location/LocationAsyncTask;->k:Z

    if-eqz v0, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    if-eqz p1, :cond_3

    .line 134
    const-string v0, "orca:LocationAsyncTask"

    const-string v1, "Timed out waiting for location"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    .line 159
    :goto_1
    if-eqz v0, :cond_0

    .line 160
    const-string v0, "orca:LocationAsyncTask"

    const-string v1, "Finished"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iput-boolean v4, p0, Lcom/facebook/orca/location/LocationAsyncTask;->k:Z

    .line 162
    iget-object v0, p0, Lcom/facebook/orca/location/LocationAsyncTask;->h:Lcom/facebook/orca/location/LocationResult;

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/facebook/orca/location/LocationAsyncTask;->h:Lcom/facebook/orca/location/LocationResult;

    invoke-virtual {v2}, Lcom/facebook/orca/location/LocationResult;->a()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1d4c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_9

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/location/LocationAsyncTask;->f:Lcom/facebook/orca/common/async/Deferred;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/async/Deferred;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 139
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/location/LocationAsyncTask;->h:Lcom/facebook/orca/location/LocationResult;

    if-eqz v0, :cond_b

    .line 140
    iget-object v0, p0, Lcom/facebook/orca/location/LocationAsyncTask;->h:Lcom/facebook/orca/location/LocationResult;

    invoke-virtual {v0}, Lcom/facebook/orca/location/LocationResult;->b()Landroid/location/Location;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iget-object v1, p0, Lcom/facebook/orca/location/LocationAsyncTask;->e:Lcom/facebook/orca/server/GetDeviceLocationParams;

    invoke-virtual {v1}, Lcom/facebook/orca/server/GetDeviceLocationParams;->b()J

    move-result-wide v1

    long-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_a

    .line 143
    const-string v0, "orca:LocationAsyncTask"

    const-string v1, "Location requirement met"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    .line 146
    :goto_2
    iget-object v1, p0, Lcom/facebook/orca/location/LocationAsyncTask;->e:Lcom/facebook/orca/server/GetDeviceLocationParams;

    invoke-virtual {v1}, Lcom/facebook/orca/server/GetDeviceLocationParams;->c()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 147
    iget-object v1, p0, Lcom/facebook/orca/location/LocationAsyncTask;->h:Lcom/facebook/orca/location/LocationResult;

    invoke-virtual {v1}, Lcom/facebook/orca/location/LocationResult;->c()Landroid/location/Address;

    move-result-object v1

    .line 148
    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/facebook/orca/location/LocationAsyncTask;->j:Lcom/facebook/orca/location/LocationAsyncTask$GeocodingAsyncTask;

    if-nez v1, :cond_6

    :cond_4
    move v1, v4

    .line 152
    :goto_3
    if-eqz v1, :cond_5

    .line 153
    const-string v2, "orca:LocationAsyncTask"

    const-string v3, "Geocoding requirement met"

    invoke-static {v2, v3}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move v6, v1

    move v1, v0

    move v0, v6

    .line 156
    :goto_4
    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    move v0, v4

    goto :goto_1

    :cond_6
    move v1, v5

    .line 148
    goto :goto_3

    :cond_7
    move v1, v4

    .line 150
    goto :goto_3

    :cond_8
    move v0, v5

    .line 156
    goto :goto_1

    .line 166
    :cond_9
    iget-object v0, p0, Lcom/facebook/orca/location/LocationAsyncTask;->f:Lcom/facebook/orca/common/async/Deferred;

    iget-object v1, p0, Lcom/facebook/orca/location/LocationAsyncTask;->h:Lcom/facebook/orca/location/LocationResult;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/async/Deferred;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    move v0, v5

    goto :goto_2

    :cond_b
    move v0, v5

    move v1, v5

    goto :goto_4
.end method

.method private a(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 8

    .prologue
    const-wide/32 v4, 0x1d4c0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 240
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    move v0, v7

    .line 283
    :goto_0
    return v0

    .line 245
    :cond_0
    if-nez p2, :cond_1

    move v0, v6

    .line 247
    goto :goto_0

    .line 251
    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 252
    cmp-long v2, v0, v4

    if-lez v2, :cond_2

    move v2, v6

    .line 253
    :goto_1
    const-wide/32 v3, -0x1d4c0

    cmp-long v3, v0, v3

    if-gez v3, :cond_3

    move v3, v6

    .line 254
    :goto_2
    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_4

    move v0, v6

    .line 258
    :goto_3
    if-eqz v2, :cond_5

    move v0, v6

    .line 259
    goto :goto_0

    :cond_2
    move v2, v7

    .line 252
    goto :goto_1

    :cond_3
    move v3, v7

    .line 253
    goto :goto_2

    :cond_4
    move v0, v7

    .line 254
    goto :goto_3

    .line 261
    :cond_5
    if-eqz v3, :cond_6

    move v0, v7

    .line 262
    goto :goto_0

    .line 266
    :cond_6
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 267
    if-lez v1, :cond_7

    move v2, v6

    .line 268
    :goto_4
    if-gez v1, :cond_8

    move v3, v6

    .line 269
    :goto_5
    const/16 v4, 0xc8

    if-le v1, v4, :cond_9

    move v1, v6

    .line 272
    :goto_6
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/facebook/orca/location/LocationAsyncTask;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 276
    if-eqz v3, :cond_a

    move v0, v6

    .line 277
    goto :goto_0

    :cond_7
    move v2, v7

    .line 267
    goto :goto_4

    :cond_8
    move v3, v7

    .line 268
    goto :goto_5

    :cond_9
    move v1, v7

    .line 269
    goto :goto_6

    .line 278
    :cond_a
    if-eqz v0, :cond_b

    if-nez v2, :cond_b

    move v0, v6

    .line 279
    goto :goto_0

    .line 280
    :cond_b
    if-eqz v0, :cond_c

    if-nez v1, :cond_c

    if-eqz v4, :cond_c

    move v0, v6

    .line 281
    goto :goto_0

    :cond_c
    move v0, v7

    .line 283
    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 290
    if-nez p1, :cond_1

    .line 291
    if-nez p2, :cond_0

    const/4 v0, 0x1

    .line 293
    :goto_0
    return v0

    .line 291
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 293
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/orca/location/LocationAsyncTask;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/facebook/orca/location/LocationAsyncTask;->a:Landroid/content/Context;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/facebook/orca/location/LocationAsyncTask;->a()V

    .line 112
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/orca/location/LocationAsyncTask;->a(Z)V

    .line 113
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/facebook/orca/location/LocationAsyncTask;->g:Lcom/facebook/orca/server/OrcaServiceProgressCallback;

    if-nez v0, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/location/LocationAsyncTask;->h:Lcom/facebook/orca/location/LocationResult;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/facebook/orca/location/LocationAsyncTask;->h:Lcom/facebook/orca/location/LocationResult;

    invoke-virtual {v0}, Lcom/facebook/orca/location/LocationResult;->c()Landroid/location/Address;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/orca/location/LocationAsyncTask;->e:Lcom/facebook/orca/server/GetDeviceLocationParams;

    invoke-virtual {v0}, Lcom/facebook/orca/server/GetDeviceLocationParams;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/location/LocationAsyncTask;->g:Lcom/facebook/orca/server/OrcaServiceProgressCallback;

    iget-object v1, p0, Lcom/facebook/orca/location/LocationAsyncTask;->h:Lcom/facebook/orca/location/LocationResult;

    invoke-static {v1}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/orca/server/OrcaServiceProgressCallback;->a(Lcom/facebook/orca/server/OperationResult;)V

    goto :goto_0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 172
    const-string v0, "orca:LocationAsyncTask"

    const-string v1, "Geocoding"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    new-instance v0, Lcom/facebook/orca/location/LocationAsyncTask$GeocodingAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/location/LocationAsyncTask$GeocodingAsyncTask;-><init>(Lcom/facebook/orca/location/LocationAsyncTask;Lcom/facebook/orca/location/LocationAsyncTask$1;)V

    iput-object v0, p0, Lcom/facebook/orca/location/LocationAsyncTask;->j:Lcom/facebook/orca/location/LocationAsyncTask$GeocodingAsyncTask;

    .line 174
    iget-object v0, p0, Lcom/facebook/orca/location/LocationAsyncTask;->j:Lcom/facebook/orca/location/LocationAsyncTask$GeocodingAsyncTask;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/location/Location;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/orca/location/LocationAsyncTask;->h:Lcom/facebook/orca/location/LocationResult;

    invoke-virtual {v3}, Lcom/facebook/orca/location/LocationResult;->b()Landroid/location/Location;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/facebook/orca/location/LocationAsyncTask$GeocodingAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 175
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 72
    check-cast p1, Lcom/facebook/orca/server/GetDeviceLocationParams;

    iput-object p1, p0, Lcom/facebook/orca/location/LocationAsyncTask;->e:Lcom/facebook/orca/server/GetDeviceLocationParams;

    .line 73
    new-instance v0, Lcom/facebook/orca/common/async/Deferred;

    invoke-direct {v0}, Lcom/facebook/orca/common/async/Deferred;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/location/LocationAsyncTask;->f:Lcom/facebook/orca/common/async/Deferred;

    .line 74
    iget-object v0, p0, Lcom/facebook/orca/location/LocationAsyncTask;->c:Landroid/location/LocationManager;

    const-string v1, "network"

    iget-object v5, p0, Lcom/facebook/orca/location/LocationAsyncTask;->i:Lcom/facebook/orca/location/LocationAsyncTask$MyLocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 75
    iget-object v0, p0, Lcom/facebook/orca/location/LocationAsyncTask;->c:Landroid/location/LocationManager;

    const-string v1, "gps"

    iget-object v5, p0, Lcom/facebook/orca/location/LocationAsyncTask;->i:Lcom/facebook/orca/location/LocationAsyncTask$MyLocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 77
    invoke-direct {p0}, Lcom/facebook/orca/location/LocationAsyncTask;->c()V

    .line 80
    iget-object v0, p0, Lcom/facebook/orca/location/LocationAsyncTask;->b:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/orca/location/LocationAsyncTask$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/location/LocationAsyncTask$1;-><init>(Lcom/facebook/orca/location/LocationAsyncTask;)V

    iget-object v2, p0, Lcom/facebook/orca/location/LocationAsyncTask;->e:Lcom/facebook/orca/server/GetDeviceLocationParams;

    invoke-virtual {v2}, Lcom/facebook/orca/server/GetDeviceLocationParams;->a()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 86
    iget-object v0, p0, Lcom/facebook/orca/location/LocationAsyncTask;->f:Lcom/facebook/orca/common/async/Deferred;

    return-object v0
.end method

.method public a(Lcom/facebook/orca/server/OrcaServiceProgressCallback;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/facebook/orca/location/LocationAsyncTask;->g:Lcom/facebook/orca/server/OrcaServiceProgressCallback;

    .line 68
    return-void
.end method
