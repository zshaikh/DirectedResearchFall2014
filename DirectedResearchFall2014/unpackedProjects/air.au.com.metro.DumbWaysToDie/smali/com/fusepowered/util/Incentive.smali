.class public Lcom/fusepowered/util/Incentive;
.super Ljava/lang/Object;
.source "Incentive.java"


# instance fields
.field private amount:I

.field private claimConfirmed:Z

.field private incentiveId:I

.field private rewardItemId:Ljava/lang/String;

.field private rewardItemName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/fusepowered/util/Incentive;->amount:I

    return v0
.end method

.method public getIncentiveId()I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/fusepowered/util/Incentive;->incentiveId:I

    return v0
.end method

.method public getRewardItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/fusepowered/util/Incentive;->rewardItemId:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardItemName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fusepowered/util/Incentive;->rewardItemName:Ljava/lang/String;

    return-object v0
.end method

.method public isClaimConfirmed()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/fusepowered/util/Incentive;->claimConfirmed:Z

    return v0
.end method

.method public setAmount(I)V
    .locals 0
    .param p1, "amount"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/fusepowered/util/Incentive;->amount:I

    .line 22
    return-void
.end method

.method public setClaimConfirmed(Z)V
    .locals 0
    .param p1, "claimConfirmed"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/fusepowered/util/Incentive;->claimConfirmed:Z

    .line 41
    return-void
.end method

.method public setIncentiveId(I)V
    .locals 0
    .param p1, "incentiveId"    # I

    .prologue
    .line 15
    iput p1, p0, Lcom/fusepowered/util/Incentive;->incentiveId:I

    .line 16
    return-void
.end method

.method public setRewardItemId(Ljava/lang/String;)V
    .locals 0
    .param p1, "rewardItemId"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/fusepowered/util/Incentive;->rewardItemId:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setRewardItemName(Ljava/lang/String;)V
    .locals 0
    .param p1, "rewardItemName"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/fusepowered/util/Incentive;->rewardItemName:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Incentive [incentiveId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/fusepowered/util/Incentive;->incentiveId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", amount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fusepowered/util/Incentive;->amount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rewardItemId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/Incentive;->rewardItemId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rewardItemName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/Incentive;->rewardItemName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", claimConfirmed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/fusepowered/util/Incentive;->claimConfirmed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 51
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
