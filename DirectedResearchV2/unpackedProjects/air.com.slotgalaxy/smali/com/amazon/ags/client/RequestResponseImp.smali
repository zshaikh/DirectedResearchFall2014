.class public Lcom/amazon/ags/client/RequestResponseImp;
.super Ljava/lang/Object;
.source "RequestResponseImp.java"

# interfaces
.implements Lcom/amazon/ags/api/RequestResponse;


# instance fields
.field private errorCode:Lcom/amazon/ags/api/ErrorCode;

.field private responseCode:I

.field private userData:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "responseCode"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/amazon/ags/client/RequestResponseImp;->responseCode:I

    .line 28
    sget-object v0, Lcom/amazon/ags/api/ErrorCode;->NONE:Lcom/amazon/ags/api/ErrorCode;

    iput-object v0, p0, Lcom/amazon/ags/client/RequestResponseImp;->errorCode:Lcom/amazon/ags/api/ErrorCode;

    .line 29
    return-void
.end method

.method public constructor <init>(ILcom/amazon/ags/api/ErrorCode;)V
    .locals 2
    .param p1, "responseCode"    # I
    .param p2, "errorCode"    # Lcom/amazon/ags/api/ErrorCode;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    if-nez p2, :cond_0

    .line 19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "errorCode must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_0
    iput p1, p0, Lcom/amazon/ags/client/RequestResponseImp;->responseCode:I

    .line 23
    iput-object p2, p0, Lcom/amazon/ags/client/RequestResponseImp;->errorCode:Lcom/amazon/ags/api/ErrorCode;

    .line 24
    return-void
.end method


# virtual methods
.method public final getError()Lcom/amazon/ags/api/ErrorCode;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/amazon/ags/client/RequestResponseImp;->errorCode:Lcom/amazon/ags/api/ErrorCode;

    return-object v0
.end method

.method public getEventType()I
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public final getResponseCode()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/amazon/ags/client/RequestResponseImp;->responseCode:I

    return v0
.end method

.method public final getUserData()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/amazon/ags/client/RequestResponseImp;->userData:[Ljava/lang/Object;

    return-object v0
.end method

.method public final isError()Z
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/amazon/ags/client/RequestResponseImp;->getError()Lcom/amazon/ags/api/ErrorCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ags/api/ErrorCode;->isError()Z

    move-result v0

    return v0
.end method

.method protected final setError(Lcom/amazon/ags/api/ErrorCode;)V
    .locals 0
    .param p1, "error"    # Lcom/amazon/ags/api/ErrorCode;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/amazon/ags/client/RequestResponseImp;->errorCode:Lcom/amazon/ags/api/ErrorCode;

    .line 97
    return-void
.end method

.method protected final setResponseCode(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/amazon/ags/client/RequestResponseImp;->responseCode:I

    .line 105
    return-void
.end method

.method public final setUserData([Ljava/lang/Object;)V
    .locals 0
    .param p1, "userData"    # [Ljava/lang/Object;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/amazon/ags/client/RequestResponseImp;->userData:[Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResponseCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/amazon/ags/client/RequestResponseImp;->responseCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/amazon/ags/client/RequestResponseImp;->errorCode:Lcom/amazon/ags/api/ErrorCode;

    if-eqz v1, :cond_0

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n ErrorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/ags/client/RequestResponseImp;->errorCode:Lcom/amazon/ags/api/ErrorCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/amazon/ags/client/RequestResponseImp;->userData:[Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/ags/client/RequestResponseImp;->userData:[Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n requestType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/ags/client/RequestResponseImp;->getEventType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    return-object v0
.end method
