.class Lcom/inmobi/androidsdk/ai/controller/JSUtilityController$2;
.super Ljava/lang/Thread;
.source "JSUtilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController$2;->a:Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;

    iput-object p2, p0, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController$2;->b:Ljava/lang/String;

    .line 487
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-string v0, "InMobiAndroidSDK_3.6.2"

    .line 489
    const/4 v1, 0x0

    .line 491
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController$2;->b:Ljava/lang/String;

    const-string v2, "%25"

    const-string v3, "%"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 492
    const-string v2, "InMobiAndroidSDK_3.6.2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Pinging URL: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 494
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    const/16 v1, 0x4e20

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 496
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 497
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController$2;->a:Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;

    iget-object v1, v1, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v1, v1, Lcom/inmobi/androidsdk/ai/container/IMWebView;->webviewUserAgent:Ljava/lang/String;

    .line 498
    if-eqz v1, :cond_0

    .line 499
    const-string v2, "user-agent"

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    :cond_0
    const-string v1, "InMobiAndroidSDK_3.6.2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Async Ping Connection Response Code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 502
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 501
    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 506
    if-eqz v0, :cond_1

    .line 507
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 510
    :cond_1
    :goto_0
    return-void

    .line 503
    :catch_0
    move-exception v0

    .line 504
    :goto_1
    :try_start_2
    const-string v2, "InMobiAndroidSDK_3.6.2"

    const-string v3, "Error doing async Ping. "

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 506
    if-eqz v1, :cond_1

    .line 507
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 505
    :catchall_0
    move-exception v0

    .line 506
    :goto_2
    if-eqz v1, :cond_2

    .line 507
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 509
    :cond_2
    throw v0

    .line 505
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    .line 503
    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1
.end method
