.class final Ldolphin/webkit/DeviceMotionService;
.super Ljava/lang/Object;
.source "DeviceMotionService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation build Ldolphin/webkit/annotation/CalledByJNI;
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:Ldolphin/webkit/DeviceMotionAndOrientationManager;

.field private c:Z

.field private d:Ldolphin/util/j;

.field private e:Landroid/hardware/SensorManager;

.field private f:Landroid/content/Context;

.field private g:Z

.field private h:Ljava/lang/Runnable;

.field private i:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Ldolphin/webkit/DeviceMotionService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ldolphin/webkit/DeviceMotionService;->a:Z

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
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Ldolphin/webkit/DeviceMotionService;->b:Ldolphin/webkit/DeviceMotionAndOrientationManager;

    .line 48
    sget-boolean v0, Ldolphin/webkit/DeviceMotionService;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/DeviceMotionService;->b:Ldolphin/webkit/DeviceMotionAndOrientationManager;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 49
    :cond_0
    iput-object p2, p0, Ldolphin/webkit/DeviceMotionService;->f:Landroid/content/Context;

    .line 50
    sget-boolean v0, Ldolphin/webkit/DeviceMotionService;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Ldolphin/webkit/DeviceMotionService;->f:Landroid/content/Context;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 51
    :cond_1
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 82
    sget-boolean v0, Ldolphin/webkit/DeviceMotionService;->a:Z

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

    .line 84
    :cond_0
    iget-boolean v0, p0, Ldolphin/webkit/DeviceMotionService;->g:Z

    if-eqz v0, :cond_1

    .line 98
    :goto_0
    return-void

    .line 86
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/DeviceMotionService;->g:Z

    .line 87
    invoke-direct {p0}, Ldolphin/webkit/DeviceMotionService;->b()V

    .line 88
    iget-object v0, p0, Ldolphin/webkit/DeviceMotionService;->d:Ldolphin/util/j;

    new-instance v1, Ldolphin/webkit/bq;

    invoke-direct {v1, p0}, Ldolphin/webkit/bq;-><init>(Ldolphin/webkit/DeviceMotionService;)V

    invoke-virtual {v0, v1}, Ldolphin/util/j;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic a(Ldolphin/webkit/DeviceMotionService;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Ldolphin/webkit/DeviceMotionService;->c:Z

    return v0
.end method

.method static synthetic a(Ldolphin/webkit/DeviceMotionService;Z)Z
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Ldolphin/webkit/DeviceMotionService;->g:Z

    return p1
.end method

.method static synthetic b(Ldolphin/webkit/DeviceMotionService;)Ldolphin/webkit/DeviceMotionAndOrientationManager;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Ldolphin/webkit/DeviceMotionService;->b:Ldolphin/webkit/DeviceMotionAndOrientationManager;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Ldolphin/webkit/DeviceMotionService;->d:Ldolphin/util/j;

    if-eqz v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 105
    :cond_0
    new-instance v0, Ldolphin/util/j;

    invoke-direct {v0}, Ldolphin/util/j;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/DeviceMotionService;->d:Ldolphin/util/j;

    .line 106
    new-instance v0, Ldolphin/webkit/br;

    invoke-direct {v0, p0}, Ldolphin/webkit/br;-><init>(Ldolphin/webkit/DeviceMotionService;)V

    iput-object v0, p0, Ldolphin/webkit/DeviceMotionService;->h:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Ldolphin/webkit/DeviceMotionService;->b()V

    .line 123
    iget-object v0, p0, Ldolphin/webkit/DeviceMotionService;->h:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 124
    return-void
.end method

.method static synthetic c(Ldolphin/webkit/DeviceMotionService;)[F
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Ldolphin/webkit/DeviceMotionService;->i:[F

    return-object v0
.end method

.method static synthetic d(Ldolphin/webkit/DeviceMotionService;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Ldolphin/webkit/DeviceMotionService;->h:Ljava/lang/Runnable;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Ldolphin/webkit/DeviceMotionService;->d:Ldolphin/util/j;

    iget-object v1, p0, Ldolphin/webkit/DeviceMotionService;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ldolphin/util/j;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/webkit/DeviceMotionService;->i:[F

    .line 129
    return-void
.end method

.method static synthetic e(Ldolphin/webkit/DeviceMotionService;)Ldolphin/util/j;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Ldolphin/webkit/DeviceMotionService;->d:Ldolphin/util/j;

    return-object v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Ldolphin/webkit/DeviceMotionService;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    invoke-direct {p0}, Ldolphin/webkit/DeviceMotionService;->a()V

    .line 135
    :cond_0
    return-void
.end method

.method private f()Landroid/hardware/SensorManager;
    .locals 2

    .prologue
    .line 138
    sget-boolean v0, Ldolphin/webkit/DeviceMotionService;->a:Z

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

    .line 139
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/DeviceMotionService;->e:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    .line 140
    iget-object v0, p0, Ldolphin/webkit/DeviceMotionService;->f:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Ldolphin/webkit/DeviceMotionService;->e:Landroid/hardware/SensorManager;

    .line 142
    :cond_1
    iget-object v0, p0, Ldolphin/webkit/DeviceMotionService;->e:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method private g()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 146
    invoke-direct {p0}, Ldolphin/webkit/DeviceMotionService;->f()Landroid/hardware/SensorManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 147
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 152
    :goto_0
    return v0

    .line 150
    :cond_0
    invoke-direct {p0}, Ldolphin/webkit/DeviceMotionService;->b()V

    .line 152
    invoke-direct {p0}, Ldolphin/webkit/DeviceMotionService;->f()Landroid/hardware/SensorManager;

    move-result-object v2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    const/4 v1, 0x2

    iget-object v3, p0, Ldolphin/webkit/DeviceMotionService;->d:Ldolphin/util/j;

    invoke-virtual {v3}, Ldolphin/util/j;->getHostHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v2, p0, v0, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v0

    goto :goto_0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 157
    invoke-direct {p0}, Ldolphin/webkit/DeviceMotionService;->f()Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 158
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 2

    .prologue
    .line 184
    sget-boolean v0, Ldolphin/webkit/DeviceMotionService;->a:Z

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

    .line 185
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 166
    sget-boolean v1, Ldolphin/webkit/DeviceMotionService;->a:Z

    if-nez v1, :cond_0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v1, v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 167
    :cond_0
    sget-boolean v1, Ldolphin/webkit/DeviceMotionService;->a:Z

    if-nez v1, :cond_1

    const-string v1, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 168
    :cond_1
    sget-boolean v1, Ldolphin/webkit/DeviceMotionService;->a:Z

    if-nez v1, :cond_2

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 171
    :cond_2
    iget-boolean v1, p0, Ldolphin/webkit/DeviceMotionService;->c:Z

    if-nez v1, :cond_4

    .line 180
    :cond_3
    :goto_0
    return-void

    .line 175
    :cond_4
    iget-object v1, p0, Ldolphin/webkit/DeviceMotionService;->i:[F

    if-nez v1, :cond_5

    .line 176
    :goto_1
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    iput-object v1, p0, Ldolphin/webkit/DeviceMotionService;->i:[F

    .line 177
    if-eqz v0, :cond_3

    .line 178
    invoke-direct {p0}, Ldolphin/webkit/DeviceMotionService;->c()V

    goto :goto_0

    .line 175
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public resume()V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 76
    iget-boolean v0, p0, Ldolphin/webkit/DeviceMotionService;->c:Z

    if-eqz v0, :cond_0

    .line 77
    invoke-direct {p0}, Ldolphin/webkit/DeviceMotionService;->e()V

    .line 79
    :cond_0
    return-void
.end method

.method public start()V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/DeviceMotionService;->c:Z

    .line 56
    invoke-direct {p0}, Ldolphin/webkit/DeviceMotionService;->e()V

    .line 57
    return-void
.end method

.method public stop()V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/DeviceMotionService;->c:Z

    .line 62
    invoke-direct {p0}, Ldolphin/webkit/DeviceMotionService;->d()V

    .line 63
    invoke-direct {p0}, Ldolphin/webkit/DeviceMotionService;->h()V

    .line 64
    return-void
.end method

.method public suspend()V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 68
    iget-boolean v0, p0, Ldolphin/webkit/DeviceMotionService;->c:Z

    if-eqz v0, :cond_0

    .line 69
    invoke-direct {p0}, Ldolphin/webkit/DeviceMotionService;->d()V

    .line 70
    invoke-direct {p0}, Ldolphin/webkit/DeviceMotionService;->h()V

    .line 72
    :cond_0
    return-void
.end method
