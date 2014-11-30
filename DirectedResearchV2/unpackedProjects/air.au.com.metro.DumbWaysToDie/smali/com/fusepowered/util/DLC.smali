.class public Lcom/fusepowered/util/DLC;
.super Ljava/lang/Object;
.source "DLC.java"


# instance fields
.field private bytes:I

.field private contentId:I

.field private dlcContents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/DlcContent;",
            ">;"
        }
    .end annotation
.end field

.field private id:I

.field private numFiles:I

.field private productId:Ljava/lang/String;

.field private update:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(IIZIILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "numFiles"    # I
    .param p3, "update"    # Z
    .param p4, "bytes"    # I
    .param p5, "contentId"    # I
    .param p6, "productId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZII",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/DlcContent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p7, "dlcContents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/DlcContent;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/fusepowered/util/DLC;->id:I

    .line 21
    iput p2, p0, Lcom/fusepowered/util/DLC;->numFiles:I

    .line 22
    iput-boolean p3, p0, Lcom/fusepowered/util/DLC;->update:Z

    .line 23
    iput p4, p0, Lcom/fusepowered/util/DLC;->bytes:I

    .line 24
    iput p5, p0, Lcom/fusepowered/util/DLC;->contentId:I

    .line 25
    iput-object p6, p0, Lcom/fusepowered/util/DLC;->productId:Ljava/lang/String;

    .line 26
    iput-object p7, p0, Lcom/fusepowered/util/DLC;->dlcContents:Ljava/util/ArrayList;

    .line 27
    return-void
.end method


# virtual methods
.method public getBytes()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/fusepowered/util/DLC;->bytes:I

    return v0
.end method

.method public getContentId()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/fusepowered/util/DLC;->contentId:I

    return v0
.end method

.method public getDlcContents()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/DlcContent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/fusepowered/util/DLC;->dlcContents:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/fusepowered/util/DLC;->id:I

    return v0
.end method

.method public getNumFiles()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/fusepowered/util/DLC;->numFiles:I

    return v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/fusepowered/util/DLC;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public isUpdate()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/fusepowered/util/DLC;->update:Z

    return v0
.end method

.method public setBytes(I)V
    .locals 0
    .param p1, "bytes"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/fusepowered/util/DLC;->bytes:I

    .line 52
    return-void
.end method

.method public setContentId(I)V
    .locals 0
    .param p1, "contentId"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/fusepowered/util/DLC;->contentId:I

    .line 58
    return-void
.end method

.method public setDlcContents(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/DlcContent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "dlcContents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/DlcContent;>;"
    iput-object p1, p0, Lcom/fusepowered/util/DLC;->dlcContents:Ljava/util/ArrayList;

    .line 70
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/fusepowered/util/DLC;->id:I

    .line 34
    return-void
.end method

.method public setNumFiles(I)V
    .locals 0
    .param p1, "numFiles"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/fusepowered/util/DLC;->numFiles:I

    .line 40
    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 0
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/fusepowered/util/DLC;->productId:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setUpdate(Z)V
    .locals 0
    .param p1, "update"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/fusepowered/util/DLC;->update:Z

    .line 46
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DLC [id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/fusepowered/util/DLC;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", numFiles="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/fusepowered/util/DLC;->numFiles:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", update="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/fusepowered/util/DLC;->update:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/fusepowered/util/DLC;->bytes:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", contentId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/fusepowered/util/DLC;->contentId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", productId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/fusepowered/util/DLC;->productId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dlcContents=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 81
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/fusepowered/util/DLC;->dlcContents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fusepowered/util/DlcContent;

    .line 82
    .local v1, "dlcContent":Lcom/fusepowered/util/DlcContent;
    invoke-virtual {v1}, Lcom/fusepowered/util/DlcContent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 85
    .end local v1    # "dlcContent":Lcom/fusepowered/util/DlcContent;
    :cond_0
    const-string v3, "]]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
