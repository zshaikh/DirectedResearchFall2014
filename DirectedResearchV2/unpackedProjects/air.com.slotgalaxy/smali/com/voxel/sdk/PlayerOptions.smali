.class public Lcom/voxel/sdk/PlayerOptions;
.super Ljava/lang/Object;
.source "PlayerOptions.java"


# instance fields
.field private bitRate:I

.field private fecType:Ljava/lang/String;

.field private frameRate:I

.field private height:I

.field private intra:Ljava/lang/Boolean;

.field private protocol:Ljava/lang/String;

.field private sliceMaxSize:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitRate()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/voxel/sdk/PlayerOptions;->bitRate:I

    return v0
.end method

.method public getFecType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/voxel/sdk/PlayerOptions;->fecType:Ljava/lang/String;

    return-object v0
.end method

.method public getFrameRate()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/voxel/sdk/PlayerOptions;->frameRate:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/voxel/sdk/PlayerOptions;->height:I

    return v0
.end method

.method public getIntra()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/voxel/sdk/PlayerOptions;->intra:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/voxel/sdk/PlayerOptions;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getSliceMaxSize()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/voxel/sdk/PlayerOptions;->sliceMaxSize:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/voxel/sdk/PlayerOptions;->width:I

    return v0
.end method

.method public setBitRate(I)V
    .locals 0
    .param p1, "bitRate"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/voxel/sdk/PlayerOptions;->bitRate:I

    .line 46
    return-void
.end method

.method public setFecType(Ljava/lang/String;)V
    .locals 0
    .param p1, "fecType"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/voxel/sdk/PlayerOptions;->fecType:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setFrameRate(I)V
    .locals 0
    .param p1, "frameRate"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/voxel/sdk/PlayerOptions;->frameRate:I

    .line 30
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/voxel/sdk/PlayerOptions;->height:I

    .line 78
    return-void
.end method

.method public setIntra(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "intra"    # Ljava/lang/Boolean;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/voxel/sdk/PlayerOptions;->intra:Ljava/lang/Boolean;

    .line 54
    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 0
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/voxel/sdk/PlayerOptions;->protocol:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setSliceMaxSize(I)V
    .locals 0
    .param p1, "sliceMaxSize"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/voxel/sdk/PlayerOptions;->sliceMaxSize:I

    .line 38
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/voxel/sdk/PlayerOptions;->width:I

    .line 70
    return-void
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 82
    .local v0, "obj":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/voxel/sdk/PlayerOptions;->protocol:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 83
    const-string v1, "protocol"

    iget-object v2, p0, Lcom/voxel/sdk/PlayerOptions;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    :cond_0
    iget v1, p0, Lcom/voxel/sdk/PlayerOptions;->frameRate:I

    if-lez v1, :cond_1

    .line 85
    const-string v1, "frame_rate"

    iget v2, p0, Lcom/voxel/sdk/PlayerOptions;->frameRate:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 86
    :cond_1
    iget v1, p0, Lcom/voxel/sdk/PlayerOptions;->sliceMaxSize:I

    if-lez v1, :cond_2

    .line 87
    const-string v1, "slice_max_size"

    iget v2, p0, Lcom/voxel/sdk/PlayerOptions;->sliceMaxSize:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 88
    :cond_2
    iget v1, p0, Lcom/voxel/sdk/PlayerOptions;->bitRate:I

    if-lez v1, :cond_3

    .line 89
    const-string v1, "bit_rate"

    iget v2, p0, Lcom/voxel/sdk/PlayerOptions;->bitRate:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 90
    :cond_3
    iget-object v1, p0, Lcom/voxel/sdk/PlayerOptions;->intra:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 91
    const-string v1, "intra"

    iget-object v2, p0, Lcom/voxel/sdk/PlayerOptions;->intra:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    :cond_4
    iget-object v1, p0, Lcom/voxel/sdk/PlayerOptions;->fecType:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 93
    const-string v1, "fec_type"

    iget-object v2, p0, Lcom/voxel/sdk/PlayerOptions;->fecType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    :cond_5
    iget v1, p0, Lcom/voxel/sdk/PlayerOptions;->width:I

    if-lez v1, :cond_6

    iget v1, p0, Lcom/voxel/sdk/PlayerOptions;->height:I

    if-lez v1, :cond_6

    .line 95
    const-string v1, "width"

    iget v2, p0, Lcom/voxel/sdk/PlayerOptions;->width:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 96
    const-string v1, "height"

    iget v2, p0, Lcom/voxel/sdk/PlayerOptions;->height:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 98
    :cond_6
    return-object v0
.end method
