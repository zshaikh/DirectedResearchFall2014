.class public Lcom/dolphin/browser/g/a;
.super Lcom/dolphin/browser/g/g;
.source "AddressTask.java"


# instance fields
.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/dolphin/browser/g/g;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/dolphin/browser/g/a;->b:I

    .line 25
    iput p2, p0, Lcom/dolphin/browser/g/a;->b:I

    .line 26
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/apache/http/HttpResponse;
    .locals 5

    .prologue
    const/16 v0, 0x4e20

    .line 30
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 35
    iget v1, p0, Lcom/dolphin/browser/g/a;->b:I

    if-nez v1, :cond_2

    .line 36
    const/16 v0, 0x7530

    move v1, v0

    .line 40
    :goto_0
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    invoke-static {v3, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 42
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 44
    const-string v0, "http://74.125.71.147/loc/json"

    .line 45
    iget v1, p0, Lcom/dolphin/browser/g/a;->b:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 46
    const-string v0, "http://www.google.cn/loc/json"

    .line 47
    :cond_0
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 49
    iget v0, p0, Lcom/dolphin/browser/g/a;->b:I

    if-nez v0, :cond_1

    .line 50
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    new-instance v3, Lorg/apache/http/HttpHost;

    const/16 v4, 0x50

    invoke-direct {v3, v0, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 53
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v4, "http.route.default-proxy"

    invoke-interface {v0, v4, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 58
    :cond_1
    new-instance v0, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 60
    invoke-interface {v2, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 61
    return-object v0

    :cond_2
    move v1, v0

    goto :goto_0
.end method
