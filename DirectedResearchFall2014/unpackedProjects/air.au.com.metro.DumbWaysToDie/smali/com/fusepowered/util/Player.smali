.class public Lcom/fusepowered/util/Player;
.super Ljava/lang/Object;
.source "Player.java"


# instance fields
.field private accountId:Ljava/lang/String;

.field private alias:Ljava/lang/String;

.field private canAttack:Z

.field private fuseId:Ljava/lang/String;

.field private level:I

.field private pending:I

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public getAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/fusepowered/util/Player;->accountId:Ljava/lang/String;

    return-object v0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fusepowered/util/Player;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public getCanAttack()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/fusepowered/util/Player;->canAttack:Z

    return v0
.end method

.method public getFuseId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fusepowered/util/Player;->fuseId:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/fusepowered/util/Player;->level:I

    return v0
.end method

.method public getPending()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/fusepowered/util/Player;->pending:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fusepowered/util/Player;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setAccountId(Ljava/lang/String;)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/fusepowered/util/Player;->accountId:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 0
    .parameter "alias"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/fusepowered/util/Player;->alias:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setCanAttack(Z)V
    .locals 0
    .parameter "canAttack"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/fusepowered/util/Player;->canAttack:Z

    .line 69
    return-void
.end method

.method public setFuseId(Ljava/lang/String;)V
    .locals 0
    .parameter "fuseId"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/fusepowered/util/Player;->fuseId:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setLevel(I)V
    .locals 0
    .parameter "level"

    .prologue
    .line 52
    iput p1, p0, Lcom/fusepowered/util/Player;->level:I

    .line 53
    return-void
.end method

.method public setPending(I)V
    .locals 0
    .parameter "pending"

    .prologue
    .line 60
    iput p1, p0, Lcom/fusepowered/util/Player;->pending:I

    .line 61
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/fusepowered/util/Player;->type:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Player [fuseId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fusepowered/util/Player;->fuseId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", accountId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/Player;->accountId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", alias="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/Player;->alias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/Player;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fusepowered/util/Player;->level:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pending="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fusepowered/util/Player;->pending:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", canAttack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/fusepowered/util/Player;->canAttack:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 81
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
