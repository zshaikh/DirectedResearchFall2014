.class public Lcom/fusepowered/util/AdProvider;
.super Ljava/lang/Object;
.source "AdProvider.java"


# instance fields
.field private ids:Ljava/lang/String;

.field private interstitial:I

.field private keywords:Ljava/lang/String;

.field private provider_id:I

.field private test:Z

.field private value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIds()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fusepowered/util/AdProvider;->ids:Ljava/lang/String;

    return-object v0
.end method

.method public getInterstitial()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/fusepowered/util/AdProvider;->interstitial:I

    return v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/fusepowered/util/AdProvider;->keywords:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider_id()I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/fusepowered/util/AdProvider;->provider_id:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/fusepowered/util/AdProvider;->value:I

    return v0
.end method

.method public isTest()Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/fusepowered/util/AdProvider;->test:Z

    return v0
.end method

.method public setIds(Ljava/lang/String;)V
    .locals 0
    .param p1, "ids"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/fusepowered/util/AdProvider;->ids:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setInterstitial(I)V
    .locals 0
    .param p1, "interstitial"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/fusepowered/util/AdProvider;->interstitial:I

    .line 34
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 0
    .param p1, "keywords"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/fusepowered/util/AdProvider;->keywords:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setProvider_id(I)V
    .locals 0
    .param p1, "provider_id"    # I

    .prologue
    .line 15
    iput p1, p0, Lcom/fusepowered/util/AdProvider;->provider_id:I

    .line 16
    return-void
.end method

.method public setTest(Z)V
    .locals 0
    .param p1, "test"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/fusepowered/util/AdProvider;->test:Z

    .line 22
    return-void
.end method

.method public setValue(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/fusepowered/util/AdProvider;->value:I

    .line 28
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AdProvider [provider_id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/fusepowered/util/AdProvider;->provider_id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", test="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/fusepowered/util/AdProvider;->test:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fusepowered/util/AdProvider;->value:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", interstitial="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fusepowered/util/AdProvider;->interstitial:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", keywords="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/AdProvider;->keywords:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ids="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/AdProvider;->ids:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 56
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
