.class public Lretrofit/client/OkClient;
.super Lretrofit/client/UrlConnectionClient;
.source "OkClient.java"


# instance fields
.field private final client:Lcom/squareup/okhttp/OkHttpClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lretrofit/client/OkClient;->generateDefaultOkHttp()Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v0

    invoke-direct {p0, v0}, Lretrofit/client/OkClient;-><init>(Lcom/squareup/okhttp/OkHttpClient;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/squareup/okhttp/OkHttpClient;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lretrofit/client/UrlConnectionClient;-><init>()V

    .line 40
    iput-object p1, p0, Lretrofit/client/OkClient;->client:Lcom/squareup/okhttp/OkHttpClient;

    .line 41
    return-void
.end method

.method private static generateDefaultOkHttp()Lcom/squareup/okhttp/OkHttpClient;
    .locals 4

    .prologue
    .line 27
    new-instance v0, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v0}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    .line 28
    const-wide/16 v1, 0x3a98

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/squareup/okhttp/OkHttpClient;->setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 29
    const-wide/16 v1, 0x4e20

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/squareup/okhttp/OkHttpClient;->setReadTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 30
    return-object v0
.end method


# virtual methods
.method protected openConnection(Lretrofit/client/Request;)Ljava/net/HttpURLConnection;
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lretrofit/client/OkClient;->client:Lcom/squareup/okhttp/OkHttpClient;

    new-instance v1, Ljava/net/URL;

    invoke-virtual {p1}, Lretrofit/client/Request;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/OkHttpClient;->open(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method
