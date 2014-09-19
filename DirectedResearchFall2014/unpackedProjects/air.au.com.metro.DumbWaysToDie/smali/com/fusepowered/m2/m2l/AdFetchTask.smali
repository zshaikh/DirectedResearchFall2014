.class public Lcom/fusepowered/m2/m2l/AdFetchTask;
.super Landroid/os/AsyncTask;
.source "AdFetchTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/fusepowered/m2/m2l/AdLoadTask;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$mopub$mobileads$AdFetcher$FetchStatus:[I = null

.field private static final EXPONENTIAL_BACKOFF_FACTOR:D = 1.5

.field private static final MAXIMUM_REFRESH_TIME_MILLISECONDS:I = 0x927c0


# instance fields
.field private mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

.field private mException:Ljava/lang/Exception;

.field private mFetchStatus:Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

.field private mHttpClient:Lorg/apache/http/client/HttpClient;

.field private mTaskId:J

.field private mTaskTracker:Lcom/fusepowered/m2/m2l/TaskTracker;

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$com$mopub$mobileads$AdFetcher$FetchStatus()[I
    .locals 3

    .prologue
    .line 49
    sget-object v0, Lcom/fusepowered/m2/m2l/AdFetchTask;->$SWITCH_TABLE$com$mopub$mobileads$AdFetcher$FetchStatus:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;->values()[Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;->AD_WARMING_UP:Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;->CLEAR_AD_TYPE:Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;->FETCH_CANCELLED:Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;->INVALID_SERVER_RESPONSE_BACKOFF:Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;->INVALID_SERVER_RESPONSE_NOBACKOFF:Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;->NOT_SET:Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/fusepowered/m2/m2l/AdFetchTask;->$SWITCH_TABLE$com$mopub$mobileads$AdFetcher$FetchStatus:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Lcom/fusepowered/m2/m2l/TaskTracker;Lcom/fusepowered/m2/m2l/AdViewController;Ljava/lang/String;I)V
    .locals 2
    .parameter "taskTracker"
    .parameter "adViewController"
    .parameter "userAgent"
    .parameter "timeoutMilliseconds"

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 57
    sget-object v0, Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;->NOT_SET:Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/AdFetchTask;->mFetchStatus:Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

    .line 62
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/AdFetchTask;->mTaskTracker:Lcom/fusepowered/m2/m2l/TaskTracker;

    .line 64
    iput-object p2, p0, Lcom/fusepowered/m2/m2l/AdFetchTask;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    .line 65
    invoke-static {p4}, Lcom/fusepowered/m2/m2l/factories/HttpClientFactory;->create(I)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/AdFetchTask;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 66
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdFetchTask;->mTaskTracker:Lcom/fusepowered/m2/m2l/TaskTracker;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/TaskTracker;->getCurrentTaskId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fusepowered/m2/m2l/AdFetchTask;->mTaskId:J

    .line 67
    iput-object p3, p0, Lcom/fusepowered/m2/m2l/AdFetchTask;->mUserAgent:Ljava/lang/String;

    .line 68
    return-void
.end method

.method private cleanup()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 263
    iput-object v0, p0, Lcom/fusepowered/m2/m2l/AdFetchTask;->mTaskTracker:Lcom/fusepowered/m2/m2l/TaskTracker;

    .line 264
    iput-object v0, p0, Lcom/fusepowered/m2/m2l/AdFetchTask;->mException:Ljava/lang/Exception;

    .line 265
    sget-object v0, Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;->NOT_SET:Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/AdFetchTask;->mFetchStatus:Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

    .line 266
    return-void
.end method

.method private exponentialBackoff()V
    .locals 5

    .prologue
    .line 248
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/AdFetchTask;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    if-nez v1, :cond_0

    .line 260
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/AdFetchTask;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/AdViewController;->getRefreshTimeMilliseconds()I

    move-result v0

    .line 254
    .local v0, refreshTimeMilliseconds:I
    int-to-double v1, v0

    const-wide/high16 v3, 0x3ff8

    mul-double/2addr v1, v3

    double-to-int v0, v1

    .line 255
    const v1, 0x927c0

    if-le v0, v1, :cond_1

    .line 256
    const v0, 0x927c0

    .line 259
    :cond_1
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/AdFetchTask;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-virtual {v1, v0}, Lcom/fusepowered/m2/m2l/AdViewController;->setRefreshTimeMilliseconds(I)V

    goto :goto_0
.end method

.method private fetch(Ljava/lang/String;)Lcom/fusepowered/m2/m2l/AdLoadTask;
    .locals 5
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 84
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, httpget:Lorg/apache/http/client/methods/HttpGet;
    sget-object v2, Lcom/fusepowered/m2/m2l/util/ResponseHeader;->USER_AGENT:Lcom/fusepowered/m2/m2l/util/ResponseHeader;

    invoke-virtual {v2}, Lcom/fusepowered/m2/m2l/util/ResponseHeader;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fusepowered/m2/m2l/AdFetchTask;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/AdFetchTask;->isStateValid()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v4

    .line 97
    :goto_0
    return-object v2

    .line 89
    :cond_0
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/AdFetchTask;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v2, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 91
    .local v1, response:Lorg/apache/http/HttpResponse;
    invoke-direct {p0, v1}, Lcom/fusepowered/m2/m2l/AdFetchTask;->isResponseValid(Lorg/apache/http/HttpResponse;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v4

    goto :goto_0

    .line 93
    :cond_1
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/AdFetchTask;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-virtual {v2, v1}, Lcom/fusepowered/m2/m2l/AdViewController;->configureUsingHttpResponse(Lorg/apache/http/HttpResponse;)V

    .line 95
    invoke-direct {p0, v1}, Lcom/fusepowered/m2/m2l/AdFetchTask;->responseContainsContent(Lorg/apache/http/HttpResponse;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object v2, v4

    goto :goto_0

    .line 97
    :cond_2
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/AdFetchTask;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-static {v1, v2}, Lcom/fusepowered/m2/m2l/AdLoadTask;->fromHttpResponse(Lorg/apache/http/HttpResponse;Lcom/fusepowered/m2/m2l/AdViewController;)Lcom/fusepowered/m2/m2l/AdLoadTask;

    move-result-object v2

    goto :goto_0
.end method

.method private isMostCurrentTask()Z
    .locals 3

    .prologue
    .line 280
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdFetchTask;->mTaskTracker:Lcom/fusepowered/m2/m2l/TaskTracker;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdFetchTask;->mTaskTracker:Lcom/fusepowered/m2/m2l/TaskTracker;

    iget-wide v1, p0, Lcom/fusepowered/m2/m2l/AdFetchTask;->mTaskId:J

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/m2/m2l/TaskTracker;->isMostCurrentTask(J)Z

    move-result v0

    goto :goto_0
.end method

.method private isResponseValid(Lorg/apache/http/HttpResponse;)Z
    .locals 5
    .parameter "response"

    .prologue
    const/4 v3, 0x0

    const-string v4, "MoPub"

    .line 121
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 122
    :cond_0
    const-string v1, "MoPub"

    const-string v1, "MoPub server returned null response."

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    sget-object v1, Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;->INVALID_SERVER_RESPONSE_NOBACKOFF:Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

    iput-object v1, p0, Lcom/fusepowered/m2/m2l/AdFetchTask;->mFetchStatus:Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

    move v1, v3

    .line 143
    :goto_0
    return v1

    .line 127
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 130
    .local v0, statusCode:I
    const/16 v1, 0x190

    if-lt v0, v1, :cond_2

    .line 131
    const-string v1, "MoPub"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Server error: returned HTTP status code "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 132
    const-string v2, ". Please try again."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    sget-object v1, Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;->INVALID_SERVER_RESPONSE_BACKOFF:Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

    iput-object v1, p0, Lcom/fusepowered/m2/m2l/AdFetchTask;->mFetchStatus:Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

    move v1, v3

    .line 134
    goto :goto_0

    .line 137
    :cond_2
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_3

    .line 138
    const-string v1, "MoPub"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MoPub server returned invalid response: HTTP status code "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    sget-object v1, Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;->INVALID_SERVER_RESPONSE_NOBACKOFF:Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

    iput-object v1, p0, Lcom/fusepowered/m2/m2l/AdFetchTask;->mFetchStatus:Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

    move v1, v3

    .line 141
    goto :goto_0

    .line 143
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isStateValid()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 149
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/AdFetchTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    sget-object v0, Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;->FETCH_CANCELLED:Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/AdFetchTask;->mFetchStatus:Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

    move v0, v2

    .line 158
    :goto_0
    return v0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdFetchTask;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdFetchTask;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/AdViewController;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    :cond_1
    const-string v0, "MoPub"

    const-string v1, "Error loading ad: AdViewController has already been GCed or destroyed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 156
    goto :goto_0

    .line 158
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private responseContainsContent(Lorg/apache/http/HttpResponse;)Z
    .locals 5
    .parameter "response"

    .prologue
    const/4 v3, 0x0

    const-string v4, "MoPub"

    .line 102
    const-string v1, "1"

    sget-object v2, Lcom/fusepowered/m2/m2l/util/ResponseHeader;->WARMUP:Lcom/fusepowered/m2/m2l/util/ResponseHeader;

    invoke-static {p1, v2}, Lcom/fusepowered/m2/m2l/util/HttpResponses;->extractHeader(Lorg/apache/http/HttpResponse;Lcom/fusepowered/m2/m2l/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    const-string v1, "MoPub"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ad Unit ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fusepowered/m2/m2l/AdFetchTask;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-virtual {v2}, Lcom/fusepowered/m2/m2l/AdViewController;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is still warming up. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 104
    const-string v2, "Please try again in a few minutes."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    sget-object v1, Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;->AD_WARMING_UP:Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

    iput-object v1, p0, Lcom/fusepowered/m2/m2l/AdFetchTask;->mFetchStatus:Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

    move v1, v3

    .line 117
    :goto_0
    return v1

    .line 110
    :cond_0
    sget-object v1, Lcom/fusepowered/m2/m2l/util/ResponseHeader;->AD_TYPE:Lcom/fusepowered/m2/m2l/util/ResponseHeader;

    invoke-static {p1, v1}, Lcom/fusepowered/m2/m2l/util/HttpResponses;->extractHeader(Lorg/apache/http/HttpResponse;Lcom/fusepowered/m2/m2l/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, adType:Ljava/lang/String;
    const-string v1, "clear"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    const-string v1, "MoPub"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No inventory found for adunit ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fusepowered/m2/m2l/AdFetchTask;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-virtual {v2}, Lcom/fusepowered/m2/m2l/AdViewController;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sget-object v1, Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;->CLEAR_AD_TYPE:Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

    iput-object v1, p0, Lcom/fusepowered/m2/m2l/AdFetchTask;->mFetchStatus:Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

    move v1, v3

    .line 114
    goto :goto_0

    .line 117
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private shutdownHttpClient()V
    .locals 2

    .prologue
    .line 269
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/AdFetchTask;->mHttpClient:Lorg/apache/http/client/HttpClient;

    if-eqz v1, :cond_1

    .line 270
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/AdFetchTask;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    .line 271
    .local v0, manager:Lorg/apache/http/conn/ClientConnectionManager;
    if-eqz v0, :cond_0

    .line 272
    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 274
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fusepowered/m2/m2l/AdFetchTask;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 276
    .end local v0           #manager:Lorg/apache/http/conn/ClientConnectionManager;
    :cond_1
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/fusepowered/m2/m2l/AdLoadTask;
    .locals 3
    .parameter "urls"

    .prologue
    .line 72
    const/4 v1, 0x0

    .line 74
    .local v1, result:Lcom/fusepowered/m2/m2l/AdLoadTask;
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, p1, v2

    invoke-direct {p0, v2}, Lcom/fusepowered/m2/m2l/AdFetchTask;->fetch(Ljava/lang/String;)Lcom/fusepowered/m2/m2l/AdLoadTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 78
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/AdFetchTask;->shutdownHttpClient()V

    .line 80
    :goto_0
    return-object v1

    .line 75
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 76
    .local v0, exception:Ljava/lang/Exception;
    :try_start_1
    iput-object v0, p0, Lcom/fusepowered/m2/m2l/AdFetchTask;->mException:Ljava/lang/Exception;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/AdFetchTask;->shutdownHttpClient()V

    goto :goto_0

    .line 77
    .end local v0           #exception:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 78
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/AdFetchTask;->shutdownHttpClient()V

    .line 79
    throw v2
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/fusepowered/m2/m2l/AdFetchTask;->doInBackground([Ljava/lang/String;)Lcom/fusepowered/m2/m2l/AdLoadTask;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 3

    .prologue
    const-string v2, "MoPub"

    .line 230
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/AdFetchTask;->isMostCurrentTask()Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    const-string v0, "MoPub"

    const-string v0, "Ad response is stale."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/AdFetchTask;->cleanup()V

    .line 242
    :goto_0
    return-void

    .line 236
    :cond_0
    const-string v0, "MoPub"

    const-string v0, "Ad loading was cancelled."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdFetchTask;->mException:Ljava/lang/Exception;

    if-eqz v0, :cond_1

    .line 238
    const-string v0, "MoPub"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception caught while loading ad: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/AdFetchTask;->mException:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdFetchTask;->mTaskTracker:Lcom/fusepowered/m2/m2l/TaskTracker;

    iget-wide v1, p0, Lcom/fusepowered/m2/m2l/AdFetchTask;->mTaskId:J

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/m2/m2l/TaskTracker;->markTaskCompleted(J)V

    .line 241
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/AdFetchTask;->cleanup()V

    goto :goto_0
.end method

.method protected onPostExecute(Lcom/fusepowered/m2/m2l/AdLoadTask;)V
    .locals 4
    .parameter "adLoadTask"

    .prologue
    const-string v3, "MoPub"

    .line 163
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/AdFetchTask;->isMostCurrentTask()Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    const-string v1, "MoPub"

    const-string v1, "Ad response is stale."

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/AdFetchTask;->cleanup()V

    .line 226
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/AdFetchTask;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/AdFetchTask;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/AdViewController;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 171
    :cond_1
    if-eqz p1, :cond_2

    .line 172
    invoke-virtual {p1}, Lcom/fusepowered/m2/m2l/AdLoadTask;->cleanup()V

    .line 174
    :cond_2
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/AdFetchTask;->mTaskTracker:Lcom/fusepowered/m2/m2l/TaskTracker;

    iget-wide v2, p0, Lcom/fusepowered/m2/m2l/AdFetchTask;->mTaskId:J

    invoke-virtual {v1, v2, v3}, Lcom/fusepowered/m2/m2l/TaskTracker;->markTaskCompleted(J)V

    .line 175
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/AdFetchTask;->cleanup()V

    goto :goto_0

    .line 179
    :cond_3
    if-nez p1, :cond_6

    .line 180
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/AdFetchTask;->mException:Ljava/lang/Exception;

    if-eqz v1, :cond_4

    .line 181
    const-string v1, "MoPub"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception caught while loading ad: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fusepowered/m2/m2l/AdFetchTask;->mException:Ljava/lang/Exception;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_4
    invoke-static {}, Lcom/fusepowered/m2/m2l/AdFetchTask;->$SWITCH_TABLE$com$mopub$mobileads$AdFetcher$FetchStatus()[I

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/m2/m2l/AdFetchTask;->mFetchStatus:Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

    invoke-virtual {v2}, Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 201
    sget-object v0, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->UNSPECIFIED:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    .line 205
    .local v0, errorCode:Lcom/fusepowered/m2/m2l/MoPubErrorCode;
    :goto_1
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/AdFetchTask;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-virtual {v1, v0}, Lcom/fusepowered/m2/m2l/AdViewController;->adDidFail(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V

    .line 215
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/AdFetchTask;->mFetchStatus:Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

    sget-object v2, Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;->INVALID_SERVER_RESPONSE_BACKOFF:Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

    if-ne v1, v2, :cond_5

    .line 216
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/AdFetchTask;->exponentialBackoff()V

    .line 217
    sget-object v1, Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;->NOT_SET:Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

    iput-object v1, p0, Lcom/fusepowered/m2/m2l/AdFetchTask;->mFetchStatus:Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

    .line 224
    .end local v0           #errorCode:Lcom/fusepowered/m2/m2l/MoPubErrorCode;
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/AdFetchTask;->mTaskTracker:Lcom/fusepowered/m2/m2l/TaskTracker;

    iget-wide v2, p0, Lcom/fusepowered/m2/m2l/AdFetchTask;->mTaskId:J

    invoke-virtual {v1, v2, v3}, Lcom/fusepowered/m2/m2l/TaskTracker;->markTaskCompleted(J)V

    .line 225
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/AdFetchTask;->cleanup()V

    goto :goto_0

    .line 187
    :pswitch_0
    sget-object v0, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->UNSPECIFIED:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    .line 188
    .restart local v0       #errorCode:Lcom/fusepowered/m2/m2l/MoPubErrorCode;
    goto :goto_1

    .line 190
    .end local v0           #errorCode:Lcom/fusepowered/m2/m2l/MoPubErrorCode;
    :pswitch_1
    sget-object v0, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->CANCELLED:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    .line 191
    .restart local v0       #errorCode:Lcom/fusepowered/m2/m2l/MoPubErrorCode;
    goto :goto_1

    .line 194
    .end local v0           #errorCode:Lcom/fusepowered/m2/m2l/MoPubErrorCode;
    :pswitch_2
    sget-object v0, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->SERVER_ERROR:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    .line 195
    .restart local v0       #errorCode:Lcom/fusepowered/m2/m2l/MoPubErrorCode;
    goto :goto_1

    .line 198
    .end local v0           #errorCode:Lcom/fusepowered/m2/m2l/MoPubErrorCode;
    :pswitch_3
    sget-object v0, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->NO_FILL:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    .line 199
    .restart local v0       #errorCode:Lcom/fusepowered/m2/m2l/MoPubErrorCode;
    goto :goto_1

    .line 220
    .end local v0           #errorCode:Lcom/fusepowered/m2/m2l/MoPubErrorCode;
    :cond_6
    invoke-virtual {p1}, Lcom/fusepowered/m2/m2l/AdLoadTask;->execute()V

    .line 221
    invoke-virtual {p1}, Lcom/fusepowered/m2/m2l/AdLoadTask;->cleanup()V

    goto :goto_2

    .line 185
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/fusepowered/m2/m2l/AdLoadTask;

    invoke-virtual {p0, p1}, Lcom/fusepowered/m2/m2l/AdFetchTask;->onPostExecute(Lcom/fusepowered/m2/m2l/AdLoadTask;)V

    return-void
.end method
