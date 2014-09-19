.class public Lcom/inmobi/androidsdk/impl/IMAdUnit;
.super Ljava/lang/Object;
.source "IMAdUnit.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;,
        Lcom/inmobi/androidsdk/impl/IMAdUnit$AdTypes;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6ed97537f968e9f2L


# instance fields
.field private a:Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;

.field private b:Lcom/inmobi/androidsdk/impl/IMAdUnit$AdTypes;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget-object v0, Lcom/inmobi/androidsdk/impl/IMAdUnit$AdTypes;->NONE:Lcom/inmobi/androidsdk/impl/IMAdUnit$AdTypes;

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/IMAdUnit;->b:Lcom/inmobi/androidsdk/impl/IMAdUnit$AdTypes;

    .line 51
    sget-object v0, Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;->AdActionName_Web:Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/IMAdUnit;->a:Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;

    .line 52
    return-void
.end method

.method public static adActionNamefromString(Ljava/lang/String;)Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;
    .locals 1
    .parameter

    .prologue
    .line 55
    sget-object v0, Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;->AdActionName_None:Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;

    .line 56
    if-eqz p0, :cond_0

    .line 57
    const-string v0, "call"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    sget-object v0, Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;->AdActionName_Call:Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;

    .line 78
    :cond_0
    :goto_0
    return-object v0

    .line 59
    :cond_1
    const-string v0, "sms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    sget-object v0, Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;->AdActionName_SMS:Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;

    goto :goto_0

    .line 61
    :cond_2
    const-string v0, "search"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 62
    sget-object v0, Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;->AdActionName_Search:Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;

    goto :goto_0

    .line 63
    :cond_3
    const-string v0, "android"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 64
    sget-object v0, Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;->AdActionName_Android:Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;

    goto :goto_0

    .line 65
    :cond_4
    const-string v0, "web"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 66
    sget-object v0, Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;->AdActionName_Web:Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;

    goto :goto_0

    .line 67
    :cond_5
    const-string v0, "map"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 68
    sget-object v0, Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;->AdActionName_Map:Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;

    goto :goto_0

    .line 69
    :cond_6
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 70
    sget-object v0, Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;->AdActionName_Audio:Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;

    goto :goto_0

    .line 71
    :cond_7
    const-string v0, "video"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 72
    sget-object v0, Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;->AdActionName_Video:Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;

    goto :goto_0

    .line 75
    :cond_8
    sget-object v0, Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;->AdActionName_None:Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;

    goto :goto_0
.end method

.method public static adTypefromString(Ljava/lang/String;)Lcom/inmobi/androidsdk/impl/IMAdUnit$AdTypes;
    .locals 2
    .parameter

    .prologue
    .line 82
    sget-object v0, Lcom/inmobi/androidsdk/impl/IMAdUnit$AdTypes;->NONE:Lcom/inmobi/androidsdk/impl/IMAdUnit$AdTypes;

    .line 83
    if-eqz p0, :cond_0

    .line 84
    const-string v1, "banner"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    sget-object v0, Lcom/inmobi/androidsdk/impl/IMAdUnit$AdTypes;->BANNER:Lcom/inmobi/androidsdk/impl/IMAdUnit$AdTypes;

    .line 94
    :cond_0
    :goto_0
    return-object v0

    .line 86
    :cond_1
    const-string v1, "text"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    sget-object v0, Lcom/inmobi/androidsdk/impl/IMAdUnit$AdTypes;->TEXT:Lcom/inmobi/androidsdk/impl/IMAdUnit$AdTypes;

    goto :goto_0

    .line 88
    :cond_2
    const-string v1, "search"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 89
    sget-object v0, Lcom/inmobi/androidsdk/impl/IMAdUnit$AdTypes;->SEARCH:Lcom/inmobi/androidsdk/impl/IMAdUnit$AdTypes;

    goto :goto_0

    .line 90
    :cond_3
    const-string v1, "rm"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    sget-object v0, Lcom/inmobi/androidsdk/impl/IMAdUnit$AdTypes;->RICH_MEDIA:Lcom/inmobi/androidsdk/impl/IMAdUnit$AdTypes;

    goto :goto_0
.end method


# virtual methods
.method public getAdActionName()Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMAdUnit;->a:Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;

    return-object v0
.end method

.method public getAdType()Lcom/inmobi/androidsdk/impl/IMAdUnit$AdTypes;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMAdUnit;->b:Lcom/inmobi/androidsdk/impl/IMAdUnit$AdTypes;

    return-object v0
.end method

.method public getCDATABlock()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMAdUnit;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultTargetUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMAdUnit;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceInfoUploadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMAdUnit;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/inmobi/androidsdk/impl/IMAdUnit;->i:I

    return v0
.end method

.method public getTargetUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMAdUnit;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/inmobi/androidsdk/impl/IMAdUnit;->h:I

    return v0
.end method

.method public isSendDeviceInfo()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/impl/IMAdUnit;->e:Z

    return v0
.end method

.method public setAdActionName(Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/IMAdUnit;->a:Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;

    .line 110
    return-void
.end method

.method public setAdType(Lcom/inmobi/androidsdk/impl/IMAdUnit$AdTypes;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/IMAdUnit;->b:Lcom/inmobi/androidsdk/impl/IMAdUnit$AdTypes;

    .line 125
    return-void
.end method

.method public setCDATABlock(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/IMAdUnit;->g:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setDefaultTargetUrl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/IMAdUnit;->d:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setDeviceInfoUploadUrl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/IMAdUnit;->f:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput p1, p0, Lcom/inmobi/androidsdk/impl/IMAdUnit;->i:I

    .line 194
    return-void
.end method

.method public setSendDeviceInfo(Z)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/inmobi/androidsdk/impl/IMAdUnit;->e:Z

    .line 155
    return-void
.end method

.method public setTargetUrl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/IMAdUnit;->c:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput p1, p0, Lcom/inmobi/androidsdk/impl/IMAdUnit;->h:I

    .line 186
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 206
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 207
    const-string v1, "AdUnit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " adActionName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/inmobi/androidsdk/impl/IMAdUnit;->a:Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " adType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/inmobi/androidsdk/impl/IMAdUnit;->b:Lcom/inmobi/androidsdk/impl/IMAdUnit$AdTypes;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " targetUrl: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/inmobi/androidsdk/impl/IMAdUnit;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " width: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/inmobi/androidsdk/impl/IMAdUnit;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " height: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/inmobi/androidsdk/impl/IMAdUnit;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
