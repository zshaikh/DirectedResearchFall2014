.class public Lcom/fusepowered/util/ChatMessage;
.super Ljava/lang/Object;
.source "ChatMessage.java"


# static fields
.field private static sdf:Ljava/text/SimpleDateFormat;


# instance fields
.field private alias:Ljava/lang/String;

.field private date:I

.field private fuseId:Ljava/lang/String;

.field private id:I

.field private level:I

.field private message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy MM dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/fusepowered/util/ChatMessage;->sdf:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "fuseId"    # Ljava/lang/String;
    .param p4, "level"    # I
    .param p5, "message"    # Ljava/lang/String;
    .param p6, "date"    # I

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/fusepowered/util/ChatMessage;->id:I

    .line 24
    iput-object p2, p0, Lcom/fusepowered/util/ChatMessage;->alias:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/fusepowered/util/ChatMessage;->fuseId:Ljava/lang/String;

    .line 26
    iput p4, p0, Lcom/fusepowered/util/ChatMessage;->level:I

    .line 27
    iput-object p5, p0, Lcom/fusepowered/util/ChatMessage;->message:Ljava/lang/String;

    .line 28
    iput p6, p0, Lcom/fusepowered/util/ChatMessage;->date:I

    .line 29
    return-void
.end method


# virtual methods
.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fusepowered/util/ChatMessage;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/fusepowered/util/ChatMessage;->date:I

    return v0
.end method

.method public getFuseId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/fusepowered/util/ChatMessage;->fuseId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/fusepowered/util/ChatMessage;->id:I

    return v0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/fusepowered/util/ChatMessage;->level:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/fusepowered/util/ChatMessage;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 0
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/fusepowered/util/ChatMessage;->alias:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setDate(I)V
    .locals 0
    .param p1, "date"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/fusepowered/util/ChatMessage;->date:I

    .line 48
    return-void
.end method

.method public setFuseId(Ljava/lang/String;)V
    .locals 0
    .param p1, "fuseId"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/fusepowered/util/ChatMessage;->fuseId:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/fusepowered/util/ChatMessage;->id:I

    .line 92
    return-void
.end method

.method public setLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/fusepowered/util/ChatMessage;->level:I

    .line 38
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/fusepowered/util/ChatMessage;->message:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 96
    const-wide/16 v5, 0x3e8

    iget v7, p0, Lcom/fusepowered/util/ChatMessage;->date:I

    int-to-long v7, v7

    mul-long v3, v5, v7

    .line 97
    .local v3, "ms":J
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 98
    .local v1, "d":Ljava/util/Date;
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/fusepowered/util/ChatMessage;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " UTC"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "displayDate":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ChatMessage [id="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/fusepowered/util/ChatMessage;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", alias="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/fusepowered/util/ChatMessage;->alias:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", fuseId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/fusepowered/util/ChatMessage;->fuseId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", level="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/fusepowered/util/ChatMessage;->level:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", message="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/fusepowered/util/ChatMessage;->message:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", date="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 107
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
