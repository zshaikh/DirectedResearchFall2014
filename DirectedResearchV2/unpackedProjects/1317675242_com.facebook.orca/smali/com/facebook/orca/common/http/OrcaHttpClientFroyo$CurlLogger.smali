.class Lcom/facebook/orca/common/http/OrcaHttpClientFroyo$CurlLogger;
.super Ljava/lang/Object;
.source "OrcaHttpClientFroyo.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# instance fields
.field final synthetic a:Lcom/facebook/orca/common/http/OrcaHttpClientFroyo;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/common/http/OrcaHttpClientFroyo;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/facebook/orca/common/http/OrcaHttpClientFroyo$CurlLogger;->a:Lcom/facebook/orca/common/http/OrcaHttpClientFroyo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/common/http/OrcaHttpClientFroyo;Lcom/facebook/orca/common/http/OrcaHttpClientFroyo$1;)V
    .locals 0

    .prologue
    .line 383
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/http/OrcaHttpClientFroyo$CurlLogger;-><init>(Lcom/facebook/orca/common/http/OrcaHttpClientFroyo;)V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpClientFroyo$CurlLogger;->a:Lcom/facebook/orca/common/http/OrcaHttpClientFroyo;

    invoke-static {v0}, Lcom/facebook/orca/common/http/OrcaHttpClientFroyo;->b(Lcom/facebook/orca/common/http/OrcaHttpClientFroyo;)Lcom/facebook/orca/common/http/OrcaHttpClientFroyo$LoggingConfiguration;

    move-result-object v0

    .line 387
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/facebook/orca/common/http/OrcaHttpClientFroyo$LoggingConfiguration;->a(Lcom/facebook/orca/common/http/OrcaHttpClientFroyo$LoggingConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v1, :cond_0

    .line 392
    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/facebook/orca/common/http/OrcaHttpClientFroyo;->a(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/common/http/OrcaHttpClientFroyo$LoggingConfiguration;->a(Lcom/facebook/orca/common/http/OrcaHttpClientFroyo$LoggingConfiguration;Ljava/lang/String;)V

    .line 394
    :cond_0
    return-void
.end method
