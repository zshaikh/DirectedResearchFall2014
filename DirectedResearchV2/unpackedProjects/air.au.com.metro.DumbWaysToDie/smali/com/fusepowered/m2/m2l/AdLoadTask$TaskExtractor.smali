.class Lcom/fusepowered/m2/m2l/AdLoadTask$TaskExtractor;
.super Ljava/lang/Object;
.source "AdLoadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/m2l/AdLoadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TaskExtractor"
.end annotation


# instance fields
.field private adType:Ljava/lang/String;

.field private adTypeCustomEventName:Ljava/lang/String;

.field private final adViewController:Lcom/fusepowered/m2/m2l/AdViewController;

.field private fullAdType:Ljava/lang/String;

.field private final response:Lorg/apache/http/HttpResponse;


# direct methods
.method constructor <init>(Lorg/apache/http/HttpResponse;Lcom/fusepowered/m2/m2l/AdViewController;)V
    .locals 0
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "adViewController"    # Lcom/fusepowered/m2/m2l/AdViewController;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/AdLoadTask$TaskExtractor;->response:Lorg/apache/http/HttpResponse;

    .line 93
    iput-object p2, p0, Lcom/fusepowered/m2/m2l/AdLoadTask$TaskExtractor;->adViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    .line 94
    return-void
.end method

.method private createCustomEventAdLoadTask(Ljava/lang/String;)Lcom/fusepowered/m2/m2l/AdLoadTask;
    .locals 3
    .param p1, "customEventData"    # Ljava/lang/String;

    .prologue
    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 161
    .local v0, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lcom/fusepowered/m2/m2l/util/ResponseHeader;->CUSTOM_EVENT_NAME:Lcom/fusepowered/m2/m2l/util/ResponseHeader;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/util/ResponseHeader;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/m2/m2l/AdLoadTask$TaskExtractor;->adTypeCustomEventName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    if-eqz p1, :cond_0

    .line 164
    sget-object v1, Lcom/fusepowered/m2/m2l/util/ResponseHeader;->CUSTOM_EVENT_DATA:Lcom/fusepowered/m2/m2l/util/ResponseHeader;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/util/ResponseHeader;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_0
    new-instance v1, Lcom/fusepowered/m2/m2l/AdLoadTask$CustomEventAdLoadTask;

    iget-object v2, p0, Lcom/fusepowered/m2/m2l/AdLoadTask$TaskExtractor;->adViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-direct {v1, v2, v0}, Lcom/fusepowered/m2/m2l/AdLoadTask$CustomEventAdLoadTask;-><init>(Lcom/fusepowered/m2/m2l/AdViewController;Ljava/util/Map;)V

    return-object v1
.end method

