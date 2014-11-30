.class public Lretrofit/client/UrlConnectionClient;
.super Ljava/lang/Object;
.source "UrlConnectionClient.java"

# interfaces
.implements Lretrofit/client/Client;


# static fields
.field private static final CHUNK_SIZE:I = 0x1000


# instance fields
.field private final methodField:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    :try_start_0
    const-class v0, Ljava/net/HttpURLConnection;

    const-string v1, "method"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lretrofit/client/UrlConnectionClient;->methodField:Ljava/lang/reflect/Field;

    .line 40
    iget-object v0, p0, Lretrofit/client/UrlConnectionClient;->methodField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    const/4 v1, 0x0

    invoke-static {v1, v0}, Lretrofit/RetrofitError;->unexpectedError(Ljava/lang/String;Ljava/lang/Throwable;)Lretrofit/RetrofitError;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public execute(Lretrofit/client/Request;)Lretrofit/client/Response;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lretrofit/client/UrlConnectionClient;->openConnection(Lretrofit/client/Request;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 48
    invoke-virtual {p0, v0, p1}, Lretrofit/client/UrlConnectionClient;->prepareRequest(Ljava/net/HttpURLConnection;Lretrofit/client/Request;)V

    .line 49
    invoke-virtual {p0, v0}, Lretrofit/client/UrlConnectionClient;->readResponse(Ljava/net/HttpURLConnection;)Lretrofit/client/Response;

    move-result-object v0

    return-object v0
.end method

.method protected openConnection(Lretrofit/client/Request;)Ljava/net/HttpURLConnection;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Lretrofit/client/Request;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 55
    const/16 v1, 0x3a98

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 56
    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 57
    return-object v0
.end method

.method prepareRequest(Ljava/net/HttpURLConnection;Lretrofit/client/Request;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 63
    :try_start_0
    invoke-virtual {p2}, Lretrofit/client/Request;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 74
    invoke-virtual {p2}, Lretrofit/client/Request;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lretrofit/client/Header;

    .line 75
    invoke-virtual {v0}, Lretrofit/client/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lretrofit/client/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 64
    :catch_0
    move-exception v0

    .line 66
    :try_start_1
    iget-object v0, p0, Lretrofit/client/UrlConnectionClient;->methodField:Ljava/lang/reflect/Field;

    invoke-virtual {p2}, Lretrofit/client/Request;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 67
    :catch_1
    move-exception v0

    .line 68
    invoke-virtual {p2}, Lretrofit/client/Request;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lretrofit/RetrofitError;->unexpectedError(Ljava/lang/String;Ljava/lang/Throwable;)Lretrofit/RetrofitError;

    move-result-object v0

    throw v0

    .line 78
    :cond_0
    invoke-virtual {p2}, Lretrofit/client/Request;->getBody()Lretrofit/mime/TypedOutput;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 81
    const-string v1, "Content-Type"

    invoke-interface {v0}, Lretrofit/mime/TypedOutput;->mimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-interface {v0}, Lretrofit/mime/TypedOutput;->length()J

    move-result-wide v1

    .line 83
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_2

    .line 84
    long-to-int v3, v1

    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 85
    const-string v3, "Content-Length"

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :goto_2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-interface {v0, v1}, Lretrofit/mime/TypedOutput;->writeTo(Ljava/io/OutputStream;)V

    .line 91
    :cond_1
    return-void

    .line 87
    :cond_2
    const/16 v1, 0x1000

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    goto :goto_2
.end method

.method readResponse(Ljava/net/HttpURLConnection;)Lretrofit/client/Response;
    .locals 9

    .prologue
    .line 94
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 95
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v7

    .line 97
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 98
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 99
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 100
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 101
    new-instance v4, Lretrofit/client/Header;

    invoke-direct {v4, v1, v0}, Lretrofit/client/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    .line 108
    const/16 v0, 0x190

    if-lt v6, v0, :cond_2

    .line 109
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    .line 113
    :goto_1
    new-instance v0, Lretrofit/client/UrlConnectionClient$TypedInputStream;

    int-to-long v2, v2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lretrofit/client/UrlConnectionClient$TypedInputStream;-><init>(Ljava/lang/String;JLjava/io/InputStream;Lretrofit/client/UrlConnectionClient$1;)V

    .line 114
    new-instance v1, Lretrofit/client/Response;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    move v3, v6

    move-object v4, v7

    move-object v5, v8

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lretrofit/client/Response;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Lretrofit/mime/TypedInput;)V

    return-object v1

    .line 111
    :cond_2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    goto :goto_1
.end method
