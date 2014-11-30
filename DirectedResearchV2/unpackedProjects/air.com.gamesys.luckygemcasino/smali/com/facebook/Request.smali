.class public Lcom/facebook/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/Request$Callback;,
        Lcom/facebook/Request$GraphPlaceListCallback;,
        Lcom/facebook/Request$GraphUserCallback;,
        Lcom/facebook/Request$GraphUserListCallback;,
        Lcom/facebook/Request$KeyValueSerializer;,
        Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;,
        Lcom/facebook/Request$Serializer;
    }
.end annotation


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

    .line 152
    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 153
    return-void
.end method

.method public constructor <init>(Lcom/facebook/Session;Ljava/lang/String;)V
    .locals 6
    .param p1, "session"    # Lcom/facebook/Session;
    .param p2, "graphPath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 167
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 168
    return-void
.end method

.method public constructor <init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V
    .locals 6
    .param p1, "session"    # Lcom/facebook/Session;
    .param p2, "graphPath"    # Ljava/lang/String;
    .param p3, "parameters"    # Landroid/os/Bundle;
    .param p4, "httpMethod"    # Lcom/facebook/HttpMethod;

    .prologue
    .line 189
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 190
    return-void
.end method

.method public constructor <init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V
    .locals 3
    .param p1, "session"    # Lcom/facebook/Session;
    .param p2, "graphPath"    # Ljava/lang/String;
    .param p3, "parameters"    # Landroid/os/Bundle;
    .param p4, "httpMethod"    # Lcom/facebook/HttpMethod;
    .param p5, "callback"    # Lcom/facebook/Request$Callback;

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/Request;->batchEntryOmitResultOnSuccess:Z

    .line 213
    iput-object p1, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    .line 214
    iput-object p2, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;

    .line 215
    iput-object p5, p0, Lcom/facebook/Request;->callback:Lcom/facebook/Request$Callback;

    .line 217
    invoke-virtual {p0, p4}, Lcom/facebook/Request;->setHttpMethod(Lcom/facebook/HttpMethod;)V

    .line 219
    if-eqz p3, :cond_1

    .line 220
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    .line 225
    :goto_0
    iget-object v0, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    const-string v1, "migration_bundle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    const-string v1, "migration_bundle"

    const-string v2, "fbsdk:20130708"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_0
    return-void

    .line 222
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    goto :goto_0
.end method

.method constructor <init>(Lcom/facebook/Session;Ljava/net/URL;)V
    .locals 1
    .param p1, "session"    # Lcom/facebook/Session;
    .param p2, "overriddenURL"    # Ljava/net/URL;

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/Request;->batchEntryOmitResultOnSuccess:Z

    .line 231
    iput-object p1, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    .line 232
    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Request;->overriddenURL:Ljava/lang/String;

    .line 234
    sget-object v0, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    invoke-virtual {p0, v0}, Lcom/facebook/Request;->setHttpMethod(Lcom/facebook/HttpMethod;)V

    .line 236
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    .line 237
    return-void
.end method

