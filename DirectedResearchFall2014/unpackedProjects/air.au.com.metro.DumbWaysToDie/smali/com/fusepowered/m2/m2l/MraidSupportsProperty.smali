.class Lcom/fusepowered/m2/m2l/MraidSupportsProperty;
.super Lcom/fusepowered/m2/m2l/MraidProperty;
.source "MraidProperty.java"


# instance fields
.field private calendar:Z

.field private inlineVideo:Z

.field private sms:Z

.field private storePicture:Z

.field private tel:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/MraidProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public toJsonPair()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v2, ", "

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "supports: {sms: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    iget-boolean v1, p0, Lcom/fusepowered/m2/m2l/MraidSupportsProperty;->sms:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 133
    const-string v1, "tel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/fusepowered/m2/m2l/MraidSupportsProperty;->tel:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 134
    const-string v1, "calendar: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/fusepowered/m2/m2l/MraidSupportsProperty;->calendar:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 135
    const-string v1, "storePicture: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/fusepowered/m2/m2l/MraidSupportsProperty;->storePicture:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 136
    const-string v1, "inlineVideo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/fusepowered/m2/m2l/MraidSupportsProperty;->inlineVideo:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withCalendar(Z)Lcom/fusepowered/m2/m2l/MraidSupportsProperty;
    .locals 0
    .parameter "value"

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/fusepowered/m2/m2l/MraidSupportsProperty;->calendar:Z

    .line 152
    return-object p0
.end method

.method public withInlineVideo(Z)Lcom/fusepowered/m2/m2l/MraidSupportsProperty;
    .locals 0
    .parameter "value"

    .prologue
    .line 161
    iput-boolean p1, p0, Lcom/fusepowered/m2/m2l/MraidSupportsProperty;->inlineVideo:Z

    .line 162
    return-object p0
.end method

.method public withSms(Z)Lcom/fusepowered/m2/m2l/MraidSupportsProperty;
    .locals 0
    .parameter "value"

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/fusepowered/m2/m2l/MraidSupportsProperty;->sms:Z

    .line 141
    return-object p0
.end method

.method public withStorePicture(Z)Lcom/fusepowered/m2/m2l/MraidSupportsProperty;
    .locals 0
    .parameter "value"

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/fusepowered/m2/m2l/MraidSupportsProperty;->storePicture:Z

    .line 157
    return-object p0
.end method

.method public withTel(Z)Lcom/fusepowered/m2/m2l/MraidSupportsProperty;
    .locals 0
    .parameter "value"

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/fusepowered/m2/m2l/MraidSupportsProperty;->tel:Z

    .line 147
    return-object p0
.end method
