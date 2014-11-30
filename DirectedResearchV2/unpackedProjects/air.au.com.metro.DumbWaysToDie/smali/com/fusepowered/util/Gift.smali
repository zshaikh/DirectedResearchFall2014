.class public Lcom/fusepowered/util/Gift;
.super Ljava/lang/Object;
.source "Gift.java"


# instance fields
.field private amount:I

.field private id:I

.field private name:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "amount"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/fusepowered/util/Gift;->id:I

    .line 15
    iput-object p2, p0, Lcom/fusepowered/util/Gift;->name:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/fusepowered/util/Gift;->url:Ljava/lang/String;

    .line 17
    iput p4, p0, Lcom/fusepowered/util/Gift;->amount:I

    .line 18
    return-void
.end method


# virtual methods
.method public getAmount()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/fusepowered/util/Gift;->amount:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/fusepowered/util/Gift;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fusepowered/util/Gift;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fusepowered/util/Gift;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(I)V
    .locals 0
    .param p1, "amount"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/fusepowered/util/Gift;->amount:I

    .line 50
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/fusepowered/util/Gift;->id:I

    .line 26
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/fusepowered/util/Gift;->name:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/fusepowered/util/Gift;->url:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Gift [id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/fusepowered/util/Gift;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/Gift;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/Gift;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", amount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fusepowered/util/Gift;->amount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 59
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
