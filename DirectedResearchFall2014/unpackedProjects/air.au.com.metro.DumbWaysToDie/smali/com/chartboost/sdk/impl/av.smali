.class public Lcom/chartboost/sdk/impl/av;
.super Lcom/chartboost/sdk/impl/au;
.source "SourceFile"


# instance fields
.field final b:Lcom/chartboost/sdk/impl/aj;


# virtual methods
.method public b()Lcom/chartboost/sdk/impl/aj;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/chartboost/sdk/impl/av;->b:Lcom/chartboost/sdk/impl/aj;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 40
    instance-of v0, p1, Lcom/chartboost/sdk/impl/av;

    if-nez v0, :cond_0

    move v0, v2

    .line 44
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .line 43
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    check-cast p1, Lcom/chartboost/sdk/impl/av;

    .line 44
    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p0, Lcom/chartboost/sdk/impl/av;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/chartboost/sdk/impl/av;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chartboost/sdk/impl/av;->b:Lcom/chartboost/sdk/impl/aj;

    iget-object v1, p1, Lcom/chartboost/sdk/impl/av;->b:Lcom/chartboost/sdk/impl/aj;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/chartboost/sdk/impl/av;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/av;->b:Lcom/chartboost/sdk/impl/aj;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
