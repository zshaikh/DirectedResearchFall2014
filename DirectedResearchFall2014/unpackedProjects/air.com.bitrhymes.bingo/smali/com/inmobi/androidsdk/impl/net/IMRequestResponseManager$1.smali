.class Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;
.super Ljava/lang/Thread;
.source "IMRequestResponseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->asyncRequestAd(Lcom/inmobi/androidsdk/impl/IMUserInfo;Lcom/inmobi/androidsdk/impl/IMNiceInfo;Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/androidsdk/impl/net/IMHttpRequestCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;

.field private final synthetic b:Lcom/inmobi/androidsdk/impl/IMNiceInfo;

.field private final synthetic c:Lcom/inmobi/androidsdk/impl/IMUserInfo;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;

.field private final synthetic g:Lcom/inmobi/androidsdk/impl/net/IMHttpRequestCallback;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;Lcom/inmobi/androidsdk/impl/IMNiceInfo;Lcom/inmobi/androidsdk/impl/IMUserInfo;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;Lcom/inmobi/androidsdk/impl/net/IMHttpRequestCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->a:Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;

    iput-object p2, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->b:Lcom/inmobi/androidsdk/impl/IMNiceInfo;

    iput-object p3, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->c:Lcom/inmobi/androidsdk/impl/IMUserInfo;

    iput-object p4, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->f:Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;

    iput-object p7, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->g:Lcom/inmobi/androidsdk/impl/net/IMHttpRequestCallback;

    .line 70
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-string v0, "Exception retrieving ad "

    const-string v0, "InMobiAndroidSDK_3.6.2"

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->a:Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;

    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->c:Lcom/inmobi/androidsdk/impl/IMUserInfo;

    iget-object v2, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->a(Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;Lcom/inmobi/androidsdk/impl/IMUserInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    const-string v1, "InMobiAndroidSDK_3.6.2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ad Serving URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->c:Lcom/inmobi/androidsdk/impl/IMUserInfo;

    iget-object v2, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->f:Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;

    invoke-static {v1, v2}, Lcom/inmobi/androidsdk/impl/net/IMHttpRequestBuilder;->a(Lcom/inmobi/androidsdk/impl/IMUserInfo;Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;)Ljava/lang/String;

    move-result-object v1

    .line 77
    const-string v2, "InMobiAndroidSDK_3.6.2"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v2, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->a:Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;

    iget-object v3, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->a:Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;

    iget-object v4, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->c:Lcom/inmobi/androidsdk/impl/IMUserInfo;

    iget-object v5, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->f:Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;

    invoke-static {v3, v0, v4, v5}, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->a(Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;Ljava/lang/String;Lcom/inmobi/androidsdk/impl/IMUserInfo;Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->a(Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;Ljava/net/HttpURLConnection;)V

    .line 79
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->a:Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->a(Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->a:Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;

    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->c:Lcom/inmobi/androidsdk/impl/IMUserInfo;

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->a(Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;Lcom/inmobi/androidsdk/impl/IMUserInfo;)Lcom/inmobi/androidsdk/impl/IMAdUnit;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->a:Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;

    const/4 v2, 0x0

    .line 86
    iget-object v3, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->g:Lcom/inmobi/androidsdk/impl/net/IMHttpRequestCallback;

    .line 85
    invoke-static {v1, v2, v0, v3}, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->a(Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;ILjava/lang/Object;Lcom/inmobi/androidsdk/impl/net/IMHttpRequestCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/inmobi/androidsdk/impl/IMAdException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 139
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->b:Lcom/inmobi/androidsdk/impl/IMNiceInfo;

    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->a:Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->a(Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->processNiceParams(Ljava/net/HttpURLConnection;)V

    .line 141
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 90
    :try_start_1
    const-string v1, "InMobiAndroidSDK_3.6.2"

    const-string v2, "Exception retrieving ad "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/IMAdException;->getCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 139
    :goto_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->b:Lcom/inmobi/androidsdk/impl/IMNiceInfo;

    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->a:Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->a(Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->processNiceParams(Ljava/net/HttpURLConnection;)V

    goto :goto_0

    .line 93
    :sswitch_0
    :try_start_2
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->a:Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;

    const/4 v1, 0x1

    sget-object v2, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->INVALID_REQUEST:Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    .line 94
    iget-object v3, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->g:Lcom/inmobi/androidsdk/impl/net/IMHttpRequestCallback;

    .line 93
    invoke-static {v0, v1, v2, v3}, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->a(Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;ILjava/lang/Object;Lcom/inmobi/androidsdk/impl/net/IMHttpRequestCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 138
    :catchall_0
    move-exception v0

    .line 139
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->b:Lcom/inmobi/androidsdk/impl/IMNiceInfo;

    iget-object v2, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->a:Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;

    invoke-static {v2}, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->a(Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;)Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->processNiceParams(Ljava/net/HttpURLConnection;)V

    .line 140
    throw v0

    .line 97
    :sswitch_1
    :try_start_3
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->a:Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;

    const/4 v1, 0x1

    sget-object v2, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->NO_FILL:Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    .line 98
    iget-object v3, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->g:Lcom/inmobi/androidsdk/impl/net/IMHttpRequestCallback;

    .line 97
    invoke-static {v0, v1, v2, v3}, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->a(Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;ILjava/lang/Object;Lcom/inmobi/androidsdk/impl/net/IMHttpRequestCallback;)V

    goto :goto_1

    .line 101
    :sswitch_2
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->a:Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;

    const/4 v1, 0x1

    sget-object v2, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    .line 102
    iget-object v3, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->g:Lcom/inmobi/androidsdk/impl/net/IMHttpRequestCallback;

    .line 101
    invoke-static {v0, v1, v2, v3}, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->a(Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;ILjava/lang/Object;Lcom/inmobi/androidsdk/impl/net/IMHttpRequestCallback;)V

    goto :goto_1

    .line 105
    :sswitch_3
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->a:Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;

    const/4 v1, 0x1

    sget-object v2, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->INVALID_REQUEST:Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    .line 106
    iget-object v3, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->g:Lcom/inmobi/androidsdk/impl/net/IMHttpRequestCallback;

    .line 105
    invoke-static {v0, v1, v2, v3}, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->a(Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;ILjava/lang/Object;Lcom/inmobi/androidsdk/impl/net/IMHttpRequestCallback;)V

    goto :goto_1

    .line 109
    :sswitch_4
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->a:Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;

    const/4 v1, 0x1

    sget-object v2, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->INVALID_REQUEST:Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    .line 110
    iget-object v3, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->g:Lcom/inmobi/androidsdk/impl/net/IMHttpRequestCallback;

    .line 109
    invoke-static {v0, v1, v2, v3}, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->a(Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;ILjava/lang/Object;Lcom/inmobi/androidsdk/impl/net/IMHttpRequestCallback;)V

    goto :goto_1

    .line 113
    :sswitch_5
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->a:Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;

    const/4 v1, 0x1

    sget-object v2, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->INVALID_REQUEST:Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    .line 114
    iget-object v3, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->g:Lcom/inmobi/androidsdk/impl/net/IMHttpRequestCallback;

    .line 113
    invoke-static {v0, v1, v2, v3}, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->a(Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;ILjava/lang/Object;Lcom/inmobi/androidsdk/impl/net/IMHttpRequestCallback;)V

    goto :goto_1

    .line 117
    :sswitch_6
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->a:Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;

    const/4 v1, 0x1

    sget-object v2, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->INVALID_REQUEST:Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    .line 118
    iget-object v3, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->g:Lcom/inmobi/androidsdk/impl/net/IMHttpRequestCallback;

    .line 117
    invoke-static {v0, v1, v2, v3}, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->a(Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;ILjava/lang/Object;Lcom/inmobi/androidsdk/impl/net/IMHttpRequestCallback;)V

    goto :goto_1

    .line 121
    :sswitch_7
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->a:Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;

    const/4 v1, 0x1

    sget-object v2, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->INVALID_APP_ID:Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    .line 122
    iget-object v3, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->g:Lcom/inmobi/androidsdk/impl/net/IMHttpRequestCallback;

    .line 121
    invoke-static {v0, v1, v2, v3}, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->a(Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;ILjava/lang/Object;Lcom/inmobi/androidsdk/impl/net/IMHttpRequestCallback;)V

    goto :goto_1

    .line 125
    :catch_1
    move-exception v0

    .line 126
    const-string v1, "InMobiAndroidSDK_3.6.2"

    const-string v2, "Exception retrieving ad "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    instance-of v0, v0, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->a:Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;

    const/4 v1, 0x1

    sget-object v2, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->AD_FETCH_TIMEOUT:Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    .line 129
    iget-object v3, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->g:Lcom/inmobi/androidsdk/impl/net/IMHttpRequestCallback;

    .line 128
    invoke-static {v0, v1, v2, v3}, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->a(Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;ILjava/lang/Object;Lcom/inmobi/androidsdk/impl/net/IMHttpRequestCallback;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 139
    :goto_2
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->b:Lcom/inmobi/androidsdk/impl/IMNiceInfo;

    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->a:Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->a(Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->processNiceParams(Ljava/net/HttpURLConnection;)V

    goto/16 :goto_0

    .line 131
    :cond_0
    :try_start_4
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->a:Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;

    const/4 v1, 0x1

    sget-object v2, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->NETWORK_ERROR:Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    .line 132
    iget-object v3, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->g:Lcom/inmobi/androidsdk/impl/net/IMHttpRequestCallback;

    .line 131
    invoke-static {v0, v1, v2, v3}, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->a(Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;ILjava/lang/Object;Lcom/inmobi/androidsdk/impl/net/IMHttpRequestCallback;)V

    goto :goto_2

    .line 133
    :catch_2
    move-exception v0

    .line 134
    const-string v1, "InMobiAndroidSDK_3.6.2"

    const-string v2, "Exception retrieving ad "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->a:Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;

    const/4 v1, 0x1

    sget-object v2, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    .line 136
    iget-object v3, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->g:Lcom/inmobi/androidsdk/impl/net/IMHttpRequestCallback;

    .line 135
    invoke-static {v0, v1, v2, v3}, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->a(Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;ILjava/lang/Object;Lcom/inmobi/androidsdk/impl/net/IMHttpRequestCallback;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 139
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->b:Lcom/inmobi/androidsdk/impl/IMNiceInfo;

    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->a:Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->a(Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->processNiceParams(Ljava/net/HttpURLConnection;)V

    goto/16 :goto_0

    .line 91
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0xc8 -> :sswitch_2
        0x12c -> :sswitch_0
        0x190 -> :sswitch_3
        0x1f4 -> :sswitch_4
        0x258 -> :sswitch_5
        0x2bc -> :sswitch_6
        0x320 -> :sswitch_7
    .end sparse-switch
.end method
