.class public Lcom/fusepowered/util/UserTransactionLog;
.super Ljava/lang/Object;
.source "UserTransactionLog.java"


# static fields
.field private static sdf:Ljava/text/SimpleDateFormat;


# instance fields
.field private alias:Ljava/lang/String;

.field private amountLost:I

.field private amountWon:I

.field private date:I

.field private eventType:Lcom/fusepowered/util/FuseAttackRobberyEventType;

.field private fuseId:Ljava/lang/String;

.field private id:I

.field private level:I

.field private wasWon:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy MM dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/fusepowered/util/UserTransactionLog;->sdf:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ILcom/fusepowered/util/FuseAttackRobberyEventType;ZIII)V
    .locals 0
    .parameter "id"
    .parameter "alias"
    .parameter "fuseId"
    .parameter "level"
    .parameter "eventType"
    .parameter "wasWon"
    .parameter "amountWon"
    .parameter "amountLost"
    .parameter "date"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/fusepowered/util/UserTransactionLog;->id:I

    .line 27
    iput-object p2, p0, Lcom/fusepowered/util/UserTransactionLog;->alias:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/fusepowered/util/UserTransactionLog;->fuseId:Ljava/lang/String;

    .line 29
    iput p4, p0, Lcom/fusepowered/util/UserTransactionLog;->level:I

    .line 30
    iput-object p5, p0, Lcom/fusepowered/util/UserTransactionLog;->eventType:Lcom/fusepowered/util/FuseAttackRobberyEventType;

    .line 31
    iput-boolean p6, p0, Lcom/fusepowered/util/UserTransactionLog;->wasWon:Z

    .line 32
    iput p7, p0, Lcom/fusepowered/util/UserTransactionLog;->amountWon:I

    .line 33
    iput p8, p0, Lcom/fusepowered/util/UserTransactionLog;->amountLost:I

    .line 34
    iput p9, p0, Lcom/fusepowered/util/UserTransactionLog;->date:I

    .line 35
    return-void
.end method


# virtual methods
.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/fusepowered/util/UserTransactionLog;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public getAmountLost()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/fusepowered/util/UserTransactionLog;->amountLost:I

    return v0
.end method

.method public getAmountWon()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/fusepowered/util/UserTransactionLog;->amountWon:I

    return v0
.end method

.method public getDate()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/fusepowered/util/UserTransactionLog;->date:I

    return v0
.end method

.method public getEventType()Lcom/fusepowered/util/FuseAttackRobberyEventType;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/fusepowered/util/UserTransactionLog;->eventType:Lcom/fusepowered/util/FuseAttackRobberyEventType;

    return-object v0
.end method

.method public getFuseId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fusepowered/util/UserTransactionLog;->fuseId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/fusepowered/util/UserTransactionLog;->id:I

    return v0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/fusepowered/util/UserTransactionLog;->level:I

    return v0
.end method

.method public getWasWon()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/fusepowered/util/UserTransactionLog;->wasWon:Z

    return v0
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 0
    .parameter "alias"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/fusepowered/util/UserTransactionLog;->alias:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setAmountLost(I)V
    .locals 0
    .parameter "amountLost"

    .prologue
    .line 98
    iput p1, p0, Lcom/fusepowered/util/UserTransactionLog;->amountLost:I

    .line 99
    return-void
.end method

.method public setAmountWon(I)V
    .locals 0
    .parameter "amountWon"

    .prologue
    .line 90
    iput p1, p0, Lcom/fusepowered/util/UserTransactionLog;->amountWon:I

    .line 91
    return-void
.end method

.method public setDate(I)V
    .locals 0
    .parameter "date"

    .prologue
    .line 106
    iput p1, p0, Lcom/fusepowered/util/UserTransactionLog;->date:I

    .line 107
    return-void
.end method

.method public setEventType(Lcom/fusepowered/util/FuseAttackRobberyEventType;)V
    .locals 0
    .parameter "eventType"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/fusepowered/util/UserTransactionLog;->eventType:Lcom/fusepowered/util/FuseAttackRobberyEventType;

    .line 75
    return-void
.end method

.method public setFuseId(Ljava/lang/String;)V
    .locals 0
    .parameter "fuseId"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/fusepowered/util/UserTransactionLog;->fuseId:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 42
    iput p1, p0, Lcom/fusepowered/util/UserTransactionLog;->id:I

    .line 43
    return-void
.end method

.method public setLevel(I)V
    .locals 0
    .parameter "level"

    .prologue
    .line 66
    iput p1, p0, Lcom/fusepowered/util/UserTransactionLog;->level:I

    .line 67
    return-void
.end method

.method public setWasWon(Z)V
    .locals 0
    .parameter "wasWon"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/fusepowered/util/UserTransactionLog;->wasWon:Z

    .line 83
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 111
    const-wide/16 v5, 0x3e8

    iget v7, p0, Lcom/fusepowered/util/UserTransactionLog;->date:I

    int-to-long v7, v7

    mul-long v3, v5, v7

    .line 112
    .local v3, ms:J
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 113
    .local v1, d:Ljava/util/Date;
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/fusepowered/util/UserTransactionLog;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " UTC"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, displayDate:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "UserTransactionLog [id="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/fusepowered/util/UserTransactionLog;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", alias="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/fusepowered/util/UserTransactionLog;->alias:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", fuseId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/fusepowered/util/UserTransactionLog;->fuseId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", level="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/fusepowered/util/UserTransactionLog;->level:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", eventType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/fusepowered/util/UserTransactionLog;->eventType:Lcom/fusepowered/util/FuseAttackRobberyEventType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", wasWon="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/fusepowered/util/UserTransactionLog;->wasWon:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", amountWon="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/fusepowered/util/UserTransactionLog;->amountWon:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", amountLost="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/fusepowered/util/UserTransactionLog;->amountLost:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", date="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 125
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
