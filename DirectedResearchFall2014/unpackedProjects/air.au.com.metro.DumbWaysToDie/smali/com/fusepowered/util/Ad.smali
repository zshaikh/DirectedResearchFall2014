.class public Lcom/fusepowered/util/Ad;
.super Ljava/lang/Object;
.source "Ad.java"


# static fields
.field public static final AD_PROVIDERS:I = 0x5

.field public static final AD_PROVIDER_APPLIFIER:I = 0x4

.field public static final AD_PROVIDER_FUSE:I = 0x1

.field public static final AD_PROVIDER_MILLENIAL:I = 0x3

.field public static final AD_PROVIDER_MOPUB:I = 0x2

.field public static final AD_PROVIDER_NONE:I = 0x0

.field public static final AD_PROVIDER_VUNGLE:I = 0x5


# instance fields
.field private action:Ljava/lang/String;

.field private attributes:Ljava/lang/String;

.field private displayed:Z

.field private htmlBody:Ljava/lang/String;

.field private id:I

.field public lh:I

.field public lw:I

.field public o:I

.field public ph:I

.field public phoneLandscape:Ljava/lang/String;

.field public phonePortrait:Ljava/lang/String;

.field public pw:I

.field public tabletLandscape:Ljava/lang/String;

.field public tabletPortrait:Ljava/lang/String;

.field public type:I

.field public waterfall:[I


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-array v1, v4, [I

    iput-object v1, p0, Lcom/fusepowered/util/Ad;->waterfall:[I

    .line 42
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 43
    iget-object v1, p0, Lcom/fusepowered/util/Ad;->waterfall:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    .line 45
    const-string v1, "AD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This is the type index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " This is the type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fusepowered/util/Ad;->waterfall:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 46
    :cond_1
    return-void
.end method

.method public static isValidAdType(I)Z
    .locals 1
    .param p0, "AdType"    # I

    .prologue
    .line 106
    packed-switch p0, :pswitch_data_0

    .line 116
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 114
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/fusepowered/util/Ad;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getHtmlBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/fusepowered/util/Ad;->htmlBody:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/fusepowered/util/Ad;->id:I

    return v0
.end method

.method public getScreenAttributes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/fusepowered/util/Ad;->attributes:Ljava/lang/String;

    return-object v0
.end method

.method public hasHtmlBody()Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/fusepowered/util/Ad;->htmlBody:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/util/Ad;->htmlBody:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDisplayed()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/fusepowered/util/Ad;->displayed:Z

    return v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/fusepowered/util/Ad;->action:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setDisplayed(Z)V
    .locals 0
    .param p1, "displayed"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/fusepowered/util/Ad;->displayed:Z

    .line 91
    return-void
.end method

.method public setHtmlBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "htmlBody"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/fusepowered/util/Ad;->htmlBody:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/fusepowered/util/Ad;->id:I

    .line 54
    return-void
.end method

.method public setScreenAttributes(Ljava/lang/String;)V
    .locals 0
    .param p1, "att"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/fusepowered/util/Ad;->attributes:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ad [id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/fusepowered/util/Ad;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", htmlBody="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/Ad;->htmlBody:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/Ad;->action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", displayed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/fusepowered/util/Ad;->displayed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 125
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public waterfallContains(I)Z
    .locals 2
    .param p1, "AdType"    # I

    .prologue
    .line 95
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/fusepowered/util/Ad;->waterfall:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/fusepowered/util/Ad;->waterfall:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 98
    const/4 v1, 0x1

    .line 100
    :goto_1
    return v1

    .line 95
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
