.class public Lcom/facebook/orca/photos/sizing/CropRegionConstraints;
.super Ljava/lang/Object;
.source "CropRegionConstraints.java"


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F

.field private final d:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;


# direct methods
.method constructor <init>(Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->a()F

    move-result v0

    iput v0, p0, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->a:F

    .line 22
    invoke-virtual {p1}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->b()F

    move-result v0

    iput v0, p0, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->b:F

    .line 23
    invoke-virtual {p1}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->c()F

    move-result v0

    iput v0, p0, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->c:F

    .line 24
    invoke-virtual {p1}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->d()Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->d:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    .line 25
    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->a:F

    return v0
.end method

.method public b()F
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->b:F

    return v0
.end method

.method public c()F
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->c:F

    return v0
.end method

.method public d()Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->d:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 6

    .prologue
    .line 44
    const-string v0, ":"

    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    iget v1, p0, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->a:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->b:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->c:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->d:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->d:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    invoke-virtual {v5}, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;->name()Ljava/lang/String;

    move-result-object v5

    :goto_0
    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v5, ""

    goto :goto_0
.end method
