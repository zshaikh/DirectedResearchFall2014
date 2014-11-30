.class Lcom/voxel/sdk/ConnectionMonitor$LatencyEntry;
.super Ljava/lang/Object;
.source "ConnectionMonitor.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/sdk/ConnectionMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LatencyEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/voxel/sdk/ConnectionMonitor$LatencyEntry;",
        ">;"
    }
.end annotation


# instance fields
.field datacenter:Ljava/lang/String;

.field latency:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/voxel/sdk/ConnectionMonitor$LatencyEntry;)I
    .locals 2
    .param p1, "other"    # Lcom/voxel/sdk/ConnectionMonitor$LatencyEntry;

    .prologue
    .line 292
    iget v0, p0, Lcom/voxel/sdk/ConnectionMonitor$LatencyEntry;->latency:I

    iget v1, p1, Lcom/voxel/sdk/ConnectionMonitor$LatencyEntry;->latency:I

    if-ne v0, v1, :cond_0

    .line 293
    iget-object v0, p0, Lcom/voxel/sdk/ConnectionMonitor$LatencyEntry;->datacenter:Ljava/lang/String;

    iget-object v1, p1, Lcom/voxel/sdk/ConnectionMonitor$LatencyEntry;->datacenter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 297
    :goto_0
    return v0

    .line 294
    :cond_0
    iget v0, p0, Lcom/voxel/sdk/ConnectionMonitor$LatencyEntry;->latency:I

    iget v1, p1, Lcom/voxel/sdk/ConnectionMonitor$LatencyEntry;->latency:I

    if-ge v0, v1, :cond_1

    .line 295
    const/4 v0, -0x1

    goto :goto_0

    .line 297
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 286
    check-cast p1, Lcom/voxel/sdk/ConnectionMonitor$LatencyEntry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/voxel/sdk/ConnectionMonitor$LatencyEntry;->compareTo(Lcom/voxel/sdk/ConnectionMonitor$LatencyEntry;)I

    move-result v0

    return v0
.end method
