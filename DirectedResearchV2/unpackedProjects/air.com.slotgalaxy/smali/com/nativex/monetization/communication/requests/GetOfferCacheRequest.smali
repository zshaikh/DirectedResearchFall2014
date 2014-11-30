.class public Lcom/nativex/monetization/communication/requests/GetOfferCacheRequest;
.super Lcom/nativex/common/Request;
.source "GetOfferCacheRequest.java"


# instance fields
.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private requestManager:Lcom/nativex/monetization/manager/MonetizationJsonRequestManager;

.field private shouldExecute:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/nativex/common/Request;-><init>()V

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nativex/monetization/communication/requests/GetOfferCacheRequest;->shouldExecute:Z

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nativex/monetization/communication/requests/GetOfferCacheRequest;->headers:Ljava/util/Map;

    .line 21
    const-string v0, "GetOfferCacheRequest"

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/communication/requests/GetOfferCacheRequest;->setRequestType(Ljava/lang/String;)V

    .line 22
    sget-object v0, Lcom/nativex/common/Request$HTTP_ACTION;->GET:Lcom/nativex/common/Request$HTTP_ACTION;

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/communication/requests/GetOfferCacheRequest;->setHttpAction(Lcom/nativex/common/Request$HTTP_ACTION;)V

    .line 23
    invoke-virtual {p0, p1}, Lcom/nativex/monetization/communication/requests/GetOfferCacheRequest;->setUrl(Ljava/lang/String;)V

    .line 24
    return-void
.end method


# virtual methods
.method public generateRequest()V
    .locals 2

    .prologue
    .line 42
    iget-object v1, p0, Lcom/nativex/monetization/communication/requests/GetOfferCacheRequest;->requestManager:Lcom/nativex/monetization/manager/MonetizationJsonRequestManager;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lcom/nativex/monetization/manager/MonetizationJsonRequestManager;

    invoke-direct {v1}, Lcom/nativex/monetization/manager/MonetizationJsonRequestManager;-><init>()V

    iput-object v1, p0, Lcom/nativex/monetization/communication/requests/GetOfferCacheRequest;->requestManager:Lcom/nativex/monetization/manager/MonetizationJsonRequestManager;

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/nativex/monetization/communication/requests/GetOfferCacheRequest;->requestManager:Lcom/nativex/monetization/manager/MonetizationJsonRequestManager;

    invoke-virtual {v1}, Lcom/nativex/monetization/manager/MonetizationJsonRequestManager;->getOfferCacheRequest()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "requestBody":Ljava/lang/String;
    return-void
.end method

.method public generateResponse()Lcom/nativex/common/Response;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/nativex/monetization/communication/responses/GetOfferCacheResponse;

    invoke-direct {v0}, Lcom/nativex/monetization/communication/responses/GetOfferCacheResponse;-><init>()V

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nativex/monetization/communication/requests/GetOfferCacheRequest;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/nativex/monetization/communication/requests/GetOfferCacheRequest;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void
.end method

.method public shouldExecute()Z
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/nativex/monetization/manager/SessionManager;->hasSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-boolean v0, p0, Lcom/nativex/monetization/communication/requests/GetOfferCacheRequest;->shouldExecute:Z

    .line 54
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
