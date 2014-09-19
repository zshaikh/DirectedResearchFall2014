.class public Lcom/fusepowered/util/SignPost;
.super Ljava/lang/Object;
.source "SignPost.java"


# instance fields
.field private alias:Ljava/lang/String;

.field private date:Ljava/lang/String;

.field private fuseId:Ljava/lang/String;

.field private id:I

.field private message:Ljava/lang/String;

.field private messageId:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "messageId"
    .parameter "alias"
    .parameter "fuseId"
    .parameter "url"
    .parameter "message"
    .parameter "date"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/fusepowered/util/SignPost;->id:I

    .line 20
    iput p2, p0, Lcom/fusepowered/util/SignPost;->messageId:I

    .line 21
    iput-object p3, p0, Lcom/fusepowered/util/SignPost;->alias:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/fusepowered/util/SignPost;->fuseId:Ljava/lang/String;

    .line 23
    iput-object p5, p0, Lcom/fusepowered/util/SignPost;->url:Ljava/lang/String;

    .line 24
    iput-object p6, p0, Lcom/fusepowered/util/SignPost;->message:Ljava/lang/String;

    .line 25
    iput-object p7, p0, Lcom/fusepowered/util/SignPost;->date:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/fusepowered/util/SignPost;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fusepowered/util/SignPost;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getFuseId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/fusepowered/util/SignPost;->fuseId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/fusepowered/util/SignPost;->id:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/fusepowered/util/SignPost;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/fusepowered/util/SignPost;->messageId:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fusepowered/util/SignPost;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 0
    .parameter "alias"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/fusepowered/util/SignPost;->alias:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .parameter "date"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/fusepowered/util/SignPost;->date:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setFuseId(Ljava/lang/String;)V
    .locals 0
    .parameter "fuseId"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/fusepowered/util/SignPost;->fuseId:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 94
    iput p1, p0, Lcom/fusepowered/util/SignPost;->id:I

    .line 95
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/fusepowered/util/SignPost;->message:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setMessageId(I)V
    .locals 0
    .parameter "messageId"

    .prologue
    .line 87
    iput p1, p0, Lcom/fusepowered/util/SignPost;->messageId:I

    .line 88
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/fusepowered/util/SignPost;->url:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SignPost [id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/fusepowered/util/SignPost;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", alias="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/SignPost;->alias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fuseId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/SignPost;->fuseId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/SignPost;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", message="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/SignPost;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", date="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/SignPost;->date:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 106
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
