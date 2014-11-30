.class Lcom/kochava/android/tracker/Feature$3;
.super Ljava/lang/Thread;
.source "Feature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kochava/android/tracker/Feature;->init(Landroid/content/Context;ZLjava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kochava/android/tracker/Feature;

.field private final synthetic val$sendOnStart:Z


# direct methods
.method constructor <init>(Lcom/kochava/android/tracker/Feature;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kochava/android/tracker/Feature$3;->this$0:Lcom/kochava/android/tracker/Feature;

    iput-boolean p2, p0, Lcom/kochava/android/tracker/Feature$3;->val$sendOnStart:Z

    .line 536
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 27
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 544
    :try_start_0
    sget-boolean v23, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v23, :cond_0

    const-string v23, "KochavaTracker"

    const-string v24, "getKVinit thread started."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_0
    sget-boolean v23, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v23, :cond_1

    const-string v23, "KochavaTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "getKVinit post: "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature$3;->this$0:Lcom/kochava/android/tracker/Feature;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature;->kvinitdataholder:Lorg/json/JSONObject;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature$3;->this$0:Lcom/kochava/android/tracker/Feature;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    # invokes: Lcom/kochava/android/tracker/Feature;->createHttpClient(Z)Lorg/apache/http/client/HttpClient;
    invoke-static/range {v23 .. v24}, Lcom/kochava/android/tracker/Feature;->access$35(Lcom/kochava/android/tracker/Feature;Z)Lorg/apache/http/client/HttpClient;

    move-result-object v12

    .line 550
    .local v12, "httpclient":Lorg/apache/http/client/HttpClient;
    invoke-interface {v12}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature$3;->this$0:Lcom/kochava/android/tracker/Feature;

    move-object/from16 v24, v0

    # getter for: Lcom/kochava/android/tracker/Feature;->mUserAgent:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/kochava/android/tracker/Feature;->access$36(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 552
    new-instance v13, Lorg/apache/http/client/methods/HttpPost;

    const-string v23, "https://control.kochava.com/track/kvinit"

    move-object v0, v13

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 555
    .local v13, "httppost":Lorg/apache/http/client/methods/HttpPost;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature$3;->this$0:Lcom/kochava/android/tracker/Feature;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature;->kvinitdataholder:Lorg/json/JSONObject;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    .line 557
    .local v7, "data":Ljava/lang/String;
    new-instance v22, Lorg/apache/http/entity/StringEntity;

    const-string v23, "UTF-8"

    move-object/from16 v0, v22

    move-object v1, v7

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    .local v22, "sentity":Lorg/apache/http/entity/StringEntity;
    new-instance v4, Lorg/apache/http/message/BasicHeader;

    const-string v23, "Content-Type"

    const-string v24, "application/xml"

    move-object v0, v4

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    .local v4, "basicHeader":Lorg/apache/http/message/BasicHeader;
    invoke-virtual {v13}, Lorg/apache/http/client/methods/HttpPost;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v23

    const-string v24, "http.protocol.expect-continue"

    const/16 v25, 0x0

    invoke-interface/range {v23 .. v25}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 560
    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/StringEntity;->setContentType(Lorg/apache/http/Header;)V

    .line 561
    move-object v0, v13

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 562
    sget-boolean v23, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v23, :cond_2

    const-string v23, "KochavaTracker"

    const-string v24, "Trying to post to KVinit."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_2
    invoke-interface {v12, v13}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v20

    .line 564
    .local v20, "response":Lorg/apache/http/HttpResponse;
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    .line 565
    .local v9, "entity":Lorg/apache/http/HttpEntity;
    if-nez v9, :cond_4

    .line 567
    sget-boolean v23, Lcom/kochava/android/tracker/Global;->DEBUGERROR:Z

    if-eqz v23, :cond_3

    const-string v23, "KochavaTracker"

    const-string v24, "Could not get a response entity from KVinit."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 785
    .end local v4    # "basicHeader":Lorg/apache/http/message/BasicHeader;
    .end local v7    # "data":Ljava/lang/String;
    .end local v9    # "entity":Lorg/apache/http/HttpEntity;
    .end local v12    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v13    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .end local v20    # "response":Lorg/apache/http/HttpResponse;
    .end local v22    # "sentity":Lorg/apache/http/entity/StringEntity;
    :cond_3
    :goto_0
    return-void

    .line 573
    .restart local v4    # "basicHeader":Lorg/apache/http/message/BasicHeader;
    .restart local v7    # "data":Ljava/lang/String;
    .restart local v9    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v12    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v13    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v20    # "response":Lorg/apache/http/HttpResponse;
    .restart local v22    # "sentity":Lorg/apache/http/entity/StringEntity;
    :cond_4
    :try_start_1
    sget-boolean v23, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v23, :cond_5

    const-string v23, "KochavaTracker"

    const-string v24, "(KVinit) Grabbing Result..."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_5
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/kochava/android/util/StringUtils;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v21

    .line 575
    .local v21, "result":Ljava/lang/String;
    sget-boolean v23, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v23, :cond_6

    const-string v23, "KochavaTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "(KVinit) Result: "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 576
    :cond_6
    const/16 v18, 0x0

    .line 582
    .local v18, "parsedResult":Lorg/json/JSONObject;
    :try_start_2
    new-instance v19, Lorg/json/JSONObject;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    .end local v18    # "parsedResult":Lorg/json/JSONObject;
    .local v19, "parsedResult":Lorg/json/JSONObject;
    move-object/from16 v18, v19

    .line 589
    .end local v19    # "parsedResult":Lorg/json/JSONObject;
    .restart local v18    # "parsedResult":Lorg/json/JSONObject;
    :cond_7
    :goto_1
    if-eqz v18, :cond_18

    .line 591
    :try_start_3
    sget-boolean v23, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v23, :cond_8

    const-string v23, "KochavaTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "(KVinit) Parsed result: "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    .line 596
    :cond_8
    const/4 v3, 0x0

    .line 600
    .local v3, "attributionData":Lorg/json/JSONObject;
    :try_start_4
    const-string v23, "attribution"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    move-result-object v3

    .line 608
    :cond_9
    :goto_2
    :try_start_5
    sget-boolean v23, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v23, :cond_a

    const-string v23, "KochavaTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "attribution data null? "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v3, :cond_1a

    const/16 v25, 0x1

    :goto_3
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :cond_a
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v23

    if-lez v23, :cond_d

    .line 611
    sget-boolean v23, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v23, :cond_b

    const-string v23, "KochavaTracker"

    const-string v24, "Found attribution data"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_b
    sget-boolean v23, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v23, :cond_c

    const-string v23, "KochavaTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "attribution data: "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .line 615
    :cond_c
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature$3;->this$0:Lcom/kochava/android/tracker/Feature;

    move-object/from16 v23, v0

    # getter for: Lcom/kochava/android/tracker/Feature;->attributionDataPrefs:Landroid/content/SharedPreferences;
    invoke-static/range {v23 .. v23}, Lcom/kochava/android/tracker/Feature;->access$37(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    const-string v24, "attributionData"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 617
    # getter for: Lcom/kochava/android/tracker/Feature;->attributionDataHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/kochava/android/tracker/Feature;->access$38()Landroid/os/Handler;

    move-result-object v23

    if-eqz v23, :cond_d

    .line 619
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v16

    .line 620
    .local v16, "message":Landroid/os/Message;
    new-instance v17, Landroid/os/Bundle;

    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    .line 621
    .local v17, "messageData":Landroid/os/Bundle;
    const-string v23, "attributionData"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    invoke-virtual/range {v16 .. v17}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 623
    # getter for: Lcom/kochava/android/tracker/Feature;->attributionDataHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/kochava/android/tracker/Feature;->access$38()Landroid/os/Handler;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_e
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_6 .. :try_end_6} :catch_2

    .line 632
    .end local v16    # "message":Landroid/os/Message;
    .end local v17    # "messageData":Landroid/os/Bundle;
    :cond_d
    :goto_4
    const/4 v11, 0x0

    .line 635
    .local v11, "flags":Lorg/json/JSONObject;
    :try_start_7
    const-string v23, "flags"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 636
    sget-boolean v23, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v23, :cond_e

    const-string v23, "KochavaTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "Flags: "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 645
    :cond_e
    :goto_5
    if-eqz v11, :cond_15

    .line 650
    :try_start_8
    const-string v23, "kochava_app_id"

    move-object v0, v11

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 651
    .local v15, "kochava_app_id":Ljava/lang/String;
    sget-boolean v23, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v23, :cond_f

    const-string v23, "KochavaTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "kochava_app_id: "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature$3;->this$0:Lcom/kochava/android/tracker/Feature;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v15

    invoke-static {v0, v1}, Lcom/kochava/android/tracker/Feature;->access$39(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 661
    .end local v15    # "kochava_app_id":Ljava/lang/String;
    :cond_10
    :goto_6
    :try_start_9
    const-string v23, "session_tracking"

    move-object v0, v11

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    const-string v24, "none"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature$3;->this$0:Lcom/kochava/android/tracker/Feature;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Lcom/kochava/android/tracker/Feature;->access$40(Lcom/kochava/android/tracker/Feature;Z)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 671
    :cond_11
    :goto_7
    :try_start_a
    const-string v23, "currency"

    move-object v0, v11

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "attributionData":Lorg/json/JSONObject;
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 672
    .local v6, "currency":Ljava/lang/String;
    sget-boolean v23, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v23, :cond_12

    const-string v23, "KochavaTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "setting currency to: "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature$3;->this$0:Lcom/kochava/android/tracker/Feature;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v6

    # invokes: Lcom/kochava/android/tracker/Feature;->setCurrency(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/kochava/android/tracker/Feature;->access$41(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_a .. :try_end_a} :catch_2

    .line 681
    .end local v6    # "currency":Ljava/lang/String;
    :goto_8
    :try_start_b
    const-string v23, "resend_initial"

    move-object v0, v11

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    const-string v24, "true"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_13

    const-string v23, "resend_initial"

    move-object v0, v11

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    const-string v24, "detailed"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_15

    .line 683
    :cond_13
    sget-boolean v23, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v23, :cond_14

    const-string v23, "KochavaTracker"

    const-string v24, "resend_initial flag triggered."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature$3;->this$0:Lcom/kochava/android/tracker/Feature;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature$3;->this$0:Lcom/kochava/android/tracker/Feature;

    move-object/from16 v24, v0

    # getter for: Lcom/kochava/android/tracker/Feature;->mContext:Landroid/content/Context;
    invoke-static/range {v24 .. v24}, Lcom/kochava/android/tracker/Feature;->access$0(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;

    move-result-object v24

    const-string v25, "initPrefs"

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/kochava/android/tracker/Feature;->access$19(Lcom/kochava/android/tracker/Feature;Landroid/content/SharedPreferences;)V

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature$3;->this$0:Lcom/kochava/android/tracker/Feature;

    move-object/from16 v23, v0

    # getter for: Lcom/kochava/android/tracker/Feature;->prefs:Landroid/content/SharedPreferences;
    invoke-static/range {v23 .. v23}, Lcom/kochava/android/tracker/Feature;->access$20(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    const-string v24, "initBool"

    const-string v25, "false"

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_c
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_b .. :try_end_b} :catch_2

    .line 696
    :cond_15
    :goto_9
    :try_start_c
    const-string v23, "blacklist"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 697
    .local v5, "blacklist":Lorg/json/JSONArray;
    sget-boolean v23, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v23, :cond_16

    const-string v23, "KochavaTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "blacklist: "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :cond_16
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_a
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_a
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    move-result v23

    move v0, v14

    move/from16 v1, v23

    if-lt v0, v1, :cond_1b

    .line 739
    .end local v5    # "blacklist":Lorg/json/JSONArray;
    .end local v14    # "i":I
    :cond_17
    :goto_b
    :try_start_d
    const-string v23, "error"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 740
    .local v10, "error":Ljava/lang/String;
    sget-boolean v23, Lcom/kochava/android/tracker/Global;->DEBUGERROR:Z

    if-eqz v23, :cond_18

    const-string v23, "KochavaTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "There was a problem getting the KVinit response: "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_b
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_d} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    .line 779
    .end local v4    # "basicHeader":Lorg/apache/http/message/BasicHeader;
    .end local v7    # "data":Ljava/lang/String;
    .end local v9    # "entity":Lorg/apache/http/HttpEntity;
    .end local v10    # "error":Ljava/lang/String;
    .end local v11    # "flags":Lorg/json/JSONObject;
    .end local v12    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v13    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .end local v18    # "parsedResult":Lorg/json/JSONObject;
    .end local v20    # "response":Lorg/apache/http/HttpResponse;
    .end local v21    # "result":Ljava/lang/String;
    .end local v22    # "sentity":Lorg/apache/http/entity/StringEntity;
    :cond_18
    :goto_c
    sget-boolean v23, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v23, :cond_19

    const-string v23, "KochavaTracker"

    const-string v24, "getKVinit thread ended, sending message to initHandler."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :cond_19
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v16

    .line 781
    .restart local v16    # "message":Landroid/os/Message;
    new-instance v17, Landroid/os/Bundle;

    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    .line 782
    .restart local v17    # "messageData":Landroid/os/Bundle;
    const-string v23, "sendonstart"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kochava/android/tracker/Feature$3;->val$sendOnStart:Z

    move/from16 v24, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 783
    invoke-virtual/range {v16 .. v17}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature$3;->this$0:Lcom/kochava/android/tracker/Feature;

    move-object/from16 v23, v0

    # getter for: Lcom/kochava/android/tracker/Feature;->initHandler:Landroid/os/Handler;
    invoke-static/range {v23 .. v23}, Lcom/kochava/android/tracker/Feature;->access$43(Lcom/kochava/android/tracker/Feature;)Landroid/os/Handler;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 584
    .end local v16    # "message":Landroid/os/Message;
    .end local v17    # "messageData":Landroid/os/Bundle;
    .restart local v4    # "basicHeader":Lorg/apache/http/message/BasicHeader;
    .restart local v7    # "data":Ljava/lang/String;
    .restart local v9    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v12    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v13    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v18    # "parsedResult":Lorg/json/JSONObject;
    .restart local v20    # "response":Lorg/apache/http/HttpResponse;
    .restart local v21    # "result":Ljava/lang/String;
    .restart local v22    # "sentity":Lorg/apache/http/entity/StringEntity;
    :catch_0
    move-exception v23

    move-object/from16 v8, v23

    .line 586
    .local v8, "e":Lorg/json/JSONException;
    :try_start_e
    sget-boolean v23, Lcom/kochava/android/tracker/Global;->DEBUGERROR:Z

    if-eqz v23, :cond_7

    const-string v23, "KochavaTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "Error while parsing result json: "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_e} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    goto/16 :goto_1

    .line 751
    .end local v8    # "e":Lorg/json/JSONException;
    .end local v18    # "parsedResult":Lorg/json/JSONObject;
    .end local v21    # "result":Ljava/lang/String;
    :catch_1
    move-exception v23

    move-object/from16 v8, v23

    .line 753
    .local v8, "e":Ljava/io/IOException;
    :try_start_f
    sget-boolean v23, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v23, :cond_3

    const-string v23, "KochavaTracker"

    const-string v24, "TrackTask"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    goto/16 :goto_0

    .line 762
    .end local v4    # "basicHeader":Lorg/apache/http/message/BasicHeader;
    .end local v7    # "data":Ljava/lang/String;
    .end local v8    # "e":Ljava/io/IOException;
    .end local v9    # "entity":Lorg/apache/http/HttpEntity;
    .end local v12    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v13    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .end local v20    # "response":Lorg/apache/http/HttpResponse;
    .end local v22    # "sentity":Lorg/apache/http/entity/StringEntity;
    :catch_2
    move-exception v23

    move-object/from16 v8, v23

    .line 764
    .local v8, "e":Lorg/apache/http/client/ClientProtocolException;
    sget-boolean v23, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v23, :cond_3

    const-string v23, "KochavaTracker"

    const-string v24, "TrackTask"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 602
    .end local v8    # "e":Lorg/apache/http/client/ClientProtocolException;
    .restart local v3    # "attributionData":Lorg/json/JSONObject;
    .restart local v4    # "basicHeader":Lorg/apache/http/message/BasicHeader;
    .restart local v7    # "data":Ljava/lang/String;
    .restart local v9    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v12    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v13    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v18    # "parsedResult":Lorg/json/JSONObject;
    .restart local v20    # "response":Lorg/apache/http/HttpResponse;
    .restart local v21    # "result":Ljava/lang/String;
    .restart local v22    # "sentity":Lorg/apache/http/entity/StringEntity;
    :catch_3
    move-exception v23

    move-object/from16 v8, v23

    .line 604
    .local v8, "e":Lorg/json/JSONException;
    :try_start_10
    sget-boolean v23, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v23, :cond_9

    const-string v23, "KochavaTracker"

    const-string v24, "KVinit response did not contain attribution data (or it was not requested)."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10 .. :try_end_10} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7

    goto/16 :goto_2

    .line 756
    .end local v3    # "attributionData":Lorg/json/JSONObject;
    .end local v8    # "e":Lorg/json/JSONException;
    .end local v18    # "parsedResult":Lorg/json/JSONObject;
    .end local v21    # "result":Ljava/lang/String;
    :catch_4
    move-exception v23

    move-object/from16 v8, v23

    .line 758
    .local v8, "e":Ljava/lang/OutOfMemoryError;
    :try_start_11
    sget-boolean v23, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v23, :cond_3

    const-string v23, "KochavaTracker"

    const-string v24, "TrackTask"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7

    goto/16 :goto_0

    .line 767
    .end local v4    # "basicHeader":Lorg/apache/http/message/BasicHeader;
    .end local v7    # "data":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/OutOfMemoryError;
    .end local v9    # "entity":Lorg/apache/http/HttpEntity;
    .end local v12    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v13    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .end local v20    # "response":Lorg/apache/http/HttpResponse;
    .end local v22    # "sentity":Lorg/apache/http/entity/StringEntity;
    :catch_5
    move-exception v23

    move-object/from16 v8, v23

    .line 769
    .local v8, "e":Ljava/io/IOException;
    sget-boolean v23, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v23, :cond_3

    const-string v23, "KochavaTracker"

    const-string v24, "TrackTask"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 608
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v3    # "attributionData":Lorg/json/JSONObject;
    .restart local v4    # "basicHeader":Lorg/apache/http/message/BasicHeader;
    .restart local v7    # "data":Ljava/lang/String;
    .restart local v9    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v12    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v13    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v18    # "parsedResult":Lorg/json/JSONObject;
    .restart local v20    # "response":Lorg/apache/http/HttpResponse;
    .restart local v21    # "result":Ljava/lang/String;
    .restart local v22    # "sentity":Lorg/apache/http/entity/StringEntity;
    :cond_1a
    const/16 v25, 0x0

    goto/16 :goto_3

    .line 638
    .restart local v11    # "flags":Lorg/json/JSONObject;
    :catch_6
    move-exception v23

    move-object/from16 v8, v23

    .line 640
    .local v8, "e":Lorg/json/JSONException;
    :try_start_12
    sget-boolean v23, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v23, :cond_e

    const-string v23, "KochavaTracker"

    const-string v24, "KVinit response did not contain flags."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_12 .. :try_end_12} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7

    goto/16 :goto_5

    .line 772
    .end local v3    # "attributionData":Lorg/json/JSONObject;
    .end local v4    # "basicHeader":Lorg/apache/http/message/BasicHeader;
    .end local v7    # "data":Ljava/lang/String;
    .end local v8    # "e":Lorg/json/JSONException;
    .end local v9    # "entity":Lorg/apache/http/HttpEntity;
    .end local v11    # "flags":Lorg/json/JSONObject;
    .end local v12    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v13    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .end local v18    # "parsedResult":Lorg/json/JSONObject;
    .end local v20    # "response":Lorg/apache/http/HttpResponse;
    .end local v21    # "result":Ljava/lang/String;
    .end local v22    # "sentity":Lorg/apache/http/entity/StringEntity;
    :catch_7
    move-exception v23

    move-object/from16 v8, v23

    .line 774
    .local v8, "e":Ljava/lang/Exception;
    sget-boolean v23, Lcom/kochava/android/tracker/Global;->DEBUGERROR:Z

    if-eqz v23, :cond_18

    const-string v23, "KochavaTracker"

    const-string v24, "Unexpected error during KVinit communication."

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .line 654
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v3    # "attributionData":Lorg/json/JSONObject;
    .restart local v4    # "basicHeader":Lorg/apache/http/message/BasicHeader;
    .restart local v7    # "data":Ljava/lang/String;
    .restart local v9    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v11    # "flags":Lorg/json/JSONObject;
    .restart local v12    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v13    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v18    # "parsedResult":Lorg/json/JSONObject;
    .restart local v20    # "response":Lorg/apache/http/HttpResponse;
    .restart local v21    # "result":Ljava/lang/String;
    .restart local v22    # "sentity":Lorg/apache/http/entity/StringEntity;
    :catch_8
    move-exception v23

    move-object/from16 v8, v23

    .line 656
    .local v8, "e":Lorg/json/JSONException;
    :try_start_13
    sget-boolean v23, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v23, :cond_10

    const-string v23, "KochavaTracker"

    const-string v24, "KVinit response did not contain a kochava_app_id."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 664
    .end local v8    # "e":Lorg/json/JSONException;
    :catch_9
    move-exception v23

    move-object/from16 v8, v23

    .line 666
    .restart local v8    # "e":Lorg/json/JSONException;
    sget-boolean v23, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v23, :cond_11

    const-string v23, "KochavaTracker"

    const-string v24, "KVinit response did not contain flags."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_13 .. :try_end_13} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_13 .. :try_end_13} :catch_2
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_7

    goto/16 :goto_7

    .line 700
    .end local v3    # "attributionData":Lorg/json/JSONObject;
    .end local v8    # "e":Lorg/json/JSONException;
    .restart local v5    # "blacklist":Lorg/json/JSONArray;
    .restart local v14    # "i":I
    :cond_1b
    :try_start_14
    invoke-virtual {v5, v14}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    const-string v24, "android_id"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1e

    .line 702
    sget-boolean v23, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v23, :cond_1c

    const-string v23, "KochavaTracker"

    const-string v24, "disabling: android_id"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :cond_1c
    # getter for: Lcom/kochava/android/tracker/Feature;->paramRestrictions:Ljava/util/HashMap;
    invoke-static {}, Lcom/kochava/android/tracker/Feature;->access$42()Ljava/util/HashMap;

    move-result-object v23

    const-string v24, "android_id"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    :cond_1d
    :goto_d
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_a

    .line 705
    :cond_1e
    invoke-virtual {v5, v14}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    const-string v24, "fb_attribution_id"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_20

    .line 707
    sget-boolean v23, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v23, :cond_1f

    const-string v23, "KochavaTracker"

    const-string v24, "disabling: fb_attribution_id"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_1f
    # getter for: Lcom/kochava/android/tracker/Feature;->paramRestrictions:Ljava/util/HashMap;
    invoke-static {}, Lcom/kochava/android/tracker/Feature;->access$42()Ljava/util/HashMap;

    move-result-object v23

    const-string v24, "fb_attribution_id"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_14} :catch_a
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_14 .. :try_end_14} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_14 .. :try_end_14} :catch_2
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_7

    goto :goto_d

    .line 732
    .end local v5    # "blacklist":Lorg/json/JSONArray;
    .end local v14    # "i":I
    :catch_a
    move-exception v23

    move-object/from16 v8, v23

    .line 734
    .restart local v8    # "e":Lorg/json/JSONException;
    :try_start_15
    sget-boolean v23, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v23, :cond_17

    const-string v23, "KochavaTracker"

    const-string v24, "KVinit response did not contain a blacklist."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_15 .. :try_end_15} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_15 .. :try_end_15} :catch_2
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_7

    goto/16 :goto_b

    .line 710
    .end local v8    # "e":Lorg/json/JSONException;
    .restart local v5    # "blacklist":Lorg/json/JSONArray;
    .restart local v14    # "i":I
    :cond_20
    :try_start_16
    invoke-virtual {v5, v14}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    const-string v24, "imei"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_22

    .line 712
    sget-boolean v23, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v23, :cond_21

    const-string v23, "KochavaTracker"

    const-string v24, "disabling: imei"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :cond_21
    # getter for: Lcom/kochava/android/tracker/Feature;->paramRestrictions:Ljava/util/HashMap;
    invoke-static {}, Lcom/kochava/android/tracker/Feature;->access$42()Ljava/util/HashMap;

    move-result-object v23

    const-string v24, "imei"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 715
    :cond_22
    invoke-virtual {v5, v14}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    const-string v24, "mac"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_24

    .line 717
    sget-boolean v23, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v23, :cond_23

    const-string v23, "KochavaTracker"

    const-string v24, "disabling: mac"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :cond_23
    # getter for: Lcom/kochava/android/tracker/Feature;->paramRestrictions:Ljava/util/HashMap;
    invoke-static {}, Lcom/kochava/android/tracker/Feature;->access$42()Ljava/util/HashMap;

    move-result-object v23

    const-string v24, "mac"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    .line 720
    :cond_24
    invoke-virtual {v5, v14}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    const-string v24, "odin"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_26

    .line 722
    sget-boolean v23, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v23, :cond_25

    const-string v23, "KochavaTracker"

    const-string v24, "disabling: odin"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :cond_25
    # getter for: Lcom/kochava/android/tracker/Feature;->paramRestrictions:Ljava/util/HashMap;
    invoke-static {}, Lcom/kochava/android/tracker/Feature;->access$42()Ljava/util/HashMap;

    move-result-object v23

    const-string v24, "odin"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    .line 725
    :cond_26
    invoke-virtual {v5, v14}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    const-string v24, "open_udid"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1d

    .line 727
    sget-boolean v23, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v23, :cond_27

    const-string v23, "KochavaTracker"

    const-string v24, "disabling: open_udid"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_27
    # getter for: Lcom/kochava/android/tracker/Feature;->paramRestrictions:Ljava/util/HashMap;
    invoke-static {}, Lcom/kochava/android/tracker/Feature;->access$42()Ljava/util/HashMap;

    move-result-object v23

    const-string v24, "open_udid"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_16} :catch_a
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_16 .. :try_end_16} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_16 .. :try_end_16} :catch_2
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_7

    goto/16 :goto_d

    .line 743
    .end local v5    # "blacklist":Lorg/json/JSONArray;
    .end local v14    # "i":I
    :catch_b
    move-exception v23

    move-object/from16 v8, v23

    .line 745
    .restart local v8    # "e":Lorg/json/JSONException;
    :try_start_17
    sget-boolean v23, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v23, :cond_18

    const-string v23, "KochavaTracker"

    const-string v24, "KVinit response did not contain an error."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_17 .. :try_end_17} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_17 .. :try_end_17} :catch_2
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_7

    goto/16 :goto_c

    .line 688
    .end local v8    # "e":Lorg/json/JSONException;
    :catch_c
    move-exception v23

    goto/16 :goto_9

    .line 675
    :catch_d
    move-exception v23

    goto/16 :goto_8

    .line 626
    .end local v11    # "flags":Lorg/json/JSONObject;
    .restart local v3    # "attributionData":Lorg/json/JSONObject;
    :catch_e
    move-exception v23

    goto/16 :goto_4
.end method
