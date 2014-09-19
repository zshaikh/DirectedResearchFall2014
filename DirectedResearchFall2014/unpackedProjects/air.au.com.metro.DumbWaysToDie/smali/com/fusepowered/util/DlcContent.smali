.class public Lcom/fusepowered/util/DlcContent;
.super Ljava/lang/Object;
.source "DlcContent.java"


# instance fields
.field private autoDownload:Z

.field private bytes:I

.field private contentId:I

.field private downloadPath:Ljava/lang/String;

.field private id:I

.field private md5:Ljava/lang/String;

.field private parentId:I

.field private productId:Ljava/lang/String;

.field private purchased:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Z)V
    .locals 0
    .parameter "id"
    .parameter "parentId"
    .parameter "contentId"
    .parameter "downloadPath"
    .parameter "md5"
    .parameter "bytes"
    .parameter "purchased"
    .parameter "productId"
    .parameter "autoDownload"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/fusepowered/util/DlcContent;->id:I

    .line 22
    iput p2, p0, Lcom/fusepowered/util/DlcContent;->parentId:I

    .line 23
    iput p3, p0, Lcom/fusepowered/util/DlcContent;->contentId:I

    .line 24
    iput-object p4, p0, Lcom/fusepowered/util/DlcContent;->downloadPath:Ljava/lang/String;

    .line 25
    iput-object p5, p0, Lcom/fusepowered/util/DlcContent;->md5:Ljava/lang/String;

    .line 26
    iput p6, p0, Lcom/fusepowered/util/DlcContent;->bytes:I

    .line 27
    iput-boolean p7, p0, Lcom/fusepowered/util/DlcContent;->purchased:Z

    .line 28
    iput-object p8, p0, Lcom/fusepowered/util/DlcContent;->productId:Ljava/lang/String;

    .line 29
    iput-boolean p9, p0, Lcom/fusepowered/util/DlcContent;->autoDownload:Z

    .line 30
    return-void
.end method


# virtual methods
.method public getBytes()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/fusepowered/util/DlcContent;->bytes:I

    return v0
.end method

.method public getContentId()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/fusepowered/util/DlcContent;->contentId:I

    return v0
.end method

.method public getDownloadPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fusepowered/util/DlcContent;->downloadPath:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/fusepowered/util/DlcContent;->id:I

    return v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/fusepowered/util/DlcContent;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getParentId()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/fusepowered/util/DlcContent;->parentId:I

    return v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/fusepowered/util/DlcContent;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoDownload()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/fusepowered/util/DlcContent;->autoDownload:Z

    return v0
.end method

.method public isPurchased()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/fusepowered/util/DlcContent;->purchased:Z

    return v0
.end method

.method public setAutoDownload(Z)V
    .locals 0
    .parameter "autoDownload"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/fusepowered/util/DlcContent;->autoDownload:Z

    .line 92
    return-void
.end method

.method public setBytes(I)V
    .locals 0
    .parameter "bytes"

    .prologue
    .line 68
    iput p1, p0, Lcom/fusepowered/util/DlcContent;->bytes:I

    .line 69
    return-void
.end method

.method public setContentId(I)V
    .locals 0
    .parameter "contentId"

    .prologue
    .line 50
    iput p1, p0, Lcom/fusepowered/util/DlcContent;->contentId:I

    .line 51
    return-void
.end method

.method public setDownloadPath(Ljava/lang/String;)V
    .locals 0
    .parameter "downloadPath"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/fusepowered/util/DlcContent;->downloadPath:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 38
    iput p1, p0, Lcom/fusepowered/util/DlcContent;->id:I

    .line 39
    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0
    .parameter "md5"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/fusepowered/util/DlcContent;->md5:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setParentId(I)V
    .locals 0
    .parameter "parentId"

    .prologue
    .line 44
    iput p1, p0, Lcom/fusepowered/util/DlcContent;->parentId:I

    .line 45
    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 0
    .parameter "productId"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/fusepowered/util/DlcContent;->productId:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setPurchased(Z)V
    .locals 0
    .parameter "purchased"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/fusepowered/util/DlcContent;->purchased:Z

    .line 75
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DlcContent [id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/fusepowered/util/DlcContent;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", parentId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fusepowered/util/DlcContent;->parentId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", contentId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fusepowered/util/DlcContent;->contentId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", downloadPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/DlcContent;->downloadPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", md5="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/DlcContent;->md5:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fusepowered/util/DlcContent;->bytes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", purchased="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/fusepowered/util/DlcContent;->purchased:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", productId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/DlcContent;->productId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", autoDownload="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/fusepowered/util/DlcContent;->autoDownload:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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
