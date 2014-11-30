.class public Lcom/nativex/monetization/smartoffers/GetSmartOfferRulesRequest;
.super Lcom/nativex/common/Request;
.source "GetSmartOfferRulesRequest.java"


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


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/nativex/common/Request;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nativex/monetization/smartoffers/GetSmartOfferRulesRequest;->headers:Ljava/util/Map;

    .line 23
    const-string v0, "GetSmartOfferRules"

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/smartoffers/GetSmartOfferRulesRequest;->setRequestType(Ljava/lang/String;)V

    .line 24
    sget-object v0, Lcom/nativex/common/Request$HTTP_ACTION;->GET:Lcom/nativex/common/Request$HTTP_ACTION;

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/smartoffers/GetSmartOfferRulesRequest;->setHttpAction(Lcom/nativex/common/Request$HTTP_ACTION;)V

    .line 25
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/smartoffers/GetSmartOfferRulesRequest;->setLoggingEnabled(Z)V

    .line 26
    return-void
.end method


# virtual methods
.method public generateRequest()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public generateResponse()Lcom/nativex/common/Response;
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/nativex/monetization/smartoffers/GetSmartOfferRulesResponse;

    invoke-direct {v0}, Lcom/nativex/monetization/smartoffers/GetSmartOfferRulesResponse;-><init>()V

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
    .line 44
    iget-object v0, p0, Lcom/nativex/monetization/smartoffers/GetSmartOfferRulesRequest;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/nativex/monetization/smartoffers/GetSmartOfferRulesRequest;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-void
.end method

.method public shouldExecute()Z
    .locals 5

    .prologue
    .line 49
    invoke-static {}, Lcom/nativex/monetization/manager/SessionManager;->hasSession()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 51
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "SessionId"

    invoke-static {}, Lcom/nativex/monetization/manager/SessionManager;->getSessionId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v3, "PlatformId"

    const-string v4, "2"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v3, "PublicServices/ServiceApiRestV1.svc/GetSmartOfferRules"

    invoke-static {v3}, Lcom/nativex/common/ServerConfig;->applyConfiguration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/nativex/common/Utilities;->appendParamsToUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "url":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 55
    invoke-virtual {p0, v2}, Lcom/nativex/monetization/smartoffers/GetSmartOfferRulesRequest;->setUrl(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/nativex/monetization/smartoffers/GetSmartOfferRulesRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nativex/monetization/communication/SSLHttpClientFactory;->getSSLHttpClient(Ljava/lang/String;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 57
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0, v0}, Lcom/nativex/monetization/smartoffers/GetSmartOfferRulesRequest;->setHttpClient(Lorg/apache/http/client/HttpClient;)V

    .line 59
    const/4 v3, 0x1

    .line 63
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "url":Ljava/lang/String;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
