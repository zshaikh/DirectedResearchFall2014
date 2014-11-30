.class Ldolphin/webkit/QuadF;
.super Ljava/lang/Object;
.source "QuadF.java"


# annotations
.annotation build Ldolphin/webkit/annotation/CalledByJNI;
.end annotation

.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation


# instance fields
.field public p1:Landroid/graphics/PointF;

.field public p2:Landroid/graphics/PointF;

.field public p3:Landroid/graphics/PointF;

.field public p4:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/QuadF;->p1:Landroid/graphics/PointF;

    .line 37
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/QuadF;->p2:Landroid/graphics/PointF;

    .line 38
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/QuadF;->p3:Landroid/graphics/PointF;

    .line 39
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/QuadF;->p4:Landroid/graphics/PointF;

    .line 40
    return-void
.end method

.method private static isPointInTriangle(FFLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 76
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    .line 77
    iget v1, p2, Landroid/graphics/PointF;->y:F

    iget v2, p4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    .line 78
    iget v2, p3, Landroid/graphics/PointF;->x:F

    iget v3, p4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    .line 79
    iget v3, p3, Landroid/graphics/PointF;->y:F

    iget v4, p4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    .line 80
    iget v4, p4, Landroid/graphics/PointF;->x:F

    sub-float v4, p0, v4

    .line 81
    iget v5, p4, Landroid/graphics/PointF;->y:F

    sub-float v5, p1, v5

    .line 83
    mul-float v6, v3, v0

    mul-float v7, v2, v1

    sub-float/2addr v6, v7

    .line 84
    mul-float/2addr v3, v4

    mul-float/2addr v2, v5

    sub-float v2, v3, v2

    div-float/2addr v2, v6

    .line 85
    mul-float/2addr v0, v5

    mul-float/2addr v1, v4

    sub-float/2addr v0, v1

    div-float/2addr v0, v6

    .line 86
    const/high16 v1, 0x3f800000

    sub-float/2addr v1, v2

    sub-float/2addr v1, v0

    .line 87
    cmpl-float v2, v2, v8

    if-ltz v2, :cond_0

    cmpl-float v0, v0, v8

    if-ltz v0, :cond_0

    cmpl-float v0, v1, v8

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public containsPoint(FF)Z
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Ldolphin/webkit/QuadF;->p1:Landroid/graphics/PointF;

    iget-object v1, p0, Ldolphin/webkit/QuadF;->p2:Landroid/graphics/PointF;

    iget-object v2, p0, Ldolphin/webkit/QuadF;->p3:Landroid/graphics/PointF;

    invoke-static {p1, p2, v0, v1, v2}, Ldolphin/webkit/QuadF;->isPointInTriangle(FFLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/QuadF;->p1:Landroid/graphics/PointF;

    iget-object v1, p0, Ldolphin/webkit/QuadF;->p3:Landroid/graphics/PointF;

    iget-object v2, p0, Ldolphin/webkit/QuadF;->p4:Landroid/graphics/PointF;

    invoke-static {p1, p2, v0, v1, v2}, Ldolphin/webkit/QuadF;->isPointInTriangle(FFLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

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

.method public offset(FF)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Ldolphin/webkit/QuadF;->p1:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->offset(FF)V

    .line 44
    iget-object v0, p0, Ldolphin/webkit/QuadF;->p2:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->offset(FF)V

    .line 45
    iget-object v0, p0, Ldolphin/webkit/QuadF;->p3:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->offset(FF)V

    .line 46
    iget-object v0, p0, Ldolphin/webkit/QuadF;->p4:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->offset(FF)V

    .line 47
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "QuadF("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Ldolphin/webkit/QuadF;->p1:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldolphin/webkit/QuadF;->p1:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 63
    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-object v1, p0, Ldolphin/webkit/QuadF;->p2:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldolphin/webkit/QuadF;->p2:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 65
    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-object v1, p0, Ldolphin/webkit/QuadF;->p3:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldolphin/webkit/QuadF;->p3:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-object v1, p0, Ldolphin/webkit/QuadF;->p4:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldolphin/webkit/QuadF;->p4:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
