.class Lcom/flurry/android/monolithic/sdk/impl/p;
.super Lcom/flurry/android/monolithic/sdk/impl/jf;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/flurry/android/monolithic/sdk/impl/o;


# direct methods
.method constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/o;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 830
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/p;->b:Lcom/flurry/android/monolithic/sdk/impl/o;

    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/p;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/jf;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    .prologue
    .line 833
    invoke-static {}, Lcom/flurry/android/impl/ads/FlurryAdModule;->getInstance()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->I()Z

    move-result v0

    if-nez v0, :cond_2

    .line 836
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/p;->b:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->l(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/p;->b:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->l(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/p;->b:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->l(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 841
    :cond_0
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ia;->a()Lcom/flurry/android/monolithic/sdk/impl/ia;

    move-result-object v0

    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/q;

    invoke-direct {v1, p0}, Lcom/flurry/android/monolithic/sdk/impl/q;-><init>(Lcom/flurry/android/monolithic/sdk/impl/p;)V

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ia;->a(Ljava/lang/Runnable;)V

    .line 906
    :cond_1
    :goto_0
    return-void

    .line 853
    :cond_2
    const/4 v0, 0x0

    .line 855
    :try_start_0
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/iz;->a(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/HttpClient;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 856
    :try_start_1
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/p;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 857
    invoke-interface {v7, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 858
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 860
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_3

    .line 862
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/p;->b:Lcom/flurry/android/monolithic/sdk/impl/o;

    const-string v1, "rendered"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/p;->b:Lcom/flurry/android/monolithic/sdk/impl/o;

    iget-object v3, v3, Lcom/flurry/android/monolithic/sdk/impl/o;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/p;->b:Lcom/flurry/android/monolithic/sdk/impl/o;

    iget-object v4, v4, Lcom/flurry/android/monolithic/sdk/impl/o;->c:Lcom/flurry/android/monolithic/sdk/impl/m;

    iget-object v5, p0, Lcom/flurry/android/monolithic/sdk/impl/p;->b:Lcom/flurry/android/monolithic/sdk/impl/o;

    iget v5, v5, Lcom/flurry/android/monolithic/sdk/impl/o;->e:I

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;Lcom/flurry/android/monolithic/sdk/impl/m;II)V

    .line 863
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ia;->a()Lcom/flurry/android/monolithic/sdk/impl/ia;

    move-result-object v0

    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/r;

    invoke-direct {v1, p0}, Lcom/flurry/android/monolithic/sdk/impl/r;-><init>(Lcom/flurry/android/monolithic/sdk/impl/p;)V

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ia;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 886
    if-eqz v7, :cond_1

    .line 887
    invoke-interface {v7}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_0

    .line 877
    :cond_3
    const/4 v0, 0x4

    :try_start_2
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/p;->b:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v2}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Lcom/flurry/android/monolithic/sdk/impl/o;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http status code is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 886
    if-eqz v7, :cond_4

    .line 887
    invoke-interface {v7}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 892
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/p;->b:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->l(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/p;->b:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->l(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 894
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/p;->b:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->l(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 897
    :cond_5
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ia;->a()Lcom/flurry/android/monolithic/sdk/impl/ia;

    move-result-object v0

    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/s;

    invoke-direct {v1, p0}, Lcom/flurry/android/monolithic/sdk/impl/s;-><init>(Lcom/flurry/android/monolithic/sdk/impl/p;)V

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ia;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 880
    :catch_0
    move-exception v1

    .line 881
    :goto_2
    const/4 v1, 0x4

    :try_start_3
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/p;->b:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v2}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Lcom/flurry/android/monolithic/sdk/impl/o;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "client protocol exception..."

    invoke-static {v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 886
    if-eqz v0, :cond_4

    .line 887
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_1

    .line 882
    :catch_1
    move-exception v1

    .line 883
    :goto_3
    const/4 v1, 0x4

    :try_start_4
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/p;->b:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v2}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Lcom/flurry/android/monolithic/sdk/impl/o;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ioexception...."

    invoke-static {v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 886
    if-eqz v0, :cond_4

    .line 887
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_1

    .line 886
    :catchall_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_4
    if-eqz v1, :cond_6

    .line 887
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_6
    throw v0

    .line 886
    :catchall_1
    move-exception v0

    move-object v1, v7

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_4

    .line 882
    :catch_2
    move-exception v0

    move-object v0, v7

    goto :goto_3

    .line 880
    :catch_3
    move-exception v0

    move-object v0, v7

    goto :goto_2
.end method
