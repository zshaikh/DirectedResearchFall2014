.class public Lcom/fusepowered/util/InappCountryPrice;
.super Ljava/lang/Object;
.source "InappCountryPrice.java"


# instance fields
.field private country:Ljava/lang/String;

.field private price:F


# direct methods
.method public constructor <init>(Ljava/lang/String;F)V
    .locals 0
    .parameter "country"
    .parameter "price"

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/fusepowered/util/InappCountryPrice;->country:Ljava/lang/String;

    .line 11
    iput p2, p0, Lcom/fusepowered/util/InappCountryPrice;->price:F

    .line 12
    return-void
.end method


# virtual methods
.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/fusepowered/util/InappCountryPrice;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()F
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/fusepowered/util/InappCountryPrice;->price:F

    return v0
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0
    .parameter "country"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/fusepowered/util/InappCountryPrice;->country:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setPrice(F)V
    .locals 0
    .parameter "price"

    .prologue
    .line 27
    iput p1, p0, Lcom/fusepowered/util/InappCountryPrice;->price:F

    .line 28
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InappCountryPrice [country="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fusepowered/util/InappCountryPrice;->country:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", price="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fusepowered/util/InappCountryPrice;->price:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 35
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
