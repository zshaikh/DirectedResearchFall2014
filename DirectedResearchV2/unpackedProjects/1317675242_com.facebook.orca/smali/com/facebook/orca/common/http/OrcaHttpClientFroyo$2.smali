.class Lcom/facebook/orca/common/http/OrcaHttpClientFroyo$2;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "OrcaHttpClientFroyo.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/common/http/OrcaHttpClientFroyo;


# direct methods
.method constructor <init>(Lcom/facebook/orca/common/http/OrcaHttpClientFroyo;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/facebook/orca/common/http/OrcaHttpClientFroyo$2;->a:Lcom/facebook/orca/common/http/OrcaHttpClientFroyo;

    invoke-direct {p0, p2, p3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-void
.end method


# virtual methods
.method protected createHttpContext()Lorg/apache/http/protocol/HttpContext;
    .locals 3

    .prologue
    .line 167
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 168
    const-string v1, "http.authscheme-registry"

    invoke-virtual {p0}, Lcom/facebook/orca/common/http/OrcaHttpClientFroyo$2;->getAuthSchemes()Lorg/apache/http/auth/AuthSchemeRegistry;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 171
    const-string v1, "http.cookiespec-registry"

    invoke-virtual {p0}, Lcom/facebook/orca/common/http/OrcaHttpClientFroyo$2;->getCookieSpecs()Lorg/apache/http/cookie/CookieSpecRegistry;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    const-string v1, "http.auth.credentials-provider"

    invoke-virtual {p0}, Lcom/facebook/orca/common/http/OrcaHttpClientFroyo$2;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    const-string v1, "http.cookie-store"

    iget-object v2, p0, Lcom/facebook/orca/common/http/OrcaHttpClientFroyo$2;->a:Lcom/facebook/orca/common/http/OrcaHttpClientFroyo;

    invoke-static {v2}, Lcom/facebook/orca/common/http/OrcaHttpClientFroyo;->a(Lcom/facebook/orca/common/http/OrcaHttpClientFroyo;)Lcom/facebook/orca/common/http/OrcaCookieStore;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 180
    return-object v0
.end method

.method protected createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;
    .locals 4

    .prologue
    .line 155
    invoke-super {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    .line 156
    invoke-static {}, Lcom/facebook/orca/common/http/OrcaHttpClientFroyo;->c()Lorg/apache/http/HttpRequestInterceptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 157
    new-instance v1, Lcom/facebook/orca/common/http/OrcaHttpClientFroyo$CurlLogger;

    iget-object v2, p0, Lcom/facebook/orca/common/http/OrcaHttpClientFroyo$2;->a:Lcom/facebook/orca/common/http/OrcaHttpClientFroyo;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/facebook/orca/common/http/OrcaHttpClientFroyo$CurlLogger;-><init>(Lcom/facebook/orca/common/http/OrcaHttpClientFroyo;Lcom/facebook/orca/common/http/OrcaHttpClientFroyo$1;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 158
    invoke-static {}, Lcom/facebook/orca/common/http/ClientGZipContentCompression;->a()Lorg/apache/http/HttpRequestInterceptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 159
    invoke-static {}, Lcom/facebook/orca/common/http/ClientGZipContentCompression;->b()Lorg/apache/http/HttpResponseInterceptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 160
    return-object v0
.end method
