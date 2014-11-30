.class public final Lcom/dolphin/browser/Network/f;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "HttpRequester.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 94
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 102
    return-void
.end method


# virtual methods
.method protected createConnectionKeepAliveStrategy()Lorg/apache/http/conn/ConnectionKeepAliveStrategy;
    .locals 1

    .prologue
    .line 111
    new-instance v0, Lcom/dolphin/browser/Network/g;

    invoke-direct {v0}, Lcom/dolphin/browser/Network/g;-><init>()V

    return-object v0
.end method
