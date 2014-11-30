.class public Lcom/dolphin/browser/util/ch;
.super Ljava/lang/Object;
.source "SensorController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private a:Landroid/hardware/SensorManager;

.field private b:Landroid/hardware/Sensor;

.field private c:Lcom/dolphin/browser/util/ci;

.field private d:Z

.field private e:F

.field private f:Z

.field private g:J

.field private final h:[F

.field private final i:[F

.field private final j:[F

.field private final k:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean v2, p0, Lcom/dolphin/browser/util/ch;->d:Z

    .line 69
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/dolphin/browser/util/ch;->h:[F

    .line 70
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/dolphin/browser/util/ch;->i:[F

    .line 71
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/dolphin/browser/util/ch;->j:[F

    .line 72
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/dolphin/browser/util/ch;->k:[F

    .line 25
    :try_start_0
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/dolphin/browser/util/ch;->a:Landroid/hardware/SensorManager;

    .line 26
    iget-object v0, p0, Lcom/dolphin/browser/util/ch;->a:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/util/ch;->b:Landroid/hardware/Sensor;

    .line 27
    const/high16 v0, 0x42960000

    iput v0, p0, Lcom/dolphin/browser/util/ch;->e:F

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/util/ch;->f:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    iput-object v3, p0, Lcom/dolphin/browser/util/ch;->a:Landroid/hardware/SensorManager;

    .line 31
    iput-object v3, p0, Lcom/dolphin/browser/util/ch;->b:Landroid/hardware/Sensor;

    .line 32
    iput-boolean v2, p0, Lcom/dolphin/browser/util/ch;->f:Z

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/dolphin/browser/util/ch;->f:Z

    if-nez v0, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    iget-boolean v0, p0, Lcom/dolphin/browser/util/ch;->d:Z

    if-eqz v0, :cond_0

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/util/ch;->d:Z

    .line 52
    iget-object v0, p0, Lcom/dolphin/browser/util/ch;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/dolphin/browser/util/ch;->b:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/util/ch;->c:Lcom/dolphin/browser/util/ci;

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/util/ci;)V
    .locals 3

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/dolphin/browser/util/ch;->f:Z

    if-nez v0, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-boolean v0, p0, Lcom/dolphin/browser/util/ch;->d:Z

    if-nez v0, :cond_0

    .line 62
    iput-object p1, p0, Lcom/dolphin/browser/util/ch;->c:Lcom/dolphin/browser/util/ci;

    .line 63
    iget-object v0, p0, Lcom/dolphin/browser/util/ch;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/dolphin/browser/util/ch;->b:Landroid/hardware/Sensor;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/util/ch;->d:Z

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 14

    .prologue
    const-wide v10, 0x3fc999999999999aL

    const-wide v8, -0x4036666666666666L

    const/high16 v13, 0x3f800000

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 76
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    if-eq v2, v0, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    const/4 v2, 0x3

    new-array v3, v2, [F

    move v2, v1

    .line 80
    :goto_1
    const/4 v4, 0x3

    if-ge v2, v4, :cond_6

    .line 81
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v2

    iget-object v5, p0, Lcom/dolphin/browser/util/ch;->h:[F

    aget v5, v5, v2

    sub-float/2addr v4, v5

    aput v4, v3, v2

    .line 82
    aget v4, v3, v2

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L

    cmpl-double v4, v4, v6

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/dolphin/browser/util/ch;->j:[F

    aget v4, v4, v2

    float-to-double v4, v4

    cmpg-double v4, v4, v10

    if-ltz v4, :cond_3

    :cond_2
    aget v4, v3, v2

    float-to-double v4, v4

    const-wide/high16 v6, -0x4010000000000000L

    cmpg-double v4, v4, v6

    if-gez v4, :cond_5

    iget-object v4, p0, Lcom/dolphin/browser/util/ch;->j:[F

    aget v4, v4, v2

    float-to-double v4, v4

    cmpl-double v4, v4, v8

    if-lez v4, :cond_5

    .line 85
    :cond_3
    iget-object v4, p0, Lcom/dolphin/browser/util/ch;->k:[F

    iget-object v5, p0, Lcom/dolphin/browser/util/ch;->j:[F

    aget v5, v5, v2

    aput v5, v4, v2

    .line 86
    iget-object v4, p0, Lcom/dolphin/browser/util/ch;->j:[F

    const/4 v5, 0x0

    aput v5, v4, v2

    .line 91
    :cond_4
    :goto_2
    iget-object v4, p0, Lcom/dolphin/browser/util/ch;->j:[F

    aget v5, v4, v2

    aget v6, v3, v2

    add-float/2addr v5, v6

    aput v5, v4, v2

    .line 92
    iget-object v4, p0, Lcom/dolphin/browser/util/ch;->i:[F

    aget v5, v3, v2

    aput v5, v4, v2

    .line 93
    iget-object v4, p0, Lcom/dolphin/browser/util/ch;->h:[F

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v2

    aput v5, v4, v2

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 87
    :cond_5
    aget v4, v3, v2

    float-to-double v4, v4

    cmpl-double v4, v4, v8

    if-lez v4, :cond_4

    aget v4, v3, v2

    float-to-double v4, v4

    cmpg-double v4, v4, v10

    if-gez v4, :cond_4

    .line 89
    iget-object v4, p0, Lcom/dolphin/browser/util/ch;->j:[F

    iget-object v5, p0, Lcom/dolphin/browser/util/ch;->k:[F

    const/4 v6, 0x0

    aput v6, v5, v2

    aput v6, v4, v2

    goto :goto_2

    .line 96
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 97
    iget-wide v2, p0, Lcom/dolphin/browser/util/ch;->g:J

    sub-long v2, v4, v2

    const-wide/16 v6, 0x3e8

    cmp-long v2, v2, v6

    if-lez v2, :cond_0

    .line 98
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/dolphin/browser/util/ch;->g:J

    .line 99
    iget-object v2, p0, Lcom/dolphin/browser/util/ch;->j:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    .line 100
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 101
    iget-object v2, p0, Lcom/dolphin/browser/util/ch;->k:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    .line 102
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 104
    iget-object v2, p0, Lcom/dolphin/browser/util/ch;->j:[F

    aget v2, v2, v0

    .line 105
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 106
    iget-object v3, p0, Lcom/dolphin/browser/util/ch;->k:[F

    aget v3, v3, v0

    .line 107
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 109
    iget-object v3, p0, Lcom/dolphin/browser/util/ch;->j:[F

    aget v3, v3, v1

    .line 110
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 111
    iget-object v9, p0, Lcom/dolphin/browser/util/ch;->k:[F

    aget v9, v9, v1

    .line 112
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 114
    const/high16 v10, 0x42c80000

    iget v11, p0, Lcom/dolphin/browser/util/ch;->e:F

    sub-float/2addr v10, v11

    const/high16 v11, 0x40200000

    add-float/2addr v10, v11

    .line 115
    const/high16 v11, 0x42c80000

    iget v12, p0, Lcom/dolphin/browser/util/ch;->e:F

    sub-float/2addr v11, v12

    add-float/2addr v11, v13

    .line 116
    cmpl-float v10, v3, v10

    if-lez v10, :cond_9

    cmpl-float v10, v9, v13

    if-lez v10, :cond_9

    cmpl-float v3, v3, v9

    if-lez v3, :cond_9

    move v3, v0

    .line 117
    :goto_3
    cmpl-float v9, v2, v11

    if-lez v9, :cond_a

    cmpl-float v9, v8, v13

    if-lez v9, :cond_a

    cmpl-float v2, v2, v8

    if-lez v2, :cond_a

    move v2, v0

    .line 118
    :goto_4
    cmpl-float v8, v6, v11

    if-lez v8, :cond_b

    cmpl-float v8, v7, v13

    if-lez v8, :cond_b

    cmpl-float v6, v6, v7

    if-lez v6, :cond_b

    .line 121
    :goto_5
    if-nez v3, :cond_7

    if-nez v2, :cond_7

    if-eqz v0, :cond_0

    .line 122
    :cond_7
    iget-object v0, p0, Lcom/dolphin/browser/util/ch;->c:Lcom/dolphin/browser/util/ci;

    if-eqz v0, :cond_8

    .line 123
    iget-object v0, p0, Lcom/dolphin/browser/util/ch;->c:Lcom/dolphin/browser/util/ci;

    invoke-interface {v0}, Lcom/dolphin/browser/util/ci;->a()V

    .line 125
    :cond_8
    iput-wide v4, p0, Lcom/dolphin/browser/util/ch;->g:J

    goto/16 :goto_0

    :cond_9
    move v3, v1

    .line 116
    goto :goto_3

    :cond_a
    move v2, v1

    .line 117
    goto :goto_4

    :cond_b
    move v0, v1

    .line 118
    goto :goto_5
.end method
