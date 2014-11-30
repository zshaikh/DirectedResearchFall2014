.class public Lcom/voxel/api/model/CVMTouch;
.super Ljava/lang/Object;
.source "CVMTouch.java"


# static fields
.field public static final TYPE_BEGIN:I = 0x0

.field public static final TYPE_END:I = 0x2

.field public static final TYPE_MOVED:I = 0x1


# instance fields
.field index:I

.field pressure:F

.field proximity:I

.field radius:F

.field type:I

.field x:F

.field y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/voxel/api/model/CVMTouch;->index:I

    return v0
.end method

.method public getPressure()F
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/voxel/api/model/CVMTouch;->pressure:F

    return v0
.end method

.method public getProximity()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/voxel/api/model/CVMTouch;->proximity:I

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/voxel/api/model/CVMTouch;->radius:F

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/voxel/api/model/CVMTouch;->type:I

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/voxel/api/model/CVMTouch;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/voxel/api/model/CVMTouch;->y:F

    return v0
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/voxel/api/model/CVMTouch;->index:I

    .line 46
    return-void
.end method

.method public setPressure(F)V
    .locals 0
    .param p1, "pressure"    # F

    .prologue
    .line 61
    iput p1, p0, Lcom/voxel/api/model/CVMTouch;->pressure:F

    .line 62
    return-void
.end method

.method public setProximity(I)V
    .locals 0
    .param p1, "proximity"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/voxel/api/model/CVMTouch;->proximity:I

    .line 54
    return-void
.end method

.method public setRadius(F)V
    .locals 0
    .param p1, "radius"    # F

    .prologue
    .line 69
    iput p1, p0, Lcom/voxel/api/model/CVMTouch;->radius:F

    .line 70
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/voxel/api/model/CVMTouch;->type:I

    .line 22
    return-void
.end method

.method public setX(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 29
    iput p1, p0, Lcom/voxel/api/model/CVMTouch;->x:F

    .line 30
    return-void
.end method

.method public setY(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 37
    iput p1, p0, Lcom/voxel/api/model/CVMTouch;->y:F

    .line 38
    return-void
.end method
