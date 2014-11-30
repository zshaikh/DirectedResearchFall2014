.class public Lcom/nativex/common/GetImageRequest;
.super Lcom/nativex/common/Request;
.source "GetImageRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/nativex/common/Request;-><init>()V

    .line 32
    invoke-static {p1}, Lcom/nativex/common/Utilities;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nativex/common/GetImageRequest;->setUrl(Ljava/lang/String;)V

    .line 33
    const-string v0, "GetImage"

    invoke-virtual {p0, v0}, Lcom/nativex/common/GetImageRequest;->setRequestType(Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/nativex/common/Request$HTTP_ACTION;->GET:Lcom/nativex/common/Request$HTTP_ACTION;

    invoke-virtual {p0, v0}, Lcom/nativex/common/GetImageRequest;->setHttpAction(Lcom/nativex/common/Request$HTTP_ACTION;)V

    .line 35
    return-void
.end method


# virtual methods
.method public generateRequest()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public generateResponse()Lcom/nativex/common/Response;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/nativex/common/GetImageResponse;

    invoke-direct {v0}, Lcom/nativex/common/GetImageResponse;-><init>()V

    .line 40
    .local v0, "response":Lcom/nativex/common/GetImageResponse;
    return-object v0
.end method

.method public shouldExecute()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method
