.class public Lcom/somo/apptimiser/SomoConfiguration$LocationSettings;
.super Ljava/lang/Object;
.source "SomoConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/somo/apptimiser/SomoConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocationSettings"
.end annotation


# instance fields
.field public final mAccuracyCoarse:Z

.field public final mAccuracyFine:Z

.field public final mDisabled:Z

.field public final mMinDistanceMeters:F

.field public final mMinTimeMillis:J

.field public final mTimeoutMillis:J


# direct methods
.method private constructor <init>(ZZZJFJ)V
    .locals 0
    .param p1, "disabled"    # Z
    .param p2, "accuracyFine"    # Z
    .param p3, "accuracyCoarse"    # Z
    .param p4, "minTimeMillis"    # J
    .param p6, "minDistanceMeters"    # F
    .param p7, "timeoutMillis"    # J

    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput-boolean p1, p0, Lcom/somo/apptimiser/SomoConfiguration$LocationSettings;->mDisabled:Z

    .line 254
    iput-boolean p2, p0, Lcom/somo/apptimiser/SomoConfiguration$LocationSettings;->mAccuracyFine:Z

    .line 255
    iput-boolean p3, p0, Lcom/somo/apptimiser/SomoConfiguration$LocationSettings;->mAccuracyCoarse:Z

    .line 256
    iput-wide p4, p0, Lcom/somo/apptimiser/SomoConfiguration$LocationSettings;->mMinTimeMillis:J

    .line 257
    iput p6, p0, Lcom/somo/apptimiser/SomoConfiguration$LocationSettings;->mMinDistanceMeters:F

    .line 258
    iput-wide p7, p0, Lcom/somo/apptimiser/SomoConfiguration$LocationSettings;->mTimeoutMillis:J

    .line 259
    return-void
.end method

.method synthetic constructor <init>(ZZZJFJLcom/somo/apptimiser/SomoConfiguration$1;)V
    .locals 0
    .param p1, "x0"    # Z
    .param p2, "x1"    # Z
    .param p3, "x2"    # Z
    .param p4, "x3"    # J
    .param p6, "x4"    # F
    .param p7, "x5"    # J
    .param p9, "x6"    # Lcom/somo/apptimiser/SomoConfiguration$1;

    .prologue
    .line 242
    invoke-direct/range {p0 .. p8}, Lcom/somo/apptimiser/SomoConfiguration$LocationSettings;-><init>(ZZZJFJ)V

    return-void
.end method


# virtual methods
.method isLocationTrackingEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 262
    iget-boolean v1, p0, Lcom/somo/apptimiser/SomoConfiguration$LocationSettings;->mDisabled:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/somo/apptimiser/SomoConfiguration$LocationSettings;->mAccuracyFine:Z

    if-eq v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/somo/apptimiser/SomoConfiguration$LocationSettings;->mAccuracyCoarse:Z

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
