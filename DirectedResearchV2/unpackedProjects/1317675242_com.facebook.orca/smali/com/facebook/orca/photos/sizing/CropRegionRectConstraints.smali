.class public Lcom/facebook/orca/photos/sizing/CropRegionRectConstraints;
.super Ljava/lang/Object;
.source "CropRegionRectConstraints.java"


# instance fields
.field private final a:Landroid/graphics/RectF;

.field private final b:F


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;F)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/facebook/orca/photos/sizing/CropRegionRectConstraints;->a:Landroid/graphics/RectF;

    .line 22
    iput p2, p0, Lcom/facebook/orca/photos/sizing/CropRegionRectConstraints;->b:F

    .line 23
    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/facebook/orca/photos/sizing/CropRegionRectConstraints;->a:Landroid/graphics/RectF;

    return-object v0
.end method

.method public b()F
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/facebook/orca/photos/sizing/CropRegionRectConstraints;->b:F

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 4

    .prologue
    .line 39
    const-string v0, ":"

    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/photos/sizing/CropRegionRectConstraints;->a:Landroid/graphics/RectF;

    iget v2, p0, Lcom/facebook/orca/photos/sizing/CropRegionRectConstraints;->b:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
