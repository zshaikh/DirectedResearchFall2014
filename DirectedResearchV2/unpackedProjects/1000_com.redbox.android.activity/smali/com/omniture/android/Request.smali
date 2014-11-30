.class Lcom/omniture/android/Request;
.super Ljava/lang/Object;
.source "Request.java"


# instance fields
.field private localeID:Ljava/lang/String;

.field private requestString:Ljava/lang/String;

.field private ssl:Z

.field private userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "requestString"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "localeID"    # Ljava/lang/String;
    .param p4, "ssl"    # Z

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/omniture/android/Request;->requestString:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/omniture/android/Request;->userAgent:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/omniture/android/Request;->localeID:Ljava/lang/String;

    .line 27
    iput-boolean p4, p0, Lcom/omniture/android/Request;->ssl:Z

    .line 28
    return-void
.end method

.method private openConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 3
    .param p1, "requestString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 53
    .local v1, "requestURL":Ljava/net/URL;
    iget-boolean v2, p0, Lcom/omniture/android/Request;->ssl:Z

    if-eqz v2, :cond_0

    .line 54
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 55
    .local v0, "connection":Ljavax/net/ssl/HttpsURLConnection;
    new-instance v2, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;

    invoke-direct {v2}, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;-><init>()V

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    move-object v2, v0

    .line 58
    .end local v0    # "connection":Ljavax/net/ssl/HttpsURLConnection;
    .end local p0    # "this":Lcom/omniture/android/Request;
    :goto_0
    return-object v2

    .restart local p0    # "this":Lcom/omniture/android/Request;
    :cond_0
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    .end local p0    # "this":Lcom/omniture/android/Request;
    check-cast p0, Ljava/net/HttpURLConnection;

    move-object v2, p0

    goto :goto_0
.end method


# virtual methods
.method public send()V
    .locals 3

    .prologue
    .line 33
    :try_start_0
    iget-object v1, p0, Lcom/omniture/android/Request;->requestString:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/omniture/android/Request;->openConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 36
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 37
    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 40
    const-string v1, "User-Agent"

    iget-object v2, p0, Lcom/omniture/android/Request;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v1, "Accept-Language"

    iget-object v2, p0, Lcom/omniture/android/Request;->localeID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v1

    goto :goto_0
.end method
