.class public Lcom/fusepowered/util/InAppItem;
.super Ljava/lang/Object;
.source "InAppItem.java"


# instance fields
.field private autofill:Z

.field private autotranslate:Z

.field private id:Ljava/lang/String;

.field private inappCountryPrices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/InappCountryPrice;",
            ">;"
        }
    .end annotation
.end field

.field private localeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private price:F

.field private publishState:Ljava/lang/String;

.field private purchaseState:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;ZLjava/util/ArrayList;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "price"    # F
    .param p4, "publishState"    # Ljava/lang/String;
    .param p5, "purchaseState"    # Ljava/lang/String;
    .param p6, "autotranslate"    # Z
    .param p8, "autofill"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "F",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/Locale;",
            ">;Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/InappCountryPrice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p7, "localeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Locale;>;"
    .local p9, "inappCountryPrices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/InappCountryPrice;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/fusepowered/util/InAppItem;->id:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/fusepowered/util/InAppItem;->name:Ljava/lang/String;

    .line 24
    iput p3, p0, Lcom/fusepowered/util/InAppItem;->price:F

    .line 25
    iput-object p4, p0, Lcom/fusepowered/util/InAppItem;->publishState:Ljava/lang/String;

    .line 26
    iput-object p5, p0, Lcom/fusepowered/util/InAppItem;->purchaseState:Ljava/lang/String;

    .line 27
    iput-boolean p6, p0, Lcom/fusepowered/util/InAppItem;->autotranslate:Z

    .line 28
    iput-object p7, p0, Lcom/fusepowered/util/InAppItem;->localeList:Ljava/util/ArrayList;

    .line 29
    iput-boolean p8, p0, Lcom/fusepowered/util/InAppItem;->autofill:Z

    .line 30
    iput-object p9, p0, Lcom/fusepowered/util/InAppItem;->inappCountryPrices:Ljava/util/ArrayList;

    .line 31
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fusepowered/util/InAppItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getInappCountryPrices()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/InappCountryPrice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/fusepowered/util/InAppItem;->inappCountryPrices:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLocaleList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/Locale;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/fusepowered/util/InAppItem;->localeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fusepowered/util/InAppItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()F
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/fusepowered/util/InAppItem;->price:F

    return v0
.end method

.method public getPublishState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fusepowered/util/InAppItem;->publishState:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/fusepowered/util/InAppItem;->purchaseState:Ljava/lang/String;

    return-object v0
.end method

.method public isAutofill()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/fusepowered/util/InAppItem;->autofill:Z

    return v0
.end method

.method public isAutotranslate()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/fusepowered/util/InAppItem;->autotranslate:Z

    return v0
.end method

.method public setAutofill(Z)V
    .locals 0
    .param p1, "autofill"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/fusepowered/util/InAppItem;->autofill:Z

    .line 80
    return-void
.end method

.method public setAutotranslate(Z)V
    .locals 0
    .param p1, "autotranslate"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/fusepowered/util/InAppItem;->autotranslate:Z

    .line 68
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/fusepowered/util/InAppItem;->id:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setInappCountryPrices(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/InappCountryPrice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "inappCountryPrices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/InappCountryPrice;>;"
    iput-object p1, p0, Lcom/fusepowered/util/InAppItem;->inappCountryPrices:Ljava/util/ArrayList;

    .line 87
    return-void
.end method

.method public setLocaleList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/Locale;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "localeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Locale;>;"
    iput-object p1, p0, Lcom/fusepowered/util/InAppItem;->localeList:Ljava/util/ArrayList;

    .line 74
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/fusepowered/util/InAppItem;->name:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setPrice(F)V
    .locals 0
    .param p1, "price"    # F

    .prologue
    .line 49
    iput p1, p0, Lcom/fusepowered/util/InAppItem;->price:F

    .line 50
    return-void
.end method

.method public setPublishState(Ljava/lang/String;)V
    .locals 0
    .param p1, "publishState"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/fusepowered/util/InAppItem;->publishState:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setPurchaseState(Ljava/lang/String;)V
    .locals 0
    .param p1, "purchaseState"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/fusepowered/util/InAppItem;->purchaseState:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InAppItem [id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fusepowered/util/InAppItem;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/InAppItem;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", price="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fusepowered/util/InAppItem;->price:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", publishState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/InAppItem;->publishState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", purchaseState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/InAppItem;->purchaseState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", autotranslate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/fusepowered/util/InAppItem;->autotranslate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", localeList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/InAppItem;->localeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", autofill="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/fusepowered/util/InAppItem;->autofill:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", inappCountryPrices="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/InAppItem;->inappCountryPrices:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 101
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
