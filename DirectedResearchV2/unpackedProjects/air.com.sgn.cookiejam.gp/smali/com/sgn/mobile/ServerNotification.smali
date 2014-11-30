.class public Lcom/sgn/mobile/ServerNotification;
.super Ljava/lang/Object;
.source "ServerNotification.java"


# static fields
.field private static final REGISTER_URL:Ljava/lang/String; = "http://push.android.sgnapps.com/register.php"

.field private static final TRACKOPENPUSH_URL:Ljava/lang/String; = "http://push.android.sgnapps.com/trackopenpush.php"

.field private static final TRACKPUSH_URL:Ljava/lang/String; = "http://push.android.sgnapps.com/trackpush.php"

.field private static instance:Lcom/sgn/mobile/ServerNotification;


# instance fields
.field private final client:Lcom/loopj/android/http/AsyncHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/sgn/mobile/ServerNotification;

    invoke-direct {v0}, Lcom/sgn/mobile/ServerNotification;-><init>()V

    sput-object v0, Lcom/sgn/mobile/ServerNotification;->instance:Lcom/sgn/mobile/ServerNotification;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/sgn/mobile/ServerNotification;->client:Lcom/loopj/android/http/AsyncHttpClient;

    .line 33
    return-void
.end method

.method public static get()Lcom/sgn/mobile/ServerNotification;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/sgn/mobile/ServerNotification;->instance:Lcom/sgn/mobile/ServerNotification;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/sgn/mobile/ServerNotification;

    invoke-direct {v0}, Lcom/sgn/mobile/ServerNotification;-><init>()V

    sput-object v0, Lcom/sgn/mobile/ServerNotification;->instance:Lcom/sgn/mobile/ServerNotification;

    .line 38
    :cond_0
    sget-object v0, Lcom/sgn/mobile/ServerNotification;->instance:Lcom/sgn/mobile/ServerNotification;

    return-object v0
.end method

