.class public Lcom/fusepowered/util/VerifiedPurchase;
.super Ljava/lang/Object;
.source "VerifiedPurchase.java"


# instance fields
.field public developerPayload:Ljava/lang/String;

.field public orderId:Ljava/lang/String;

.field public productId:Ljava/lang/String;

.field public purchaseState:Ljava/lang/String;

.field public purchaseTime:J

.field public purchaseToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .param p1, "purchaseState"    # Ljava/lang/String;
    .param p2, "purchaseToken"    # Ljava/lang/String;
    .param p3, "productId"    # Ljava/lang/String;
    .param p4, "orderId"    # Ljava/lang/String;
    .param p5, "purchaseTime"    # J
    .param p7, "developerPayload"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/fusepowered/util/VerifiedPurchase;->purchaseState:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/fusepowered/util/VerifiedPurchase;->purchaseToken:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/fusepowered/util/VerifiedPurchase;->productId:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/fusepowered/util/VerifiedPurchase;->orderId:Ljava/lang/String;

    .line 19
    iput-wide p5, p0, Lcom/fusepowered/util/VerifiedPurchase;->purchaseTime:J

    .line 20
    iput-object p7, p0, Lcom/fusepowered/util/VerifiedPurchase;->developerPayload:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public getDeveloperPayload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/fusepowered/util/VerifiedPurchase;->developerPayload:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/fusepowered/util/VerifiedPurchase;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fusepowered/util/VerifiedPurchase;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fusepowered/util/VerifiedPurchase;->purchaseState:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseTime()J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/fusepowered/util/VerifiedPurchase;->purchaseTime:J

    return-wide v0
.end method

.method public getPurchaseToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fusepowered/util/VerifiedPurchase;->purchaseToken:Ljava/lang/String;

    return-object v0
.end method

.method public setDeveloperPayload(Ljava/lang/String;)V
    .locals 0
    .param p1, "developerPayload"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/fusepowered/util/VerifiedPurchase;->developerPayload:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setOrderId(Ljava/lang/String;)V
    .locals 0
    .param p1, "orderId"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/fusepowered/util/VerifiedPurchase;->orderId:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 0
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/fusepowered/util/VerifiedPurchase;->productId:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setPurchaseState(Ljava/lang/String;)V
    .locals 0
    .param p1, "purchaseState"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/fusepowered/util/VerifiedPurchase;->purchaseState:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setPurchaseTime(J)V
    .locals 0
    .param p1, "purchaseTime"    # J

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/fusepowered/util/VerifiedPurchase;->purchaseTime:J

    .line 61
    return-void
.end method

.method public setPurchaseToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "purchaseToken"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/fusepowered/util/VerifiedPurchase;->purchaseToken:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VerifiedPurchase [purchaseState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fusepowered/util/VerifiedPurchase;->purchaseState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", purchaseToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/VerifiedPurchase;->purchaseToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", productId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/VerifiedPurchase;->productId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", orderId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/VerifiedPurchase;->orderId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", purchaseTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/fusepowered/util/VerifiedPurchase;->purchaseTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", developerPayload="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/VerifiedPurchase;->developerPayload:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 80
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
