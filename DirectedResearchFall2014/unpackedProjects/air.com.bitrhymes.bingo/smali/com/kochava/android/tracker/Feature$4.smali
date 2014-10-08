.class Lcom/kochava/android/tracker/Feature$4;
.super Ljava/lang/Thread;
.source "Feature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kochava/android/tracker/Feature;->setAppLimitTracking(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kochava/android/tracker/Feature;

.field private final synthetic val$shouldLimit:Z


# direct methods
.method constructor <init>(Lcom/kochava/android/tracker/Feature;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kochava/android/tracker/Feature$4;->this$0:Lcom/kochava/android/tracker/Feature;

    iput-boolean p2, p0, Lcom/kochava/android/tracker/Feature$4;->val$shouldLimit:Z

    .line 795
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 803
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 804
    .local v0, "appLimitDataHolder":Lorg/json/JSONObject;
    const-string v11, "action"

    const-string v12, "options"

    invoke-virtual {v0, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 806
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 807
    .local v7, "optionsHolder":Lorg/json/JSONObject;
    iget-boolean v11, p0, Lcom/kochava/android/tracker/Feature$4;->val$shouldLimit:Z

    if-eqz v11, :cond_4

    .line 808
    const-string v11, "app_limit_tracking"

    const-string v12, "1"

    invoke-virtual {v7, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 812
    :goto_0
    const-string v11, "device_limit_tracking"

    const-string v12, "0"

    invoke-virtual {v7, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 814
    const-string v11, "data"

    invoke-virtual {v0, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 816
    const-string v11, "kochava_app_id"

    iget-object v12, p0, Lcom/kochava/android/tracker/Feature$4;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->mAppId:Ljava/lang/String;
    invoke-static {v12}, Lcom/kochava/android/tracker/Feature;->access$44(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 817
    const-string v11, "kochava_device_id"

    iget-object v12, p0, Lcom/kochava/android/tracker/Feature$4;->this$0:Lcom/kochava/android/tracker/Feature;

    # invokes: Lcom/kochava/android/tracker/Feature;->getDeviceId()Ljava/lang/String;
    invoke-static {v12}, Lcom/kochava/android/tracker/Feature;->access$17(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 819
    sget-boolean v11, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v11, :cond_0

    const-string v11, "KochavaTracker"

    const-string v12, "kv_options thread started."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    :cond_0
    sget-boolean v11, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v11, :cond_1

    const-string v11, "KochavaTracker"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "kv_options post: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :cond_1
    iget-object v11, p0, Lcom/kochava/android/tracker/Feature$4;->this$0:Lcom/kochava/android/tracker/Feature;

    const/4 v12, 0x1

    # invokes: Lcom/kochava/android/tracker/Feature;->createHttpClient(Z)Lorg/apache/http/client/HttpClient;
    invoke-static {v11, v12}, Lcom/kochava/android/tracker/Feature;->access$35(Lcom/kochava/android/tracker/Feature;Z)Lorg/apache/http/client/HttpClient;

    move-result-object v5

    .line 825
    .local v5, "httpclient":Lorg/apache/http/client/HttpClient;
    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v11

    iget-object v12, p0, Lcom/kochava/android/tracker/Feature$4;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->mUserAgent:Ljava/lang/String;
    invoke-static {v12}, Lcom/kochava/android/tracker/Feature;->access$36(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 827
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    const-string v11, "https://control.kochava.com/track/kv_options.php"

    invoke-direct {v6, v11}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 830
    .local v6, "httppost":Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 832
    .local v2, "data":Ljava/lang/String;
    new-instance v10, Lorg/apache/http/entity/StringEntity;

    const-string v11, "UTF-8"

    invoke-direct {v10, v2, v11}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    .local v10, "sentity":Lorg/apache/http/entity/StringEntity;
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v11, "Content-Type"

    const-string v12, "application/xml"

    invoke-direct {v1, v11, v12}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    .local v1, "basicHeader":Lorg/apache/http/message/BasicHeader;
    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpPost;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v11

    const-string v12, "http.protocol.expect-continue"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 835
    invoke-virtual {v10, v1}, Lorg/apache/http/entity/StringEntity;->setContentType(Lorg/apache/http/Header;)V

    .line 836
    invoke-virtual {v6, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 837
    sget-boolean v11, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v11, :cond_2

    const-string v11, "KochavaTracker"

    const-string v12, "Trying to post to kv_options."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :cond_2
    invoke-interface {v5, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 839
    .local v8, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 840
    .local v4, "entity":Lorg/apache/http/HttpEntity;
    if-nez v4, :cond_5

    .line 842
    sget-boolean v11, Lcom/kochava/android/tracker/Global;->DEBUGERROR:Z

    if-eqz v11, :cond_3

    const-string v11, "KochavaTracker"

    const-string v12, "Could not get a response entity from kv_options."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    .end local v0    # "appLimitDataHolder":Lorg/json/JSONObject;
    .end local v1    # "basicHeader":Lorg/apache/http/message/BasicHeader;
    .end local v2    # "data":Ljava/lang/String;
    .end local v4    # "entity":Lorg/apache/http/HttpEntity;
    .end local v5    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v6    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .end local v7    # "optionsHolder":Lorg/json/JSONObject;
    .end local v8    # "response":Lorg/apache/http/HttpResponse;
    .end local v10    # "sentity":Lorg/apache/http/entity/StringEntity;
    :cond_3
    :goto_1
    return-void

    .line 810
    .restart local v0    # "appLimitDataHolder":Lorg/json/JSONObject;
    .restart local v7    # "optionsHolder":Lorg/json/JSONObject;
    :cond_4
    const-string v11, "app_limit_tracking"

    const-string v12, "0"

    invoke-virtual {v7, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 850
    .end local v0    # "appLimitDataHolder":Lorg/json/JSONObject;
    .end local v7    # "optionsHolder":Lorg/json/JSONObject;
    :catch_0
    move-exception v11

    move-object v3, v11

    .line 852
    .local v3, "e":Lorg/apache/http/client/ClientProtocolException;
    sget-boolean v11, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v11, :cond_3

    const-string v11, "KochavaTracker"

    const-string v12, "TrackTask"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 846
    .end local v3    # "e":Lorg/apache/http/client/ClientProtocolException;
    .restart local v0    # "appLimitDataHolder":Lorg/json/JSONObject;
    .restart local v1    # "basicHeader":Lorg/apache/http/message/BasicHeader;
    .restart local v2    # "data":Ljava/lang/String;
    .restart local v4    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v5    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v6    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v7    # "optionsHolder":Lorg/json/JSONObject;
    .restart local v8    # "response":Lorg/apache/http/HttpResponse;
    .restart local v10    # "sentity":Lorg/apache/http/entity/StringEntity;
    :cond_5
    :try_start_1
    sget-boolean v11, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v11, :cond_6

    const-string v11, "KochavaTracker"

    const-string v12, "(kv_options) Grabbing Result..."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :cond_6
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    invoke-static {v11}, Lcom/kochava/android/util/StringUtils;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v9

    .line 848
    .local v9, "result":Ljava/lang/String;
    sget-boolean v11, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v11, :cond_3

    const-string v11, "KochavaTracker"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "(kv_options) Result: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 855
    .end local v0    # "appLimitDataHolder":Lorg/json/JSONObject;
    .end local v1    # "basicHeader":Lorg/apache/http/message/BasicHeader;
    .end local v2    # "data":Ljava/lang/String;
    .end local v4    # "entity":Lorg/apache/http/HttpEntity;
    .end local v5    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v6    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .end local v7    # "optionsHolder":Lorg/json/JSONObject;
    .end local v8    # "response":Lorg/apache/http/HttpResponse;
    .end local v9    # "result":Ljava/lang/String;
    .end local v10    # "sentity":Lorg/apache/http/entity/StringEntity;
    :catch_1
    move-exception v11

    move-object v3, v11

    .line 857
    .local v3, "e":Ljava/io/IOException;
    sget-boolean v11, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v11, :cond_3

    const-string v11, "KochavaTracker"

    const-string v12, "TrackTask"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 860
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v11

    move-object v3, v11

    .line 862
    .local v3, "e":Ljava/lang/Exception;
    sget-boolean v11, Lcom/kochava/android/tracker/Global;->DEBUGERROR:Z

    if-eqz v11, :cond_3

    const-string v11, "KochavaTracker"

    const-string v12, "Unexpected error during kv_options communication."

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
