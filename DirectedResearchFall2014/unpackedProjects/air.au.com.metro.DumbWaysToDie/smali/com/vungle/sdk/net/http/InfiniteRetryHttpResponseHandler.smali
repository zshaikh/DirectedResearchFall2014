.class abstract Lcom/vungle/sdk/net/http/InfiniteRetryHttpResponseHandler;
.super Lcom/vungle/sdk/net/http/MaxRetryAgeHttpResponseHandler;
.source "vungle"


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 7
    invoke-direct {p0}, Lcom/vungle/sdk/net/http/MaxRetryAgeHttpResponseHandler;-><init>()V

    .line 8
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vungle/sdk/net/http/MaxRetryAgeHttpResponseHandler;->c:J

    .line 9
    iput v2, p0, Lcom/vungle/sdk/net/http/MaxRetryAgeHttpResponseHandler;->a:I

    .line 10
    iput v2, p0, Lcom/vungle/sdk/net/http/MaxRetryAgeHttpResponseHandler;->b:I

    .line 11
    return-void
.end method
