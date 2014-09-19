.class Lcom/fusepowered/m2/m2l/AdViewController$2;
.super Ljava/lang/Object;
.source "AdViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/m2l/AdViewController;->trackImpression()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/m2l/AdViewController;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/m2l/AdViewController;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/AdViewController$2;->this$0:Lcom/fusepowered/m2/m2l/AdViewController;

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 340
    iget-object v3, p0, Lcom/fusepowered/m2/m2l/AdViewController$2;->this$0:Lcom/fusepowered/m2/m2l/AdViewController;

    #getter for: Lcom/fusepowered/m2/m2l/AdViewController;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;
    invoke-static {v3}, Lcom/fusepowered/m2/m2l/AdViewController;->access$0(Lcom/fusepowered/m2/m2l/AdViewController;)Lcom/fusepowered/m2/m2l/AdConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fusepowered/m2/m2l/AdConfiguration;->getImpressionUrl()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 352
    :goto_0
    return-void

    .line 342
    :cond_0
    invoke-static {}, Lcom/fusepowered/m2/m2l/factories/HttpClientFactory;->create()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v1

    .line 344
    .local v1, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    iget-object v3, p0, Lcom/fusepowered/m2/m2l/AdViewController$2;->this$0:Lcom/fusepowered/m2/m2l/AdViewController;

    #getter for: Lcom/fusepowered/m2/m2l/AdViewController;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;
    invoke-static {v3}, Lcom/fusepowered/m2/m2l/AdViewController;->access$0(Lcom/fusepowered/m2/m2l/AdViewController;)Lcom/fusepowered/m2/m2l/AdConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fusepowered/m2/m2l/AdConfiguration;->getImpressionUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 345
    .local v2, httpget:Lorg/apache/http/client/methods/HttpGet;
    const-string v3, "User-Agent"

    iget-object v4, p0, Lcom/fusepowered/m2/m2l/AdViewController$2;->this$0:Lcom/fusepowered/m2/m2l/AdViewController;

    #getter for: Lcom/fusepowered/m2/m2l/AdViewController;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;
    invoke-static {v4}, Lcom/fusepowered/m2/m2l/AdViewController;->access$0(Lcom/fusepowered/m2/m2l/AdViewController;)Lcom/fusepowered/m2/m2l/AdConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fusepowered/m2/m2l/AdConfiguration;->getUserAgent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_0

    .line 347
    .end local v2           #httpget:Lorg/apache/http/client/methods/HttpGet;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 348
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v3, "MoPub"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Impression tracking failed : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/fusepowered/m2/m2l/AdViewController$2;->this$0:Lcom/fusepowered/m2/m2l/AdViewController;

    #getter for: Lcom/fusepowered/m2/m2l/AdViewController;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;
    invoke-static {v5}, Lcom/fusepowered/m2/m2l/AdViewController;->access$0(Lcom/fusepowered/m2/m2l/AdViewController;)Lcom/fusepowered/m2/m2l/AdConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fusepowered/m2/m2l/AdConfiguration;->getImpressionUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 350
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_0

    .line 349
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 350
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 351
    throw v3
.end method
