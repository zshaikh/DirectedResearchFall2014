.class Lcom/fusepowered/m2/m2l/MoPubConversionTracker$TrackOpen;
.super Ljava/lang/Object;
.source "MoPubConversionTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/m2l/MoPubConversionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrackOpen"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/m2l/MoPubConversionTracker;


# direct methods
.method private constructor <init>(Lcom/fusepowered/m2/m2l/MoPubConversionTracker;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/MoPubConversionTracker$TrackOpen;->this$0:Lcom/fusepowered/m2/m2l/MoPubConversionTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fusepowered/m2/m2l/MoPubConversionTracker;Lcom/fusepowered/m2/m2l/MoPubConversionTracker$TrackOpen;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/fusepowered/m2/m2l/MoPubConversionTracker$TrackOpen;-><init>(Lcom/fusepowered/m2/m2l/MoPubConversionTracker;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const-string v10, "MoPub"

    .line 97
    new-instance v6, Lcom/fusepowered/m2/m2l/MoPubConversionTracker$ConversionUrlGenerator;

    iget-object v7, p0, Lcom/fusepowered/m2/m2l/MoPubConversionTracker$TrackOpen;->this$0:Lcom/fusepowered/m2/m2l/MoPubConversionTracker;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/fusepowered/m2/m2l/MoPubConversionTracker$ConversionUrlGenerator;-><init>(Lcom/fusepowered/m2/m2l/MoPubConversionTracker;Lcom/fusepowered/m2/m2l/MoPubConversionTracker$ConversionUrlGenerator;)V

    const-string v7, "ads.mopub.com"

    invoke-virtual {v6, v7}, Lcom/fusepowered/m2/m2l/MoPubConversionTracker$ConversionUrlGenerator;->generateUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 98
    .local v5, "url":Ljava/lang/String;
    const-string v6, "MoPub"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Conversion track: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-static {}, Lcom/fusepowered/m2/m2l/factories/HttpClientFactory;->create()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v2

    .line 103
    .local v2, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_start_0
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, v5}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 104
    .local v3, "httpget":Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 110
    .local v4, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    const/16 v7, 0xc8

    if-eq v6, v7, :cond_0

    .line 111
    const-string v6, "MoPub"

    const-string v6, "Conversion track failed: Status code != 200."

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .end local v3    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "MoPub"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Conversion track failed ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 115
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .restart local v4    # "response":Lorg/apache/http/HttpResponse;
    :cond_0
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 116
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 117
    :cond_1
    const-string v6, "MoPub"

    const-string v6, "Conversion track failed: Response was empty."

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 122
    :cond_2
    const-string v6, "MoPub"

    const-string v6, "Conversion track successful."

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v6, p0, Lcom/fusepowered/m2/m2l/MoPubConversionTracker$TrackOpen;->this$0:Lcom/fusepowered/m2/m2l/MoPubConversionTracker;

    # getter for: Lcom/fusepowered/m2/m2l/MoPubConversionTracker;->mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v6}, Lcom/fusepowered/m2/m2l/MoPubConversionTracker;->access$2(Lcom/fusepowered/m2/m2l/MoPubConversionTracker;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 124
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 125
    iget-object v7, p0, Lcom/fusepowered/m2/m2l/MoPubConversionTracker$TrackOpen;->this$0:Lcom/fusepowered/m2/m2l/MoPubConversionTracker;

    # getter for: Lcom/fusepowered/m2/m2l/MoPubConversionTracker;->mIsTrackedKey:Ljava/lang/String;
    invoke-static {v7}, Lcom/fusepowered/m2/m2l/MoPubConversionTracker;->access$3(Lcom/fusepowered/m2/m2l/MoPubConversionTracker;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 126
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
