.class public Lcom/facebook/Request;
.super Ljava/lang/Object;
.source "Request.java"


# static fields
.field private static final ACCESS_TOKEN_PARAM:Ljava/lang/String; = "access_token"

.field private static final ATTACHED_FILES_PARAM:Ljava/lang/String; = "attached_files"

.field private static final ATTACHMENT_FILENAME_PREFIX:Ljava/lang/String; = "file"

.field private static final BATCH_APP_ID_PARAM:Ljava/lang/String; = "batch_app_id"

.field private static final BATCH_BODY_PARAM:Ljava/lang/String; = "body"

.field private static final BATCH_ENTRY_DEPENDS_ON_PARAM:Ljava/lang/String; = "depends_on"

.field private static final BATCH_ENTRY_NAME_PARAM:Ljava/lang/String; = "name"

.field private static final BATCH_ENTRY_OMIT_RESPONSE_ON_SUCCESS_PARAM:Ljava/lang/String; = "omit_response_on_success"

.field private static final BATCH_METHOD_PARAM:Ljava/lang/String; = "method"

.field private static final BATCH_PARAM:Ljava/lang/String; = "batch"

.field private static final BATCH_RELATIVE_URL_PARAM:Ljava/lang/String; = "relative_url"

.field private static final CONTENT_TYPE_HEADER:Ljava/lang/String; = "Content-Type"

.field private static final FORMAT_JSON:Ljava/lang/String; = "json"

.field private static final FORMAT_PARAM:Ljava/lang/String; = "format"

.field private static final ISO_8601_FORMAT_STRING:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ssZ"

.field public static final MAXIMUM_BATCH_SIZE:I = 0x32

.field private static final ME:Ljava/lang/String; = "me"

.field private static final MIGRATION_BUNDLE_PARAM:Ljava/lang/String; = "migration_bundle"

.field private static final MIME_BOUNDARY:Ljava/lang/String; = "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

.field private static final MY_ACTION_FORMAT:Ljava/lang/String; = "me/%s"

.field private static final MY_FEED:Ljava/lang/String; = "me/feed"

.field private static final MY_FRIENDS:Ljava/lang/String; = "me/friends"

.field private static final MY_OBJECTS_FORMAT:Ljava/lang/String; = "me/objects/%s"

.field private static final MY_PHOTOS:Ljava/lang/String; = "me/photos"

.field private static final MY_STAGING_RESOURCES:Ljava/lang/String; = "me/staging_resources"

.field private static final MY_VIDEOS:Ljava/lang/String; = "me/videos"

.field private static final OBJECT_PARAM:Ljava/lang/String; = "object"

.field private static final PICTURE_PARAM:Ljava/lang/String; = "picture"

.field private static final SDK_ANDROID:Ljava/lang/String; = "android"

.field private static final SDK_PARAM:Ljava/lang/String; = "sdk"

.field private static final SEARCH:Ljava/lang/String; = "search"

.field private static final STAGING_PARAM:Ljava/lang/String; = "file"

.field private static final USER_AGENT_BASE:Ljava/lang/String; = "FBAndroidSDK"

.field private static final USER_AGENT_HEADER:Ljava/lang/String; = "User-Agent"

.field private static final VIDEOS_SUFFIX:Ljava/lang/String; = "/videos"

.field private static defaultBatchApplicationId:Ljava/lang/String;

.field private static volatile userAgent:Ljava/lang/String;


# instance fields
.field private batchEntryDependsOn:Ljava/lang/String;

.field private batchEntryName:Ljava/lang/String;

.field private batchEntryOmitResultOnSuccess:Z

.field private callback:Lcom/facebook/Request$Callback;

.field private graphObject:Lcom/facebook/model/GraphObject;

.field private graphPath:Ljava/lang/String;

.field private httpMethod:Lcom/facebook/HttpMethod;

.field private overriddenURL:Ljava/lang/String;

.field private parameters:Landroid/os/Bundle;

.field private restMethod:Ljava/lang/String;

.field private session:Lcom/facebook/Session;

.field private tag:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 126
    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 127
    return-void
.end method

