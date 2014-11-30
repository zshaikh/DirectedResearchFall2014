.class public Lcom/nativex/monetization/smartoffers/CommitSmartOffersRequest;
.super Lcom/nativex/common/Request;
.source "CommitSmartOffersRequest.java"


# instance fields
.field private requestManager:Lcom/nativex/monetization/manager/MonetizationJsonRequestManager;

.field private results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nativex/monetization/smartoffers/SmartOfferResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/nativex/common/Request;-><init>()V

    .line 20
    const-string v0, "CommitSmartOffers"

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/smartoffers/CommitSmartOffersRequest;->setRequestType(Ljava/lang/String;)V

    .line 21
    const-string v0, "PublicServices/ServiceApiRestV1.svc/CommitSmartOffers"

    invoke-static {v0}, Lcom/nativex/common/ServerConfig;->applyConfiguration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/smartoffers/CommitSmartOffersRequest;->setUrl(Ljava/lang/String;)V

    .line 22
    sget-object v0, Lcom/nativex/common/Request$HTTP_ACTION;->POST:Lcom/nativex/common/Request$HTTP_ACTION;

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/smartoffers/CommitSmartOffersRequest;->setHttpAction(Lcom/nativex/common/Request$HTTP_ACTION;)V

    .line 23
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/smartoffers/CommitSmartOffersRequest;->setLoggingEnabled(Z)V

    .line 24
    return-void
.end method


# virtual methods
.method public generateRequest()V
    .locals 3

    .prologue
    .line 33
    iget-object v1, p0, Lcom/nativex/monetization/smartoffers/CommitSmartOffersRequest;->requestManager:Lcom/nativex/monetization/manager/MonetizationJsonRequestManager;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Lcom/nativex/monetization/manager/MonetizationJsonRequestManager;

    invoke-direct {v1}, Lcom/nativex/monetization/manager/MonetizationJsonRequestManager;-><init>()V

    iput-object v1, p0, Lcom/nativex/monetization/smartoffers/CommitSmartOffersRequest;->requestManager:Lcom/nativex/monetization/manager/MonetizationJsonRequestManager;

    .line 36
    :cond_0
    iget-object v1, p0, Lcom/nativex/monetization/smartoffers/CommitSmartOffersRequest;->requestManager:Lcom/nativex/monetization/manager/MonetizationJsonRequestManager;

    iget-object v2, p0, Lcom/nativex/monetization/smartoffers/CommitSmartOffersRequest;->results:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/manager/MonetizationJsonRequestManager;->getCommitSmartOffersRequest(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "request":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nativex/monetization/smartoffers/CommitSmartOffersRequest;->setRequest(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public generateResponse()Lcom/nativex/common/Response;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/nativex/monetization/smartoffers/CommitSmartOffersResponse;

    invoke-direct {v0}, Lcom/nativex/monetization/smartoffers/CommitSmartOffersResponse;-><init>()V

    return-object v0
.end method

.method public setResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nativex/monetization/smartoffers/SmartOfferResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/monetization/smartoffers/SmartOfferResult;>;"
    iput-object p1, p0, Lcom/nativex/monetization/smartoffers/CommitSmartOffersRequest;->results:Ljava/util/List;

    .line 54
    return-void
.end method

.method public shouldExecute()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-virtual {p0}, Lcom/nativex/monetization/smartoffers/CommitSmartOffersRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nativex/monetization/communication/SSLHttpClientFactory;->getSSLHttpClient(Ljava/lang/String;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 43
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {p0, v0}, Lcom/nativex/monetization/smartoffers/CommitSmartOffersRequest;->setHttpClient(Lorg/apache/http/client/HttpClient;)V

    .line 45
    invoke-static {}, Lcom/nativex/monetization/manager/SessionManager;->hasSession()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nativex/monetization/smartoffers/CommitSmartOffersRequest;->results:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nativex/monetization/smartoffers/CommitSmartOffersRequest;->results:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    .line 47
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 45
    goto :goto_0

    :cond_1
    move v1, v2

    .line 47
    goto :goto_0
.end method
