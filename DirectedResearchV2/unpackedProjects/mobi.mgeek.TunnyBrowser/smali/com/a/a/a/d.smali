.class final Lcom/a/a/a/d;
.super Lorg/apache/http/impl/client/DefaultConnectionKeepAliveStrategy;
.source "HttpRequester.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultConnectionKeepAliveStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public final getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J
    .locals 4

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultConnectionKeepAliveStrategy;->getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J

    move-result-wide v0

    .line 67
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 68
    const-wide/16 v0, 0x3a98

    .line 70
    :cond_0
    return-wide v0
.end method
