.class public Lcom/fusepowered/util/Mail;
.super Ljava/lang/Object;
.source "Mail.java"


# instance fields
.field private alias:Ljava/lang/String;

.field private date:Ljava/lang/String;

.field private fuseId:Ljava/lang/String;

.field private gift:Lcom/fusepowered/util/Gift;

.field private id:I

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/util/Gift;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "fuseId"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "date"    # Ljava/lang/String;
    .param p6, "gift"    # Lcom/fusepowered/util/Gift;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/fusepowered/util/Mail;->id:I

    .line 20
    iput-object p2, p0, Lcom/fusepowered/util/Mail;->alias:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/fusepowered/util/Mail;->fuseId:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/fusepowered/util/Mail;->message:Ljava/lang/String;

    .line 23
    iput-object p5, p0, Lcom/fusepowered/util/Mail;->date:Ljava/lang/String;

    .line 24
    iput-object p6, p0, Lcom/fusepowered/util/Mail;->gift:Lcom/fusepowered/util/Gift;

    .line 25
    return-void
.end method


# virtual methods
.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/fusepowered/util/Mail;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fusepowered/util/Mail;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getFuseId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/fusepowered/util/Mail;->fuseId:Ljava/lang/String;

    return-object v0
.end method

.method public getGift()Lcom/fusepowered/util/Gift;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fusepowered/util/Mail;->gift:Lcom/fusepowered/util/Gift;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/fusepowered/util/Mail;->id:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/fusepowered/util/Mail;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 0
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/fusepowered/util/Mail;->alias:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/fusepowered/util/Mail;->date:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setFuseId(Ljava/lang/String;)V
    .locals 0
    .param p1, "fuseId"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/fusepowered/util/Mail;->fuseId:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setGift(Lcom/fusepowered/util/Gift;)V
    .locals 0
    .param p1, "gift"    # Lcom/fusepowered/util/Gift;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/fusepowered/util/Mail;->gift:Lcom/fusepowered/util/Gift;

    .line 34
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/fusepowered/util/Mail;->id:I

    .line 88
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/fusepowered/util/Mail;->message:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Mail [id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/fusepowered/util/Mail;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", alias="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/Mail;->alias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fuseId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/Mail;->fuseId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", message="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/Mail;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", date="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/Mail;->date:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", gift="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/Mail;->gift:Lcom/fusepowered/util/Gift;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 100
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
