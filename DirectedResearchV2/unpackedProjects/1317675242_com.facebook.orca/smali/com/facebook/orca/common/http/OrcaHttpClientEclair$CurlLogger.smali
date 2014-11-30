.class Lcom/facebook/orca/common/http/OrcaHttpClientEclair$CurlLogger;
.super Ljava/lang/Object;
.source "OrcaHttpClientEclair.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# instance fields
.field final synthetic a:Lcom/facebook/orca/common/http/OrcaHttpClientEclair;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/common/http/OrcaHttpClientEclair;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lcom/facebook/orca/common/http/OrcaHttpClientEclair$CurlLogger;->a:Lcom/facebook/orca/common/http/OrcaHttpClientEclair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/common/http/OrcaHttpClientEclair;Lcom/facebook/orca/common/http/OrcaHttpClientEclair$1;)V
    .locals 0

    .prologue
    .line 414
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/http/OrcaHttpClientEclair$CurlLogger;-><init>(Lcom/facebook/orca/common/http/OrcaHttpClientEclair;)V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpClientEclair$CurlLogger;->a:Lcom/facebook/orca/common/http/OrcaHttpClientEclair;

    invoke-static {v0}, Lcom/facebook/orca/common/http/OrcaHttpClientEclair;->a(Lcom/facebook/orca/common/http/OrcaHttpClientEclair;)Lcom/facebook/orca/common/http/OrcaHttpClientEclair$LoggingConfiguration;

    move-result-object v0

    .line 418
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/facebook/orca/common/http/OrcaHttpClientEclair$LoggingConfiguration;->a(Lcom/facebook/orca/common/http/OrcaHttpClientEclair$LoggingConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v1, :cond_0

    .line 421
    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-static {v0}, Lcom/facebook/orca/common/http/OrcaHttpClientEclair$LoggingConfiguration;->b(Lcom/facebook/orca/common/http/OrcaHttpClientEclair$LoggingConfiguration;)Z

    move-result v1

    invoke-static {p1, v1}, Lcom/facebook/orca/common/http/OrcaHttpClientEclair;->a(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/common/http/OrcaHttpClientEclair$LoggingConfiguration;->a(Lcom/facebook/orca/common/http/OrcaHttpClientEclair$LoggingConfiguration;Ljava/lang/String;)V

    .line 424
    :cond_0
    return-void
.end method
