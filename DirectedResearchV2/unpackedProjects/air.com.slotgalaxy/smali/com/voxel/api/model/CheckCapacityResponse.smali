.class public Lcom/voxel/api/model/CheckCapacityResponse;
.super Ljava/lang/Object;
.source "CheckCapacityResponse.java"


# instance fields
.field private response:Lcom/voxel/api/model/ServerResponse;


# direct methods
.method public constructor <init>(Lcom/voxel/api/model/ServerResponse;)V
    .locals 0
    .param p1, "response"    # Lcom/voxel/api/model/ServerResponse;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/voxel/api/model/CheckCapacityResponse;->response:Lcom/voxel/api/model/ServerResponse;

    .line 13
    return-void
.end method


# virtual methods
.method public getCapacity(Ljava/lang/String;)I
    .locals 2
    .param p1, "datacenter"    # Ljava/lang/String;

    .prologue
    .line 8
    iget-object v0, p0, Lcom/voxel/api/model/CheckCapacityResponse;->response:Lcom/voxel/api/model/ServerResponse;

    invoke-virtual {v0}, Lcom/voxel/api/model/ServerResponse;->getData()Lcom/voxel/util/JSONWrapper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/voxel/util/JSONWrapper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
