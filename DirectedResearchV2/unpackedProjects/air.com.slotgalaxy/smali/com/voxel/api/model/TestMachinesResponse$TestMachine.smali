.class public Lcom/voxel/api/model/TestMachinesResponse$TestMachine;
.super Ljava/lang/Object;
.source "TestMachinesResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/api/model/TestMachinesResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TestMachine"
.end annotation


# instance fields
.field private datacenter:Ljava/lang/String;

.field private host:Ljava/lang/String;

.field private latency:I

.field private port:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/voxel/api/model/TestMachinesResponse$TestMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/voxel/api/model/TestMachinesResponse$TestMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/voxel/api/model/TestMachinesResponse$TestMachine;->datacenter:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/voxel/api/model/TestMachinesResponse$TestMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/voxel/api/model/TestMachinesResponse$TestMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/voxel/api/model/TestMachinesResponse$TestMachine;->host:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/voxel/api/model/TestMachinesResponse$TestMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/voxel/api/model/TestMachinesResponse$TestMachine;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/voxel/api/model/TestMachinesResponse$TestMachine;->port:I

    return p1
.end method


# virtual methods
.method public getDatacenter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/voxel/api/model/TestMachinesResponse$TestMachine;->datacenter:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/voxel/api/model/TestMachinesResponse$TestMachine;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getLatency()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/voxel/api/model/TestMachinesResponse$TestMachine;->latency:I

    return v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/voxel/api/model/TestMachinesResponse$TestMachine;->port:I

    return v0
.end method

.method public setLatency(I)V
    .locals 0
    .param p1, "latency"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/voxel/api/model/TestMachinesResponse$TestMachine;->latency:I

    .line 68
    return-void
.end method
