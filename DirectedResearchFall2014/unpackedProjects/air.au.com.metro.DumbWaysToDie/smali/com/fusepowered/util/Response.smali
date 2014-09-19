.class public Lcom/fusepowered/util/Response;
.super Ljava/lang/Object;
.source "Response.java"


# instance fields
.field private xml:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getXml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/fusepowered/util/Response;->xml:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 16
    iget-object v0, p0, Lcom/fusepowered/util/Response;->xml:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/util/Response;->xml:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setXml(Ljava/lang/String;)V
    .locals 0
    .parameter "xml"

    .prologue
    .line 12
    iput-object p1, p0, Lcom/fusepowered/util/Response;->xml:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Response [xml="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fusepowered/util/Response;->xml:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 23
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
