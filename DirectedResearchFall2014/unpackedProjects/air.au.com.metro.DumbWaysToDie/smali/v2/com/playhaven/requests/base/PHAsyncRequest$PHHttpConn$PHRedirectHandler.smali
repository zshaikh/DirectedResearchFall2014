.class Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn$PHRedirectHandler;
.super Lorg/apache/http/impl/client/DefaultRedirectHandler;
.source "PHAsyncRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PHRedirectHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;


# direct methods
.method private constructor <init>(Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn$PHRedirectHandler;->this$1:Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;

    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultRedirectHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn$PHRedirectHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn$PHRedirectHandler;-><init>(Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;)V

    return-void
.end method


# virtual methods
.method public isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 1
    .parameter "response"
    .parameter "context"

    .prologue
    .line 116
    iget-object v0, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn$PHRedirectHandler;->this$1:Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;

    invoke-virtual {v0, p1}, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;->shouldRedirect(Lorg/apache/http/HttpResponse;)Z

    move-result v0

    return v0
.end method
