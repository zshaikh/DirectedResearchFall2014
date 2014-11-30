.class public Lcom/dolphin/browser/Network/n;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# instance fields
.field public a:Lorg/apache/http/HttpResponse;

.field public b:Lorg/apache/http/StatusLine;

.field public c:Lorg/apache/http/HttpEntity;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpResponse;)V
    .locals 1

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p1, p0, Lcom/dolphin/browser/Network/n;->a:Lorg/apache/http/HttpResponse;

    .line 194
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/Network/n;->b:Lorg/apache/http/StatusLine;

    .line 195
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/Network/n;->c:Lorg/apache/http/HttpEntity;

    .line 196
    return-void
.end method
