.class public Lcom/fusepowered/util/GameValue;
.super Ljava/lang/Object;
.source "GameValue.java"


# instance fields
.field isBinary:Z

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter "value"
    .parameter "isBinary"

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/fusepowered/util/GameValue;->value:Ljava/lang/String;

    .line 10
    iput-boolean p2, p0, Lcom/fusepowered/util/GameValue;->isBinary:Z

    .line 11
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/fusepowered/util/GameValue;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isBinary()Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/fusepowered/util/GameValue;->isBinary:Z

    return v0
.end method

.method public setBinary(Z)V
    .locals 0
    .parameter "isBinary"

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/fusepowered/util/GameValue;->isBinary:Z

    .line 23
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/fusepowered/util/GameValue;->value:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GameValue [value="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fusepowered/util/GameValue;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isBinary="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/fusepowered/util/GameValue;->isBinary:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 30
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
