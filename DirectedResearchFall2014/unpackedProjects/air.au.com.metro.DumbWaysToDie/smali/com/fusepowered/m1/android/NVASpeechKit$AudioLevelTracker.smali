.class Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;
.super Ljava/lang/Object;
.source "NVASpeechKit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/android/NVASpeechKit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AudioLevelTracker"
.end annotation


# static fields
.field private static final MAX:D = 80.0

.field private static final MIN:D = 40.0

.field private static final NORMALIZE_FACTOR:D = 4.004004004004004

.field private static final SCALE:D = 9.99


# instance fields
.field audioLevel:D

.field audioLevelCount:I

.field averageLevel:D

.field isTrackingAudioSample:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;->reset()V

    .line 124
    return-void
.end method

.method static synthetic access$100(D)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 109
    invoke-static {p0, p1}, Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;->normalize(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static normalize(D)D
    .locals 6
    .parameter "level"

    .prologue
    .line 152
    const-wide/high16 v2, 0x4044

    sub-double v2, p0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    const-wide v4, 0x40100419a0290042L

    div-double v0, v2, v4

    .line 155
    .local v0, normalized:D
    const-wide v2, 0x4023fae147ae147bL

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    return-wide v2
.end method


# virtual methods
.method public isTrackingAudioSample()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;->isTrackingAudioSample:Z

    return v0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 129
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;->averageLevel:D

    .line 130
    iput v2, p0, Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;->audioLevelCount:I

    .line 131
    iput-boolean v2, p0, Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;->isTrackingAudioSample:Z

    .line 132
    return-void
.end method

.method public startTrackingAudioSample()V
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;->reset()V

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;->isTrackingAudioSample:Z

    .line 139
    return-void
.end method

.method public update(D)Z
    .locals 10
    .parameter "level"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 164
    iget-wide v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;->averageLevel:D

    .line 165
    .local v0, oldAverage:D
    iget-wide v2, p0, Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;->audioLevel:D

    .line 166
    .local v2, oldLevel:D
    iput-wide p1, p0, Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;->audioLevel:D

    .line 167
    iget v4, p0, Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;->audioLevelCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;->audioLevelCount:I

    .line 168
    iget v4, p0, Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;->audioLevelCount:I

    sub-int/2addr v4, v9

    int-to-double v4, v4

    mul-double/2addr v4, v0

    add-double/2addr v4, p1

    iget v6, p0, Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;->audioLevelCount:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    iput-wide v4, p0, Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;->averageLevel:D

    .line 169
    iget-boolean v4, p0, Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;->isTrackingAudioSample:Z

    if-eqz v4, :cond_0

    move v4, v8

    .line 174
    :goto_0
    return v4

    :cond_0
    iget-wide v4, p0, Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;->audioLevel:D

    cmpl-double v4, v4, v2

    if-eqz v4, :cond_1

    move v4, v9

    goto :goto_0

    :cond_1
    move v4, v8

    goto :goto_0
.end method
