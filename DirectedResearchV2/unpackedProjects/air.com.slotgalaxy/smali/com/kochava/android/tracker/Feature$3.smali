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

    .line 507
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 26
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 515
    :try_start_0
    const-string v22, "KochavaTracker"

    const-string v23, "getKVinit thread started."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    const-string v22, "KochavaTracker"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "getKVinit post: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature$3;->this$0:Lcom/kochava/android/tracker/Feature;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature;->kvinitdataholder:Lorg/json/JSONObject;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature$3;->this$0:Lcom/kochava/android/tracker/Feature;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    # invokes: Lcom/kochava/android/tracker/Feature;->createHttpClient(Z)Lorg/apache/http/client/HttpClient;
    invoke-static/range {v22 .. v23}, Lcom/kochava/android/tracker/Feature;->access$31(Lcom/kochava/android/tracker/Feature;Z)Lorg/apache/http/client/HttpClient;

    move-result-object v11

    .line 522
    .local v11, "httpclient":Lorg/apache/http/client/HttpClient;
    invoke-interface {v11}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature$3;->this$0:Lcom/kochava/android/tracker/Feature;

    move-object/from16 v23, v0

    # getter for: Lcom/kochava/android/tracker/Feature;->mUserAgent:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/kochava/android/tracker/Feature;->access$32(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 524
    new-instance v12, Lorg/apache/http/client/methods/HttpPost;

    const-string v22, "https://control.kochava.com/track/kvinit"

    move-object v0, v12

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 527
    .local v12, "httppost":Lorg/apache/http/client/methods/HttpPost;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature$3;->this$0:Lcom/kochava/android/tracker/Feature;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature;->kvinitdataholder:Lorg/json/JSONObject;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 529
    .local v6, "data":Ljava/lang/String;
    new-instance v21, Lorg/apache/http/entity/StringEntity;

    const-string v22, "UTF-8"

    move-object/from16 v0, v21

    move-object v1, v6

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    .local v21, "sentity":Lorg/apache/http/entity/StringEntity;
    new-instance v3, Lorg/apache/http/message/BasicHeader;

    const-string v22, "Content-Type"

    const-string v23, "application/xml"

    move-object v0, v3

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    .local v3, "basicHeader":Lorg/apache/http/message/BasicHeader;
    invoke-virtual {v12}, Lorg/apache/http/client/methods/HttpPost;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v22

    const-string v23, "http.protocol.expect-continue"

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 532
    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/StringEntity;->setContentType(Lorg/apache/http/Header;)V

    .line 533
    move-object v0, v12

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 534
    sget-boolean v22, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v22, :cond_0

    const-string v22, "KochavaTracker"

    const-string v23, "Trying to post to KVinit."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_0
    invoke-interface {v11, v12}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v19

    .line 536
    .local v19, "response":Lorg/apache/http/HttpResponse;
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 537
    .local v8, "entity":Lorg/apache/http/HttpEntity;
    if-nez v8, :cond_2

    .line 539
    sget-boolean v22, Lcom/kochava/android/tracker/Global;->DEBUGERROR:Z

    if-eqz v22, :cond_1

    const-string v22, "KochavaTracker"

    const-string v23, "Could not get a response entity from KVinit."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 720
    .end local v3    # "basicHeader":Lorg/apache/http/message/BasicHeader;
    .end local v6    # "data":Ljava/lang/String;
    .end local v8    # "entity":Lorg/apache/http/HttpEntity;
    .end local v11    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v12    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .end local v19    # "response":Lorg/apache/http/HttpResponse;
    .end local v21    # "sentity":Lorg/apache/http/entity/StringEntity;
    :cond_1
    :goto_0
    return-void

    .line 545
    .restart local v3    # "basicHeader":Lorg/apache/http/message/BasicHeader;
    .restart local v6    # "data":Ljava/lang/String;
    .restart local v8    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v11    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v12    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v19    # "response":Lorg/apache/http/HttpResponse;
    .restart local v21    # "sentity":Lorg/apache/http/entity/StringEntity;
    :cond_2
    :try_start_1
    sget-boolean v22, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v22, :cond_3

    const-string v22, "KochavaTracker"

    const-string v23, "(KVinit) Grabbing Result..."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_3
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/kochava/android/util/StringUtils;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v20

    .line 547
    .local v20, "result":Ljava/lang/String;
    sget-boolean v22, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v22, :cond_4

    const-string v22, "KochavaTracker"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "(KVinit) Result: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 548
    :cond_4
    const/16 v17, 0x0

    .line 554
    .local v17, "parsedResult":Lorg/json/JSONObject;
    :try_start_2
    new-instance v18, Lorg/json/JSONObject;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    .end local v17    # "parsedResult":Lorg/json/JSONObject;
    .local v18, "parsedResult":Lorg/json/JSONObject;
    move-object/from16 v17, v18

    .line 561
    .end local v18    # "parsedResult":Lorg/json/JSONObject;
    .restart local v17    # "parsedResult":Lorg/json/JSONObject;
    :cond_5
    :goto_1
    if-eqz v17, :cond_11

    .line 563
    :try_start_3
    sget-boolean v22, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v22, :cond_6

    const-string v22, "KochavaTracker"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "(KVinit) Parsed result: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    .line 567
    :cond_6
    const/4 v10, 0x0

    .line 570
    .local v10, "flags":Lorg/json/JSONObject;
    :try_start_4
    const-string v22, "flags"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 571
    sget-boolean v22, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v22, :cond_7

    const-string v22, "KochavaTracker"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "Flags: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    .line 578
    :cond_7
    :goto_2
    if-eqz v10, :cond_e

    .line 583
    :try_start_5
    const-string v22, "kochava_app_id"

    move-object v0, v10

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 584
    .local v14, "kochava_app_id":Ljava/lang/String;
    sget-boolean v22, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v22, :cond_8

    const-string v22, "KochavaTracker"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "kochava_app_id: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature$3;->this$0:Lcom/kochava/android/tracker/Feature;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object v1, v14

    invoke-static {v0, v1}, Lcom/kochava/android/tracker/Feature;->access$33(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .line 594
    .end local v14    # "kochava_app_id":Ljava/lang/String;
    :cond_9
    :goto_3
    :try_start_6
    const-string v22, "session_tracking"

    move-object v0, v10

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    const-string v23, "none"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature$3;->this$0:Lcom/kochava/android/tracker/Feature;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lcom/kochava/android/tracker/Feature;->access$34(Lcom/kochava/android/tracker/Feature;Z)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    .line 604
    :cond_a
    :goto_4
    :try_start_7
    const-string v22, "currency"

    move-object v0, v10

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "basicHeader":Lorg/apache/http/message/BasicHeader;
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 605
    .local v5, "currency":Ljava/lang/String;
    sget-boolean v22, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v22, :cond_b

    const-string v22, "KochavaTracker"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "setting currency to: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature$3;->this$0:Lcom/kochava/android/tracker/Feature;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object v1, v5

    # invokes: Lcom/kochava/android/tracker/Feature;->setCurrency(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/kochava/android/tracker/Feature;->access$35(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_7 .. :try_end_7} :catch_2

    .line 614
    .end local v5    # "currency":Ljava/lang/String;
    :goto_5
    :try_start_8
    const-string v22, "resend_initial"

    move-object v0, v10

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    const-string v23, "true"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_c

    const-string v22, "resend_initial"

    move-object v0, v10

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    const-string v23, "detailed"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 616
    :cond_c
    sget-boolean v22, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v22, :cond_d

    const-string v22, "KochavaTracker"

    const-string v23, "resend_initial flag triggered."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature$3;->this$0:Lcom/kochava/android/tracker/Feature;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature$3;->this$0:Lcom/kochava/android/tracker/Feature;

    move-object/from16 v23, v0

    # getter for: Lcom/kochava/android/tracker/Feature;->mContext:Landroid/content/Context;
    invoke-static/range {v23 .. v23}, Lcom/kochava/android/tracker/Feature;->access$0(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;

    move-result-object v23

    const-string v24, "initPrefs"

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/kochava/android/tracker/Feature;->access$15(Lcom/kochava/android/tracker/Feature;Landroid/content/SharedPreferences;)V

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature$3;->this$0:Lcom/kochava/android/tracker/Feature;

    move-object/from16 v22, v0

    # getter for: Lcom/kochava/android/tracker/Feature;->prefs:Landroid/content/SharedPreferences;
    invoke-static/range {v22 .. v22}, Lcom/kochava/android/tracker/Feature;->access$16(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    const-string v23, "initBool"

    const-string v24, "false"

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_8 .. :try_end_8} :catch_2

    .line 629
    :cond_e
    :goto_6
    :try_start_9
    const-string v22, "blacklist"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 630
    .local v4, "blacklist":Lorg/json/JSONArray;
    sget-boolean v22, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v22, :cond_f

    const-string v22, "KochavaTracker"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "blacklist: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_f
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_7
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    move-result v22

    move v0, v13

    move/from16 v1, v22

    if-lt v0, v1, :cond_12

    .line 672
    .end local v4    # "blacklist":Lorg/json/JSONArray;
    .end local v13    # "i":I
    :cond_10
    :goto_8
    :try_start_a
    const-string v22, "error"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 673
    .local v9, "error":Ljava/lang/String;
    sget-boolean v22, Lcom/kochava/android/tracker/Global;->DEBUGERROR:Z

    if-eqz v22, :cond_11

    const-string v22, "KochavaTracker"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "There was a problem getting the KVinit response: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 714
    .end local v6    # "data":Ljava/lang/String;
    .end local v8    # "entity":Lorg/apache/http/HttpEntity;
    .end local v9    # "error":Ljava/lang/String;
    .end local v10    # "flags":Lorg/json/JSONObject;
    .end local v11    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v12    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .end local v17    # "parsedResult":Lorg/json/JSONObject;
    .end local v19    # "response":Lorg/apache/http/HttpResponse;
    .end local v20    # "result":Ljava/lang/String;
    .end local v21    # "sentity":Lorg/apache/http/entity/StringEntity;
    :cond_11
    :goto_9
    const-string v22, "KochavaTracker"

    const-string v23, "getKVinit thread ended, sending message to initHandler."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v15

    .line 716
    .local v15, "message":Landroid/os/Message;
    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    .line 717
    .local v16, "messageData":Landroid/os/Bundle;
    const-string v22, "sendonstart"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kochava/android/tracker/Feature$3;->val$sendOnStart:Z

    move/from16 v23, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 718
    invoke-virtual/range {v15 .. v16}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature$3;->this$0:Lcom/kochava/android/tracker/Feature;

    move-object/from16 v22, v0

    # getter for: Lcom/kochava/android/tracker/Feature;->initHandler:Landroid/os/Handler;
    invoke-static/range {v22 .. v22}, Lcom/kochava/android/tracker/Feature;->access$37(Lcom/kochava/android/tracker/Feature;)Landroid/os/Handler;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 556
    .end local v15    # "message":Landroid/os/Message;
    .end local v16    # "messageData":Landroid/os/Bundle;
    .restart local v3    # "basicHeader":Lorg/apache/http/message/BasicHeader;
    .restart local v6    # "data":Ljava/lang/String;
    .restart local v8    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v11    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v12    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v17    # "parsedResult":Lorg/json/JSONObject;
    .restart local v19    # "response":Lorg/apache/http/HttpResponse;
    .restart local v20    # "result":Ljava/lang/String;
    .restart local v21    # "sentity":Lorg/apache/http/entity/StringEntity;
    :catch_0
    move-exception v22

    move-object/from16 v7, v22

    .line 558
    .local v7, "e":Lorg/json/JSONException;
    :try_start_b
    sget-boolean v22, Lcom/kochava/android/tracker/Global;->DEBUGERROR:Z

    if-eqz v22, :cond_5

    const-string v22, "KochavaTracker"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "Error while parsing result json: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    goto/16 :goto_1

    .line 686
    .end local v3    # "basicHeader":Lorg/apache/http/message/BasicHeader;
    .end local v7    # "e":Lorg/json/JSONException;
    .end local v17    # "parsedResult":Lorg/json/JSONObject;
    .end local v20    # "result":Ljava/lang/String;
    :catch_1
    move-exception v22

    move-object/from16 v7, v22

    .line 688
    .local v7, "e":Ljava/io/IOException;
    :try_start_c
    sget-boolean v22, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v22, :cond_1

    const-string v22, "KochavaTracker"

    const-string v23, "TrackTask"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    goto/16 :goto_0

    .line 697
    .end local v6    # "data":Ljava/lang/String;
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "entity":Lorg/apache/http/HttpEntity;
    .end local v11    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v12    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .end local v19    # "response":Lorg/apache/http/HttpResponse;
    .end local v21    # "sentity":Lorg/apache/http/entity/StringEntity;
    :catch_2
    move-exception v22

    move-object/from16 v7, v22

    .line 699
    .local v7, "e":Lorg/apache/http/client/ClientProtocolException;
    sget-boolean v22, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v22, :cond_1

    const-string v22, "KochavaTracker"

    const-string v23, "TrackTask"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 573
    .end local v7    # "e":Lorg/apache/http/client/ClientProtocolException;
    .restart local v3    # "basicHeader":Lorg/apache/http/message/BasicHeader;
    .restart local v6    # "data":Ljava/lang/String;
    .restart local v8    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v10    # "flags":Lorg/json/JSONObject;
    .restart local v11    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v12    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v17    # "parsedResult":Lorg/json/JSONObject;
    .restart local v19    # "response":Lorg/apache/http/HttpResponse;
    .restart local v20    # "result":Ljava/lang/String;
    .restart local v21    # "sentity":Lorg/apache/http/entity/StringEntity;
    :catch_3
    move-exception v22

    move-object/from16 v7, v22

    .line 575
    .local v7, "e":Lorg/json/JSONException;
    :try_start_d
    sget-boolean v22, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v22, :cond_7

    const-string v22, "KochavaTracker"

    const-string v23, "KVinit response did not contain flags."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_d} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    goto/16 :goto_2

    .line 691
    .end local v3    # "basicHeader":Lorg/apache/http/message/BasicHeader;
    .end local v7    # "e":Lorg/json/JSONException;
    .end local v10    # "flags":Lorg/json/JSONObject;
    .end local v17    # "parsedResult":Lorg/json/JSONObject;
    .end local v20    # "result":Ljava/lang/String;
    :catch_4
    move-exception v22

    move-object/from16 v7, v22

    .line 693
    .local v7, "e":Ljava/lang/OutOfMemoryError;
    :try_start_e
    sget-boolean v22, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v22, :cond_1

    const-string v22, "KochavaTracker"

    const-string v23, "TrackTask"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    goto/16 :goto_0

    .line 702
    .end local v6    # "data":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/OutOfMemoryError;
    .end local v8    # "entity":Lorg/apache/http/HttpEntity;
    .end local v11    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v12    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .end local v19    # "response":Lorg/apache/http/HttpResponse;
    .end local v21    # "sentity":Lorg/apache/http/entity/StringEntity;
    :catch_5
    move-exception v22

    move-object/from16 v7, v22

    .line 704
    .local v7, "e":Ljava/io/IOException;
    sget-boolean v22, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v22, :cond_1

    const-string v22, "KochavaTracker"

    const-string v23, "TrackTask"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 587
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v3    # "basicHeader":Lorg/apache/http/message/BasicHeader;
    .restart local v6    # "data":Ljava/lang/String;
    .restart local v8    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v10    # "flags":Lorg/json/JSONObject;
    .restart local v11    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v12    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v17    # "parsedResult":Lorg/json/JSONObject;
    .restart local v19    # "response":Lorg/apache/http/HttpResponse;
    .restart local v20    # "result":Ljava/lang/String;
    .restart local v21    # "sentity":Lorg/apache/http/entity/StringEntity;
    :catch_6
    move-exception v22

    move-object/from16 v7, v22

    .line 589
    .local v7, "e":Lorg/json/JSONException;
    :try_start_f
    sget-boolean v22, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v22, :cond_9

    const-string v22, "KochavaTracker"

    const-string v23, "KVinit response did not contain a kochava_app_id."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_f} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    goto/16 :goto_3

    .line 707
    .end local v3    # "basicHeader":Lorg/apache/http/message/BasicHeader;
    .end local v6    # "data":Ljava/lang/String;
    .end local v7    # "e":Lorg/json/JSONException;
    .end local v8    # "entity":Lorg/apache/http/HttpEntity;
    .end local v10    # "flags":Lorg/json/JSONObject;
    .end local v11    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v12    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .end local v17    # "parsedResult":Lorg/json/JSONObject;
    .end local v19    # "response":Lorg/apache/http/HttpResponse;
    .end local v20    # "result":Ljava/lang/String;
    .end local v21    # "sentity":Lorg/apache/http/entity/StringEntity;
    :catch_7
    move-exception v22

    move-object/from16 v7, v22

    .line 709
    .local v7, "e":Ljava/lang/Exception;
    sget-boolean v22, Lcom/kochava/android/tracker/Global;->DEBUGERROR:Z

    if-eqz v22, :cond_11

    const-string v22, "KochavaTracker"

    const-string v23, "Unexpected error during KVinit communication."

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 597
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v3    # "basicHeader":Lorg/apache/http/message/BasicHeader;
    .restart local v6    # "data":Ljava/lang/String;
    .restart local v8    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v10    # "flags":Lorg/json/JSONObject;
    .restart local v11    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v12    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v17    # "parsedResult":Lorg/json/JSONObject;
    .restart local v19    # "response":Lorg/apache/http/HttpResponse;
    .restart local v20    # "result":Ljava/lang/String;
    .restart local v21    # "sentity":Lorg/apache/http/entity/StringEntity;
    :catch_8
    move-exception v22

    move-object/from16 v7, v22

    .line 599
    .local v7, "e":Lorg/json/JSONException;
    :try_start_10
    sget-boolean v22, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v22, :cond_a

    const-string v22, "KochavaTracker"

    const-string v23, "KVinit response did not contain flags."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10 .. :try_end_10} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7

    goto/16 :goto_4

    .line 633
    .end local v3    # "basicHeader":Lorg/apache/http/message/BasicHeader;
    .end local v7    # "e":Lorg/json/JSONException;
    .restart local v4    # "blacklist":Lorg/json/JSONArray;
    .restart local v13    # "i":I
    :cond_12
    :try_start_11
    invoke-virtual {v4, v13}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v22

    const-string v23, "android_id"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_15

    .line 635
    sget-boolean v22, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v22, :cond_13

    const-string v22, "KochavaTracker"

    const-string v23, "disabling: android_id"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_13
    # getter for: Lcom/kochava/android/tracker/Feature;->paramRestrictions:Ljava/util/HashMap;
    invoke-static {}, Lcom/kochava/android/tracker/Feature;->access$36()Ljava/util/HashMap;

    move-result-object v22

    const-string v23, "android_id"

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    :cond_14
    :goto_a
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_7

    .line 638
    :cond_15
    invoke-virtual {v4, v13}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v22

    const-string v23, "fb_attribution_id"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_17

    .line 640
    sget-boolean v22, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v22, :cond_16

    const-string v22, "KochavaTracker"

    const-string v23, "disabling: fb_attribution_id"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_16
    # getter for: Lcom/kochava/android/tracker/Feature;->paramRestrictions:Ljava/util/HashMap;
    invoke-static {}, Lcom/kochava/android/tracker/Feature;->access$36()Ljava/util/HashMap;

    move-result-object v22

    const-string v23, "fb_attribution_id"

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_9
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_11 .. :try_end_11} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7

    goto :goto_a

    .line 665
    .end local v4    # "blacklist":Lorg/json/JSONArray;
    .end local v13    # "i":I
    :catch_9
    move-exception v22

    move-object/from16 v7, v22

    .line 667
    .restart local v7    # "e":Lorg/json/JSONException;
    :try_start_12
    sget-boolean v22, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v22, :cond_10

    const-string v22, "KochavaTracker"

    const-string v23, "KVinit response did not contain a blacklist."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_12 .. :try_end_12} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7

    goto/16 :goto_8

    .line 643
    .end local v7    # "e":Lorg/json/JSONException;
    .restart local v4    # "blacklist":Lorg/json/JSONArray;
    .restart local v13    # "i":I
    :cond_17
    :try_start_13
    invoke-virtual {v4, v13}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v22

    const-string v23, "imei"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_19

    .line 645
    sget-boolean v22, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v22, :cond_18

    const-string v22, "KochavaTracker"

    const-string v23, "disabling: imei"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :cond_18
    # getter for: Lcom/kochava/android/tracker/Feature;->paramRestrictions:Ljava/util/HashMap;
    invoke-static {}, Lcom/kochava/android/tracker/Feature;->access$36()Ljava/util/HashMap;

    move-result-object v22

    const-string v23, "imei"

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 648
    :cond_19
    invoke-virtual {v4, v13}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v22

    const-string v23, "mac"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1b

    .line 650
    sget-boolean v22, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v22, :cond_1a

    const-string v22, "KochavaTracker"

    const-string v23, "disabling: mac"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_1a
    # getter for: Lcom/kochava/android/tracker/Feature;->paramRestrictions:Ljava/util/HashMap;
    invoke-static {}, Lcom/kochava/android/tracker/Feature;->access$36()Ljava/util/HashMap;

    move-result-object v22

    const-string v23, "mac"

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    .line 653
    :cond_1b
    invoke-virtual {v4, v13}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v22

    const-string v23, "odin"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1d

    .line 655
    sget-boolean v22, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v22, :cond_1c

    const-string v22, "KochavaTracker"

    const-string v23, "disabling: odin"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_1c
    # getter for: Lcom/kochava/android/tracker/Feature;->paramRestrictions:Ljava/util/HashMap;
    invoke-static {}, Lcom/kochava/android/tracker/Feature;->access$36()Ljava/util/HashMap;

    move-result-object v22

    const-string v23, "odin"

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    .line 658
    :cond_1d
    invoke-virtual {v4, v13}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v22

    const-string v23, "open_udid"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_14

    .line 660
    sget-boolean v22, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v22, :cond_1e

    const-string v22, "KochavaTracker"

    const-string v23, "disabling: open_udid"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_1e
    # getter for: Lcom/kochava/android/tracker/Feature;->paramRestrictions:Ljava/util/HashMap;
    invoke-static {}, Lcom/kochava/android/tracker/Feature;->access$36()Ljava/util/HashMap;

    move-result-object v22

    const-string v23, "open_udid"

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_13} :catch_9
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_13 .. :try_end_13} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_13 .. :try_end_13} :catch_2
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_7

    goto/16 :goto_a

    .line 676
    .end local v4    # "blacklist":Lorg/json/JSONArray;
    .end local v13    # "i":I
    :catch_a
    move-exception v22

    move-object/from16 v7, v22

    .line 678
    .restart local v7    # "e":Lorg/json/JSONException;
    :try_start_14
    sget-boolean v22, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v22, :cond_11

    const-string v22, "KochavaTracker"

    const-string v23, "KVinit response did not contain an error."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_14 .. :try_end_14} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_14 .. :try_end_14} :catch_2
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_7

    goto/16 :goto_9

    .line 621
    .end local v7    # "e":Lorg/json/JSONException;
    :catch_b
    move-exception v22

    goto/16 :goto_6

    .line 608
    :catch_c
    move-exception v22

    goto/16 :goto_5
.end method
