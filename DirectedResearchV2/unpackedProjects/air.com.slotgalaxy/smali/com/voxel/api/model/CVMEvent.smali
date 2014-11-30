.class public Lcom/voxel/api/model/CVMEvent;
.super Ljava/lang/Object;
.source "CVMEvent.java"


# instance fields
.field sequence:I

.field timestamp:J

.field touchEvent:Lcom/voxel/api/model/CVMTouchEvent;

.field type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSequence()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/voxel/api/model/CVMEvent;->sequence:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/voxel/api/model/CVMEvent;->timestamp:J

    return-wide v0
.end method

.method public getTouchEvent()Lcom/voxel/api/model/CVMTouchEvent;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/voxel/api/model/CVMEvent;->touchEvent:Lcom/voxel/api/model/CVMTouchEvent;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 11
    iget v0, p0, Lcom/voxel/api/model/CVMEvent;->type:I

    return v0
.end method

.method public setSequence(I)V
    .locals 0
    .param p1, "sequence"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/voxel/api/model/CVMEvent;->sequence:I

    .line 32
    return-void
.end method

.method public setTimestamp(J)V
    .locals 0
    .param p1, "timestamp"    # J

    .prologue
    .line 23
    iput-wide p1, p0, Lcom/voxel/api/model/CVMEvent;->timestamp:J

    .line 24
    return-void
.end method

.method public setTouchEvent(Lcom/voxel/api/model/CVMTouchEvent;)V
    .locals 0
    .param p1, "touchEvent"    # Lcom/voxel/api/model/CVMTouchEvent;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/voxel/api/model/CVMEvent;->touchEvent:Lcom/voxel/api/model/CVMTouchEvent;

    .line 40
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 15
    iput p1, p0, Lcom/voxel/api/model/CVMEvent;->type:I

    .line 16
    return-void
.end method
