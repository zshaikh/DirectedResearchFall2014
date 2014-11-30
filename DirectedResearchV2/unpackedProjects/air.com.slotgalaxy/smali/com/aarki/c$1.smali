.class final Lcom/aarki/c$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aarki/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/aarki/c$c;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Ljava/net/URI;

.field private synthetic b:Lorg/apache/http/HttpEntity;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Lcom/aarki/c$b;


# direct methods
.method constructor <init>(Lcom/aarki/c;Ljava/net/URI;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/aarki/c$b;)V
    .locals 0

    .prologue
    .line 110
    iput-object p2, p0, Lcom/aarki/c$1;->a:Ljava/net/URI;

    iput-object p3, p0, Lcom/aarki/c$1;->b:Lorg/apache/http/HttpEntity;

    iput-object p4, p0, Lcom/aarki/c$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/aarki/c$1;->d:Lcom/aarki/c$b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Lcom/aarki/c$c;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 114
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 115
    const/16 v1, 0x1388

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 116
    const/16 v1, 0x2710

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 117
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 118
    new-instance v0, Lcom/aarki/c$1$1;

    invoke-direct {v0, p0}, Lcom/aarki/c$1$1;-><init>(Lcom/aarki/c$1;)V

    invoke-virtual {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 127
    new-instance v0, Lcom/aarki/c$1$2;

    invoke-direct {v0, p0}, Lcom/aarki/c$1$2;-><init>(Lcom/aarki/c$1;)V

    invoke-virtual {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 143
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    iget-object v2, p0, Lcom/aarki/c$1;->a:Ljava/net/URI;

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 144
    iget-object v2, p0, Lcom/aarki/c$1;->b:Lorg/apache/http/HttpEntity;

    if-eqz v2, :cond_0

    .line 145
    iget-object v2, p0, Lcom/aarki/c$1;->b:Lorg/apache/http/HttpEntity;

    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 148
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Full URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/aarki/c$1;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    invoke-virtual {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 155
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    .line 156
    new-instance v0, Lcom/aarki/c$c;

    invoke-direct {v0, v1, v2}, Lcom/aarki/c$c;-><init>(Ljava/lang/String;I)V

    .line 169
    :goto_0
    return-object v0

    .line 158
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Request failed with status: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " body: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    new-instance v0, Lcom/aarki/c$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/aarki/c$c;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 169
    :goto_1
    new-instance v0, Lcom/aarki/c$c;

    const/4 v1, 0x0

    invoke-direct {v0, v5, v1}, Lcom/aarki/c$c;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    .line 167
    :catch_2
    move-exception v0

    goto :goto_1

    .line 165
    :catch_3
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/aarki/c$1;->a()Lcom/aarki/c$c;

    move-result-object v0

    return-object v0
.end method

.method protected final onCancelled()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/aarki/c$1;->d:Lcom/aarki/c$b;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/aarki/c$1;->d:Lcom/aarki/c$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/aarki/c$b;->a(I)V

    .line 203
    :cond_0
    return-void
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 110
    check-cast p1, Lcom/aarki/c$c;

    iget-object v0, p0, Lcom/aarki/c$1;->d:Lcom/aarki/c$b;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/aarki/c$c;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aarki/c$1;->d:Lcom/aarki/c$b;

    iget v1, p1, Lcom/aarki/c$c;->b:I

    invoke-interface {v0, v1}, Lcom/aarki/c$b;->a(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p1, Lcom/aarki/c$c;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aarki/c$1;->d:Lcom/aarki/c$b;

    invoke-interface {v1, v0}, Lcom/aarki/c$b;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/aarki/c$1;->d:Lcom/aarki/c$b;

    iget v1, p1, Lcom/aarki/c$c;->b:I

    invoke-interface {v0, v1}, Lcom/aarki/c$b;->a(I)V

    goto :goto_0
.end method

.method protected final onPreExecute()V
    .locals 0

    .prologue
    .line 176
    return-void
.end method