.method public static sendPostRequest(Ljava/lang/String;[[Ljava/lang/String;)V
    .locals 14
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "params"    # [[Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    const-string v13, "sendPostRequest"

    .line 83
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 86
    .local v1, "httpParameters":Lorg/apache/http/params/HttpParams;
    const/16 v6, 0x2710

    .line 87
    .local v6, "timeoutConnection":I
    invoke-static {v1, v6}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 90
    const/16 v7, 0x2710

    .line 91
    .local v7, "timeoutSocket":I
    invoke-static {v1, v7}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 94
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 95
    .local v2, "httpclient":Lorg/apache/http/client/HttpClient;
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 98
    .local v3, "httppost":Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v5, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v8, p1

    if-ge v4, v8, :cond_0

    .line 100
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    aget-object v9, p1, v4

    const/4 v10, 0x0

    aget-object v9, v9, v10

    aget-object v10, p1, v4

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 102
    :cond_0
    new-instance v8, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v8, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v8}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 103
    const-string v8, "Post URL: %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p0, v9, v10

    invoke-static {v8, v9}, Lcom/jesusla/ane/Extension;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 113
    .end local v4    # "i":I
    .end local v5    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :goto_1
    return-void

    .line 108
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 109
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    const-string v8, "sendPostRequest"

    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {v0, v13, v8}, Lcom/jesusla/ane/Extension;->fail(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 110
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v8

    move-object v0, v8

    .line 111
    .local v0, "e":Ljava/io/IOException;
    const-string v8, "sendPostRequest"

    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {v0, v13, v8}, Lcom/jesusla/ane/Extension;->fail(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method


# virtual methods
.method public varargs sendAsyncGetRequest(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 77
    array-length v1, p2

    if-lez v1, :cond_0

    new-instance v1, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v1, p2}, Lcom/loopj/android/http/RequestParams;-><init>([Ljava/lang/Object;)V

    move-object v0, v1

    .line 78
    .local v0, "requestParams":Lcom/loopj/android/http/RequestParams;
    :goto_0
    iget-object v1, p0, Lcom/sgn/mobile/ServerNotification;->client:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-virtual {v1, p1, v0, v2}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 79
    const-string v1, "Async GET URL: %s (params: %s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/jesusla/ane/Extension;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    return-void

    .end local v0    # "requestParams":Lcom/loopj/android/http/RequestParams;
    :cond_0
    move-object v0, v2

    .line 77
    goto :goto_0
.end method

.method public varargs sendGetRequest(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 11
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v9, 0x0

    const-string v10, "sendPostRequest"

    .line 51
    new-instance v6, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v6, p2}, Lcom/loopj/android/http/RequestParams;-><init>([Ljava/lang/Object;)V

    invoke-static {p1, v6}, Lcom/loopj/android/http/AsyncHttpClient;->getUrlWithQueryString(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;)Ljava/lang/String;

    move-result-object p1

    .line 53
    :try_start_0
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 56
    .local v1, "httpParameters":Lorg/apache/http/params/HttpParams;
    const/16 v4, 0x2710

    .line 57
    .local v4, "timeoutConnection":I
    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 60
    const/16 v5, 0x2710

    .line 61
    .local v5, "timeoutSocket":I
    invoke-static {v1, v5}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 64
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 65
    .local v2, "httpclient":Lorg/apache/http/client/HttpClient;
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 66
    .local v3, "httpget":Lorg/apache/http/client/methods/HttpGet;
    const-string v6, "GET URL: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-static {v6, v7}, Lcom/jesusla/ane/Extension;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 74
    .end local v1    # "httpParameters":Lorg/apache/http/params/HttpParams;
    .end local v2    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v3    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .end local v4    # "timeoutConnection":I
    .end local v5    # "timeoutSocket":I
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 70
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    const-string v6, "sendPostRequest"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v0, v10, v6}, Lcom/jesusla/ane/Extension;->fail(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 71
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 72
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "sendPostRequest"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v0, v10, v6}, Lcom/jesusla/ane/Extension;->fail(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public sendNewRegistration(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gcmID"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-static {p1}, Lcom/sgn/mobile/ContextUtils;->get(Landroid/content/Context;)Lcom/sgn/mobile/ContextUtils;

    move-result-object v0

    .line 43
    .local v0, "utils":Lcom/sgn/mobile/ContextUtils;
    const-string v1, "http://push.android.sgnapps.com/register.php"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "appid"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/sgn/mobile/ContextUtils;->getAppID()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "udid"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {v0}, Lcom/sgn/mobile/ContextUtils;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "gcmid"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p2, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/sgn/mobile/ServerNotification;->sendAsyncGetRequest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method public sendPushOpenTracking(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pushID"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-static {p1}, Lcom/sgn/mobile/ContextUtils;->get(Landroid/content/Context;)Lcom/sgn/mobile/ContextUtils;

    move-result-object v0

    .line 126
    .local v0, "utils":Lcom/sgn/mobile/ContextUtils;
    const-string v1, "http://push.android.sgnapps.com/trackopenpush.php"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "appid"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/sgn/mobile/ContextUtils;->getAppID()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "uid"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {v0}, Lcom/sgn/mobile/ContextUtils;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "pushid"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p2, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/sgn/mobile/ServerNotification;->sendAsyncGetRequest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    return-void
.end method

.method public sendPushTracking(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pushID"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-static {p1}, Lcom/sgn/mobile/ContextUtils;->get(Landroid/content/Context;)Lcom/sgn/mobile/ContextUtils;

    move-result-object v0

    .line 117
    .local v0, "utils":Lcom/sgn/mobile/ContextUtils;
    const-string v1, "http://push.android.sgnapps.com/trackpush.php"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "appid"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/sgn/mobile/ContextUtils;->getAppID()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "uid"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {v0}, Lcom/sgn/mobile/ContextUtils;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "pushid"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p2, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/sgn/mobile/ServerNotification;->sendGetRequest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    return-void
.end method