.method static synthetic access$0(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 2084
    invoke-static {p0}, Lcom/facebook/Request;->isSupportedParameterType(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2089
    invoke-static {p0}, Lcom/facebook/Request;->parameterToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/facebook/Response;Ljava/lang/Class;)Ljava/util/List;
    .locals 1

    .prologue
    .line 2065
    invoke-static {p0, p1}, Lcom/facebook/Request;->typedListFromResponse(Lcom/facebook/Response;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private addCommonParameters()V
    .locals 4

    .prologue
    .line 1727
    iget-object v1, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    if-eqz v1, :cond_1

    .line 1728
    iget-object v1, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    invoke-virtual {v1}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1729
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Session provided to a Request in un-opened state."

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1730
    :cond_0
    iget-object v1, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    const-string v2, "access_token"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1731
    iget-object v1, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    invoke-virtual {v1}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 1732
    .local v0, "accessToken":Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/internal/Logger;->registerAccessToken(Ljava/lang/String;)V

    .line 1733
    iget-object v1, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    const-string v2, "access_token"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1736
    .end local v0    # "accessToken":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    const-string v2, "sdk"

    const-string v3, "android"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1737
    iget-object v1, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    const-string v2, "format"

    const-string v3, "json"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1738
    return-void
.end method

.method private appendParametersToBaseUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 1741
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v4, p1}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 1743
    .local v2, "uriBuilder":Landroid/net/Uri$Builder;
    iget-object v4, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 1744
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1764
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1744
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1745
    .local v0, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1747
    .local v3, "value":Ljava/lang/Object;
    if-nez v3, :cond_2

    .line 1748
    const-string v3, ""

    .line 1751
    .end local v3    # "value":Ljava/lang/Object;
    :cond_2
    invoke-static {v3}, Lcom/facebook/Request;->isSupportedParameterType(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1752
    invoke-static {v3}, Lcom/facebook/Request;->parameterToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1761
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 1754
    .end local v3    # "value":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/facebook/Request;->httpMethod:Lcom/facebook/HttpMethod;

    sget-object v6, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    if-ne v5, v6, :cond_0

    .line 1755
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unsupported parameter type for GET request: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 1756
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 1755
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method static createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 3
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1716
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 1718
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const-string v1, "User-Agent"

    invoke-static {}, Lcom/facebook/Request;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1719
    const-string v1, "Content-Type"

    invoke-static {}, Lcom/facebook/Request;->getMimeContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1721
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 1722
    return-object v0
.end method

.method public static executeAndWait(Lcom/facebook/Request;)Lcom/facebook/Response;
    .locals 4
    .param p0, "request"    # Lcom/facebook/Request;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1410
    new-array v1, v3, [Lcom/facebook/Request;

    aput-object p0, v1, v2

    invoke-static {v1}, Lcom/facebook/Request;->executeBatchAndWait([Lcom/facebook/Request;)Ljava/util/List;

    move-result-object v0

    .line 1412
    .local v0, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/Response;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 1413
    :cond_0
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "invalid state: expected a single response"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1416
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/Response;

    return-object v1
.end method

.method public static executeBatchAndWait(Lcom/facebook/RequestBatch;)Ljava/util/List;
    .locals 6
    .param p0, "requests"    # Lcom/facebook/RequestBatch;
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
    .line 1476
    const-string v3, "requests"

    invoke-static {p0, v3}, Lcom/facebook/internal/Validate;->notEmptyAndContainsNoNulls(Ljava/util/Collection;Ljava/lang/String;)V

    .line 1478
    const/4 v0, 0x0

    .line 1480
    .local v0, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    invoke-static {p0}, Lcom/facebook/Request;->toHttpConnection(Lcom/facebook/RequestBatch;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1487
    invoke-static {v0, p0}, Lcom/facebook/Request;->executeConnectionAndWait(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Ljava/util/List;

    move-result-object v2

    .line 1488
    .local v2, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/Response;>;"
    :goto_0
    return-object v2

    .line 1481
    .end local v2    # "responses":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/Response;>;"
    :catch_0
    move-exception v1

    .line 1482
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getRequests()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/facebook/FacebookException;

    invoke-direct {v5, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v3, v4, v5}, Lcom/facebook/Response;->constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;

    move-result-object v2

    .line 1483
    .restart local v2    # "responses":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/Response;>;"
    invoke-static {p0, v2}, Lcom/facebook/Request;->runCallbacks(Lcom/facebook/RequestBatch;Ljava/util/List;)V

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
    .line 1456
    .local p0, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/Request;>;"
    new-instance v0, Lcom/facebook/RequestBatch;

    invoke-direct {v0, p0}, Lcom/facebook/RequestBatch;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/facebook/Request;->executeBatchAndWait(Lcom/facebook/RequestBatch;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static varargs executeBatchAndWait([Lcom/facebook/Request;)Ljava/util/List;
    .locals 1
    .param p0, "requests"    # [Lcom/facebook/Request;
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
    .line 1436
    const-string v0, "requests"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1438
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/Request;->executeBatchAndWait(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static executeBatchAsync(Lcom/facebook/RequestBatch;)Lcom/facebook/RequestAsyncTask;
    .locals 2
    .param p0, "requests"    # Lcom/facebook/RequestBatch;

    .prologue
    .line 1544
    const-string v1, "requests"

    invoke-static {p0, v1}, Lcom/facebook/internal/Validate;->notEmptyAndContainsNoNulls(Ljava/util/Collection;Ljava/lang/String;)V

    .line 1546
    new-instance v0, Lcom/facebook/RequestAsyncTask;

    invoke-direct {v0, p0}, Lcom/facebook/RequestAsyncTask;-><init>(Lcom/facebook/RequestBatch;)V

    .line 1547
    .local v0, "asyncTask":Lcom/facebook/RequestAsyncTask;
    invoke-virtual {v0}, Lcom/facebook/RequestAsyncTask;->executeOnSettingsExecutor()Lcom/facebook/RequestAsyncTask;

    .line 1548
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
    .line 1526
    .local p0, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/Request;>;"
    new-instance v0, Lcom/facebook/RequestBatch;

    invoke-direct {v0, p0}, Lcom/facebook/RequestBatch;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/facebook/Request;->executeBatchAsync(Lcom/facebook/RequestBatch;)Lcom/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static varargs executeBatchAsync([Lcom/facebook/Request;)Lcom/facebook/RequestAsyncTask;
    .locals 1
    .param p0, "requests"    # [Lcom/facebook/Request;

    .prologue
    .line 1506
    const-string v0, "requests"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1508
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/Request;->executeBatchAsync(Ljava/util/Collection;)Lcom/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static executeConnectionAndWait(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Ljava/util/List;
    .locals 10
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .param p1, "requests"    # Lcom/facebook/RequestBatch;
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
    .line 1588
    invoke-static {p0, p1}, Lcom/facebook/Response;->fromHttpConnection(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Ljava/util/List;

    move-result-object v2

    .line 1590
    .local v2, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/Response;>;"
    invoke-static {p0}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    .line 1592
    invoke-virtual {p1}, Lcom/facebook/RequestBatch;->size()I

    move-result v0

    .line 1593
    .local v0, "numRequests":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-eq v0, v5, :cond_0

    .line 1594
    new-instance v5, Lcom/facebook/FacebookException;

    const-string v6, "Received %d responses while expecting %d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 1595
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 1594
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1598
    :cond_0
    invoke-static {p1, v2}, Lcom/facebook/Request;->runCallbacks(Lcom/facebook/RequestBatch;Ljava/util/List;)V

    .line 1602
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1603
    .local v4, "sessions":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/facebook/Session;>;"
    invoke-virtual {p1}, Lcom/facebook/RequestBatch;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1608
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1612
    return-object v2

    .line 1603
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/Request;

    .line 1604
    .local v1, "request":Lcom/facebook/Request;
    iget-object v6, v1, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    if-eqz v6, :cond_1

    .line 1605
    iget-object v6, v1, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1608
    .end local v1    # "request":Lcom/facebook/Request;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/Session;

    .line 1609
    .local v3, "session":Lcom/facebook/Session;
    invoke-virtual {v3}, Lcom/facebook/Session;->extendAccessTokenIfNeeded()V

    goto :goto_1
.end method

.method public static executeConnectionAndWait(Ljava/net/HttpURLConnection;Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
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
    .line 1568
    .local p1, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/Request;>;"
    new-instance v0, Lcom/facebook/RequestBatch;

    invoke-direct {v0, p1}, Lcom/facebook/RequestBatch;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, v0}, Lcom/facebook/Request;->executeConnectionAndWait(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static executeConnectionAsync(Landroid/os/Handler;Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Lcom/facebook/RequestAsyncTask;
    .locals 2
    .param p0, "callbackHandler"    # Landroid/os/Handler;
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "requests"    # Lcom/facebook/RequestBatch;

    .prologue
    .line 1656
    const-string v1, "connection"

    invoke-static {p1, v1}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1658
    new-instance v0, Lcom/facebook/RequestAsyncTask;

    invoke-direct {v0, p1, p2}, Lcom/facebook/RequestAsyncTask;-><init>(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)V

    .line 1659
    .local v0, "asyncTask":Lcom/facebook/RequestAsyncTask;
    invoke-virtual {p2, p0}, Lcom/facebook/RequestBatch;->setCallbackHandler(Landroid/os/Handler;)V

    .line 1660
    invoke-virtual {v0}, Lcom/facebook/RequestAsyncTask;->executeOnSettingsExecutor()Lcom/facebook/RequestAsyncTask;

    .line 1661
    return-object v0
.end method

.method public static executeConnectionAsync(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Lcom/facebook/RequestAsyncTask;
    .locals 1
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .param p1, "requests"    # Lcom/facebook/RequestBatch;

    .prologue
    .line 1632
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/facebook/Request;->executeConnectionAsync(Landroid/os/Handler;Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Lcom/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static executeGraphPathRequestAsync(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/RequestAsyncTask;
    .locals 1
    .param p0, "session"    # Lcom/facebook/Session;
    .param p1, "graphPath"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/facebook/Request$Callback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1225
    invoke-static {p0, p1, p2}, Lcom/facebook/Request;->newGraphPathRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static executeMeRequestAsync(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserCallback;)Lcom/facebook/RequestAsyncTask;
    .locals 1
    .param p0, "session"    # Lcom/facebook/Session;
    .param p1, "callback"    # Lcom/facebook/Request$GraphUserCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1148
    invoke-static {p0, p1}, Lcom/facebook/Request;->newMeRequest(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserCallback;)Lcom/facebook/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static executeMyFriendsRequestAsync(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserListCallback;)Lcom/facebook/RequestAsyncTask;
    .locals 1
    .param p0, "session"    # Lcom/facebook/Session;
    .param p1, "callback"    # Lcom/facebook/Request$GraphUserListCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1166
    invoke-static {p0, p1}, Lcom/facebook/Request;->newMyFriendsRequest(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserListCallback;)Lcom/facebook/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static executePlacesSearchRequestAsync(Lcom/facebook/Session;Landroid/location/Location;IILjava/lang/String;Lcom/facebook/Request$GraphPlaceListCallback;)Lcom/facebook/RequestAsyncTask;
    .locals 1
    .param p0, "session"    # Lcom/facebook/Session;
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "radiusInMeters"    # I
    .param p3, "resultsLimit"    # I
    .param p4, "searchText"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/facebook/Request$GraphPlaceListCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1256
    invoke-static/range {p0 .. p5}, Lcom/facebook/Request;->newPlacesSearchRequest(Lcom/facebook/Session;Landroid/location/Location;IILjava/lang/String;Lcom/facebook/Request$GraphPlaceListCallback;)Lcom/facebook/Request;

    move-result-object v0

    .line 1257
    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    move-result-object v0

    .line 1256
    return-object v0
.end method

.method public static executePostRequestAsync(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/RequestAsyncTask;
    .locals 1
    .param p0, "session"    # Lcom/facebook/Session;
    .param p1, "graphPath"    # Ljava/lang/String;
    .param p2, "graphObject"    # Lcom/facebook/model/GraphObject;
    .param p3, "callback"    # Lcom/facebook/Request$Callback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1106
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/Request;->newPostRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static executeRestRequestAsync(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)Lcom/facebook/RequestAsyncTask;
    .locals 1
    .param p0, "session"    # Lcom/facebook/Session;
    .param p1, "restMethod"    # Ljava/lang/String;
    .param p2, "parameters"    # Landroid/os/Bundle;
    .param p3, "httpMethod"    # Lcom/facebook/HttpMethod;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1130
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/Request;->newRestRequest(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)Lcom/facebook/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static executeStatusUpdateRequestAsync(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/RequestAsyncTask;
    .locals 1
    .param p0, "session"    # Lcom/facebook/Session;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/facebook/Request$Callback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1277
    invoke-static {p0, p1, p2}, Lcom/facebook/Request;->newStatusUpdateRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static executeUploadPhotoRequestAsync(Lcom/facebook/Session;Landroid/graphics/Bitmap;Lcom/facebook/Request$Callback;)Lcom/facebook/RequestAsyncTask;
    .locals 1
    .param p0, "session"    # Lcom/facebook/Session;
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "callback"    # Lcom/facebook/Request$Callback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1186
    invoke-static {p0, p1, p2}, Lcom/facebook/Request;->newUploadPhotoRequest(Lcom/facebook/Session;Landroid/graphics/Bitmap;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static executeUploadPhotoRequestAsync(Lcom/facebook/Session;Ljava/io/File;Lcom/facebook/Request$Callback;)Lcom/facebook/RequestAsyncTask;
    .locals 1
    .param p0, "session"    # Lcom/facebook/Session;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "callback"    # Lcom/facebook/Request$Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1205
    invoke-static {p0, p1, p2}, Lcom/facebook/Request;->newUploadPhotoRequest(Lcom/facebook/Session;Ljava/io/File;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method private static getBatchAppId(Lcom/facebook/RequestBatch;)Ljava/lang/String;
    .locals 4
    .param p0, "batch"    # Lcom/facebook/RequestBatch;

    .prologue
    .line 2052
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getBatchApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2053
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getBatchApplicationId()Ljava/lang/String;

    move-result-object v2

    .line 2062
    :goto_0
    return-object v2

    .line 2056
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2062
    sget-object v2, Lcom/facebook/Request;->defaultBatchApplicationId:Ljava/lang/String;

    goto :goto_0

    .line 2056
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/Request;

    .line 2057
    .local v0, "request":Lcom/facebook/Request;
    iget-object v1, v0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    .line 2058
    .local v1, "session":Lcom/facebook/Session;
    if-eqz v1, :cond_1

    .line 2059
    invoke-virtual {v1}, Lcom/facebook/Session;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static final getDefaultBatchApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1031
    sget-object v0, Lcom/facebook/Request;->defaultBatchApplicationId:Ljava/lang/String;

    return-object v0
.end method

.method private static getMimeContentType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2038
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
    .line 2044
    sget-object v0, Lcom/facebook/Request;->userAgent:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2045
    const-string v0, "%s.%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "FBAndroidSDK"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "3.5.2"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/Request;->userAgent:Ljava/lang/String;

    .line 2048
    :cond_0
    sget-object v0, Lcom/facebook/Request;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method private static isSupportedAttachmentType(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 2080
    instance-of v0, p0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    instance-of v0, p0, [B

    if-nez v0, :cond_0

    instance-of v0, p0, Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_0

    .line 2081
    instance-of v0, p0, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;

    if-nez v0, :cond_0

    .line 2080
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isSupportedParameterType(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 2085
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_0

    .line 2086
    instance-of v0, p0, Ljava/util/Date;

    if-nez v0, :cond_0

    .line 2085
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static newCustomAudienceThirdPartyIdRequest(Lcom/facebook/Session;Landroid/content/Context;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 1
    .param p0, "session"    # Lcom/facebook/Session;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/facebook/Request$Callback;

    .prologue
    .line 550
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/facebook/Request;->newCustomAudienceThirdPartyIdRequest(Lcom/facebook/Session;Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v0

    return-object v0
.end method

.method public static newCustomAudienceThirdPartyIdRequest(Lcom/facebook/Session;Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 7
    .param p0, "session"    # Lcom/facebook/Session;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "applicationId"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/facebook/Request$Callback;

    .prologue
    .line 590
    if-nez p0, :cond_0

    .line 591
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object p0

    .line 594
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/Session;->isOpened()Z

    move-result v0

    if-nez v0, :cond_1

    .line 595
    const/4 p0, 0x0

    .line 598
    :cond_1
    if-nez p2, :cond_2

    .line 599
    if-eqz p0, :cond_3

    .line 600
    invoke-virtual {p0}, Lcom/facebook/Session;->getApplicationId()Ljava/lang/String;

    move-result-object p2

    .line 606
    :cond_2
    :goto_0
    if-nez p2, :cond_4

    .line 607
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Facebook App ID cannot be determined"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 602
    :cond_3
    invoke-static {p1}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 610
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/custom_audience_third_party_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 612
    .local v2, "endpoint":Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 613
    .local v3, "parameters":Landroid/os/Bundle;
    if-nez p0, :cond_5

    .line 616
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/Settings;->getAttributionId(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    .line 617
    .local v6, "attributionId":Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 618
    const-string v0, "udid"

    invoke-virtual {v3, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    .end local v6    # "attributionId":Ljava/lang/String;
    :cond_5
    invoke-static {p1}, Lcom/facebook/AppEventsLogger;->getLimitEventUsage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 625
    const-string v0, "limit_event_usage"

    const-string v1, "1"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    :cond_6
    new-instance v0, Lcom/facebook/Request;

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    move-object v1, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-object v0
.end method

.method public static newDeleteObjectRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 6
    .param p0, "session"    # Lcom/facebook/Session;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/facebook/Request$Callback;

    .prologue
    .line 775
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
    .param p0, "session"    # Lcom/facebook/Session;
    .param p1, "graphPath"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/facebook/Request$Callback;

    .prologue
    const/4 v3, 0x0

    .line 387
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
    .param p0, "session"    # Lcom/facebook/Session;
    .param p1, "callback"    # Lcom/facebook/Request$GraphUserCallback;

    .prologue
    const/4 v3, 0x0

    .line 289
    new-instance v5, Lcom/facebook/Request$1;

    invoke-direct {v5, p1}, Lcom/facebook/Request$1;-><init>(Lcom/facebook/Request$GraphUserCallback;)V

    .line 297
    .local v5, "wrapper":Lcom/facebook/Request$Callback;
    new-instance v0, Lcom/facebook/Request;

    const-string v2, "me"

    move-object v1, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-object v0
.end method

.method public static newMyFriendsRequest(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserListCallback;)Lcom/facebook/Request;
    .locals 6
    .param p0, "session"    # Lcom/facebook/Session;
    .param p1, "callback"    # Lcom/facebook/Request$GraphUserListCallback;

    .prologue
    const/4 v3, 0x0

    .line 310
    new-instance v5, Lcom/facebook/Request$2;

    invoke-direct {v5, p1}, Lcom/facebook/Request$2;-><init>(Lcom/facebook/Request$GraphUserListCallback;)V

    .line 318
    .local v5, "wrapper":Lcom/facebook/Request$Callback;
    new-instance v0, Lcom/facebook/Request;

    const-string v2, "me/friends"

    move-object v1, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-object v0
.end method

.method public static newPlacesSearchRequest(Lcom/facebook/Session;Landroid/location/Location;IILjava/lang/String;Lcom/facebook/Request$GraphPlaceListCallback;)Lcom/facebook/Request;
    .locals 9
    .param p0, "session"    # Lcom/facebook/Session;
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "radiusInMeters"    # I
    .param p3, "resultsLimit"    # I
    .param p4, "searchText"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/facebook/Request$GraphPlaceListCallback;

    .prologue
    .line 414
    if-nez p1, :cond_0

    invoke-static {p4}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Either location or searchText must be specified."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    :cond_0
    new-instance v3, Landroid/os/Bundle;

    const/4 v0, 0x5

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 419
    .local v3, "parameters":Landroid/os/Bundle;
    const-string v0, "type"

    const-string v1, "place"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v0, "limit"

    invoke-virtual {v3, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 421
    if-eqz p1, :cond_1

    .line 422
    const-string v0, "center"

    .line 423
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%f,%f"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 422
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string v0, "distance"

    invoke-virtual {v3, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 426
    :cond_1
    invoke-static {p4}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 427
    const-string v0, "q"

    invoke-virtual {v3, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :cond_2
    new-instance v5, Lcom/facebook/Request$3;

    invoke-direct {v5, p5}, Lcom/facebook/Request$3;-><init>(Lcom/facebook/Request$GraphPlaceListCallback;)V

    .line 439
    .local v5, "wrapper":Lcom/facebook/Request$Callback;
    new-instance v0, Lcom/facebook/Request;

    const-string v2, "search"

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-object v0
.end method

.method public static newPostOpenGraphActionRequest(Lcom/facebook/Session;Lcom/facebook/model/OpenGraphAction;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 5
    .param p0, "session"    # Lcom/facebook/Session;
    .param p1, "openGraphAction"    # Lcom/facebook/model/OpenGraphAction;
    .param p2, "callback"    # Lcom/facebook/Request$Callback;

    .prologue
    .line 752
    if-nez p1, :cond_0

    .line 753
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "openGraphAction cannot be null"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 755
    :cond_0
    invoke-interface {p1}, Lcom/facebook/model/OpenGraphAction;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 756
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "openGraphAction must have non-null \'type\' property"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 759
    :cond_1
    const-string v1, "me/%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Lcom/facebook/model/OpenGraphAction;->getType()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 760
    .local v0, "path":Ljava/lang/String;
    invoke-static {p0, v0, p1, p2}, Lcom/facebook/Request;->newPostRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v1

    return-object v1
.end method

.method public static newPostOpenGraphObjectRequest(Lcom/facebook/Session;Lcom/facebook/model/OpenGraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 6
    .param p0, "session"    # Lcom/facebook/Session;
    .param p1, "openGraphObject"    # Lcom/facebook/model/OpenGraphObject;
    .param p2, "callback"    # Lcom/facebook/Request$Callback;

    .prologue
    .line 690
    if-nez p1, :cond_0

    .line 691
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "openGraphObject cannot be null"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 693
    :cond_0
    invoke-interface {p1}, Lcom/facebook/model/OpenGraphObject;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 694
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "openGraphObject must have non-null \'type\' property"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 696
    :cond_1
    invoke-interface {p1}, Lcom/facebook/model/OpenGraphObject;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 697
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "openGraphObject must have non-null \'title\' property"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 700
    :cond_2
    const-string v0, "me/objects/%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {p1}, Lcom/facebook/model/OpenGraphObject;->getType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 701
    .local v2, "path":Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 702
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v0, "object"

    invoke-interface {p1}, Lcom/facebook/model/OpenGraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    new-instance v0, Lcom/facebook/Request;

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-object v0
.end method

.method public static newPostOpenGraphObjectRequest(Lcom/facebook/Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 7
    .param p0, "session"    # Lcom/facebook/Session;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "imageUrl"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "description"    # Ljava/lang/String;
    .param p6, "objectProperties"    # Lcom/facebook/model/GraphObject;
    .param p7, "callback"    # Lcom/facebook/Request$Callback;

    .prologue
    .line 730
    const-class v0, Lcom/facebook/model/OpenGraphObject;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/facebook/model/OpenGraphObject$Factory;->createForPost(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/model/OpenGraphObject;

    move-result-object v6

    .line 732
    .local v6, "openGraphObject":Lcom/facebook/model/OpenGraphObject;
    if-eqz p6, :cond_0

    .line 733
    invoke-interface {v6, p6}, Lcom/facebook/model/OpenGraphObject;->setData(Lcom/facebook/model/GraphObject;)V

    .line 736
    :cond_0
    invoke-static {p0, v6, p7}, Lcom/facebook/Request;->newPostOpenGraphObjectRequest(Lcom/facebook/Session;Lcom/facebook/model/OpenGraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v0

    return-object v0
.end method

.method public static newPostRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 6
    .param p0, "session"    # Lcom/facebook/Session;
    .param p1, "graphPath"    # Ljava/lang/String;
    .param p2, "graphObject"    # Lcom/facebook/model/GraphObject;
    .param p3, "callback"    # Lcom/facebook/Request$Callback;

    .prologue
    .line 254
    new-instance v0, Lcom/facebook/Request;

    const/4 v3, 0x0

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 255
    .local v0, "request":Lcom/facebook/Request;
    invoke-virtual {v0, p2}, Lcom/facebook/Request;->setGraphObject(Lcom/facebook/model/GraphObject;)V

    .line 256
    return-object v0
.end method

.method public static newRestRequest(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)Lcom/facebook/Request;
    .locals 2
    .param p0, "session"    # Lcom/facebook/Session;
    .param p1, "restMethod"    # Ljava/lang/String;
    .param p2, "parameters"    # Landroid/os/Bundle;
    .param p3, "httpMethod"    # Lcom/facebook/HttpMethod;

    .prologue
    .line 274
    new-instance v0, Lcom/facebook/Request;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p2, p3}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V

    .line 275
    .local v0, "request":Lcom/facebook/Request;
    invoke-virtual {v0, p1}, Lcom/facebook/Request;->setRestMethod(Ljava/lang/String;)V

    .line 276
    return-object v0
.end method

.method public static newStatusUpdateRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 1
    .param p0, "session"    # Lcom/facebook/Session;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/facebook/Request$Callback;

    .prologue
    const/4 v0, 0x0

    .line 454
    invoke-static {p0, p1, v0, v0, p2}, Lcom/facebook/Request;->newStatusUpdateRequest(Lcom/facebook/Session;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v0

    return-object v0
.end method

.method public static newStatusUpdateRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/model/GraphPlace;Ljava/util/List;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 5
    .param p0, "session"    # Lcom/facebook/Session;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "place"    # Lcom/facebook/model/GraphPlace;
    .param p4, "callback"    # Lcom/facebook/Request$Callback;
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
    .line 508
    .local p3, "tags":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/model/GraphUser;>;"
    const/4 v2, 0x0

    .line 509
    .local v2, "tagIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p3, :cond_0

    .line 510
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "tagIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 511
    .restart local v2    # "tagIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 515
    :cond_0
    if-nez p2, :cond_2

    const/4 v0, 0x0

    .line 516
    .local v0, "placeId":Ljava/lang/String;
    :goto_1
    invoke-static {p0, p1, v0, v2, p4}, Lcom/facebook/Request;->newStatusUpdateRequest(Lcom/facebook/Session;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v3

    return-object v3

    .line 511
    .end local v0    # "placeId":Ljava/lang/String;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/model/GraphUser;

    .line 512
    .local v1, "tag":Lcom/facebook/model/GraphUser;
    invoke-interface {v1}, Lcom/facebook/model/GraphUser;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 515
    .end local v1    # "tag":Lcom/facebook/model/GraphUser;
    :cond_2
    invoke-interface {p2}, Lcom/facebook/model/GraphPlace;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static newStatusUpdateRequest(Lcom/facebook/Session;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 7
    .param p0, "session"    # Lcom/facebook/Session;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "placeId"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/facebook/Request$Callback;
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
    .line 475
    .local p3, "tagIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 476
    .local v3, "parameters":Landroid/os/Bundle;
    const-string v0, "message"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    if-eqz p2, :cond_0

    .line 479
    const-string v0, "place"

    invoke-virtual {v3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 483
    const-string v0, ","

    invoke-static {v0, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    .line 484
    .local v6, "tags":Ljava/lang/String;
    const-string v0, "tags"

    invoke-virtual {v3, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    .end local v6    # "tags":Ljava/lang/String;
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
    .param p0, "session"    # Lcom/facebook/Session;
    .param p1, "openGraphObject"    # Lcom/facebook/model/OpenGraphObject;
    .param p2, "callback"    # Lcom/facebook/Request$Callback;

    .prologue
    .line 791
    if-nez p1, :cond_0

    .line 792
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "openGraphObject cannot be null"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 795
    :cond_0
    invoke-interface {p1}, Lcom/facebook/model/OpenGraphObject;->getId()Ljava/lang/String;

    move-result-object v2

    .line 796
    .local v2, "path":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 797
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "openGraphObject must have an id"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 800
    :cond_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 801
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v0, "object"

    invoke-interface {p1}, Lcom/facebook/model/OpenGraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    new-instance v0, Lcom/facebook/Request;

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-object v0
.end method

.method public static newUpdateOpenGraphObjectRequest(Lcom/facebook/Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 7
    .param p0, "session"    # Lcom/facebook/Session;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "imageUrl"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "description"    # Ljava/lang/String;
    .param p6, "objectProperties"    # Lcom/facebook/model/GraphObject;
    .param p7, "callback"    # Lcom/facebook/Request$Callback;

    .prologue
    .line 828
    const-class v0, Lcom/facebook/model/OpenGraphObject;

    const/4 v1, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/facebook/model/OpenGraphObject$Factory;->createForPost(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/model/OpenGraphObject;

    move-result-object v6

    .line 830
    .local v6, "openGraphObject":Lcom/facebook/model/OpenGraphObject;
    invoke-interface {v6, p1}, Lcom/facebook/model/OpenGraphObject;->setId(Ljava/lang/String;)V

    .line 831
    invoke-interface {v6, p6}, Lcom/facebook/model/OpenGraphObject;->setData(Lcom/facebook/model/GraphObject;)V

    .line 833
    invoke-static {p0, v6, p7}, Lcom/facebook/Request;->newUpdateOpenGraphObjectRequest(Lcom/facebook/Session;Lcom/facebook/model/OpenGraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v0

    return-object v0
.end method

.method public static newUploadPhotoRequest(Lcom/facebook/Session;Landroid/graphics/Bitmap;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 6
    .param p0, "session"    # Lcom/facebook/Session;
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "callback"    # Lcom/facebook/Request$Callback;

    .prologue
    .line 333
    new-instance v3, Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 334
    .local v3, "parameters":Landroid/os/Bundle;
    const-string v0, "picture"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 336
    new-instance v0, Lcom/facebook/Request;

    const-string v2, "me/photos"

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-object v0
.end method

.method public static newUploadPhotoRequest(Lcom/facebook/Session;Ljava/io/File;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 7
    .param p0, "session"    # Lcom/facebook/Session;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "callback"    # Lcom/facebook/Request$Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 350
    const/high16 v0, 0x10000000

    invoke-static {p1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 351
    .local v6, "descriptor":Landroid/os/ParcelFileDescriptor;
    new-instance v3, Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 352
    .local v3, "parameters":Landroid/os/Bundle;
    const-string v0, "picture"

    invoke-virtual {v3, v0, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 354
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
    .param p0, "session"    # Lcom/facebook/Session;
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "callback"    # Lcom/facebook/Request$Callback;

    .prologue
    .line 647
    new-instance v3, Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 648
    .local v3, "parameters":Landroid/os/Bundle;
    const-string v0, "file"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 650
    new-instance v0, Lcom/facebook/Request;

    const-string v2, "me/staging_resources"

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-object v0
.end method

.method public static newUploadStagingResourceWithImageRequest(Lcom/facebook/Session;Ljava/io/File;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 8
    .param p0, "session"    # Lcom/facebook/Session;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "callback"    # Lcom/facebook/Request$Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 669
    const/high16 v0, 0x10000000

    invoke-static {p1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 670
    .local v6, "descriptor":Landroid/os/ParcelFileDescriptor;
    new-instance v7, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;

    const-string v0, "image/png"

    invoke-direct {v7, v6, v0}, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;-><init>(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    .line 671
    .local v7, "descriptorWithMimeType":Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;
    new-instance v3, Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 672
    .local v3, "parameters":Landroid/os/Bundle;
    const-string v0, "file"

    invoke-virtual {v3, v0, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 674
    new-instance v0, Lcom/facebook/Request;

    const-string v2, "me/staging_resources"

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-object v0
.end method

.method public static newUploadVideoRequest(Lcom/facebook/Session;Ljava/io/File;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 7
    .param p0, "session"    # Lcom/facebook/Session;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "callback"    # Lcom/facebook/Request$Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 368
    const/high16 v0, 0x10000000

    invoke-static {p1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 369
    .local v6, "descriptor":Landroid/os/ParcelFileDescriptor;
    new-instance v3, Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 370
    .local v3, "parameters":Landroid/os/Bundle;
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 372
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
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 2090
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2091
    check-cast p0, Ljava/lang/String;

    .line 2096
    .end local p0    # "value":Ljava/lang/Object;
    .local v0, "iso8601DateFormat":Ljava/text/SimpleDateFormat;
    :goto_0
    return-object p0

    .line 2092
    .end local v0    # "iso8601DateFormat":Ljava/text/SimpleDateFormat;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v1, p0, Ljava/lang/Boolean;

    if-nez v1, :cond_1

    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 2093
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2094
    :cond_2
    instance-of v1, p0, Ljava/util/Date;

    if-eqz v1, :cond_3

    .line 2095
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2096
    .restart local v0    # "iso8601DateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2098
    .end local v0    # "iso8601DateFormat":Ljava/text/SimpleDateFormat;
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported parameter type."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static processGraphObject(Lcom/facebook/model/GraphObject;Ljava/lang/String;Lcom/facebook/Request$KeyValueSerializer;)V
    .locals 11
    .param p0, "graphObject"    # Lcom/facebook/model/GraphObject;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "serializer"    # Lcom/facebook/Request$KeyValueSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1936
    const/4 v3, 0x0

    .line 1937
    .local v3, "isOGAction":Z
    const-string v6, "me/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "/me/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1938
    :cond_0
    const-string v6, ":"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1939
    .local v0, "colonLocation":I
    const-string v6, "?"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 1940
    .local v5, "questionMarkLocation":I
    const/4 v6, 0x3

    if-le v0, v6, :cond_3

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    if-ge v0, v5, :cond_3

    :cond_1
    move v3, v7

    .line 1943
    .end local v0    # "colonLocation":I
    .end local v5    # "questionMarkLocation":I
    :cond_2
    :goto_0
    invoke-interface {p0}, Lcom/facebook/model/GraphObject;->asMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 1944
    .local v1, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 1948
    return-void

    .end local v1    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v0    # "colonLocation":I
    .restart local v5    # "questionMarkLocation":I
    :cond_3
    move v3, v8

    .line 1940
    goto :goto_0

    .line 1944
    .end local v0    # "colonLocation":I
    .end local v5    # "questionMarkLocation":I
    .restart local v1    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1945
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v10, "image"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v4, v7

    .line 1946
    .local v4, "passByValue":Z
    :goto_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v6, v10, p2, v4}, Lcom/facebook/Request;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request$KeyValueSerializer;Z)V

    goto :goto_1

    .end local v4    # "passByValue":Z
    :cond_5
    move v4, v8

    .line 1945
    goto :goto_2
.end method

.method private static processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request$KeyValueSerializer;Z)V
    .locals 17
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "serializer"    # Lcom/facebook/Request$KeyValueSerializer;
    .param p3, "passByValue"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1952
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    .line 1953
    .local v12, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v13, Lcom/facebook/model/GraphObject;

    invoke-virtual {v13, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1954
    check-cast p1, Lcom/facebook/model/GraphObject;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-interface/range {p1 .. p1}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    .line 1955
    .local p1, "value":Lorg/json/JSONObject;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    .line 1961
    .end local p1    # "value":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    const-class v13, Lorg/json/JSONObject;

    invoke-virtual {v13, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-eqz v13, :cond_6

    move-object/from16 v7, p1

    .line 1962
    check-cast v7, Lorg/json/JSONObject;

    .line 1963
    .local v7, "jsonObject":Lorg/json/JSONObject;
    if-eqz p3, :cond_4

    .line 1966
    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    .line 1967
    .local v8, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_3

    .line 2002
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    .end local v8    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :goto_2
    return-void

    .line 1956
    .local p1, "value":Ljava/lang/Object;
    :cond_2
    const-class v13, Lcom/facebook/model/GraphObjectList;

    invoke-virtual {v13, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1957
    check-cast p1, Lcom/facebook/model/GraphObjectList;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-interface/range {p1 .. p1}, Lcom/facebook/model/GraphObjectList;->getInnerJSONArray()Lorg/json/JSONArray;

    move-result-object p1

    .line 1958
    .local p1, "value":Lorg/json/JSONArray;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    goto :goto_0

    .line 1968
    .end local p1    # "value":Lorg/json/JSONArray;
    .restart local v7    # "jsonObject":Lorg/json/JSONObject;
    .restart local v8    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1969
    .local v10, "propertyName":Ljava/lang/String;
    const-string v13, "%s[%s]"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p0, v14, v15

    const/4 v15, 0x1

    aput-object v10, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 1970
    .local v11, "subKey":Ljava/lang/String;
    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v11, v13, v0, v1}, Lcom/facebook/Request;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request$KeyValueSerializer;Z)V

    goto :goto_1

    .line 1975
    .end local v8    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v10    # "propertyName":Ljava/lang/String;
    .end local v11    # "subKey":Ljava/lang/String;
    :cond_4
    const-string v13, "id"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1976
    const-string v13, "id"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v13, v1, v2}, Lcom/facebook/Request;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request$KeyValueSerializer;Z)V

    goto :goto_2

    .line 1977
    :cond_5
    const-string v13, "url"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1978
    const-string v13, "url"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v13, v1, v2}, Lcom/facebook/Request;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request$KeyValueSerializer;Z)V

    goto :goto_2

    .line 1981
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    :cond_6
    const-class v13, Lorg/json/JSONArray;

    invoke-virtual {v13, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-eqz v13, :cond_7

    move-object/from16 v6, p1

    .line 1982
    check-cast v6, Lorg/json/JSONArray;

    .line 1983
    .local v6, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    .line 1984
    .local v9, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v9, :cond_1

    .line 1985
    const-string v13, "%s[%d]"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p0, v14, v15

    const/4 v15, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 1986
    .restart local v11    # "subKey":Ljava/lang/String;
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v11, v13, v0, v1}, Lcom/facebook/Request;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request$KeyValueSerializer;Z)V

    .line 1984
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1988
    .end local v4    # "i":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v9    # "length":I
    .end local v11    # "subKey":Ljava/lang/String;
    :cond_7
    const-class v13, Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 1989
    const-class v13, Ljava/lang/Number;

    invoke-virtual {v13, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 1990
    const-class v13, Ljava/lang/Boolean;

    invoke-virtual {v13, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 1991
    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v13}, Lcom/facebook/Request$KeyValueSerializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1992
    :cond_9
    const-class v13, Ljava/util/Date;

    invoke-virtual {v13, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v3, p1

    .line 1993
    check-cast v3, Ljava/util/Date;

    .line 1999
    .local v3, "date":Ljava/util/Date;
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v13, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2000
    .local v5, "iso8601DateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v5, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v13}, Lcom/facebook/Request$KeyValueSerializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method static runCallbacks(Lcom/facebook/RequestBatch;Ljava/util/List;)V
    .locals 9
    .param p0, "requests"    # Lcom/facebook/RequestBatch;
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
    .line 1678
    .local p1, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/Response;>;"
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->size()I

    move-result v3

    .line 1681
    .local v3, "numRequests":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1682
    .local v1, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/facebook/Request$Callback;Lcom/facebook/Response;>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_1

    .line 1689
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 1690
    new-instance v5, Lcom/facebook/Request$4;

    invoke-direct {v5, v1, p0}, Lcom/facebook/Request$4;-><init>(Ljava/util/ArrayList;Lcom/facebook/RequestBatch;)V

    .line 1703
    .local v5, "runnable":Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getCallbackHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1704
    .local v0, "callbackHandler":Landroid/os/Handler;
    if-nez v0, :cond_3

    .line 1706
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 1712
    .end local v0    # "callbackHandler":Landroid/os/Handler;
    .end local v5    # "runnable":Ljava/lang/Runnable;
    :cond_0
    :goto_1
    return-void

    .line 1683
    :cond_1
    invoke-virtual {p0, v2}, Lcom/facebook/RequestBatch;->get(I)Lcom/facebook/Request;

    move-result-object v4

    .line 1684
    .local v4, "request":Lcom/facebook/Request;
    iget-object v6, v4, Lcom/facebook/Request;->callback:Lcom/facebook/Request$Callback;

    if-eqz v6, :cond_2

    .line 1685
    new-instance v7, Landroid/util/Pair;

    iget-object v8, v4, Lcom/facebook/Request;->callback:Lcom/facebook/Request$Callback;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/Response;

    invoke-direct {v7, v8, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1682
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1709
    .end local v4    # "request":Lcom/facebook/Request;
    .restart local v0    # "callbackHandler":Landroid/os/Handler;
    .restart local v5    # "runnable":Ljava/lang/Runnable;
    :cond_3
    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private static serializeAttachments(Landroid/os/Bundle;Lcom/facebook/Request$Serializer;)V
    .locals 5
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "serializer"    # Lcom/facebook/Request$Serializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2016
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 2018
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2024
    return-void

    .line 2018
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2019
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 2020
    .local v2, "value":Ljava/lang/Object;
    invoke-static {v2}, Lcom/facebook/Request;->isSupportedAttachmentType(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2021
    invoke-virtual {p1, v0, v2}, Lcom/facebook/Request$Serializer;->writeObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static serializeParameters(Landroid/os/Bundle;Lcom/facebook/Request$Serializer;)V
    .locals 5
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "serializer"    # Lcom/facebook/Request$Serializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2005
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 2007
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2013
    return-void

    .line 2007
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2008
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 2009
    .local v2, "value":Ljava/lang/Object;
    invoke-static {v2}, Lcom/facebook/Request;->isSupportedParameterType(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2010
    invoke-virtual {p1, v0, v2}, Lcom/facebook/Request$Serializer;->writeObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static serializeRequestsAsJSON(Lcom/facebook/Request$Serializer;Ljava/util/Collection;Landroid/os/Bundle;)V
    .locals 5
    .param p0, "serializer"    # Lcom/facebook/Request$Serializer;
    .param p2, "attachments"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/Request$Serializer;",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/Request;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2028
    .local p1, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/Request;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2029
    .local v0, "batch":Lorg/json/JSONArray;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2033
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2034
    .local v1, "batchAsString":Ljava/lang/String;
    const-string v3, "batch"

    invoke-virtual {p0, v3, v1}, Lcom/facebook/Request$Serializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2035
    return-void

    .line 2029
    .end local v1    # "batchAsString":Ljava/lang/String;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/Request;

    .line 2030
    .local v2, "request":Lcom/facebook/Request;
    invoke-direct {v2, v0, p2}, Lcom/facebook/Request;->serializeToBatch(Lorg/json/JSONArray;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private serializeToBatch(Lorg/json/JSONArray;Landroid/os/Bundle;)V
    .locals 17
    .param p1, "batch"    # Lorg/json/JSONArray;
    .param p2, "attachments"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1800
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1802
    .local v4, "batchEntry":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/Request;->batchEntryName:Ljava/lang/String;

    if-eqz v12, :cond_0

    .line 1803
    const-string v12, "name"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/Request;->batchEntryName:Ljava/lang/String;

    invoke-virtual {v4, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1804
    const-string v12, "omit_response_on_success"

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/facebook/Request;->batchEntryOmitResultOnSuccess:Z

    invoke-virtual {v4, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1806
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/Request;->batchEntryDependsOn:Ljava/lang/String;

    if-eqz v12, :cond_1

    .line 1807
    const-string v12, "depends_on"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/Request;->batchEntryDependsOn:Ljava/lang/String;

    invoke-virtual {v4, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1810
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/Request;->getUrlForBatchedRequest()Ljava/lang/String;

    move-result-object v10

    .line 1811
    .local v10, "relativeURL":Ljava/lang/String;
    const-string v12, "relative_url"

    invoke-virtual {v4, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1812
    const-string v12, "method"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/Request;->httpMethod:Lcom/facebook/HttpMethod;

    invoke-virtual {v4, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1813
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    if-eqz v12, :cond_2

    .line 1814
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    invoke-virtual {v12}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    .line 1815
    .local v1, "accessToken":Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/internal/Logger;->registerAccessToken(Ljava/lang/String;)V

    .line 1819
    .end local v1    # "accessToken":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1820
    .local v2, "attachmentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    invoke-virtual {v12}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 1821
    .local v7, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_3
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_6

    .line 1831
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_4

    .line 1832
    const-string v12, ","

    invoke-static {v12, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 1833
    .local v3, "attachmentNamesString":Ljava/lang/String;
    const-string v12, "attached_files"

    invoke-virtual {v4, v12, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1836
    .end local v3    # "attachmentNamesString":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/Request;->graphObject:Lcom/facebook/model/GraphObject;

    if-eqz v12, :cond_5

    .line 1838
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1839
    .local v8, "keysAndValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/Request;->graphObject:Lcom/facebook/model/GraphObject;

    new-instance v13, Lcom/facebook/Request$5;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v8}, Lcom/facebook/Request$5;-><init>(Lcom/facebook/Request;Ljava/util/ArrayList;)V

    invoke-static {v12, v10, v13}, Lcom/facebook/Request;->processGraphObject(Lcom/facebook/model/GraphObject;Ljava/lang/String;Lcom/facebook/Request$KeyValueSerializer;)V

    .line 1845
    const-string v12, "&"

    invoke-static {v12, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    .line 1846
    .local v5, "bodyValue":Ljava/lang/String;
    const-string v12, "body"

    invoke-virtual {v4, v12, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1849
    .end local v5    # "bodyValue":Ljava/lang/String;
    .end local v8    # "keysAndValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1850
    return-void

    .line 1821
    :cond_6
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1822
    .local v6, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    invoke-virtual {v13, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 1823
    .local v11, "value":Ljava/lang/Object;
    invoke-static {v11}, Lcom/facebook/Request;->isSupportedAttachmentType(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1825
    const-string v13, "%s%d"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "file"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->size()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1826
    .local v9, "name":Ljava/lang/String;
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1827
    move-object/from16 v0, p2

    invoke-static {v0, v9, v11}, Lcom/facebook/internal/Utility;->putObjectInBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static final serializeToUrlConnection(Lcom/facebook/RequestBatch;Ljava/net/HttpURLConnection;)V
    .locals 13
    .param p0, "requests"    # Lcom/facebook/RequestBatch;
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v10, 0x1

    .line 1860
    new-instance v4, Lcom/facebook/internal/Logger;

    sget-object v11, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    const-string v12, "Request"

    invoke-direct {v4, v11, v12}, Lcom/facebook/internal/Logger;-><init>(Lcom/facebook/LoggingBehavior;Ljava/lang/String;)V

    .line 1862
    .local v4, "logger":Lcom/facebook/internal/Logger;
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->size()I

    move-result v5

    .line 1864
    .local v5, "numRequests":I
    if-ne v5, v10, :cond_1

    invoke-virtual {p0, v3}, Lcom/facebook/RequestBatch;->get(I)Lcom/facebook/Request;

    move-result-object v11

    iget-object v2, v11, Lcom/facebook/Request;->httpMethod:Lcom/facebook/HttpMethod;

    .line 1865
    .local v2, "connectionHttpMethod":Lcom/facebook/HttpMethod;
    :goto_0
    invoke-virtual {v2}, Lcom/facebook/HttpMethod;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1867
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v9

    .line 1868
    .local v9, "url":Ljava/net/URL;
    const-string v11, "Request:\n"

    invoke-virtual {v4, v11}, Lcom/facebook/internal/Logger;->append(Ljava/lang/String;)V

    .line 1869
    const-string v11, "Id"

    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1870
    const-string v11, "URL"

    invoke-virtual {v4, v11, v9}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1871
    const-string v11, "Method"

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1872
    const-string v11, "User-Agent"

    const-string v12, "User-Agent"

    invoke-virtual {p1, v12}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1873
    const-string v11, "Content-Type"

    const-string v12, "Content-Type"

    invoke-virtual {p1, v12}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1875
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getTimeout()I

    move-result v11

    invoke-virtual {p1, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1876
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getTimeout()I

    move-result v11

    invoke-virtual {p1, v11}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1880
    sget-object v11, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    if-ne v2, v11, :cond_0

    move v3, v10

    .line 1881
    .local v3, "isPost":Z
    :cond_0
    if-nez v3, :cond_2

    .line 1882
    invoke-virtual {v4}, Lcom/facebook/internal/Logger;->log()V

    .line 1926
    :goto_1
    return-void

    .line 1864
    .end local v2    # "connectionHttpMethod":Lcom/facebook/HttpMethod;
    .end local v3    # "isPost":Z
    .end local v9    # "url":Ljava/net/URL;
    :cond_1
    sget-object v2, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    goto :goto_0

    .line 1886
    .restart local v2    # "connectionHttpMethod":Lcom/facebook/HttpMethod;
    .restart local v3    # "isPost":Z
    .restart local v9    # "url":Ljava/net/URL;
    :cond_2
    invoke-virtual {p1, v10}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1888
    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1890
    .local v6, "outputStream":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v8, Lcom/facebook/Request$Serializer;

    invoke-direct {v8, v6, v4}, Lcom/facebook/Request$Serializer;-><init>(Ljava/io/BufferedOutputStream;Lcom/facebook/internal/Logger;)V

    .line 1892
    .local v8, "serializer":Lcom/facebook/Request$Serializer;
    if-ne v5, v10, :cond_4

    .line 1893
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/facebook/RequestBatch;->get(I)Lcom/facebook/Request;

    move-result-object v7

    .line 1895
    .local v7, "request":Lcom/facebook/Request;
    const-string v10, "  Parameters:\n"

    invoke-virtual {v4, v10}, Lcom/facebook/internal/Logger;->append(Ljava/lang/String;)V

    .line 1896
    iget-object v10, v7, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    invoke-static {v10, v8}, Lcom/facebook/Request;->serializeParameters(Landroid/os/Bundle;Lcom/facebook/Request$Serializer;)V

    .line 1898
    const-string v10, "  Attachments:\n"

    invoke-virtual {v4, v10}, Lcom/facebook/internal/Logger;->append(Ljava/lang/String;)V

    .line 1899
    iget-object v10, v7, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    invoke-static {v10, v8}, Lcom/facebook/Request;->serializeAttachments(Landroid/os/Bundle;Lcom/facebook/Request$Serializer;)V

    .line 1901
    iget-object v10, v7, Lcom/facebook/Request;->graphObject:Lcom/facebook/model/GraphObject;

    if-eqz v10, :cond_3

    .line 1902
    iget-object v10, v7, Lcom/facebook/Request;->graphObject:Lcom/facebook/model/GraphObject;

    invoke-virtual {v9}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v8}, Lcom/facebook/Request;->processGraphObject(Lcom/facebook/model/GraphObject;Ljava/lang/String;Lcom/facebook/Request$KeyValueSerializer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1922
    .end local v7    # "request":Lcom/facebook/Request;
    :cond_3
    :goto_2
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V

    .line 1925
    invoke-virtual {v4}, Lcom/facebook/internal/Logger;->log()V

    goto :goto_1

    .line 1905
    :cond_4
    :try_start_1
    invoke-static {p0}, Lcom/facebook/Request;->getBatchAppId(Lcom/facebook/RequestBatch;)Ljava/lang/String;

    move-result-object v1

    .line 1906
    .local v1, "batchAppID":Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1907
    new-instance v10, Lcom/facebook/FacebookException;

    const-string v11, "At least one request in a batch must have an open Session, or a default app ID must be specified."

    invoke-direct {v10, v11}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1921
    .end local v1    # "batchAppID":Ljava/lang/String;
    .end local v8    # "serializer":Lcom/facebook/Request$Serializer;
    :catchall_0
    move-exception v10

    .line 1922
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V

    .line 1923
    throw v10

    .line 1911
    .restart local v1    # "batchAppID":Ljava/lang/String;
    .restart local v8    # "serializer":Lcom/facebook/Request$Serializer;
    :cond_5
    :try_start_2
    const-string v10, "batch_app_id"

    invoke-virtual {v8, v10, v1}, Lcom/facebook/Request$Serializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1915
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1916
    .local v0, "attachments":Landroid/os/Bundle;
    invoke-static {v8, p0, v0}, Lcom/facebook/Request;->serializeRequestsAsJSON(Lcom/facebook/Request$Serializer;Ljava/util/Collection;Landroid/os/Bundle;)V

    .line 1918
    const-string v10, "  Attachments:\n"

    invoke-virtual {v4, v10}, Lcom/facebook/internal/Logger;->append(Ljava/lang/String;)V

    .line 1919
    invoke-static {v0, v8}, Lcom/facebook/Request;->serializeAttachments(Landroid/os/Bundle;Lcom/facebook/Request$Serializer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public static final setDefaultBatchApplicationId(Ljava/lang/String;)V
    .locals 0
    .param p0, "applicationId"    # Ljava/lang/String;

    .prologue
    .line 1043
    sput-object p0, Lcom/facebook/Request;->defaultBatchApplicationId:Ljava/lang/String;

    .line 1044
    return-void
.end method

.method public static toHttpConnection(Lcom/facebook/RequestBatch;)Ljava/net/HttpURLConnection;
    .locals 6
    .param p0, "requests"    # Lcom/facebook/RequestBatch;

    .prologue
    .line 1362
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1366
    const/4 v3, 0x0

    .line 1368
    .local v3, "url":Ljava/net/URL;
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 1370
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/facebook/RequestBatch;->get(I)Lcom/facebook/Request;

    move-result-object v2

    .line 1372
    .local v2, "request":Lcom/facebook/Request;
    new-instance v3, Ljava/net/URL;

    .end local v3    # "url":Ljava/net/URL;
    invoke-virtual {v2}, Lcom/facebook/Request;->getUrlForSingleRequest()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1384
    .end local v2    # "request":Lcom/facebook/Request;
    .restart local v3    # "url":Ljava/net/URL;
    :goto_1
    :try_start_1
    invoke-static {v3}, Lcom/facebook/Request;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 1386
    .local v0, "connection":Ljava/net/HttpURLConnection;
    invoke-static {p0, v0}, Lcom/facebook/Request;->serializeToUrlConnection(Lcom/facebook/RequestBatch;Ljava/net/HttpURLConnection;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1393
    return-object v0

    .line 1362
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v3    # "url":Ljava/net/URL;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/Request;

    .line 1363
    .restart local v2    # "request":Lcom/facebook/Request;
    invoke-direct {v2}, Lcom/facebook/Request;->validate()V

    goto :goto_0

    .line 1376
    .end local v2    # "request":Lcom/facebook/Request;
    .restart local v3    # "url":Ljava/net/URL;
    :cond_1
    :try_start_2
    new-instance v3, Ljava/net/URL;

    .end local v3    # "url":Ljava/net/URL;
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getGraphUrlBase()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0

    .restart local v3    # "url":Ljava/net/URL;
    goto :goto_1

    .line 1378
    .end local v3    # "url":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 1379
    .local v1, "e":Ljava/net/MalformedURLException;
    new-instance v4, Lcom/facebook/FacebookException;

    const-string v5, "could not construct URL for request"

    invoke-direct {v4, v5, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 1387
    .end local v1    # "e":Ljava/net/MalformedURLException;
    .restart local v3    # "url":Ljava/net/URL;
    :catch_1
    move-exception v1

    .line 1388
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Lcom/facebook/FacebookException;

    const-string v5, "could not construct request body"

    invoke-direct {v4, v5, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 1389
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 1390
    .local v1, "e":Lorg/json/JSONException;
    new-instance v4, Lcom/facebook/FacebookException;

    const-string v5, "could not construct request body"

    invoke-direct {v4, v5, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
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
    .line 1341
    .local p0, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/Request;>;"
    const-string v0, "requests"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notEmptyAndContainsNoNulls(Ljava/util/Collection;Ljava/lang/String;)V

    .line 1343
    new-instance v0, Lcom/facebook/RequestBatch;

    invoke-direct {v0, p0}, Lcom/facebook/RequestBatch;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/facebook/Request;->toHttpConnection(Lcom/facebook/RequestBatch;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public static varargs toHttpConnection([Lcom/facebook/Request;)Ljava/net/HttpURLConnection;
    .locals 1
    .param p0, "requests"    # [Lcom/facebook/Request;

    .prologue
    .line 1323
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/Request;->toHttpConnection(Ljava/util/Collection;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method private static typedListFromResponse(Lcom/facebook/Response;Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .param p0, "response"    # Lcom/facebook/Response;
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
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    .line 2066
    const-class v3, Lcom/facebook/model/GraphMultiResult;

    invoke-virtual {p0, v3}, Lcom/facebook/Response;->getGraphObjectAs(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    move-result-object v1

    check-cast v1, Lcom/facebook/model/GraphMultiResult;

    .line 2067
    .local v1, "multiResult":Lcom/facebook/model/GraphMultiResult;
    if-nez v1, :cond_1

    .line 2076
    :cond_0
    :goto_0
    return-object v2

    .line 2071
    :cond_1
    invoke-interface {v1}, Lcom/facebook/model/GraphMultiResult;->getData()Lcom/facebook/model/GraphObjectList;

    move-result-object v0

    .line 2072
    .local v0, "data":Lcom/facebook/model/GraphObjectList;, "Lcom/facebook/model/GraphObjectList<Lcom/facebook/model/GraphObject;>;"
    if-eqz v0, :cond_0

    .line 2076
    invoke-interface {v0, p1}, Lcom/facebook/model/GraphObjectList;->castToListOf(Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;

    move-result-object v2

    goto :goto_0
.end method

.method private validate()V
    .locals 2

    .prologue
    .line 1853
    iget-object v0, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/Request;->restMethod:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1854
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only one of a graph path or REST method may be specified per request."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1856
    :cond_0
    return-void
.end method


# virtual methods
.method public final executeAndWait()Lcom/facebook/Response;
    .locals 1

    .prologue
    .line 1292
    invoke-static {p0}, Lcom/facebook/Request;->executeAndWait(Lcom/facebook/Request;)Lcom/facebook/Response;

    move-result-object v0

    return-object v0
.end method

.method public final executeAsync()Lcom/facebook/RequestAsyncTask;
    .locals 2

    .prologue
    .line 1305
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
    .line 983
    iget-object v0, p0, Lcom/facebook/Request;->batchEntryDependsOn:Ljava/lang/String;

    return-object v0
.end method

.method public final getBatchEntryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 960
    iget-object v0, p0, Lcom/facebook/Request;->batchEntryName:Ljava/lang/String;

    return-object v0
.end method

.method public final getBatchEntryOmitResultOnSuccess()Z
    .locals 1

    .prologue
    .line 1007
    iget-boolean v0, p0, Lcom/facebook/Request;->batchEntryOmitResultOnSuccess:Z

    return v0
.end method

.method public final getCallback()Lcom/facebook/Request$Callback;
    .locals 1

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/facebook/Request;->callback:Lcom/facebook/Request$Callback;

    return-object v0
.end method

.method public final getGraphObject()Lcom/facebook/model/GraphObject;
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lcom/facebook/Request;->graphObject:Lcom/facebook/model/GraphObject;

    return-object v0
.end method

.method public final getGraphPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getHttpMethod()Lcom/facebook/HttpMethod;
    .locals 1

    .prologue
    .line 880
    iget-object v0, p0, Lcom/facebook/Request;->httpMethod:Lcom/facebook/HttpMethod;

    return-object v0
.end method

.method public final getParameters()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 902
    iget-object v0, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getRestMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Lcom/facebook/Request;->restMethod:Ljava/lang/String;

    return-object v0
.end method

.method public final getSession()Lcom/facebook/Session;
    .locals 1

    .prologue
    .line 940
    iget-object v0, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    return-object v0
.end method

.method public final getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/facebook/Request;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method final getUrlForBatchedRequest()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1768
    iget-object v1, p0, Lcom/facebook/Request;->overriddenURL:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1769
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Can\'t override URL for a batch request"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1773
    :cond_0
    iget-object v1, p0, Lcom/facebook/Request;->restMethod:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1774
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "method/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/Request;->restMethod:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1779
    .local v0, "baseUrl":Ljava/lang/String;
    :goto_0
    invoke-direct {p0}, Lcom/facebook/Request;->addCommonParameters()V

    .line 1780
    invoke-direct {p0, v0}, Lcom/facebook/Request;->appendParametersToBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1776
    .end local v0    # "baseUrl":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;

    .restart local v0    # "baseUrl":Ljava/lang/String;
    goto :goto_0
.end method

.method final getUrlForSingleRequest()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1784
    iget-object v1, p0, Lcom/facebook/Request;->overriddenURL:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1785
    iget-object v1, p0, Lcom/facebook/Request;->overriddenURL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1796
    :goto_0
    return-object v1

    .line 1789
    :cond_0
    iget-object v1, p0, Lcom/facebook/Request;->restMethod:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1790
    const-string v1, "%s/%s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getRestUrlBase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/facebook/Request;->restMethod:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1795
    .local v0, "baseUrl":Ljava/lang/String;
    :goto_1
    invoke-direct {p0}, Lcom/facebook/Request;->addCommonParameters()V

    .line 1796
    invoke-direct {p0, v0}, Lcom/facebook/Request;->appendParametersToBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1792
    .end local v0    # "baseUrl":Ljava/lang/String;
    :cond_1
    const-string v1, "%s/%s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getGraphUrlBase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "baseUrl":Ljava/lang/String;
    goto :goto_1
.end method

.method public final setBatchEntryDependsOn(Ljava/lang/String;)V
    .locals 0
    .param p1, "batchEntryDependsOn"    # Ljava/lang/String;

    .prologue
    .line 996
    iput-object p1, p0, Lcom/facebook/Request;->batchEntryDependsOn:Ljava/lang/String;

    .line 997
    return-void
.end method

.method public final setBatchEntryName(Ljava/lang/String;)V
    .locals 0
    .param p1, "batchEntryName"    # Ljava/lang/String;

    .prologue
    .line 974
    iput-object p1, p0, Lcom/facebook/Request;->batchEntryName:Ljava/lang/String;

    .line 975
    return-void
.end method

.method public final setBatchEntryOmitResultOnSuccess(Z)V
    .locals 0
    .param p1, "batchEntryOmitResultOnSuccess"    # Z

    .prologue
    .line 1020
    iput-boolean p1, p0, Lcom/facebook/Request;->batchEntryOmitResultOnSuccess:Z

    .line 1021
    return-void
.end method

.method public final setCallback(Lcom/facebook/Request$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/facebook/Request$Callback;

    .prologue
    .line 1062
    iput-object p1, p0, Lcom/facebook/Request;->callback:Lcom/facebook/Request$Callback;

    .line 1063
    return-void
.end method

.method public final setGraphObject(Lcom/facebook/model/GraphObject;)V
    .locals 0
    .param p1, "graphObject"    # Lcom/facebook/model/GraphObject;

    .prologue
    .line 852
    iput-object p1, p0, Lcom/facebook/Request;->graphObject:Lcom/facebook/model/GraphObject;

    .line 853
    return-void
.end method

.method public final setGraphPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "graphPath"    # Ljava/lang/String;

    .prologue
    .line 871
    iput-object p1, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;

    .line 872
    return-void
.end method

.method public final setHttpMethod(Lcom/facebook/HttpMethod;)V
    .locals 2
    .param p1, "httpMethod"    # Lcom/facebook/HttpMethod;

    .prologue
    .line 890
    iget-object v0, p0, Lcom/facebook/Request;->overriddenURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    if-eq p1, v0, :cond_0

    .line 891
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Can\'t change HTTP method on request with overridden URL."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 893
    :cond_0
    if-eqz p1, :cond_1

    .end local p1    # "httpMethod":Lcom/facebook/HttpMethod;
    :goto_0
    iput-object p1, p0, Lcom/facebook/Request;->httpMethod:Lcom/facebook/HttpMethod;

    .line 894
    return-void

    .line 893
    .restart local p1    # "httpMethod":Lcom/facebook/HttpMethod;
    :cond_1
    sget-object p1, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    goto :goto_0
.end method

.method public final setParameters(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 912
    iput-object p1, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    .line 913
    return-void
.end method

.method public final setRestMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "restMethod"    # Ljava/lang/String;

    .prologue
    .line 931
    iput-object p1, p0, Lcom/facebook/Request;->restMethod:Ljava/lang/String;

    .line 932
    return-void
.end method

.method public final setSession(Lcom/facebook/Session;)V
    .locals 0
    .param p1, "session"    # Lcom/facebook/Session;

    .prologue
    .line 951
    iput-object p1, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    .line 952
    return-void
.end method

.method public final setTag(Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 1072
    iput-object p1, p0, Lcom/facebook/Request;->tag:Ljava/lang/Object;

    .line 1073
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1671
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

    .line 1672
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

    .line 1673
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

    .line 1674
    iget-object v1, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1671
    return-object v0
.end method
