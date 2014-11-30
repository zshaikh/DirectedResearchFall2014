.class public Lcom/nativex/monetization/communication/requests/RichMediaRequest;
.super Lcom/nativex/common/Request;
.source "RichMediaRequest.java"


# instance fields
.field private shouldExecute:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/nativex/common/Request;-><init>()V

    .line 9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nativex/monetization/communication/requests/RichMediaRequest;->shouldExecute:Z

    .line 15
    const-string v0, "RichMediaRequest"

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/communication/requests/RichMediaRequest;->setRequestType(Ljava/lang/String;)V

    .line 16
    sget-object v0, Lcom/nativex/common/Request$HTTP_ACTION;->GET:Lcom/nativex/common/Request$HTTP_ACTION;

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/communication/requests/RichMediaRequest;->setHttpAction(Lcom/nativex/common/Request$HTTP_ACTION;)V

    .line 17
    invoke-virtual {p0, p1}, Lcom/nativex/monetization/communication/requests/RichMediaRequest;->setUrl(Ljava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method public generateRequest()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public generateResponse()Lcom/nativex/common/Response;
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/nativex/monetization/communication/responses/RichMediaResponse;

    invoke-direct {v0}, Lcom/nativex/monetization/communication/responses/RichMediaResponse;-><init>()V

    return-object v0
.end method

.method public shouldExecute()Z
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/nativex/monetization/manager/SessionManager;->hasSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-boolean v0, p0, Lcom/nativex/monetization/communication/requests/RichMediaRequest;->shouldExecute:Z

    .line 35
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