.method private eventDataIsInResponseBody(Ljava/lang/String;)Z
    .locals 2
    .param p1, "adType"    # Ljava/lang/String;

    .prologue
    .line 172
    const-string v0, "mraid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "html"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "interstitial"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "vast"

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/AdLoadTask$TaskExtractor;->fullAdType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private extractCustomEventAdLoadTask()Lcom/fusepowered/m2/m2l/AdLoadTask;
    .locals 4

    .prologue
    .line 115
    const-string v2, "MoPub"

    const-string v3, "Performing custom event."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/AdLoadTask$TaskExtractor;->response:Lorg/apache/http/HttpResponse;

    sget-object v3, Lcom/fusepowered/m2/m2l/util/ResponseHeader;->CUSTOM_EVENT_NAME:Lcom/fusepowered/m2/m2l/util/ResponseHeader;

    invoke-static {v2, v3}, Lcom/fusepowered/m2/m2l/util/HttpResponses;->extractHeader(Lorg/apache/http/HttpResponse;Lcom/fusepowered/m2/m2l/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fusepowered/m2/m2l/AdLoadTask$TaskExtractor;->adTypeCustomEventName:Ljava/lang/String;

    .line 119
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/AdLoadTask$TaskExtractor;->adTypeCustomEventName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 120
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/AdLoadTask$TaskExtractor;->response:Lorg/apache/http/HttpResponse;

    sget-object v3, Lcom/fusepowered/m2/m2l/util/ResponseHeader;->CUSTOM_EVENT_DATA:Lcom/fusepowered/m2/m2l/util/ResponseHeader;

    invoke-static {v2, v3}, Lcom/fusepowered/m2/m2l/util/HttpResponses;->extractHeader(Lorg/apache/http/HttpResponse;Lcom/fusepowered/m2/m2l/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "customEventData":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/fusepowered/m2/m2l/AdLoadTask$TaskExtractor;->createCustomEventAdLoadTask(Ljava/lang/String;)Lcom/fusepowered/m2/m2l/AdLoadTask;

    move-result-object v2

    .line 126
    .end local v0    # "customEventData":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 125
    :cond_0
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/AdLoadTask$TaskExtractor;->response:Lorg/apache/http/HttpResponse;

    sget-object v3, Lcom/fusepowered/m2/m2l/util/ResponseHeader;->CUSTOM_SELECTOR:Lcom/fusepowered/m2/m2l/util/ResponseHeader;

    invoke-virtual {v3}, Lcom/fusepowered/m2/m2l/util/ResponseHeader;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 126
    .local v1, "oldCustomEventHeader":Lorg/apache/http/Header;
    new-instance v2, Lcom/fusepowered/m2/m2l/AdLoadTask$LegacyCustomEventAdLoadTask;

    iget-object v3, p0, Lcom/fusepowered/m2/m2l/AdLoadTask$TaskExtractor;->adViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-direct {v2, v3, v1}, Lcom/fusepowered/m2/m2l/AdLoadTask$LegacyCustomEventAdLoadTask;-><init>(Lcom/fusepowered/m2/m2l/AdViewController;Lorg/apache/http/Header;)V

    goto :goto_0
.end method

.method private extractCustomEventAdLoadTaskFromNativeParams()Lcom/fusepowered/m2/m2l/AdLoadTask;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/AdLoadTask$TaskExtractor;->response:Lorg/apache/http/HttpResponse;

    sget-object v2, Lcom/fusepowered/m2/m2l/util/ResponseHeader;->NATIVE_PARAMS:Lcom/fusepowered/m2/m2l/util/ResponseHeader;

    invoke-static {v1, v2}, Lcom/fusepowered/m2/m2l/util/HttpResponses;->extractHeader(Lorg/apache/http/HttpResponse;Lcom/fusepowered/m2/m2l/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "eventData":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/fusepowered/m2/m2l/AdLoadTask$TaskExtractor;->createCustomEventAdLoadTask(Ljava/lang/String;)Lcom/fusepowered/m2/m2l/AdLoadTask;

    move-result-object v1

    return-object v1
.end method

.method private extractCustomEventAdLoadTaskFromResponseBody()Lcom/fusepowered/m2/m2l/AdLoadTask;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v7, p0, Lcom/fusepowered/m2/m2l/AdLoadTask$TaskExtractor;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 131
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7}, Lcom/fusepowered/m2/m2l/util/Strings;->fromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 133
    .local v4, "htmlData":Ljava/lang/String;
    :goto_0
    iget-object v7, p0, Lcom/fusepowered/m2/m2l/AdLoadTask$TaskExtractor;->adViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-virtual {v7}, Lcom/fusepowered/m2/m2l/AdViewController;->getAdConfiguration()Lcom/fusepowered/m2/m2l/AdConfiguration;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/fusepowered/m2/m2l/AdConfiguration;->setResponseString(Ljava/lang/String;)V

    .line 135
    iget-object v7, p0, Lcom/fusepowered/m2/m2l/AdLoadTask$TaskExtractor;->response:Lorg/apache/http/HttpResponse;

    sget-object v8, Lcom/fusepowered/m2/m2l/util/ResponseHeader;->REDIRECT_URL:Lcom/fusepowered/m2/m2l/util/ResponseHeader;

    invoke-static {v7, v8}, Lcom/fusepowered/m2/m2l/util/HttpResponses;->extractHeader(Lorg/apache/http/HttpResponse;Lcom/fusepowered/m2/m2l/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v5

    .line 136
    .local v5, "redirectUrl":Ljava/lang/String;
    iget-object v7, p0, Lcom/fusepowered/m2/m2l/AdLoadTask$TaskExtractor;->response:Lorg/apache/http/HttpResponse;

    sget-object v8, Lcom/fusepowered/m2/m2l/util/ResponseHeader;->CLICKTHROUGH_URL:Lcom/fusepowered/m2/m2l/util/ResponseHeader;

    invoke-static {v7, v8}, Lcom/fusepowered/m2/m2l/util/HttpResponses;->extractHeader(Lorg/apache/http/HttpResponse;Lcom/fusepowered/m2/m2l/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "clickthroughUrl":Ljava/lang/String;
    iget-object v7, p0, Lcom/fusepowered/m2/m2l/AdLoadTask$TaskExtractor;->response:Lorg/apache/http/HttpResponse;

    sget-object v8, Lcom/fusepowered/m2/m2l/util/ResponseHeader;->SCROLLABLE:Lcom/fusepowered/m2/m2l/util/ResponseHeader;

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/fusepowered/m2/m2l/util/HttpResponses;->extractBooleanHeader(Lorg/apache/http/HttpResponse;Lcom/fusepowered/m2/m2l/util/ResponseHeader;Z)Z

    move-result v6

    .line 139
    .local v6, "scrollingEnabled":Z
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 140
    .local v3, "eventDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "Html-Response-Body"

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v7, "Scrollable"

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    if-eqz v5, :cond_0

    .line 143
    const-string v7, "Redirect-Url"

    invoke-interface {v3, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_0
    if-eqz v0, :cond_1

    .line 146
    const-string v7, "Clickthrough-Url"

    invoke-interface {v3, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_1
    invoke-static {v3}, Lcom/fusepowered/m2/m2l/util/Json;->mapToJsonString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "eventData":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/fusepowered/m2/m2l/AdLoadTask$TaskExtractor;->createCustomEventAdLoadTask(Ljava/lang/String;)Lcom/fusepowered/m2/m2l/AdLoadTask;

    move-result-object v7

    return-object v7

    .line 131
    .end local v0    # "clickthroughUrl":Ljava/lang/String;
    .end local v2    # "eventData":Ljava/lang/String;
    .end local v3    # "eventDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "htmlData":Ljava/lang/String;
    .end local v5    # "redirectUrl":Ljava/lang/String;
    .end local v6    # "scrollingEnabled":Z
    :cond_2
    const-string v7, ""

    move-object v4, v7

    goto :goto_0
.end method


# virtual methods
.method extract()Lcom/fusepowered/m2/m2l/AdLoadTask;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdLoadTask$TaskExtractor;->response:Lorg/apache/http/HttpResponse;

    sget-object v1, Lcom/fusepowered/m2/m2l/util/ResponseHeader;->AD_TYPE:Lcom/fusepowered/m2/m2l/util/ResponseHeader;

    invoke-static {v0, v1}, Lcom/fusepowered/m2/m2l/util/HttpResponses;->extractHeader(Lorg/apache/http/HttpResponse;Lcom/fusepowered/m2/m2l/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/AdLoadTask$TaskExtractor;->adType:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdLoadTask$TaskExtractor;->response:Lorg/apache/http/HttpResponse;

    sget-object v1, Lcom/fusepowered/m2/m2l/util/ResponseHeader;->FULL_AD_TYPE:Lcom/fusepowered/m2/m2l/util/ResponseHeader;

    invoke-static {v0, v1}, Lcom/fusepowered/m2/m2l/util/HttpResponses;->extractHeader(Lorg/apache/http/HttpResponse;Lcom/fusepowered/m2/m2l/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/AdLoadTask$TaskExtractor;->fullAdType:Ljava/lang/String;

    .line 100
    const-string v0, "MoPub"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Loading ad type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fusepowered/m2/m2l/AdLoadTask$TaskExtractor;->adType:Ljava/lang/String;

    iget-object v3, p0, Lcom/fusepowered/m2/m2l/AdLoadTask$TaskExtractor;->fullAdType:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/fusepowered/m2/m2l/AdTypeTranslator;->getAdNetworkType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdLoadTask$TaskExtractor;->adViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/AdViewController;->getMoPubView()Lcom/fusepowered/m2/m2l/MoPubView;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/AdLoadTask$TaskExtractor;->adType:Ljava/lang/String;

    iget-object v2, p0, Lcom/fusepowered/m2/m2l/AdLoadTask$TaskExtractor;->fullAdType:Ljava/lang/String;

    .line 102
    invoke-static {v0, v1, v2}, Lcom/fusepowered/m2/m2l/AdTypeTranslator;->getCustomEventNameForAdType(Lcom/fusepowered/m2/m2l/MoPubView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/AdLoadTask$TaskExtractor;->adTypeCustomEventName:Ljava/lang/String;

    .line 105
    const-string v0, "custom"

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/AdLoadTask$TaskExtractor;->adType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/AdLoadTask$TaskExtractor;->extractCustomEventAdLoadTask()Lcom/fusepowered/m2/m2l/AdLoadTask;

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdLoadTask$TaskExtractor;->adType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/fusepowered/m2/m2l/AdLoadTask$TaskExtractor;->eventDataIsInResponseBody(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/AdLoadTask$TaskExtractor;->extractCustomEventAdLoadTaskFromResponseBody()Lcom/fusepowered/m2/m2l/AdLoadTask;

    move-result-object v0

    goto :goto_0

    .line 110
    :cond_1
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/AdLoadTask$TaskExtractor;->extractCustomEventAdLoadTaskFromNativeParams()Lcom/fusepowered/m2/m2l/AdLoadTask;

    move-result-object v0

    goto :goto_0
.end method
