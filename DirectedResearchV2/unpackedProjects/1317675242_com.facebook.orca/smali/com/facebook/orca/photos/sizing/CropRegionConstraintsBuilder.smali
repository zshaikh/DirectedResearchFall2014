.class public Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;
.super Ljava/lang/Object;
.source "CropRegionConstraintsBuilder.java"


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const v1, 0x3e19999a

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->a:F

    .line 13
    iput v1, p0, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->b:F

    .line 14
    iput v1, p0, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->c:F

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->a:F

    return v0
.end method

.method public a(F)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->a:F

    .line 23
    return-object p0
.end method

.method public a(Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->d:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    .line 50
    return-object p0
.end method

.method public b()F
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->b:F

    return v0
.end method

.method public b(F)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->b:F

    .line 32
    return-object p0
.end method

.method public c()F
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->c:F

    return v0
.end method

.method public c(F)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->c:F

    .line 41
    return-object p0
.end method

.method public d()Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->d:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    return-object v0
.end method

.method public e()Lcom/facebook/orca/photos/sizing/CropRegionConstraints;
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;

    invoke-direct {v0, p0}, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;-><init>(Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;)V

    return-object v0
.end method
