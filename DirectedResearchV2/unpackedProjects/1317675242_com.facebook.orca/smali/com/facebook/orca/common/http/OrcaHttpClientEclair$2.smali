.class Lcom/facebook/orca/common/http/OrcaHttpClientEclair$2;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "OrcaHttpClientEclair.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/common/http/OrcaCookieStore;

.field final synthetic b:Lcom/facebook/orca/common/http/OrcaHttpClientEclair;


# direct methods
.method constructor <init>(Lcom/facebook/orca/common/http/OrcaHttpClientEclair;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;Lcom/facebook/orca/common/http/OrcaCookieStore;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/facebook/orca/common/http/OrcaHttpClientEclair$2;->b:Lcom/facebook/orca/common/http/OrcaHttpClientEclair;

    iput-object p4, p0, Lcom/facebook/orca/common/http/OrcaHttpClientEclair$2;->a:Lcom/facebook/orca/common/http/OrcaCookieStore;

    invoke-direct {p0, p2, p3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-void
.end method


# virtual methods
.method protected createHttpContext()Lorg/apache/http/protocol/HttpContext;
    .locals 3

    .prologue
    .line 179
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 180
    const-string v1, "http.authscheme-registry"

    invoke-virtual {p0}, Lcom/facebook/orca/common/http/OrcaHttpClientEclair$2;->getAuthSchemes()Lorg/apache/http/auth/AuthSchemeRegistry;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 183
    const-string v1, "http.cookiespec-registry"

    invoke-virtual {p0}, Lcom/facebook/orca/common/http/OrcaHttpClientEclair$2;->getCookieSpecs()Lorg/apache/http/cookie/CookieSpecRegistry;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 186
    const-string v1, "http.auth.credentials-provider"

    invoke-virtual {p0}, Lcom/facebook/orca/common/http/OrcaHttpClientEclair$2;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 189
    const-string v1, "http.cookie-store"

    iget-object v2, p0, Lcom/facebook/orca/common/http/OrcaHttpClientEclair$2;->a:Lcom/facebook/orca/common/http/OrcaCookieStore;

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 192
    return-object v0
.end method

.method protected createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;
    .locals 4

    .prologue
    .line 167
    invoke-super {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    .line 168
    invoke-static {}, Lcom/facebook/orca/common/http/OrcaHttpClientEclair;->d()Lorg/apache/http/HttpRequestInterceptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 169
    new-instance v1, Lcom/facebook/orca/common/http/OrcaHttpClientEclair$CurlLogger;

    iget-object v2, p0, Lcom/facebook/orca/common/http/OrcaHttpClientEclair$2;->b:Lcom/facebook/orca/common/http/OrcaHttpClientEclair;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/facebook/orca/common/http/OrcaHttpClientEclair$CurlLogger;-><init>(Lcom/facebook/orca/common/http/OrcaHttpClientEclair;Lcom/facebook/orca/common/http/OrcaHttpClientEclair$1;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 170
    invoke-static {}, Lcom/facebook/orca/common/http/ClientGZipContentCompression;->a()Lorg/apache/http/HttpRequestInterceptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 171
    invoke-static {}, Lcom/facebook/orca/common/http/ClientGZipContentCompression;->b()Lorg/apache/http/HttpResponseInterceptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 172
    return-object v0
.end method
