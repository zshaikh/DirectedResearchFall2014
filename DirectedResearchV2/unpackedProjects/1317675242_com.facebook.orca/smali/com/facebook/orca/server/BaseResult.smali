.class public Lcom/facebook/orca/server/BaseResult;
.super Ljava/lang/Object;
.source "BaseResult.java"


# instance fields
.field private final a:Lcom/facebook/orca/server/DataFreshnessResult;

.field private final b:J


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/DataFreshnessResult;

    iput-object v0, p0, Lcom/facebook/orca/server/BaseResult;->a:Lcom/facebook/orca/server/DataFreshnessResult;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/server/BaseResult;->b:J

    .line 25
    return-void
.end method

.method constructor <init>(Lcom/facebook/orca/server/DataFreshnessResult;J)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/facebook/orca/server/BaseResult;->a:Lcom/facebook/orca/server/DataFreshnessResult;

    .line 19
    iput-wide p2, p0, Lcom/facebook/orca/server/BaseResult;->b:J

    .line 20
    return-void
.end method


# virtual methods
.method public h()Lcom/facebook/orca/server/DataFreshnessResult;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/facebook/orca/server/BaseResult;->a:Lcom/facebook/orca/server/DataFreshnessResult;

    return-object v0
.end method

.method public i()J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/facebook/orca/server/BaseResult;->b:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/facebook/orca/server/BaseResult;->h()Lcom/facebook/orca/server/DataFreshnessResult;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 37
    iget-wide v0, p0, Lcom/facebook/orca/server/BaseResult;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 38
    return-void
.end method
