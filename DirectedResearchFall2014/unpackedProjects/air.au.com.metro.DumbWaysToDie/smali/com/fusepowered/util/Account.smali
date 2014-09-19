.class public Lcom/fusepowered/util/Account;
.super Ljava/lang/Object;
.source "Account.java"


# instance fields
.field private accountId:Ljava/lang/String;

.field private accountType:Lcom/fusepowered/util/AccountType;

.field private alias:Ljava/lang/String;

.field public errorCode:I

.field private fuseId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "alias"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/fusepowered/util/Account;->alias:Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/util/Account;->accountId:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public getAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/fusepowered/util/Account;->accountId:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountType()Lcom/fusepowered/util/AccountType;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fusepowered/util/Account;->accountType:Lcom/fusepowered/util/AccountType;

    return-object v0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fusepowered/util/Account;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public getFuseId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fusepowered/util/Account;->fuseId:Ljava/lang/String;

    return-object v0
.end method

.method public setAccountId(Ljava/lang/String;)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/fusepowered/util/Account;->accountId:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setAccountType(Lcom/fusepowered/util/AccountType;)V
    .locals 0
    .parameter "accountType"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/fusepowered/util/Account;->accountType:Lcom/fusepowered/util/AccountType;

    .line 33
    return-void
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 0
    .parameter "alias"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/fusepowered/util/Account;->alias:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setFuseId(Ljava/lang/String;)V
    .locals 0
    .parameter "fuseId"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/fusepowered/util/Account;->fuseId:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Account [accountId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fusepowered/util/Account;->accountId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", alias="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/Account;->alias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fuseId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/Account;->fuseId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", accountType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/Account;->accountType:Lcom/fusepowered/util/AccountType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 48
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