.method public constructor <init>(Lcom/facebook/Session;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 141
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 142
    return-void
.end method

.method public constructor <init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V
    .locals 6

    .prologue
    .line 163
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 164
    return-void
.end method

.method public constructor <init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V
    .locals 3

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/Request;->batchEntryOmitResultOnSuccess:Z

    .line 187
    iput-object p1, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    .line 188
    iput-object p2, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;

    .line 189
    iput-object p5, p0, Lcom/facebook/Request;->callback:Lcom/facebook/Request$Callback;

    .line 191
    invoke-virtual {p0, p4}, Lcom/facebook/Request;->setHttpMethod(Lcom/facebook/HttpMethod;)V

    .line 193
    if-eqz p3, :cond_1

    .line 194
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    .line 199
    :goto_0
    iget-object v0, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    const-string v1, "migration_bundle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    const-string v1, "migration_bundle"

    const-string v2, "fbsdk:20131203"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_0
    return-void

    .line 196
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    goto :goto_0
.end method

.method constructor <init>(Lcom/facebook/Session;Ljava/net/URL;)V
    .locals 1

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/Request;->batchEntryOmitResultOnSuccess:Z

    .line 205
    iput-object p1, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    .line 206
    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Request;->overriddenURL:Ljava/lang/String;

    .line 208
    sget-object v0, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    invoke-virtual {p0, v0}, Lcom/facebook/Request;->setHttpMethod(Lcom/facebook/HttpMethod;)V

    .line 210
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    .line 211
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/Response;Ljava/lang/Class;)Ljava/util/List;
    .locals 1

    .prologue
    .line 61
    invoke-static {p0, p1}, Lcom/facebook/Request;->typedListFromResponse(Lcom/facebook/Response;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 61
    invoke-static {p0}, Lcom/facebook/Request;->isSupportedParameterType(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    invoke-static {p0}, Lcom/facebook/Request;->parameterToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addCommonParameters()V
    .locals 3

    .prologue
    .line 1704
    iget-object v0, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    if-eqz v0, :cond_1

    .line 1705
    iget-object v0, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1706
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Session provided to a Request in un-opened state."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1707
    :cond_0
    iget-object v0, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    const-string v1, "access_token"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1708
    iget-object v0, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    invoke-virtual {v0}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 1709
    invoke-static {v0}, Lcom/facebook/internal/Logger;->registerAccessToken(Ljava/lang/String;)V

    .line 1710
    iget-object v1, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    const-string v2, "access_token"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1713
    :cond_1
    iget-object v0, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    const-string v1, "sdk"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1714
    iget-object v0, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    const-string v1, "format"

    const-string v2, "json"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1715
    return-void
.end method

.method private appendParametersToBaseUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 1718
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 1720
    iget-object v0, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1721
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1722
    iget-object v1, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1724
    if-nez v1, :cond_1

    .line 1725
    const-string v1, ""

    .line 1728
    :cond_1
    invoke-static {v1}, Lcom/facebook/Request;->isSupportedParameterType(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1729
    invoke-static {v1}, Lcom/facebook/Request;->parameterToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1738
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 1731
    :cond_2
    iget-object v0, p0, Lcom/facebook/Request;->httpMethod:Lcom/facebook/HttpMethod;

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    if-ne v0, v4, :cond_0

    .line 1732
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported parameter type for GET request: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1741
    :cond_3
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 3

    .prologue
    .line 1693
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 1695
    const-string v1, "User-Agent"

    invoke-static {}, Lcom/facebook/Request;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1696
    const-string v1, "Content-Type"

    invoke-static {}, Lcom/facebook/Request;->getMimeContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 1699
    return-object v0
.end method

.method public static executeAndWait(Lcom/facebook/Request;)Lcom/facebook/Response;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1387
    new-array v0, v3, [Lcom/facebook/Request;

    aput-object p0, v0, v2

    invoke-static {v0}, Lcom/facebook/Request;->executeBatchAndWait([Lcom/facebook/Request;)Ljava/util/List;

    move-result-object v0

    .line 1389
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 1390
    :cond_0
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "invalid state: expected a single response"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1393
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/Response;

    return-object v0
.end method

.method public static executeBatchAndWait(Lcom/facebook/RequestBatch;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/RequestBatch;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1453
    const-string v0, "requests"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notEmptyAndContainsNoNulls(Ljava/util/Collection;Ljava/lang/String;)V

    .line 1457
    :try_start_0
    invoke-static {p0}, Lcom/facebook/Request;->toHttpConnection(Lcom/facebook/RequestBatch;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1464
    invoke-static {v0, p0}, Lcom/facebook/Request;->executeConnectionAndWait(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Ljava/util/List;

    move-result-object v0

    .line 1465
    :goto_0
    return-object v0

    .line 1458
    :catch_0
    move-exception v0

    .line 1459
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getRequests()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/facebook/FacebookException;

    invoke-direct {v3, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1, v2, v3}, Lcom/facebook/Response;->constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;

    move-result-object v0

    .line 1460
    invoke-static {p0, v0}, Lcom/facebook/Request;->runCallbacks(Lcom/facebook/RequestBatch;Ljava/util/List;)V

    goto :goto_0
.end method

.method public static executeBatchAndWait(Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/Request;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1433
    new-instance v0, Lcom/facebook/RequestBatch;

    invoke-direct {v0, p0}, Lcom/facebook/RequestBatch;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/facebook/Request;->executeBatchAndWait(Lcom/facebook/RequestBatch;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static varargs executeBatchAndWait([Lcom/facebook/Request;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/facebook/Request;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1413
    const-string v0, "requests"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1415
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/Request;->executeBatchAndWait(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static executeBatchAsync(Lcom/facebook/RequestBatch;)Lcom/facebook/RequestAsyncTask;
    .locals 1

    .prologue
    .line 1521
    const-string v0, "requests"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notEmptyAndContainsNoNulls(Ljava/util/Collection;Ljava/lang/String;)V

    .line 1523
    new-instance v0, Lcom/facebook/RequestAsyncTask;

    invoke-direct {v0, p0}, Lcom/facebook/RequestAsyncTask;-><init>(Lcom/facebook/RequestBatch;)V

    .line 1524
    invoke-virtual {v0}, Lcom/facebook/RequestAsyncTask;->executeOnSettingsExecutor()Lcom/facebook/RequestAsyncTask;

    .line 1525
    return-object v0
.end method

.method public static executeBatchAsync(Ljava/util/Collection;)Lcom/facebook/RequestAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/Request;",
            ">;)",
            "Lcom/facebook/RequestAsyncTask;"
        }
    .end annotation

    .prologue
    .line 1503
    new-instance v0, Lcom/facebook/RequestBatch;

    invoke-direct {v0, p0}, Lcom/facebook/RequestBatch;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/facebook/Request;->executeBatchAsync(Lcom/facebook/RequestBatch;)Lcom/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static varargs executeBatchAsync([Lcom/facebook/Request;)Lcom/facebook/RequestAsyncTask;
    .locals 1

    .prologue
    .line 1483
    const-string v0, "requests"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1485
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/Request;->executeBatchAsync(Ljava/util/Collection;)Lcom/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static executeConnectionAndWait(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/RequestBatch;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1565
    invoke-static {p0, p1}, Lcom/facebook/Response;->fromHttpConnection(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Ljava/util/List;

    move-result-object v1

    .line 1567
    invoke-static {p0}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    .line 1569
    invoke-virtual {p1}, Lcom/facebook/RequestBatch;->size()I

    move-result v0

    .line 1570
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 1571
    new-instance v2, Lcom/facebook/FacebookException;

    const-string v3, "Received %d responses while expecting %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1575
    :cond_0
    invoke-static {p1, v1}, Lcom/facebook/Request;->runCallbacks(Lcom/facebook/RequestBatch;Ljava/util/List;)V

    .line 1579
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1580
    invoke-virtual {p1}, Lcom/facebook/RequestBatch;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/Request;

    .line 1581
    iget-object v4, v0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    if-eqz v4, :cond_1

    .line 1582
    iget-object v0, v0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1585
    :cond_2
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/Session;

    .line 1586
    invoke-virtual {v0}, Lcom/facebook/Session;->extendAccessTokenIfNeeded()V

    goto :goto_1

    .line 1589
    :cond_3
    return-object v1
.end method

.method public static executeConnectionAndWait(Ljava/net/HttpURLConnection;Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/Request;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1545
    new-instance v0, Lcom/facebook/RequestBatch;

    invoke-direct {v0, p1}, Lcom/facebook/RequestBatch;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, v0}, Lcom/facebook/Request;->executeConnectionAndWait(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static executeConnectionAsync(Landroid/os/Handler;Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Lcom/facebook/RequestAsyncTask;
    .locals 1

    .prologue
    .line 1633
    const-string v0, "connection"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1635
    new-instance v0, Lcom/facebook/RequestAsyncTask;

    invoke-direct {v0, p1, p2}, Lcom/facebook/RequestAsyncTask;-><init>(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)V

    .line 1636
    invoke-virtual {p2, p0}, Lcom/facebook/RequestBatch;->setCallbackHandler(Landroid/os/Handler;)V

    .line 1637
    invoke-virtual {v0}, Lcom/facebook/RequestAsyncTask;->executeOnSettingsExecutor()Lcom/facebook/RequestAsyncTask;

    .line 1638
    return-object v0
.end method

.method public static executeConnectionAsync(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Lcom/facebook/RequestAsyncTask;
    .locals 1

    .prologue
    .line 1609
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/facebook/Request;->executeConnectionAsync(Landroid/os/Handler;Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Lcom/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static executeGraphPathRequestAsync(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/RequestAsyncTask;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1202
    invoke-static {p0, p1, p2}, Lcom/facebook/Request;->newGraphPathRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static executeMeRequestAsync(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserCallback;)Lcom/facebook/RequestAsyncTask;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1125
    invoke-static {p0, p1}, Lcom/facebook/Request;->newMeRequest(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserCallback;)Lcom/facebook/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static executeMyFriendsRequestAsync(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserListCallback;)Lcom/facebook/RequestAsyncTask;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1143
    invoke-static {p0, p1}, Lcom/facebook/Request;->newMyFriendsRequest(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserListCallback;)Lcom/facebook/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static executePlacesSearchRequestAsync(Lcom/facebook/Session;Landroid/location/Location;IILjava/lang/String;Lcom/facebook/Request$GraphPlaceListCallback;)Lcom/facebook/RequestAsyncTask;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1233
    invoke-static/range {p0 .. p5}, Lcom/facebook/Request;->newPlacesSearchRequest(Lcom/facebook/Session;Landroid/location/Location;IILjava/lang/String;Lcom/facebook/Request$GraphPlaceListCallback;)Lcom/facebook/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static executePostRequestAsync(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/RequestAsyncTask;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1083
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/Request;->newPostRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static executeRestRequestAsync(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)Lcom/facebook/RequestAsyncTask;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1107
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/Request;->newRestRequest(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)Lcom/facebook/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static executeStatusUpdateRequestAsync(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/RequestAsyncTask;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1254
    invoke-static {p0, p1, p2}, Lcom/facebook/Request;->newStatusUpdateRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static executeUploadPhotoRequestAsync(Lcom/facebook/Session;Landroid/graphics/Bitmap;Lcom/facebook/Request$Callback;)Lcom/facebook/RequestAsyncTask;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1163
    invoke-static {p0, p1, p2}, Lcom/facebook/Request;->newUploadPhotoRequest(Lcom/facebook/Session;Landroid/graphics/Bitmap;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static executeUploadPhotoRequestAsync(Lcom/facebook/Session;Ljava/io/File;Lcom/facebook/Request$Callback;)Lcom/facebook/RequestAsyncTask;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1182
    invoke-static {p0, p1, p2}, Lcom/facebook/Request;->newUploadPhotoRequest(Lcom/facebook/Session;Ljava/io/File;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method private static getBatchAppId(Lcom/facebook/RequestBatch;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 2102
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getBatchApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2103
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getBatchApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 2112
    :goto_0
    return-object v0

    .line 2106
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/Request;

    .line 2107
    iget-object v0, v0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    .line 2108
    if-eqz v0, :cond_1

    .line 2109
    invoke-virtual {v0}, Lcom/facebook/Session;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2112
    :cond_2
    sget-object v0, Lcom/facebook/Request;->defaultBatchApplicationId:Ljava/lang/String;

    goto :goto_0
.end method

.method public static final getDefaultBatchApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1008
    sget-object v0, Lcom/facebook/Request;->defaultBatchApplicationId:Ljava/lang/String;

    return-object v0
.end method

.method private static getMimeContentType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2088
    const-string v0, "multipart/form-data; boundary=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getUserAgent()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2094
    sget-object v0, Lcom/facebook/Request;->userAgent:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2095
    const-string v0, "%s.%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "FBAndroidSDK"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "3.8.0"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/Request;->userAgent:Ljava/lang/String;

    .line 2098
    :cond_0
    sget-object v0, Lcom/facebook/Request;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method private static hasOnProgressCallbacks(Lcom/facebook/RequestBatch;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1858
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getCallbacks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/RequestBatch$Callback;

    .line 1859
    instance-of v0, v0, Lcom/facebook/RequestBatch$OnProgressCallback;

    if-eqz v0, :cond_0

    move v0, v1

    .line 1870
    :goto_0
    return v0

    .line 1864
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/Request;

    .line 1865
    invoke-virtual {v0}, Lcom/facebook/Request;->getCallback()Lcom/facebook/Request$Callback;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/Request$OnProgressCallback;

    if-eqz v0, :cond_2

    move v0, v1

    .line 1866
    goto :goto_0

    .line 1870
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSupportedAttachmentType(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 2130
    instance-of v0, p0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    instance-of v0, p0, [B

    if-nez v0, :cond_0

    instance-of v0, p0, Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSupportedParameterType(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 2135
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newCustomAudienceThirdPartyIdRequest(Lcom/facebook/Session;Landroid/content/Context;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 1

    .prologue
    .line 524
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/facebook/Request;->newCustomAudienceThirdPartyIdRequest(Lcom/facebook/Session;Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v0

    return-object v0
.end method

.method public static newCustomAudienceThirdPartyIdRequest(Lcom/facebook/Session;Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 6

    .prologue
    .line 564
    if-nez p0, :cond_8

    .line 565
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    .line 568
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/facebook/Session;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 569
    const/4 v1, 0x0

    .line 572
    :cond_0
    if-nez p2, :cond_1

    .line 573
    if-eqz v1, :cond_2

    .line 574
    invoke-virtual {v1}, Lcom/facebook/Session;->getApplicationId()Ljava/lang/String;

    move-result-object p2

    .line 580
    :cond_1
    :goto_1
    if-nez p2, :cond_3

    .line 581
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Facebook App ID cannot be determined"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 576
    :cond_2
    invoke-static {p1}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 584
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/custom_audience_third_party_id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 585
    invoke-static {p1}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v4

    .line 586
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 588
    if-nez v1, :cond_4

    .line 591
    invoke-virtual {v4}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v4}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionId()Ljava/lang/String;

    move-result-object v0

    .line 594
    :goto_2
    invoke-virtual {v4}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 595
    const-string v5, "udid"

    invoke-virtual {v3, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    :cond_4
    invoke-static {p1}, Lcom/facebook/Settings;->getLimitEventAndDataUsage(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v4}, Lcom/facebook/internal/AttributionIdentifiers;->isTrackingLimited()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 602
    :cond_5
    const-string v0, "limit_event_usage"

    const-string v4, "1"

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    :cond_6
    new-instance v0, Lcom/facebook/Request;

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-object v0

    .line 591
    :cond_7
    invoke-virtual {v4}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_8
    move-object v1, p0

    goto :goto_0
.end method

.method public static newDeleteObjectRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 6

    .prologue
    .line 752
    new-instance v0, Lcom/facebook/Request;

    const/4 v3, 0x0

    sget-object v4, Lcom/facebook/HttpMethod;->DELETE:Lcom/facebook/HttpMethod;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-object v0
.end method

.method public static newGraphPathRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 361
    new-instance v0, Lcom/facebook/Request;

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-object v0
.end method

.method public static newMeRequest(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserCallback;)Lcom/facebook/Request;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 263
    new-instance v5, Lcom/facebook/Request$1;

    invoke-direct {v5, p1}, Lcom/facebook/Request$1;-><init>(Lcom/facebook/Request$GraphUserCallback;)V

    .line 271
    new-instance v0, Lcom/facebook/Request;

    const-string v2, "me"

    move-object v1, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-object v0
.end method

.method public static newMyFriendsRequest(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserListCallback;)Lcom/facebook/Request;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 284
    new-instance v5, Lcom/facebook/Request$2;

    invoke-direct {v5, p1}, Lcom/facebook/Request$2;-><init>(Lcom/facebook/Request$GraphUserListCallback;)V

    .line 292
    new-instance v0, Lcom/facebook/Request;

    const-string v2, "me/friends"

    move-object v1, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-object v0
.end method

.method public static newPlacesSearchRequest(Lcom/facebook/Session;Landroid/location/Location;IILjava/lang/String;Lcom/facebook/Request$GraphPlaceListCallback;)Lcom/facebook/Request;
    .locals 8

    .prologue
    .line 388
    if-nez p1, :cond_0

    invoke-static {p4}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Either location or searchText must be specified."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_0
    new-instance v3, Landroid/os/Bundle;

    const/4 v0, 0x5

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 393
    const-string v0, "type"

    const-string v1, "place"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v0, "limit"

    invoke-virtual {v3, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 395
    if-eqz p1, :cond_1

    .line 396
    const-string v0, "center"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%f,%f"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string v0, "distance"

    invoke-virtual {v3, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 400
    :cond_1
    invoke-static {p4}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 401
    const-string v0, "q"

    invoke-virtual {v3, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :cond_2
    new-instance v5, Lcom/facebook/Request$3;

    invoke-direct {v5, p5}, Lcom/facebook/Request$3;-><init>(Lcom/facebook/Request$GraphPlaceListCallback;)V

    .line 413
    new-instance v0, Lcom/facebook/Request;

    const-string v2, "search"

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-object v0
.end method

.method public static newPostOpenGraphActionRequest(Lcom/facebook/Session;Lcom/facebook/model/OpenGraphAction;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 4

    .prologue
    .line 729
    if-nez p1, :cond_0

    .line 730
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "openGraphAction cannot be null"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 732
    :cond_0
    invoke-interface {p1}, Lcom/facebook/model/OpenGraphAction;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 733
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "openGraphAction must have non-null \'type\' property"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 736
    :cond_1
    const-string v0, "me/%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p1}, Lcom/facebook/model/OpenGraphAction;->getType()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 737
    invoke-static {p0, v0, p1, p2}, Lcom/facebook/Request;->newPostRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v0

    return-object v0
.end method

.method public static newPostOpenGraphObjectRequest(Lcom/facebook/Session;Lcom/facebook/model/OpenGraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 6

    .prologue
    .line 667
    if-nez p1, :cond_0

    .line 668
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "openGraphObject cannot be null"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 670
    :cond_0
    invoke-interface {p1}, Lcom/facebook/model/OpenGraphObject;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 671
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "openGraphObject must have non-null \'type\' property"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 673
    :cond_1
    invoke-interface {p1}, Lcom/facebook/model/OpenGraphObject;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 674
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "openGraphObject must have non-null \'title\' property"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 677
    :cond_2
    const-string v0, "me/objects/%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p1}, Lcom/facebook/model/OpenGraphObject;->getType()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 678
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 679
    const-string v0, "object"

    invoke-interface {p1}, Lcom/facebook/model/OpenGraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    new-instance v0, Lcom/facebook/Request;

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-object v0
.end method

.method public static newPostOpenGraphObjectRequest(Lcom/facebook/Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 6

    .prologue
    .line 707
    const-class v0, Lcom/facebook/model/OpenGraphObject;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/facebook/model/OpenGraphObject$Factory;->createForPost(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/model/OpenGraphObject;

    move-result-object v0

    .line 709
    if-eqz p6, :cond_0

    .line 710
    invoke-interface {v0, p6}, Lcom/facebook/model/OpenGraphObject;->setData(Lcom/facebook/model/GraphObject;)V

    .line 713
    :cond_0
    invoke-static {p0, v0, p7}, Lcom/facebook/Request;->newPostOpenGraphObjectRequest(Lcom/facebook/Session;Lcom/facebook/model/OpenGraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v0

    return-object v0
.end method

.method public static newPostRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 6

    .prologue
    .line 228
    new-instance v0, Lcom/facebook/Request;

    const/4 v3, 0x0

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 229
    invoke-virtual {v0, p2}, Lcom/facebook/Request;->setGraphObject(Lcom/facebook/model/GraphObject;)V

    .line 230
    return-object v0
.end method

.method public static newRestRequest(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)Lcom/facebook/Request;
    .locals 2

    .prologue
    .line 248
    new-instance v0, Lcom/facebook/Request;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p2, p3}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V

    .line 249
    invoke-virtual {v0, p1}, Lcom/facebook/Request;->setRestMethod(Ljava/lang/String;)V

    .line 250
    return-object v0
.end method

.method public static newStatusUpdateRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 428
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, p1, v0, v1, p2}, Lcom/facebook/Request;->newStatusUpdateRequest(Lcom/facebook/Session;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v0

    return-object v0
.end method

.method public static newStatusUpdateRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/model/GraphPlace;Ljava/util/List;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/Session;",
            "Ljava/lang/String;",
            "Lcom/facebook/model/GraphPlace;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/model/GraphUser;",
            ">;",
            "Lcom/facebook/Request$Callback;",
            ")",
            "Lcom/facebook/Request;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 482
    .line 483
    if-eqz p3, :cond_0

    .line 484
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 485
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/model/GraphUser;

    .line 486
    invoke-interface {v0}, Lcom/facebook/model/GraphUser;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 489
    :cond_1
    if-nez p2, :cond_2

    move-object v0, v1

    .line 490
    :goto_1
    invoke-static {p0, p1, v0, v2, p4}, Lcom/facebook/Request;->newStatusUpdateRequest(Lcom/facebook/Session;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v0

    return-object v0

    .line 489
    :cond_2
    invoke-interface {p2}, Lcom/facebook/model/GraphPlace;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static newStatusUpdateRequest(Lcom/facebook/Session;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/Session;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/Request$Callback;",
            ")",
            "Lcom/facebook/Request;"
        }
    .end annotation

    .prologue
    .line 449
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 450
    const-string v0, "message"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    if-eqz p2, :cond_0

    .line 453
    const-string v0, "place"

    invoke-virtual {v3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 457
    const-string v0, ","

    invoke-static {v0, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 458
    const-string v1, "tags"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    :cond_1
    new-instance v0, Lcom/facebook/Request;

    const-string v2, "me/feed"

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    move-object v1, p0

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-object v0
.end method

.method public static newUpdateOpenGraphObjectRequest(Lcom/facebook/Session;Lcom/facebook/model/OpenGraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 6

    .prologue
    .line 768
    if-nez p1, :cond_0

    .line 769
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "openGraphObject cannot be null"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 772
    :cond_0
    invoke-interface {p1}, Lcom/facebook/model/OpenGraphObject;->getId()Ljava/lang/String;

    move-result-object v2

    .line 773
    if-nez v2, :cond_1

    .line 774
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "openGraphObject must have an id"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 777
    :cond_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 778
    const-string v0, "object"

    invoke-interface {p1}, Lcom/facebook/model/OpenGraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    new-instance v0, Lcom/facebook/Request;

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-object v0
.end method

.method public static newUpdateOpenGraphObjectRequest(Lcom/facebook/Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 6

    .prologue
    .line 805
    const-class v0, Lcom/facebook/model/OpenGraphObject;

    const/4 v1, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/facebook/model/OpenGraphObject$Factory;->createForPost(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/model/OpenGraphObject;

    move-result-object v0

    .line 807
    invoke-interface {v0, p1}, Lcom/facebook/model/OpenGraphObject;->setId(Ljava/lang/String;)V

    .line 808
    invoke-interface {v0, p6}, Lcom/facebook/model/OpenGraphObject;->setData(Lcom/facebook/model/GraphObject;)V

    .line 810
    invoke-static {p0, v0, p7}, Lcom/facebook/Request;->newUpdateOpenGraphObjectRequest(Lcom/facebook/Session;Lcom/facebook/model/OpenGraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v0

    return-object v0
.end method

.method public static newUploadPhotoRequest(Lcom/facebook/Session;Landroid/graphics/Bitmap;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 6

    .prologue
    .line 307
    new-instance v3, Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 308
    const-string v0, "picture"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 310
    new-instance v0, Lcom/facebook/Request;

    const-string v2, "me/photos"

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-object v0
.end method

.method public static newUploadPhotoRequest(Lcom/facebook/Session;Ljava/io/File;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 6

    .prologue
    .line 324
    const/high16 v0, 0x10000000

    invoke-static {p1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 325
    new-instance v3, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v3, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 326
    const-string v1, "picture"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 328
    new-instance v0, Lcom/facebook/Request;

    const-string v2, "me/photos"

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-object v0
.end method

.method public static newUploadStagingResourceWithImageRequest(Lcom/facebook/Session;Landroid/graphics/Bitmap;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 6

    .prologue
    .line 624
    new-instance v3, Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 625
    const-string v0, "file"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 627
    new-instance v0, Lcom/facebook/Request;

    const-string v2, "me/staging_resources"

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-object v0
.end method

.method public static newUploadStagingResourceWithImageRequest(Lcom/facebook/Session;Ljava/io/File;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 6

    .prologue
    .line 646
    const/high16 v0, 0x10000000

    invoke-static {p1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 647
    new-instance v1, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;

    const-string v2, "image/png"

    invoke-direct {v1, v0, v2}, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;-><init>(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    .line 648
    new-instance v3, Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 649
    const-string v0, "file"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 651
    new-instance v0, Lcom/facebook/Request;

    const-string v2, "me/staging_resources"

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-object v0
.end method

.method public static newUploadVideoRequest(Lcom/facebook/Session;Ljava/io/File;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 6

    .prologue
    .line 342
    const/high16 v0, 0x10000000

    invoke-static {p1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 343
    new-instance v3, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v3, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 344
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 346
    new-instance v0, Lcom/facebook/Request;

    const-string v2, "me/videos"

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-object v0
.end method

.method private static parameterToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 2140
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2141
    check-cast p0, Ljava/lang/String;

    .line 2146
    :goto_0
    return-object p0

    .line 2142
    :cond_0
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 2143
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2144
    :cond_2
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_3

    .line 2145
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2146
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2148
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported parameter type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static processGraphObject(Lcom/facebook/model/GraphObject;Ljava/lang/String;Lcom/facebook/Request$KeyValueSerializer;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1987
    .line 1988
    const-string v0, "me/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/me/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1989
    :cond_0
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1990
    const-string v1, "?"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1991
    const/4 v4, 0x3

    if-le v0, v4, :cond_2

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    if-ge v0, v1, :cond_2

    :cond_1
    move v0, v2

    :goto_0
    move v4, v0

    .line 1994
    :goto_1
    invoke-interface {p0}, Lcom/facebook/model/GraphObject;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 1995
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1996
    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v5, "image"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v5, v2

    .line 1997
    :goto_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0, p2, v5}, Lcom/facebook/Request;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request$KeyValueSerializer;Z)V

    goto :goto_2

    :cond_2
    move v0, v3

    .line 1991
    goto :goto_0

    :cond_3
    move v5, v3

    .line 1996
    goto :goto_3

    .line 1999
    :cond_4
    return-void

    :cond_5
    move v4, v3

    goto :goto_1
.end method

.method private static processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request$KeyValueSerializer;Z)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 2003
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2004
    const-class v1, Lcom/facebook/model/GraphObject;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2005
    check-cast p1, Lcom/facebook/model/GraphObject;

    invoke-interface {p1}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    .line 2006
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    move-object v1, v0

    move-object v0, p1

    .line 2012
    :goto_0
    const-class v3, Lorg/json/JSONObject;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2013
    check-cast v0, Lorg/json/JSONObject;

    .line 2014
    if-eqz p3, :cond_1

    .line 2017
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 2018
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2019
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2020
    const-string v4, "%s[%s]"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p0, v5, v2

    aput-object v1, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2021
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v4, v1, p2, p3}, Lcom/facebook/Request;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request$KeyValueSerializer;Z)V

    goto :goto_1

    .line 2007
    :cond_0
    const-class v1, Lcom/facebook/model/GraphObjectList;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2008
    check-cast p1, Lcom/facebook/model/GraphObjectList;

    invoke-interface {p1}, Lcom/facebook/model/GraphObjectList;->getInnerJSONArray()Lorg/json/JSONArray;

    move-result-object p1

    .line 2009
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    move-object v1, v0

    move-object v0, p1

    goto :goto_0

    .line 2026
    :cond_1
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2027
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/facebook/Request;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request$KeyValueSerializer;Z)V

    .line 2053
    :cond_2
    :goto_2
    return-void

    .line 2028
    :cond_3
    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2029
    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/facebook/Request;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request$KeyValueSerializer;Z)V

    goto :goto_2

    .line 2032
    :cond_4
    const-class v3, Lorg/json/JSONArray;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2033
    check-cast v0, Lorg/json/JSONArray;

    .line 2034
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    move v1, v2

    .line 2035
    :goto_3
    if-ge v1, v3, :cond_2

    .line 2036
    const-string v4, "%s[%d]"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p0, v5, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2037
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5, p2, p3}, Lcom/facebook/Request;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request$KeyValueSerializer;Z)V

    .line 2035
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2039
    :cond_5
    const-class v2, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_6

    const-class v2, Ljava/lang/Number;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_6

    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2042
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lcom/facebook/Request$KeyValueSerializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2043
    :cond_7
    const-class v2, Ljava/util/Date;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2044
    check-cast v0, Ljava/util/Date;

    .line 2050
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2051
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lcom/facebook/Request$KeyValueSerializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    move-object v1, v0

    move-object v0, p1

    goto/16 :goto_0
.end method

.method private static processRequest(Lcom/facebook/RequestBatch;Lcom/facebook/internal/Logger;ILjava/net/URL;Ljava/io/OutputStream;)V
    .locals 7

    .prologue
    .line 1932
    new-instance v1, Lcom/facebook/Request$Serializer;

    invoke-direct {v1, p4, p1}, Lcom/facebook/Request$Serializer;-><init>(Ljava/io/OutputStream;Lcom/facebook/internal/Logger;)V

    .line 1934
    const/4 v0, 0x1

    if-ne p2, v0, :cond_5

    .line 1935
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/RequestBatch;->get(I)Lcom/facebook/Request;

    move-result-object v2

    .line 1937
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1938
    iget-object v0, v2, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1939
    iget-object v5, v2, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 1940
    invoke-static {v5}, Lcom/facebook/Request;->isSupportedAttachmentType(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1941
    new-instance v6, Lcom/facebook/Request$Attachment;

    invoke-direct {v6, v2, v5}, Lcom/facebook/Request$Attachment;-><init>(Lcom/facebook/Request;Ljava/lang/Object;)V

    invoke-interface {v3, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1945
    :cond_1
    if-eqz p1, :cond_2

    .line 1946
    const-string v0, "  Parameters:\n"

    invoke-virtual {p1, v0}, Lcom/facebook/internal/Logger;->append(Ljava/lang/String;)V

    .line 1948
    :cond_2
    iget-object v0, v2, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/facebook/Request;->serializeParameters(Landroid/os/Bundle;Lcom/facebook/Request$Serializer;Lcom/facebook/Request;)V

    .line 1950
    if-eqz p1, :cond_3

    .line 1951
    const-string v0, "  Attachments:\n"

    invoke-virtual {p1, v0}, Lcom/facebook/internal/Logger;->append(Ljava/lang/String;)V

    .line 1953
    :cond_3
    invoke-static {v3, v1}, Lcom/facebook/Request;->serializeAttachments(Ljava/util/Map;Lcom/facebook/Request$Serializer;)V

    .line 1955
    iget-object v0, v2, Lcom/facebook/Request;->graphObject:Lcom/facebook/model/GraphObject;

    if-eqz v0, :cond_4

    .line 1956
    iget-object v0, v2, Lcom/facebook/Request;->graphObject:Lcom/facebook/model/GraphObject;

    invoke-virtual {p3}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/facebook/Request;->processGraphObject(Lcom/facebook/model/GraphObject;Ljava/lang/String;Lcom/facebook/Request$KeyValueSerializer;)V

    .line 1977
    :cond_4
    :goto_1
    return-void

    .line 1959
    :cond_5
    invoke-static {p0}, Lcom/facebook/Request;->getBatchAppId(Lcom/facebook/RequestBatch;)Ljava/lang/String;

    move-result-object v0

    .line 1960
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1961
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "At least one request in a batch must have an open Session, or a default app ID must be specified."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1965
    :cond_6
    const-string v2, "batch_app_id"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/Request$Serializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1969
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1970
    invoke-static {v1, p0, v0}, Lcom/facebook/Request;->serializeRequestsAsJSON(Lcom/facebook/Request$Serializer;Ljava/util/Collection;Ljava/util/Map;)V

    .line 1972
    if-eqz p1, :cond_7

    .line 1973
    const-string v2, "  Attachments:\n"

    invoke-virtual {p1, v2}, Lcom/facebook/internal/Logger;->append(Ljava/lang/String;)V

    .line 1975
    :cond_7
    invoke-static {v0, v1}, Lcom/facebook/Request;->serializeAttachments(Ljava/util/Map;Lcom/facebook/Request$Serializer;)V

    goto :goto_1
.end method

.method static runCallbacks(Lcom/facebook/RequestBatch;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/RequestBatch;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1655
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->size()I

    move-result v1

    .line 1658
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1659
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 1660
    invoke-virtual {p0, v0}, Lcom/facebook/RequestBatch;->get(I)Lcom/facebook/Request;

    move-result-object v3

    .line 1661
    iget-object v4, v3, Lcom/facebook/Request;->callback:Lcom/facebook/Request$Callback;

    if-eqz v4, :cond_0

    .line 1662
    new-instance v4, Landroid/util/Pair;

    iget-object v3, v3, Lcom/facebook/Request;->callback:Lcom/facebook/Request$Callback;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1659
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1666
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1667
    new-instance v0, Lcom/facebook/Request$4;

    invoke-direct {v0, v2, p0}, Lcom/facebook/Request$4;-><init>(Ljava/util/ArrayList;Lcom/facebook/RequestBatch;)V

    .line 1680
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getCallbackHandler()Landroid/os/Handler;

    move-result-object v1

    .line 1681
    if-nez v1, :cond_3

    .line 1683
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1689
    :cond_2
    :goto_1
    return-void

    .line 1686
    :cond_3
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private static serializeAttachments(Ljava/util/Map;Lcom/facebook/Request$Serializer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/Request$Attachment;",
            ">;",
            "Lcom/facebook/Request$Serializer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2067
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2069
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2070
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/Request$Attachment;

    .line 2071
    invoke-virtual {v1}, Lcom/facebook/Request$Attachment;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/Request;->isSupportedAttachmentType(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2072
    invoke-virtual {v1}, Lcom/facebook/Request$Attachment;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Lcom/facebook/Request$Attachment;->getRequest()Lcom/facebook/Request;

    move-result-object v1

    invoke-virtual {p1, v0, v3, v1}, Lcom/facebook/Request$Serializer;->writeObject(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request;)V

    goto :goto_0

    .line 2075
    :cond_1
    return-void
.end method

.method private static serializeParameters(Landroid/os/Bundle;Lcom/facebook/Request$Serializer;Lcom/facebook/Request;)V
    .locals 4

    .prologue
    .line 2056
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2058
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2059
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 2060
    invoke-static {v2}, Lcom/facebook/Request;->isSupportedParameterType(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2061
    invoke-virtual {p1, v0, v2, p2}, Lcom/facebook/Request$Serializer;->writeObject(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request;)V

    goto :goto_0

    .line 2064
    :cond_1
    return-void
.end method

.method private static serializeRequestsAsJSON(Lcom/facebook/Request$Serializer;Ljava/util/Collection;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/Request$Serializer;",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/Request;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/Request$Attachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2079
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 2080
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/Request;

    .line 2081
    invoke-direct {v0, v1, p2}, Lcom/facebook/Request;->serializeToBatch(Lorg/json/JSONArray;Ljava/util/Map;)V

    goto :goto_0

    .line 2084
    :cond_0
    const-string v0, "batch"

    invoke-virtual {p0, v0, v1, p1}, Lcom/facebook/Request$Serializer;->writeRequestsAsJson(Ljava/lang/String;Lorg/json/JSONArray;Ljava/util/Collection;)V

    .line 2085
    return-void
.end method

.method private serializeToBatch(Lorg/json/JSONArray;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/Request$Attachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1799
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1801
    iget-object v0, p0, Lcom/facebook/Request;->batchEntryName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1802
    const-string v0, "name"

    iget-object v2, p0, Lcom/facebook/Request;->batchEntryName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1803
    const-string v0, "omit_response_on_success"

    iget-boolean v2, p0, Lcom/facebook/Request;->batchEntryOmitResultOnSuccess:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1805
    :cond_0
    iget-object v0, p0, Lcom/facebook/Request;->batchEntryDependsOn:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1806
    const-string v0, "depends_on"

    iget-object v2, p0, Lcom/facebook/Request;->batchEntryDependsOn:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1809
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/Request;->getUrlForBatchedRequest()Ljava/lang/String;

    move-result-object v2

    .line 1810
    const-string v0, "relative_url"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1811
    const-string v0, "method"

    iget-object v3, p0, Lcom/facebook/Request;->httpMethod:Lcom/facebook/HttpMethod;

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1812
    iget-object v0, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    if-eqz v0, :cond_2

    .line 1813
    iget-object v0, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    invoke-virtual {v0}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 1814
    invoke-static {v0}, Lcom/facebook/internal/Logger;->registerAccessToken(Ljava/lang/String;)V

    .line 1818
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1819
    iget-object v0, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1820
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1821
    iget-object v5, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1822
    invoke-static {v0}, Lcom/facebook/Request;->isSupportedAttachmentType(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1824
    const-string v5, "%s%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "file"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1825
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1826
    new-instance v6, Lcom/facebook/Request$Attachment;

    invoke-direct {v6, p0, v0}, Lcom/facebook/Request$Attachment;-><init>(Lcom/facebook/Request;Ljava/lang/Object;)V

    invoke-interface {p2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1830
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1831
    const-string v0, ","

    invoke-static {v0, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 1832
    const-string v3, "attached_files"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1835
    :cond_5
    iget-object v0, p0, Lcom/facebook/Request;->graphObject:Lcom/facebook/model/GraphObject;

    if-eqz v0, :cond_6

    .line 1837
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1838
    iget-object v3, p0, Lcom/facebook/Request;->graphObject:Lcom/facebook/model/GraphObject;

    new-instance v4, Lcom/facebook/Request$5;

    invoke-direct {v4, p0, v0}, Lcom/facebook/Request$5;-><init>(Lcom/facebook/Request;Ljava/util/ArrayList;)V

    invoke-static {v3, v2, v4}, Lcom/facebook/Request;->processGraphObject(Lcom/facebook/model/GraphObject;Ljava/lang/String;Lcom/facebook/Request$KeyValueSerializer;)V

    .line 1844
    const-string v2, "&"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 1845
    const-string v2, "body"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1848
    :cond_6
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1849
    return-void
.end method

.method static final serializeToUrlConnection(Lcom/facebook/RequestBatch;Ljava/net/HttpURLConnection;)V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1875
    new-instance v7, Lcom/facebook/internal/Logger;

    sget-object v0, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    const-string v3, "Request"

    invoke-direct {v7, v0, v3}, Lcom/facebook/internal/Logger;-><init>(Lcom/facebook/LoggingBehavior;Ljava/lang/String;)V

    .line 1877
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->size()I

    move-result v8

    .line 1879
    if-ne v8, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/facebook/RequestBatch;->get(I)Lcom/facebook/Request;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/Request;->httpMethod:Lcom/facebook/HttpMethod;

    .line 1880
    :goto_0
    invoke-virtual {v0}, Lcom/facebook/HttpMethod;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1882
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v9

    .line 1883
    const-string v3, "Request:\n"

    invoke-virtual {v7, v3}, Lcom/facebook/internal/Logger;->append(Ljava/lang/String;)V

    .line 1884
    const-string v3, "Id"

    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1885
    const-string v3, "URL"

    invoke-virtual {v7, v3, v9}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1886
    const-string v3, "Method"

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1887
    const-string v3, "User-Agent"

    const-string v4, "User-Agent"

    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1888
    const-string v3, "Content-Type"

    const-string v4, "Content-Type"

    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1890
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getTimeout()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1891
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getTimeout()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1895
    sget-object v3, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    if-ne v0, v3, :cond_1

    move v0, v1

    .line 1896
    :goto_1
    if-nez v0, :cond_2

    .line 1897
    invoke-virtual {v7}, Lcom/facebook/internal/Logger;->log()V

    .line 1927
    :goto_2
    return-void

    .line 1879
    :cond_0
    sget-object v0, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1895
    goto :goto_1

    .line 1901
    :cond_2
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1905
    :try_start_0
    invoke-static {p0}, Lcom/facebook/Request;->hasOnProgressCallbacks(Lcom/facebook/RequestBatch;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1907
    new-instance v0, Lcom/facebook/ProgressNoopOutputStream;

    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getCallbackHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/ProgressNoopOutputStream;-><init>(Landroid/os/Handler;)V

    .line 1908
    const/4 v1, 0x0

    invoke-static {p0, v1, v8, v9, v0}, Lcom/facebook/Request;->processRequest(Lcom/facebook/RequestBatch;Lcom/facebook/internal/Logger;ILjava/net/URL;Ljava/io/OutputStream;)V

    .line 1910
    invoke-virtual {v0}, Lcom/facebook/ProgressNoopOutputStream;->getMaxProgress()I

    move-result v2

    .line 1911
    invoke-virtual {v0}, Lcom/facebook/ProgressNoopOutputStream;->getProgressMap()Ljava/util/Map;

    move-result-object v3

    .line 1913
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1914
    new-instance v0, Lcom/facebook/ProgressOutputStream;

    int-to-long v4, v2

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ProgressOutputStream;-><init>(Ljava/io/OutputStream;Lcom/facebook/RequestBatch;Ljava/util/Map;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    .line 1920
    :goto_3
    :try_start_1
    invoke-static {p0, v7, v8, v9, v1}, Lcom/facebook/Request;->processRequest(Lcom/facebook/RequestBatch;Lcom/facebook/internal/Logger;ILjava/net/URL;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1923
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 1926
    invoke-virtual {v7}, Lcom/facebook/internal/Logger;->log()V

    goto :goto_2

    .line 1917
    :cond_3
    :try_start_2
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 1923
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4
.end method

.method public static final setDefaultBatchApplicationId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1020
    sput-object p0, Lcom/facebook/Request;->defaultBatchApplicationId:Ljava/lang/String;

    .line 1021
    return-void
.end method

.method public static toHttpConnection(Lcom/facebook/RequestBatch;)Ljava/net/HttpURLConnection;
    .locals 3

    .prologue
    .line 1339
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/Request;

    .line 1340
    invoke-direct {v0}, Lcom/facebook/Request;->validate()V

    goto :goto_0

    .line 1345
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1347
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/RequestBatch;->get(I)Lcom/facebook/Request;

    move-result-object v1

    .line 1349
    new-instance v0, Ljava/net/URL;

    invoke-virtual {v1}, Lcom/facebook/Request;->getUrlForSingleRequest()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1361
    :goto_1
    :try_start_1
    invoke-static {v0}, Lcom/facebook/Request;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 1363
    invoke-static {p0, v0}, Lcom/facebook/Request;->serializeToUrlConnection(Lcom/facebook/RequestBatch;Ljava/net/HttpURLConnection;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1370
    return-object v0

    .line 1353
    :cond_1
    :try_start_2
    new-instance v0, Ljava/net/URL;

    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getGraphUrlBase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1355
    :catch_0
    move-exception v0

    .line 1356
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "could not construct URL for request"

    invoke-direct {v1, v2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1364
    :catch_1
    move-exception v0

    .line 1365
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "could not construct request body"

    invoke-direct {v1, v2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1366
    :catch_2
    move-exception v0

    .line 1367
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "could not construct request body"

    invoke-direct {v1, v2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static toHttpConnection(Ljava/util/Collection;)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/Request;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .prologue
    .line 1318
    const-string v0, "requests"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notEmptyAndContainsNoNulls(Ljava/util/Collection;Ljava/lang/String;)V

    .line 1320
    new-instance v0, Lcom/facebook/RequestBatch;

    invoke-direct {v0, p0}, Lcom/facebook/RequestBatch;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/facebook/Request;->toHttpConnection(Lcom/facebook/RequestBatch;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public static varargs toHttpConnection([Lcom/facebook/Request;)Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 1300
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/Request;->toHttpConnection(Ljava/util/Collection;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method private static typedListFromResponse(Lcom/facebook/Response;Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/model/GraphObject;",
            ">(",
            "Lcom/facebook/Response;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2116
    const-class v0, Lcom/facebook/model/GraphMultiResult;

    invoke-virtual {p0, v0}, Lcom/facebook/Response;->getGraphObjectAs(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    move-result-object v0

    check-cast v0, Lcom/facebook/model/GraphMultiResult;

    .line 2117
    if-nez v0, :cond_0

    move-object v0, v1

    .line 2126
    :goto_0
    return-object v0

    .line 2121
    :cond_0
    invoke-interface {v0}, Lcom/facebook/model/GraphMultiResult;->getData()Lcom/facebook/model/GraphObjectList;

    move-result-object v0

    .line 2122
    if-nez v0, :cond_1

    move-object v0, v1

    .line 2123
    goto :goto_0

    .line 2126
    :cond_1
    invoke-interface {v0, p1}, Lcom/facebook/model/GraphObjectList;->castToListOf(Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;

    move-result-object v0

    goto :goto_0
.end method

.method private validate()V
    .locals 2

    .prologue
    .line 1852
    iget-object v0, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/Request;->restMethod:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1853
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only one of a graph path or REST method may be specified per request."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1855
    :cond_0
    return-void
.end method


# virtual methods
.method public final executeAndWait()Lcom/facebook/Response;
    .locals 1

    .prologue
    .line 1269
    invoke-static {p0}, Lcom/facebook/Request;->executeAndWait(Lcom/facebook/Request;)Lcom/facebook/Response;

    move-result-object v0

    return-object v0
.end method

.method public final executeAsync()Lcom/facebook/RequestAsyncTask;
    .locals 2

    .prologue
    .line 1282
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/facebook/Request;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/facebook/Request;->executeBatchAsync([Lcom/facebook/Request;)Lcom/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final getBatchEntryDependsOn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 960
    iget-object v0, p0, Lcom/facebook/Request;->batchEntryDependsOn:Ljava/lang/String;

    return-object v0
.end method

.method public final getBatchEntryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 937
    iget-object v0, p0, Lcom/facebook/Request;->batchEntryName:Ljava/lang/String;

    return-object v0
.end method

.method public final getBatchEntryOmitResultOnSuccess()Z
    .locals 1

    .prologue
    .line 984
    iget-boolean v0, p0, Lcom/facebook/Request;->batchEntryOmitResultOnSuccess:Z

    return v0
.end method

.method public final getCallback()Lcom/facebook/Request$Callback;
    .locals 1

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/facebook/Request;->callback:Lcom/facebook/Request$Callback;

    return-object v0
.end method

.method public final getGraphObject()Lcom/facebook/model/GraphObject;
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Lcom/facebook/Request;->graphObject:Lcom/facebook/model/GraphObject;

    return-object v0
.end method

.method public final getGraphPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getHttpMethod()Lcom/facebook/HttpMethod;
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Lcom/facebook/Request;->httpMethod:Lcom/facebook/HttpMethod;

    return-object v0
.end method

.method public final getParameters()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 879
    iget-object v0, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getRestMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Lcom/facebook/Request;->restMethod:Ljava/lang/String;

    return-object v0
.end method

.method public final getSession()Lcom/facebook/Session;
    .locals 1

    .prologue
    .line 917
    iget-object v0, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    return-object v0
.end method

.method public final getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/facebook/Request;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method final getUrlForBatchedRequest()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1745
    iget-object v0, p0, Lcom/facebook/Request;->overriddenURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1746
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Can\'t override URL for a batch request"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1750
    :cond_0
    iget-object v0, p0, Lcom/facebook/Request;->restMethod:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "method/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/Request;->restMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1756
    :goto_0
    invoke-direct {p0}, Lcom/facebook/Request;->addCommonParameters()V

    .line 1757
    invoke-direct {p0, v0}, Lcom/facebook/Request;->appendParametersToBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1753
    :cond_1
    iget-object v0, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;

    goto :goto_0
.end method

.method final getUrlForSingleRequest()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1761
    iget-object v0, p0, Lcom/facebook/Request;->overriddenURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1762
    iget-object v0, p0, Lcom/facebook/Request;->overriddenURL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1777
    :goto_0
    return-object v0

    .line 1766
    :cond_0
    iget-object v0, p0, Lcom/facebook/Request;->restMethod:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1767
    const-string v0, "%s/%s"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getRestUrlBase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/facebook/Request;->restMethod:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1776
    :goto_1
    invoke-direct {p0}, Lcom/facebook/Request;->addCommonParameters()V

    .line 1777
    invoke-direct {p0, v0}, Lcom/facebook/Request;->appendParametersToBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1769
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/Request;->getHttpMethod()Lcom/facebook/HttpMethod;

    move-result-object v0

    sget-object v1, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;

    const-string v1, "/videos"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1770
    const-string v0, "%s/%s"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getGraphVideoUrlBase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1772
    :cond_2
    const-string v0, "%s/%s"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getGraphUrlBase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public final setBatchEntryDependsOn(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 973
    iput-object p1, p0, Lcom/facebook/Request;->batchEntryDependsOn:Ljava/lang/String;

    .line 974
    return-void
.end method

.method public final setBatchEntryName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 951
    iput-object p1, p0, Lcom/facebook/Request;->batchEntryName:Ljava/lang/String;

    .line 952
    return-void
.end method

.method public final setBatchEntryOmitResultOnSuccess(Z)V
    .locals 0

    .prologue
    .line 997
    iput-boolean p1, p0, Lcom/facebook/Request;->batchEntryOmitResultOnSuccess:Z

    .line 998
    return-void
.end method

.method public final setCallback(Lcom/facebook/Request$Callback;)V
    .locals 0

    .prologue
    .line 1039
    iput-object p1, p0, Lcom/facebook/Request;->callback:Lcom/facebook/Request$Callback;

    .line 1040
    return-void
.end method

.method public final setGraphObject(Lcom/facebook/model/GraphObject;)V
    .locals 0

    .prologue
    .line 829
    iput-object p1, p0, Lcom/facebook/Request;->graphObject:Lcom/facebook/model/GraphObject;

    .line 830
    return-void
.end method

.method public final setGraphPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 848
    iput-object p1, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;

    .line 849
    return-void
.end method

.method public final setHttpMethod(Lcom/facebook/HttpMethod;)V
    .locals 2

    .prologue
    .line 867
    iget-object v0, p0, Lcom/facebook/Request;->overriddenURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    if-eq p1, v0, :cond_0

    .line 868
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Can\'t change HTTP method on request with overridden URL."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 870
    :cond_0
    if-eqz p1, :cond_1

    :goto_0
    iput-object p1, p0, Lcom/facebook/Request;->httpMethod:Lcom/facebook/HttpMethod;

    .line 871
    return-void

    .line 870
    :cond_1
    sget-object p1, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    goto :goto_0
.end method

.method public final setParameters(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 889
    iput-object p1, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    .line 890
    return-void
.end method

.method public final setRestMethod(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 908
    iput-object p1, p0, Lcom/facebook/Request;->restMethod:Ljava/lang/String;

    .line 909
    return-void
.end method

.method public final setSession(Lcom/facebook/Session;)V
    .locals 0

    .prologue
    .line 928
    iput-object p1, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    .line 929
    return-void
.end method

.method public final setTag(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1049
    iput-object p1, p0, Lcom/facebook/Request;->tag:Ljava/lang/Object;

    .line 1050
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{Request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", graphPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", graphObject: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/Request;->graphObject:Lcom/facebook/model/GraphObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", restMethod: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/Request;->restMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", httpMethod: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/Request;->httpMethod:Lcom/facebook/HttpMethod;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", parameters: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
