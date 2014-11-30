.class final Ldolphin/webkit/DeviceOrientationService;
.super Ljava/lang/Object;
.source "DeviceOrientationService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation build Ldolphin/webkit/annotation/CalledByJNI;
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:[F

.field private c:[F

.field private d:Ldolphin/webkit/DeviceMotionAndOrientationManager;

.field private e:Z

.field private f:Ldolphin/util/j;

.field private g:Landroid/hardware/SensorManager;

.field private h:Landroid/content/Context;

.field private i:Ljava/lang/Double;

.field private j:Ljava/lang/Double;

.field private k:Ljava/lang/Double;

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Ldolphin/webkit/DeviceOrientationService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ldolphin/webkit/DeviceOrientationService;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ldolphin/webkit/DeviceMotionAndOrientationManager;Landroid/content/Context;)V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Ldolphin/webkit/DeviceOrientationService;->d:Ldolphin/webkit/DeviceMotionAndOrientationManager;

    .line 53
    sget-boolean v0, Ldolphin/webkit/DeviceOrientationService;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/DeviceOrientationService;->d:Ldolphin/webkit/DeviceMotionAndOrientationManager;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 54
    :cond_0
    iput-object p2, p0, Ldolphin/webkit/DeviceOrientationService;->h:Landroid/content/Context;

    .line 55
    sget-boolean v0, Ldolphin/webkit/DeviceOrientationService;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Ldolphin/webkit/DeviceOrientationService;->h:Landroid/content/Context;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 56
    :cond_1
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 85
    sget-boolean v0, Ldolphin/webkit/DeviceOrientationService;->a:Z

    if-nez v0, :cond_0

    const-string v0, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 87
    :cond_0
    iget-boolean v0, p0, Ldolphin/webkit/DeviceOrientationService;->l:Z

    if-eqz v0, :cond_1

    .line 100
    :goto_0
    return-void

    .line 89
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/DeviceOrientationService;->l:Z

    .line 90
    iget-object v0, p0, Ldolphin/webkit/DeviceOrientationService;->f:Ldolphin/util/j;

    new-instance v1, Ldolphin/webkit/bs;

    invoke-direct {v1, p0}, Ldolphin/webkit/bs;-><init>(Ldolphin/webkit/DeviceOrientationService;)V

    invoke-virtual {v0, v1}, Ldolphin/util/j;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private a(DDD)V
    .locals 4

    .prologue
    const-wide/high16 v2, 0x3ff0000000000000L

    .line 176
    sget-boolean v0, Ldolphin/webkit/DeviceOrientationService;->a:Z

    if-nez v0, :cond_0

    const-string v0, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 177
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/DeviceOrientationService;->i:Ljava/lang/Double;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldolphin/webkit/DeviceOrientationService;->j:Ljava/lang/Double;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldolphin/webkit/DeviceOrientationService;->k:Ljava/lang/Double;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldolphin/webkit/DeviceOrientationService;->i:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    sub-double v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_1

    iget-object v0, p0, Ldolphin/webkit/DeviceOrientationService;->j:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    sub-double v0, p3, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_1

    iget-object v0, p0, Ldolphin/webkit/DeviceOrientationService;->k:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    sub-double v0, p5, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    .line 181
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/DeviceOrientationService;->i:Ljava/lang/Double;

    .line 182
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/DeviceOrientationService;->j:Ljava/lang/Double;

    .line 183
    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/DeviceOrientationService;->k:Ljava/lang/Double;

    .line 184
    iget-object v0, p0, Ldolphin/webkit/DeviceOrientationService;->d:Ldolphin/webkit/DeviceMotionAndOrientationManager;

    iget-object v1, p0, Ldolphin/webkit/DeviceOrientationService;->i:Ljava/lang/Double;

    iget-object v2, p0, Ldolphin/webkit/DeviceOrientationService;->j:Ljava/lang/Double;

    iget-object v3, p0, Ldolphin/webkit/DeviceOrientationService;->k:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2, v3}, Ldolphin/webkit/DeviceMotionAndOrientationManager;->a(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/DeviceOrientationService;->l:Z

    .line 188
    :cond_2
    return-void
.end method

.method static synthetic a(Ldolphin/webkit/DeviceOrientationService;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Ldolphin/webkit/DeviceOrientationService;->e:Z

    return v0
.end method

.method static synthetic b(Ldolphin/webkit/DeviceOrientationService;)Ldolphin/webkit/DeviceMotionAndOrientationManager;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Ldolphin/webkit/DeviceOrientationService;->d:Ldolphin/webkit/DeviceMotionAndOrientationManager;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Ldolphin/webkit/DeviceOrientationService;->f:Ldolphin/util/j;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Ldolphin/util/j;

    invoke-direct {v0}, Ldolphin/util/j;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/DeviceOrientationService;->f:Ldolphin/util/j;

    .line 106
    :cond_0
    invoke-direct {p0}, Ldolphin/webkit/DeviceOrientationService;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Ldolphin/webkit/DeviceOrientationService;->f()Z

    move-result v0

    if-nez v0, :cond_2

    .line 107
    :cond_1
    invoke-direct {p0}, Ldolphin/webkit/DeviceOrientationService;->g()V

    .line 108
    invoke-direct {p0}, Ldolphin/webkit/DeviceOrientationService;->a()V

    .line 110
    :cond_2
    return-void
.end method

.method private c()V
    .locals 11

    .prologue
    const-wide v9, 0x4076800000000000L

    .line 113
    iget-object v0, p0, Ldolphin/webkit/DeviceOrientationService;->b:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/DeviceOrientationService;->c:[F

    if-nez v0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 120
    const/4 v1, 0x0

    iget-object v2, p0, Ldolphin/webkit/DeviceOrientationService;->b:[F

    iget-object v3, p0, Ldolphin/webkit/DeviceOrientationService;->c:[F

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    const/4 v1, 0x3

    new-array v5, v1, [F

    .line 132
    invoke-static {v0, v5}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 133
    const/4 v0, 0x0

    aget v0, v5, v0

    neg-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    const-wide v2, 0x4056800000000000L

    sub-double v1, v0, v2

    .line 134
    :goto_1
    const-wide/16 v3, 0x0

    cmpg-double v0, v1, v3

    if-gez v0, :cond_2

    add-double/2addr v1, v9

    goto :goto_1

    .line 135
    :cond_2
    const/4 v0, 0x1

    aget v0, v5, v0

    neg-float v0, v0

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    .line 136
    :goto_2
    const-wide v6, -0x3f99800000000000L

    cmpg-double v0, v3, v6

    if-gez v0, :cond_3

    add-double/2addr v3, v9

    goto :goto_2

    .line 137
    :cond_3
    const/4 v0, 0x2

    aget v0, v5, v0

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    .line 138
    :goto_3
    const-wide v7, -0x3fa9800000000000L

    cmpg-double v0, v5, v7

    if-gez v0, :cond_4

    add-double/2addr v5, v9

    goto :goto_3

    :cond_4
    move-object v0, p0

    .line 140
    invoke-direct/range {v0 .. v6}, Ldolphin/webkit/DeviceOrientationService;->a(DDD)V

    goto :goto_0
.end method

.method private d()Landroid/hardware/SensorManager;
    .locals 2

    .prologue
    .line 144
    sget-boolean v0, Ldolphin/webkit/DeviceOrientationService;->a:Z

    if-nez v0, :cond_0

    const-string v0, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 145
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/DeviceOrientationService;->g:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    .line 146
    iget-object v0, p0, Ldolphin/webkit/DeviceOrientationService;->h:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Ldolphin/webkit/DeviceOrientationService;->g:Landroid/hardware/SensorManager;

    .line 148
    :cond_1
    iget-object v0, p0, Ldolphin/webkit/DeviceOrientationService;->g:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method private e()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 152
    invoke-direct {p0}, Ldolphin/webkit/DeviceOrientationService;->d()Landroid/hardware/SensorManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 153
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 157
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Ldolphin/webkit/DeviceOrientationService;->d()Landroid/hardware/SensorManager;

    move-result-object v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    iget-object v3, p0, Ldolphin/webkit/DeviceOrientationService;->f:Ldolphin/util/j;

    invoke-virtual {v3}, Ldolphin/util/j;->getHostHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v2, p0, v0, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v0

    goto :goto_0
.end method

.method private f()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 162
    invoke-direct {p0}, Ldolphin/webkit/DeviceOrientationService;->d()Landroid/hardware/SensorManager;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 163
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 167
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Ldolphin/webkit/DeviceOrientationService;->d()Landroid/hardware/SensorManager;

    move-result-object v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    iget-object v3, p0, Ldolphin/webkit/DeviceOrientationService;->f:Ldolphin/util/j;

    invoke-virtual {v3}, Ldolphin/util/j;->getHostHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v2, p0, v0, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v0

    goto :goto_0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 172
    invoke-direct {p0}, Ldolphin/webkit/DeviceOrientationService;->d()Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 173
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 2

    .prologue
    .line 230
    sget-boolean v0, Ldolphin/webkit/DeviceOrientationService;->a:Z

    if-nez v0, :cond_0

    const-string v0, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 231
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 196
    sget-boolean v0, Ldolphin/webkit/DeviceOrientationService;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v0

    if-eq v0, v5, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 197
    :cond_0
    sget-boolean v0, Ldolphin/webkit/DeviceOrientationService;->a:Z

    if-nez v0, :cond_1

    const-string v0, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 200
    :cond_1
    iget-boolean v0, p0, Ldolphin/webkit/DeviceOrientationService;->e:Z

    if-nez v0, :cond_3

    .line 226
    :cond_2
    :goto_0
    return-void

    .line 204
    :cond_3
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 224
    sget-boolean v0, Ldolphin/webkit/DeviceOrientationService;->a:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 206
    :pswitch_0
    iget-object v0, p0, Ldolphin/webkit/DeviceOrientationService;->b:[F

    if-nez v0, :cond_4

    .line 207
    new-array v0, v5, [F

    iput-object v0, p0, Ldolphin/webkit/DeviceOrientationService;->b:[F

    .line 209
    :cond_4
    iget-object v0, p0, Ldolphin/webkit/DeviceOrientationService;->b:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    aput v1, v0, v2

    .line 210
    iget-object v0, p0, Ldolphin/webkit/DeviceOrientationService;->b:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    aput v1, v0, v3

    .line 211
    iget-object v0, p0, Ldolphin/webkit/DeviceOrientationService;->b:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    aput v1, v0, v4

    .line 212
    invoke-direct {p0}, Ldolphin/webkit/DeviceOrientationService;->c()V

    goto :goto_0

    .line 215
    :pswitch_1
    iget-object v0, p0, Ldolphin/webkit/DeviceOrientationService;->c:[F

    if-nez v0, :cond_5

    .line 216
    new-array v0, v5, [F

    iput-object v0, p0, Ldolphin/webkit/DeviceOrientationService;->c:[F

    .line 218
    :cond_5
    iget-object v0, p0, Ldolphin/webkit/DeviceOrientationService;->c:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    aput v1, v0, v2

    .line 219
    iget-object v0, p0, Ldolphin/webkit/DeviceOrientationService;->c:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    aput v1, v0, v3

    .line 220
    iget-object v0, p0, Ldolphin/webkit/DeviceOrientationService;->c:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    aput v1, v0, v4

    .line 221
    invoke-direct {p0}, Ldolphin/webkit/DeviceOrientationService;->c()V

    goto :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public resume()V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 79
    iget-boolean v0, p0, Ldolphin/webkit/DeviceOrientationService;->e:Z

    if-eqz v0, :cond_0

    .line 80
    invoke-direct {p0}, Ldolphin/webkit/DeviceOrientationService;->b()V

    .line 82
    :cond_0
    return-void
.end method

.method public start()V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/DeviceOrientationService;->e:Z

    .line 61
    invoke-direct {p0}, Ldolphin/webkit/DeviceOrientationService;->b()V

    .line 62
    return-void
.end method

.method public stop()V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/DeviceOrientationService;->e:Z

    .line 67
    invoke-direct {p0}, Ldolphin/webkit/DeviceOrientationService;->g()V

    .line 68
    return-void
.end method

.method public suspend()V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 72
    iget-boolean v0, p0, Ldolphin/webkit/DeviceOrientationService;->e:Z

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0}, Ldolphin/webkit/DeviceOrientationService;->g()V

    .line 75
    :cond_0
    return-void
.end method
