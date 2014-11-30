.class Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn$PHRedirectHandler;
.super Lorg/apache/http/impl/client/DefaultRedirectHandler;
.source "PHAsyncRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PHRedirectHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;


# direct methods
.method private constructor <init>(Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn$PHRedirectHandler;->this$1:Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;

    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultRedirectHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn$PHRedirectHandler;)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn$PHRedirectHandler;-><init>(Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;)V

    return-void
.end method


# virtual methods
.method public isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 1
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn$PHRedirectHandler;->this$1:Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;

    invoke-virtual {v0, p1}, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->shouldRedirect(Lorg/apache/http/HttpResponse;)Z

    move-result v0

    return v0
.end method
