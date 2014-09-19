.class Lcom/fusepowered/m2/m2l/AdViewController$3;
.super Ljava/lang/Object;
.source "AdViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/m2l/AdViewController;->registerClick()V
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
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/AdViewController$3;->this$0:Lcom/fusepowered/m2/m2l/AdViewController;

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-string v3, "MoPub"

    .line 359
    iget-object v3, p0, Lcom/fusepowered/m2/m2l/AdViewController$3;->this$0:Lcom/fusepowered/m2/m2l/AdViewController;

    #getter for: Lcom/fusepowered/m2/m2l/AdViewController;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;
    invoke-static {v3}, Lcom/fusepowered/m2/m2l/AdViewController;->access$0(Lcom/fusepowered/m2/m2l/AdViewController;)Lcom/fusepowered/m2/m2l/AdConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fusepowered/m2/m2l/AdConfiguration;->getClickthroughUrl()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 372
    :goto_0
    return-void

    .line 361
    :cond_0
    invoke-static {}, Lcom/fusepowered/m2/m2l/factories/HttpClientFactory;->create()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v1

    .line 363
    .local v1, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_start_0
    const-string v3, "MoPub"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Tracking click for: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/fusepowered/m2/m2l/AdViewController$3;->this$0:Lcom/fusepowered/m2/m2l/AdViewController;

    #getter for: Lcom/fusepowered/m2/m2l/AdViewController;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;
    invoke-static {v5}, Lcom/fusepowered/m2/m2l/AdViewController;->access$0(Lcom/fusepowered/m2/m2l/AdViewController;)Lcom/fusepowered/m2/m2l/AdConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fusepowered/m2/m2l/AdConfiguration;->getClickthroughUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    iget-object v3, p0, Lcom/fusepowered/m2/m2l/AdViewController$3;->this$0:Lcom/fusepowered/m2/m2l/AdViewController;

    #getter for: Lcom/fusepowered/m2/m2l/AdViewController;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;
    invoke-static {v3}, Lcom/fusepowered/m2/m2l/AdViewController;->access$0(Lcom/fusepowered/m2/m2l/AdViewController;)Lcom/fusepowered/m2/m2l/AdConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fusepowered/m2/m2l/AdConfiguration;->getClickthroughUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 365
    .local v2, httpget:Lorg/apache/http/client/methods/HttpGet;
    const-string v3, "User-Agent"

    iget-object v4, p0, Lcom/fusepowered/m2/m2l/AdViewController$3;->this$0:Lcom/fusepowered/m2/m2l/AdViewController;

    #getter for: Lcom/fusepowered/m2/m2l/AdViewController;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;
    invoke-static {v4}, Lcom/fusepowered/m2/m2l/AdViewController;->access$0(Lcom/fusepowered/m2/m2l/AdViewController;)Lcom/fusepowered/m2/m2l/AdConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fusepowered/m2/m2l/AdConfiguration;->getUserAgent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_0

    .line 367
    .end local v2           #httpget:Lorg/apache/http/client/methods/HttpGet;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 368
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v3, "MoPub"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Click tracking failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/fusepowered/m2/m2l/AdViewController$3;->this$0:Lcom/fusepowered/m2/m2l/AdViewController;

    #getter for: Lcom/fusepowered/m2/m2l/AdViewController;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;
    invoke-static {v5}, Lcom/fusepowered/m2/m2l/AdViewController;->access$0(Lcom/fusepowered/m2/m2l/AdViewController;)Lcom/fusepowered/m2/m2l/AdConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fusepowered/m2/m2l/AdConfiguration;->getClickthroughUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 370
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_0

    .line 369
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 370
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 371
    throw v3
.end method
