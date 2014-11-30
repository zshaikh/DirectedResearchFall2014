.class final Lcom/a/a/a/c;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "HttpRequester.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 78
    return-void
.end method

.method constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 86
    return-void
.end method


# virtual methods
.method protected final createConnectionKeepAliveStrategy()Lorg/apache/http/conn/ConnectionKeepAliveStrategy;
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/a/a/a/d;

    invoke-direct {v0}, Lcom/a/a/a/d;-><init>()V

    return-object v0
.end method
