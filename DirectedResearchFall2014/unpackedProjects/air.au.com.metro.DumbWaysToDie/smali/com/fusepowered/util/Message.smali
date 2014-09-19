.class public Lcom/fusepowered/util/Message;
.super Ljava/lang/Object;
.source "Message.java"


# instance fields
.field private action:Ljava/lang/String;

.field private actionTitle:Ljava/lang/String;

.field private body:Ljava/lang/String;

.field private displayed:Z

.field private id:I

.field private isClicked:Z

.field private isUpgrade:Z

.field private isUrl:I

.field private mandatory:I

.field private max_views:I

.field private showOnView:I

.field private sticky:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 0
    .parameter "id"
    .parameter "sticky"
    .parameter "max_views"
    .parameter "showOnView"
    .parameter "isUrl"
    .parameter "mandatory"
    .parameter "title"
    .parameter "body"
    .parameter "action"
    .parameter "actionTitle"
    .parameter "displayed"
    .parameter "isClicked"
    .parameter "isUpgrade"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/fusepowered/util/Message;->id:I

    .line 28
    iput p2, p0, Lcom/fusepowered/util/Message;->sticky:I

    .line 29
    iput p3, p0, Lcom/fusepowered/util/Message;->max_views:I

    .line 30
    iput p4, p0, Lcom/fusepowered/util/Message;->showOnView:I

    .line 31
    iput p5, p0, Lcom/fusepowered/util/Message;->isUrl:I

    .line 32
    iput p6, p0, Lcom/fusepowered/util/Message;->mandatory:I

    .line 33
    iput-object p7, p0, Lcom/fusepowered/util/Message;->title:Ljava/lang/String;

    .line 34
    iput-object p8, p0, Lcom/fusepowered/util/Message;->body:Ljava/lang/String;

    .line 35
    iput-object p9, p0, Lcom/fusepowered/util/Message;->action:Ljava/lang/String;

    .line 36
    iput-object p10, p0, Lcom/fusepowered/util/Message;->actionTitle:Ljava/lang/String;

    .line 37
    iput-boolean p11, p0, Lcom/fusepowered/util/Message;->displayed:Z

    .line 38
    iput-boolean p12, p0, Lcom/fusepowered/util/Message;->isClicked:Z

    .line 39
    iput-boolean p13, p0, Lcom/fusepowered/util/Message;->isUpgrade:Z

    .line 40
    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/fusepowered/util/Message;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getActionTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/fusepowered/util/Message;->actionTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/fusepowered/util/Message;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/fusepowered/util/Message;->id:I

    return v0
.end method

.method public getIsUpgrade()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/fusepowered/util/Message;->isUpgrade:Z

    return v0
.end method

.method public getIsUrl()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/fusepowered/util/Message;->isUrl:I

    return v0
.end method

.method public getMandatory()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/fusepowered/util/Message;->mandatory:I

    return v0
.end method

.method public getMax_views()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/fusepowered/util/Message;->max_views:I

    return v0
.end method

.method public getShowOnView()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/fusepowered/util/Message;->showOnView:I

    return v0
.end method

.method public getSticky()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/fusepowered/util/Message;->sticky:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/fusepowered/util/Message;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isClicked()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/fusepowered/util/Message;->isClicked:Z

    return v0
.end method

.method public isDisplayed()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/fusepowered/util/Message;->displayed:Z

    return v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/fusepowered/util/Message;->action:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setActionTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "actionTitle"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/fusepowered/util/Message;->actionTitle:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setActionTtitle(Ljava/lang/String;)V
    .locals 0
    .parameter "actionTitle"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/fusepowered/util/Message;->actionTitle:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/fusepowered/util/Message;->body:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setClicked(Z)V
    .locals 0
    .parameter "isClicked"

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/fusepowered/util/Message;->isClicked:Z

    .line 123
    return-void
.end method

.method public setDisplayed(Z)V
    .locals 0
    .parameter "displayed"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/fusepowered/util/Message;->displayed:Z

    .line 91
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 46
    iput p1, p0, Lcom/fusepowered/util/Message;->id:I

    .line 47
    return-void
.end method

.method public setIsUpgrade(Z)V
    .locals 0
    .parameter "isUpgrade"

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/fusepowered/util/Message;->isUpgrade:Z

    .line 135
    return-void
.end method

.method public setIsUrl(I)V
    .locals 0
    .parameter "isUrl"

    .prologue
    .line 106
    iput p1, p0, Lcom/fusepowered/util/Message;->isUrl:I

    .line 107
    return-void
.end method

.method public setMandatory(I)V
    .locals 0
    .parameter "mandatory"

    .prologue
    .line 114
    iput p1, p0, Lcom/fusepowered/util/Message;->mandatory:I

    .line 115
    return-void
.end method

.method public setMax_views(I)V
    .locals 0
    .parameter "max_views"

    .prologue
    .line 130
    iput p1, p0, Lcom/fusepowered/util/Message;->max_views:I

    .line 131
    return-void
.end method

.method public setShowOnView(I)V
    .locals 0
    .parameter "showOnView"

    .prologue
    .line 58
    iput p1, p0, Lcom/fusepowered/util/Message;->showOnView:I

    .line 59
    return-void
.end method

.method public setSticky(I)V
    .locals 0
    .parameter "sticky"

    .prologue
    .line 52
    iput p1, p0, Lcom/fusepowered/util/Message;->sticky:I

    .line 53
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/fusepowered/util/Message;->title:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Message [id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/fusepowered/util/Message;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sticky="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fusepowered/util/Message;->sticky:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", max_views="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fusepowered/util/Message;->max_views:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", showOnView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fusepowered/util/Message;->showOnView:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fusepowered/util/Message;->isUrl:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mandatory="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fusepowered/util/Message;->mandatory:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/Message;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", body="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/Message;->body:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/Message;->action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", actionTitle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/Message;->actionTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", displayed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/fusepowered/util/Message;->displayed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isClicked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/fusepowered/util/Message;->isClicked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 152
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
