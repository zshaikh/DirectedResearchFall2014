.class public Lcom/appoxee/connection/AppoxeeClient;
.super Lcom/appoxee/connection/JSONServerClient;
.source "AppoxeeClient.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SimpleDateFormat"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/appoxee/connection/JSONServerClient;-><init>()V

    .line 39
    invoke-static {p0}, Lcom/appoxee/Appoxee;->setClient(Lcom/appoxee/connection/AppoxeeClient;)V

    .line 40
    return-void
.end method

.method private getResult(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 4
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    const-string v3, "result"

    .line 634
    const/4 v1, 0x0

    .line 636
    .local v1, "result":Ljava/lang/Object;
    if-eqz p1, :cond_0

    .line 637
    const-string v2, "result"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 639
    :try_start_0
    const-string v2, "result"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 647
    .end local v1    # "result":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v1

    .line 640
    .restart local v1    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 641
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "Response error: response made JSONException, might not exist"

    invoke-static {v2}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 642
    invoke-static {v0}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public alias(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 8
    .param p1, "aliasAction"    # Ljava/lang/String;
    .param p2, "aliasValue"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const-string v5, "alias"

    .line 245
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 248
    .local v2, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "action"

    const-string v6, "alias"

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    const-string v5, "udid"

    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getDeviceID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    if-nez p2, :cond_0

    .line 252
    const-string v5, "alias"

    invoke-virtual {v2, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "alias "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0, v2}, Lcom/appoxee/connection/AppoxeeClient;->call(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    .line 267
    .local v3, "response":Lorg/json/JSONObject;
    invoke-virtual {p0, v3}, Lcom/appoxee/connection/AppoxeeClient;->checkResponse(Lorg/json/JSONObject;)Z

    move-result v4

    .line 269
    .local v4, "result":Z
    if-eqz v4, :cond_1

    move-object v5, v3

    .line 273
    .end local v3    # "response":Lorg/json/JSONObject;
    .end local v4    # "result":Z
    :goto_1
    return-object v5

    .line 254
    :cond_0
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 255
    .local v0, "alias":Lorg/json/JSONObject;
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    const-string v5, "alias"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 258
    .end local v0    # "alias":Lorg/json/JSONObject;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 259
    .local v1, "e":Lorg/json/JSONException;
    const-string v5, "Alias API: problem with creating request"

    invoke-static {v5}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 260
    invoke-static {v1}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    move-object v5, v7

    .line 261
    goto :goto_1

    .line 272
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v3    # "response":Lorg/json/JSONObject;
    .restart local v4    # "result":Z
    :cond_1
    const-string v5, "Alias API: error: result is null"

    invoke-static {v5}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    move-object v5, v7

    .line 273
    goto :goto_1
.end method

.method public assignAttribute(Ljava/lang/String;Ljava/lang/String;F)Z
    .locals 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "value"    # F

    .prologue
    const-string v6, "attribute"

    .line 472
    const/4 v4, 0x0

    .line 474
    .local v4, "result":Z
    if-nez p1, :cond_0

    .line 475
    const-string v6, "assignAttribute: null action"

    invoke-static {v6}, Lcom/appoxee/utils/Utils;->Log(Ljava/lang/String;)V

    .line 503
    :goto_0
    return v4

    .line 476
    :cond_0
    const-string v6, "set"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "increase"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 477
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 480
    .local v2, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string v6, "action"

    const-string v7, "attribute"

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 481
    const-string v6, "udid"

    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getDeviceID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 483
    if-nez p2, :cond_2

    .line 484
    const-string v6, "assignAttribute: attribute can\'t be null"

    invoke-static {v6}, Lcom/appoxee/utils/Utils;->Log(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 495
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 496
    .local v1, "e":Lorg/json/JSONException;
    const-string v6, "Attributes API: problem with creating request"

    invoke-static {v6}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 497
    invoke-static {v1}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 486
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 487
    .local v5, "valueObject":Lorg/json/JSONObject;
    float-to-double v6, p3

    invoke-virtual {v5, p2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 488
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 489
    .local v0, "attributeObject":Lorg/json/JSONObject;
    invoke-virtual {v0, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 490
    const-string v6, "attribute"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 492
    invoke-virtual {p0, v2}, Lcom/appoxee/connection/AppoxeeClient;->call(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    .line 493
    .local v3, "response":Lorg/json/JSONObject;
    invoke-virtual {p0, v3}, Lcom/appoxee/connection/AppoxeeClient;->checkResponse(Lorg/json/JSONObject;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    goto :goto_0

    .line 500
    .end local v0    # "attributeObject":Lorg/json/JSONObject;
    .end local v2    # "params":Lorg/json/JSONObject;
    .end local v3    # "response":Lorg/json/JSONObject;
    .end local v5    # "valueObject":Lorg/json/JSONObject;
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "assignAttribute: invalid action "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public assignKeyValue(Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 8
    .param p1, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 397
    .local p2, "keyValue":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v5, 0x0

    .line 400
    .local v5, "result":Z
    if-eqz p1, :cond_0

    const-string v6, "set"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "increase"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 401
    :cond_0
    const-string v6, "Key-Value API: problem with creating request - action is neither set nor increase"

    invoke-static {v6}, Lcom/appoxee/utils/Utils;->Log(Ljava/lang/String;)V

    .line 427
    :goto_0
    return v5

    .line 402
    :cond_1
    if-nez p2, :cond_2

    .line 403
    const-string v6, "Key-Value API: problem with creating request - key-value cannot be null"

    invoke-static {v6}, Lcom/appoxee/utils/Utils;->Log(Ljava/lang/String;)V

    goto :goto_0

    .line 405
    :cond_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 408
    .local v3, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string v6, "action"

    const-string v7, "key-value"

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 409
    const-string v6, "udid"

    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getDeviceID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 411
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 413
    .local v1, "jsonKeyValue":Lorg/json/JSONObject;
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 417
    invoke-virtual {v3, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 419
    invoke-virtual {p0, v3}, Lcom/appoxee/connection/AppoxeeClient;->call(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    .line 420
    .local v4, "response":Lorg/json/JSONObject;
    invoke-virtual {p0, v4}, Lcom/appoxee/connection/AppoxeeClient;->checkResponse(Lorg/json/JSONObject;)Z

    move-result v5

    goto :goto_0

    .line 413
    .end local v4    # "response":Lorg/json/JSONObject;
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 414
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 421
    .end local v1    # "jsonKeyValue":Lorg/json/JSONObject;
    .end local v2    # "key":Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 422
    .local v0, "e":Lorg/json/JSONException;
    const-string v6, "Key-Value API: problem with creating request"

    invoke-static {v6}, Lcom/appoxee/utils/Utils;->Log(Ljava/lang/String;)V

    .line 423
    invoke-static {v0}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public changeDeviceID(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "newKey"    # Ljava/lang/String;
    .param p2, "oldKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const-string v6, "ChangeDeviceID"

    .line 569
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 570
    .local v1, "params":Lorg/json/JSONObject;
    const-string v4, "action"

    const-string v5, "ChangeDeviceID"

    invoke-virtual {v1, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 571
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 573
    .local v0, "changeDeviceId":Lorg/json/JSONObject;
    const-string v4, "newkey"

    invoke-virtual {v0, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 574
    const-string v4, "oldkey"

    invoke-virtual {v0, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 575
    const-string v4, "ChangeDeviceID"

    invoke-virtual {v1, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 577
    invoke-virtual {p0, v1}, Lcom/appoxee/connection/AppoxeeClient;->call(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 578
    .local v2, "response":Lorg/json/JSONObject;
    invoke-virtual {p0, v2}, Lcom/appoxee/connection/AppoxeeClient;->checkResponse(Lorg/json/JSONObject;)Z

    move-result v3

    .line 580
    .local v3, "result":Z
    return v3
.end method

.method public checkResponse(Lorg/json/JSONObject;)Z
    .locals 9
    .param p1, "callResult"    # Lorg/json/JSONObject;

    .prologue
    const-string v8, "response"

    .line 584
    const/4 v6, 0x0

    .line 586
    .local v6, "result":Z
    if-eqz p1, :cond_5

    .line 587
    const-string v7, "response"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 589
    :try_start_0
    const-string v7, "response"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 591
    .local v5, "responseObject":Ljava/lang/Object;
    if-eqz v5, :cond_3

    .line 592
    instance-of v7, v5, Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 593
    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 595
    .local v4, "response":Ljava/lang/String;
    const-string v7, "Success"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 596
    const/4 v6, 0x1

    .line 630
    .end local v4    # "response":Ljava/lang/String;
    .end local v5    # "responseObject":Ljava/lang/Object;
    :goto_0
    return v6

    .line 597
    .restart local v4    # "response":Ljava/lang/String;
    .restart local v5    # "responseObject":Ljava/lang/Object;
    :cond_0
    const-string v7, "Error"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 598
    const-string v7, "Response is Error"

    invoke-static {v7}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 601
    :try_start_1
    const-string v7, "message"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 602
    .local v3, "message":Ljava/lang/String;
    const-string v7, "code"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 604
    .local v1, "code":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Response error: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 605
    .end local v1    # "code":Ljava/lang/String;
    .end local v3    # "message":Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 606
    .local v2, "e":Lorg/json/JSONException;
    :try_start_2
    const-string v7, "Response error: failed to retrieve error message/code"

    invoke-static {v7}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 607
    invoke-static {v2}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 619
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v4    # "response":Ljava/lang/String;
    .end local v5    # "responseObject":Ljava/lang/Object;
    :catch_1
    move-exception v7

    move-object v2, v7

    .line 620
    .restart local v2    # "e":Lorg/json/JSONException;
    const-string v7, "Response error: response made JSONException, might not exist"

    invoke-static {v7}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 621
    invoke-static {v2}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 611
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v4    # "response":Ljava/lang/String;
    .restart local v5    # "responseObject":Ljava/lang/Object;
    :cond_1
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Response error: unknown response "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    goto :goto_0

    .line 614
    .end local v4    # "response":Ljava/lang/String;
    :cond_2
    const-string v7, "Response error: response object is not a String"

    invoke-static {v7}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    goto :goto_0

    .line 617
    :cond_3
    const-string v7, "Response error: response object is null"

    invoke-static {v7}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 624
    .end local v5    # "responseObject":Ljava/lang/Object;
    :cond_4
    const-string v7, "Response error: response key does not exist"

    invoke-static {v7}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    goto :goto_0

    .line 627
    :cond_5
    const-string v7, "Response error: result is null"

    invoke-static {v7}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getApplicationConfiguration()Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 119
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 120
    .local v2, "params":Lorg/json/JSONObject;
    const-string v5, "action"

    const-string v6, "getApplicationConfiguration"

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    invoke-virtual {p0, v2}, Lcom/appoxee/connection/AppoxeeClient;->call(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    .line 123
    .local v3, "response":Lorg/json/JSONObject;
    const/4 v0, 0x0

    .line 124
    .local v0, "applicationConfiguration":Lorg/json/JSONObject;
    invoke-virtual {p0, v3}, Lcom/appoxee/connection/AppoxeeClient;->checkResponse(Lorg/json/JSONObject;)Z

    move-result v4

    .line 126
    .local v4, "result":Z
    if-eqz v4, :cond_0

    .line 128
    :try_start_0
    const-string v5, "result"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    .line 129
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 130
    .local v1, "e":Lorg/json/JSONException;
    const-string v5, "getApplicationConfiguration error: failed to retrieve result"

    invoke-static {v5}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 131
    invoke-static {v1}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 134
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    const-string v5, "getApplicationConfiguration error: bad result"

    invoke-static {v5}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getArrayResult(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "response"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 672
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 674
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/appoxee/connection/AppoxeeClient;->getResult(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v2

    .line 676
    .local v2, "resultObject":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 677
    instance-of v6, v2, Lorg/json/JSONArray;

    if-eqz v6, :cond_3

    .line 678
    move-object v0, v2

    check-cast v0, Lorg/json/JSONArray;

    move-object v5, v0

    .line 680
    .local v5, "values":Lorg/json/JSONArray;
    invoke-virtual {p0, v5}, Lcom/appoxee/connection/AppoxeeClient;->toArray(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 699
    .end local v2    # "resultObject":Ljava/lang/Object;
    .end local v5    # "values":Lorg/json/JSONArray;
    :cond_1
    :goto_1
    return-object v1

    .line 680
    .restart local v2    # "resultObject":Ljava/lang/Object;
    .restart local v5    # "values":Lorg/json/JSONArray;
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 681
    .local v4, "value":Ljava/lang/Object;
    instance-of v7, v4, Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 682
    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 683
    .local v3, "temp":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 684
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 688
    .end local v3    # "temp":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    .end local v5    # "values":Lorg/json/JSONArray;
    :cond_3
    instance-of v6, v2, Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 689
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 691
    .restart local v3    # "temp":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 692
    check-cast v2, Ljava/lang/String;

    .end local v2    # "resultObject":Ljava/lang/Object;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 695
    .end local v3    # "temp":Ljava/lang/String;
    .restart local v2    # "resultObject":Ljava/lang/Object;
    :cond_4
    const-string v6, "Result error: result is neither array nor string"

    invoke-static {v6}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .param p1, "attribute"    # Ljava/lang/String;

    .prologue
    const-string v6, "attribute"

    .line 442
    const/4 v1, 0x0

    .line 444
    .local v1, "attributeValue":Ljava/lang/Object;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 445
    :cond_0
    const-string v6, "Attributes API: problem with creating request - attribute cannot be null or empty"

    invoke-static {v6}, Lcom/appoxee/utils/Utils;->Log(Ljava/lang/String;)V

    .line 468
    .end local v1    # "attributeValue":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-object v1

    .line 447
    .restart local v1    # "attributeValue":Ljava/lang/Object;
    :cond_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 449
    .local v3, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string v6, "action"

    const-string v7, "attribute"

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 450
    const-string v6, "udid"

    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getDeviceID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 452
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 453
    .local v0, "attributeObject":Lorg/json/JSONObject;
    const-string v6, "get"

    invoke-virtual {v0, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 454
    const-string v6, "attribute"

    invoke-virtual {v3, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 456
    invoke-virtual {p0, v3}, Lcom/appoxee/connection/AppoxeeClient;->call(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    .line 457
    .local v4, "response":Lorg/json/JSONObject;
    invoke-virtual {p0, v4}, Lcom/appoxee/connection/AppoxeeClient;->checkResponse(Lorg/json/JSONObject;)Z

    move-result v5

    .line 459
    .local v5, "result":Z
    if-eqz v5, :cond_1

    .line 460
    invoke-direct {p0, v4}, Lcom/appoxee/connection/AppoxeeClient;->getResult(Lorg/json/JSONObject;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 462
    .end local v0    # "attributeObject":Lorg/json/JSONObject;
    .end local v4    # "response":Lorg/json/JSONObject;
    .end local v5    # "result":Z
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 463
    .local v2, "e":Lorg/json/JSONException;
    const-string v6, "Attributes API: problem with creating request"

    invoke-static {v6}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 464
    invoke-static {v2}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getBooleanResult(Lorg/json/JSONObject;)Z
    .locals 1
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 662
    const/4 v0, 0x0

    .line 664
    .local v0, "result":Z
    if-eqz p1, :cond_0

    .line 665
    const/4 v0, 0x1

    .line 668
    :cond_0
    return v0
.end method

.method public getDeviceMessages(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 17
    .param p1, "latestMessageDate"    # Ljava/lang/String;
    .param p2, "queryType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/appoxee/inbox/Message;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 141
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Calling getDeviceMessages query "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v15

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " - last time="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 143
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 144
    .local v11, "params":Lorg/json/JSONObject;
    const-string v15, "action"

    const-string v16, "getDeviceMessages"

    move-object v0, v11

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 148
    .local v3, "arguments":Lorg/json/JSONObject;
    const-string v15, "key"

    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getDeviceID()Ljava/lang/String;

    move-result-object v16

    move-object v0, v3

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    const-string v15, "latestMessageDate"

    move-object v0, v3

    move-object v1, v15

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    const-string v15, "queryType"

    move-object v0, v3

    move-object v1, v15

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    const-string v15, "getDeviceMessages"

    invoke-virtual {v11, v15, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/appoxee/connection/AppoxeeClient;->call(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v12

    .line 155
    .local v12, "response":Lorg/json/JSONObject;
    const-string v15, "AppoxeeClient: getDeviceMessages  "

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v9, 0x0

    .line 157
    .local v9, "messages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/appoxee/inbox/Message;>;"
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/appoxee/connection/AppoxeeClient;->checkResponse(Lorg/json/JSONObject;)Z

    move-result v13

    .line 159
    .local v13, "result":Z
    if-nez v13, :cond_0

    .line 160
    const-string v15, "getDeviceMessages error: result is null"

    invoke-static {v15}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 161
    const/4 v15, 0x0

    .line 203
    :goto_0
    return-object v15

    .line 165
    :cond_0
    :try_start_0
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 167
    .end local v9    # "messages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/appoxee/inbox/Message;>;"
    .local v10, "messages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/appoxee/inbox/Message;>;"
    :try_start_1
    const-string v15, "result"

    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 168
    const-string v15, "result"

    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 170
    .local v14, "resultObject":Ljava/lang/Object;
    instance-of v15, v14, Lorg/json/JSONArray;

    if-eqz v15, :cond_3

    .line 171
    move-object v0, v14

    check-cast v0, Lorg/json/JSONArray;

    move-object v7, v0

    .line 173
    .local v7, "jsonMessages":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-lt v5, v15, :cond_1

    move-object v9, v10

    .end local v5    # "index":I
    .end local v7    # "jsonMessages":Lorg/json/JSONArray;
    .end local v10    # "messages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/appoxee/inbox/Message;>;"
    .end local v14    # "resultObject":Ljava/lang/Object;
    .restart local v9    # "messages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/appoxee/inbox/Message;>;"
    :goto_2
    move-object v15, v9

    .line 203
    goto :goto_0

    .line 174
    .end local v9    # "messages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/appoxee/inbox/Message;>;"
    .restart local v5    # "index":I
    .restart local v7    # "jsonMessages":Lorg/json/JSONArray;
    .restart local v10    # "messages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/appoxee/inbox/Message;>;"
    .restart local v14    # "resultObject":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    .line 175
    .local v6, "jsonMessage":Lorg/json/JSONObject;
    invoke-static {v6}, Lcom/appoxee/inbox/Message;->FromJson(Lorg/json/JSONObject;)Lcom/appoxee/inbox/Message;

    move-result-object v8

    .line 177
    .local v8, "message":Lcom/appoxee/inbox/Message;
    if-eqz v8, :cond_2

    .line 178
    invoke-virtual {v8}, Lcom/appoxee/inbox/Message;->getId()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v10, v15, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 181
    .end local v5    # "index":I
    .end local v6    # "jsonMessage":Lorg/json/JSONObject;
    .end local v7    # "jsonMessages":Lorg/json/JSONArray;
    .end local v8    # "message":Lcom/appoxee/inbox/Message;
    :cond_3
    instance-of v15, v14, Lorg/json/JSONObject;

    if-eqz v15, :cond_4

    .line 182
    move-object v0, v14

    check-cast v0, Lorg/json/JSONObject;

    move-object v6, v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 185
    .restart local v6    # "jsonMessage":Lorg/json/JSONObject;
    :try_start_2
    invoke-static {v6}, Lcom/appoxee/inbox/Message;->FromJson(Lorg/json/JSONObject;)Lcom/appoxee/inbox/Message;

    move-result-object v8

    .line 187
    .restart local v8    # "message":Lcom/appoxee/inbox/Message;
    if-eqz v8, :cond_5

    .line 188
    invoke-virtual {v8}, Lcom/appoxee/inbox/Message;->getId()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v10, v15, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v9, v10

    .line 190
    .end local v10    # "messages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/appoxee/inbox/Message;>;"
    .restart local v9    # "messages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/appoxee/inbox/Message;>;"
    goto :goto_2

    .end local v8    # "message":Lcom/appoxee/inbox/Message;
    .end local v9    # "messages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/appoxee/inbox/Message;>;"
    .restart local v10    # "messages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/appoxee/inbox/Message;>;"
    :catch_0
    move-exception v15

    move-object v4, v15

    .line 191
    .local v4, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v15, "JSON EXCEPTION"

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v10

    .line 194
    .end local v10    # "messages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/appoxee/inbox/Message;>;"
    .restart local v9    # "messages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/appoxee/inbox/Message;>;"
    goto :goto_2

    .line 195
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "jsonMessage":Lorg/json/JSONObject;
    .end local v9    # "messages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/appoxee/inbox/Message;>;"
    .restart local v10    # "messages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/appoxee/inbox/Message;>;"
    :cond_4
    const-string v15, "getDeviceMessages error: result is not valid messages"

    invoke-static {v15}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v9, v10

    .line 198
    .end local v10    # "messages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/appoxee/inbox/Message;>;"
    .restart local v9    # "messages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/appoxee/inbox/Message;>;"
    goto :goto_2

    .end local v14    # "resultObject":Ljava/lang/Object;
    :catch_1
    move-exception v15

    move-object v4, v15

    .line 199
    .local v4, "e":Lorg/json/JSONException;
    :goto_3
    const-string v15, "getDeviceMessages error: JSONException"

    invoke-static {v15}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 200
    invoke-static {v4}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    goto :goto_2

    .line 198
    .end local v4    # "e":Lorg/json/JSONException;
    .end local v9    # "messages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/appoxee/inbox/Message;>;"
    .restart local v10    # "messages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/appoxee/inbox/Message;>;"
    :catch_2
    move-exception v15

    move-object v4, v15

    move-object v9, v10

    .end local v10    # "messages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/appoxee/inbox/Message;>;"
    .restart local v9    # "messages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/appoxee/inbox/Message;>;"
    goto :goto_3

    .end local v9    # "messages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/appoxee/inbox/Message;>;"
    .restart local v10    # "messages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/appoxee/inbox/Message;>;"
    :cond_5
    move-object v9, v10

    .end local v10    # "messages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/appoxee/inbox/Message;>;"
    .restart local v9    # "messages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/appoxee/inbox/Message;>;"
    goto :goto_2
.end method

.method public getKeyValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 341
    const/4 v4, 0x0

    .line 343
    .local v4, "value":Ljava/lang/Object;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 347
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 348
    .local v1, "params":Lorg/json/JSONObject;
    const-string v5, "action"

    const-string v6, "key-value"

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 349
    const-string v5, "udid"

    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getDeviceID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 350
    const-string v5, "get"

    invoke-virtual {v1, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 352
    invoke-virtual {p0, v1}, Lcom/appoxee/connection/AppoxeeClient;->call(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 353
    .local v2, "response":Lorg/json/JSONObject;
    invoke-virtual {p0, v2}, Lcom/appoxee/connection/AppoxeeClient;->checkResponse(Lorg/json/JSONObject;)Z

    move-result v3

    .line 355
    .local v3, "result":Z
    if-eqz v3, :cond_0

    .line 356
    invoke-direct {p0, v2}, Lcom/appoxee/connection/AppoxeeClient;->getResult(Lorg/json/JSONObject;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 364
    .end local v1    # "params":Lorg/json/JSONObject;
    .end local v2    # "response":Lorg/json/JSONObject;
    .end local v3    # "result":Z
    .end local v4    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v4

    .line 358
    .restart local v4    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 359
    .local v0, "e":Lorg/json/JSONException;
    const-string v5, "Key-Value API: problem with creating request"

    invoke-static {v5}, Lcom/appoxee/utils/Utils;->Log(Ljava/lang/String;)V

    .line 360
    invoke-static {v0}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getServerTime()Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 207
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 208
    .local v5, "params":Lorg/json/JSONObject;
    const-string v10, "action"

    const-string v11, "getServerTime"

    invoke-virtual {v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    invoke-virtual {p0, v5}, Lcom/appoxee/connection/AppoxeeClient;->call(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v6

    .line 211
    .local v6, "response":Lorg/json/JSONObject;
    const/4 v9, 0x0

    .line 212
    .local v9, "serverTime":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/appoxee/connection/AppoxeeClient;->checkResponse(Lorg/json/JSONObject;)Z

    move-result v7

    .line 214
    .local v7, "result":Z
    if-nez v7, :cond_1

    .line 215
    const-string v10, "getServerTime error: result is null"

    invoke-static {v10}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 227
    :goto_0
    if-eqz v9, :cond_0

    .line 228
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {v4, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 231
    .local v4, "formatter":Ljava/text/DateFormat;
    :try_start_0
    invoke-virtual {v4, v9}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    .line 232
    .local v8, "serverNow":Ljava/util/Date;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 233
    .local v0, "deviceNow":Ljava/util/Date;
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    sub-long v1, v10, v12

    .line 234
    .local v1, "diff":J
    const-string v10, "SERVER_DEVICE_TIME_DIFF"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/appoxee/AppoxeeManager;->setConfiguration(Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 241
    .end local v0    # "deviceNow":Ljava/util/Date;
    .end local v1    # "diff":J
    .end local v4    # "formatter":Ljava/text/DateFormat;
    .end local v8    # "serverNow":Ljava/util/Date;
    :cond_0
    :goto_1
    return-object v9

    .line 218
    :cond_1
    :try_start_1
    const-string v10, "result"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    goto :goto_0

    .line 219
    :catch_0
    move-exception v10

    move-object v3, v10

    .line 220
    .local v3, "e":Lorg/json/JSONException;
    const-string v10, "getServerTime error: JSONException"

    invoke-static {v10}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 221
    invoke-static {v3}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 235
    .end local v3    # "e":Lorg/json/JSONException;
    .restart local v4    # "formatter":Ljava/text/DateFormat;
    :catch_1
    move-exception v10

    move-object v3, v10

    .line 236
    .local v3, "e":Ljava/text/ParseException;
    const-string v10, "getServerTime is not a valid time"

    invoke-static {v10}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 237
    const/4 v9, 0x0

    goto :goto_1
.end method

.method public getStringAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "attribute"    # Ljava/lang/String;

    .prologue
    .line 431
    const/4 v1, 0x0

    .line 432
    .local v1, "attributeValue":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/appoxee/connection/AppoxeeClient;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 434
    .local v2, "value":Ljava/lang/Object;
    if-eqz v2, :cond_0

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 435
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 438
    :cond_0
    return-object v1
.end method

.method public getStringResult(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 651
    const/4 v1, 0x0

    .line 652
    .local v1, "result":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/appoxee/connection/AppoxeeClient;->getResult(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v2

    .line 654
    .local v2, "resultObject":Ljava/lang/Object;
    if-eqz v2, :cond_0

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 655
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 658
    :cond_0
    return-object v1
.end method

.method public registerDevice(Ljava/lang/String;)Z
    .locals 12
    .param p1, "registrationId"    # Ljava/lang/String;

    .prologue
    const-string v9, "x"

    const-string v9, "RegisterDevice"

    const-string v9, "Android"

    .line 44
    const/4 v6, 0x0

    .line 45
    .local v6, "result":Z
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 46
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "window"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    .line 48
    .local v8, "wm":Landroid/view/WindowManager;
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 50
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    .line 51
    .local v7, "timezone":Ljava/util/TimeZone;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 53
    .local v1, "locale":Ljava/util/Locale;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 56
    .local v3, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string v9, "action"

    const-string v10, "RegisterDevice"

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 59
    .local v4, "registerDevice":Lorg/json/JSONObject;
    const-string v9, "key"

    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getDeviceID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    const-string v9, "pt"

    invoke-virtual {v4, v9, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string v9, "apv"

    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getAppVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    const-string v9, "apcv"

    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getAppClientVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    const-string v9, "ht"

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string v9, "onm"

    sget-object v10, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string v9, "onu"

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 66
    const-string v9, "cl"

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    const-string v9, "tzn"

    invoke-virtual {v7}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    const-string v9, "tzs"

    invoke-virtual {v7}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v10

    div-int/lit16 v10, v10, 0x3e8

    invoke-virtual {v7}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v11

    div-int/lit16 v11, v11, 0x3e8

    add-int/2addr v10, v11

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 70
    const-string v9, "platform"

    const-string v10, "Android"

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    const-string v9, "resolution"

    new-instance v10, Ljava/lang/StringBuilder;

    iget v11, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    const-string v9, "density"

    iget v10, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 74
    const-string v9, "doPush"

    invoke-static {}, Lcom/appoxee/AppoxeeManager;->isPushEnabled()Z

    move-result v10

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 75
    const-string v9, "doSound"

    invoke-static {}, Lcom/appoxee/AppoxeeManager;->isSoundEnabled()Z

    move-result v10

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 76
    const-string v9, "doVib"

    invoke-static {}, Lcom/appoxee/AppoxeeManager;->isVibrateEnabled()Z

    move-result v10

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 78
    const-string v9, "RegisterDevice"

    invoke-virtual {v3, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    invoke-virtual {p0, v3}, Lcom/appoxee/connection/AppoxeeClient;->call(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    .line 81
    .local v5, "response":Lorg/json/JSONObject;
    invoke-virtual {p0, v5}, Lcom/appoxee/connection/AppoxeeClient;->checkResponse(Lorg/json/JSONObject;)Z

    move-result v6

    .line 83
    if-eqz v6, :cond_0

    .line 85
    const-string v9, "registration_values_key"

    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getDeviceID()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/appoxee/AppoxeeManager;->setConfiguration(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 86
    const-string v9, "registration_values_pt"

    invoke-static {v9, p1}, Lcom/appoxee/AppoxeeManager;->setConfiguration(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 87
    const-string v9, "registration_values_apv"

    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getAppVersion()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/appoxee/AppoxeeManager;->setConfiguration(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 88
    const-string v9, "registration_values_apcv"

    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getAppClientVersion()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/appoxee/AppoxeeManager;->setConfiguration(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 89
    const-string v9, "registration_values_ht"

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/appoxee/AppoxeeManager;->setConfiguration(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 90
    const-string v9, "registration_values_onm"

    sget-object v10, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/appoxee/AppoxeeManager;->setConfiguration(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 91
    const-string v9, "registration_values_onu"

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/appoxee/AppoxeeManager;->setConfiguration(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 92
    const-string v9, "registration_values_cl"

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/appoxee/AppoxeeManager;->setConfiguration(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 93
    const-string v9, "registration_values_tzn"

    invoke-virtual {v7}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/appoxee/AppoxeeManager;->setConfiguration(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 94
    const-string v9, "registration_values_tzs"

    .line 95
    invoke-virtual {v7}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v10

    div-int/lit16 v10, v10, 0x3e8

    invoke-virtual {v7}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v11

    div-int/lit16 v11, v11, 0x3e8

    add-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 94
    invoke-static {v9, v10}, Lcom/appoxee/AppoxeeManager;->setConfiguration(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 96
    const-string v9, "registration_values_platform"

    const-string v10, "Android"

    invoke-static {v9, v10}, Lcom/appoxee/AppoxeeManager;->setConfiguration(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 97
    const-string v9, "registration_values_resolution"

    new-instance v10, Ljava/lang/StringBuilder;

    iget v11, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 98
    iget v11, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 97
    invoke-static {v9, v10}, Lcom/appoxee/AppoxeeManager;->setConfiguration(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 99
    const-string v9, "registration_values_density"

    iget v10, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/appoxee/AppoxeeManager;->setConfiguration(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 101
    const-string v9, "registration_values_doPush"

    invoke-static {}, Lcom/appoxee/AppoxeeManager;->isPushEnabled()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/appoxee/AppoxeeManager;->setConfiguration(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 102
    const-string v9, "registration_values_doSound"

    invoke-static {}, Lcom/appoxee/AppoxeeManager;->isPushEnabled()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/appoxee/AppoxeeManager;->setConfiguration(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 103
    const-string v9, "registration_values_doVib"

    invoke-static {}, Lcom/appoxee/AppoxeeManager;->isVibrateEnabled()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/appoxee/AppoxeeManager;->setConfiguration(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 106
    const-string v9, "registration_values_timestamp"

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/appoxee/AppoxeeManager;->setConfiguration(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 115
    .end local v4    # "registerDevice":Lorg/json/JSONObject;
    .end local v5    # "response":Lorg/json/JSONObject;
    :goto_0
    return v6

    .line 108
    .restart local v4    # "registerDevice":Lorg/json/JSONObject;
    .restart local v5    # "response":Lorg/json/JSONObject;
    :cond_0
    const-string v9, "registerDevice get no responce."

    invoke-static {v9}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    .end local v4    # "registerDevice":Lorg/json/JSONObject;
    .end local v5    # "response":Lorg/json/JSONObject;
    :catch_0
    move-exception v9

    move-object v0, v9

    .line 111
    .local v0, "e":Lorg/json/JSONException;
    const-string v9, "registerDevice JSONException - problem with parameters"

    invoke-static {v9}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 112
    invoke-static {v0}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public removeKeyValue(Ljava/util/ArrayList;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 368
    .local p1, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 370
    .local v5, "result":Z
    if-nez p1, :cond_0

    .line 371
    const-string v6, "Key-Value API: problem with creating request - key-value cannot be null"

    invoke-static {v6}, Lcom/appoxee/utils/Utils;->Log(Ljava/lang/String;)V

    .line 393
    :goto_0
    return v5

    .line 374
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 375
    .local v3, "params":Lorg/json/JSONObject;
    const-string v6, "action"

    const-string v7, "key-value"

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 376
    const-string v6, "udid"

    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getDeviceID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 378
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 380
    .local v1, "jsonKeys":Lorg/json/JSONArray;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 383
    const-string v6, "remove"

    invoke-virtual {v3, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 385
    invoke-virtual {p0, v3}, Lcom/appoxee/connection/AppoxeeClient;->call(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    .line 386
    .local v4, "response":Lorg/json/JSONObject;
    invoke-virtual {p0, v4}, Lcom/appoxee/connection/AppoxeeClient;->checkResponse(Lorg/json/JSONObject;)Z

    move-result v5

    goto :goto_0

    .line 380
    .end local v4    # "response":Lorg/json/JSONObject;
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 381
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 387
    .end local v1    # "jsonKeys":Lorg/json/JSONArray;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "params":Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 388
    .local v0, "e":Lorg/json/JSONException;
    const-string v6, "Key-Value API: problem with creating request"

    invoke-static {v6}, Lcom/appoxee/utils/Utils;->Log(Ljava/lang/String;)V

    .line 389
    invoke-static {v0}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public reportApplicationActive(J)Z
    .locals 7
    .param p1, "timeInApp"    # J

    .prologue
    const-string v5, "ReportApplicationActive"

    .line 507
    const/4 v4, 0x0

    .line 510
    .local v4, "result":Z
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 511
    .local v1, "params":Lorg/json/JSONObject;
    const-string v5, "action"

    const-string v6, "ReportApplicationActive"

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 512
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 514
    .local v2, "report":Lorg/json/JSONObject;
    const-string v5, "key"

    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getDeviceID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 515
    const-string v5, "timeInApp"

    invoke-virtual {v2, v5, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 516
    const-string v5, "ReportApplicationActive"

    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 518
    invoke-virtual {p0, v1}, Lcom/appoxee/connection/AppoxeeClient;->call(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    .line 519
    .local v3, "response":Lorg/json/JSONObject;
    const-string v5, "reportApplicationActive: "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-virtual {p0, v3}, Lcom/appoxee/connection/AppoxeeClient;->checkResponse(Lorg/json/JSONObject;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 525
    .end local v1    # "params":Lorg/json/JSONObject;
    .end local v2    # "report":Lorg/json/JSONObject;
    .end local v3    # "response":Lorg/json/JSONObject;
    :goto_0
    return v4

    .line 521
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 522
    .local v0, "e":Lorg/json/JSONException;
    const-string v5, "reportApplicationActive API: problem with creating request"

    invoke-static {v5}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 523
    invoke-static {v0}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public reportDeviceMessageActionOpen(J)Z
    .locals 7
    .param p1, "messageGroupID"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const-string v6, "ReportDeviceMessageActionOpen"

    .line 529
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-nez v4, :cond_0

    .line 530
    const-string v4, "reportDeviceMessageActionOpen: message with Zero ID"

    invoke-static {v4}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 531
    const/4 v4, 0x1

    .line 545
    :goto_0
    return v4

    .line 534
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 535
    .local v0, "params":Lorg/json/JSONObject;
    const-string v4, "action"

    const-string v5, "ReportDeviceMessageActionOpen"

    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 536
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 538
    .local v1, "report":Lorg/json/JSONObject;
    const-string v4, "key"

    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getDeviceID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 539
    const-string v4, "messageGroupID"

    invoke-virtual {v1, v4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 540
    const-string v4, "ReportDeviceMessageActionOpen"

    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 542
    invoke-virtual {p0, v0}, Lcom/appoxee/connection/AppoxeeClient;->call(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 543
    .local v2, "response":Lorg/json/JSONObject;
    invoke-virtual {p0, v2}, Lcom/appoxee/connection/AppoxeeClient;->checkResponse(Lorg/json/JSONObject;)Z

    move-result v3

    .local v3, "result":Z
    move v4, v3

    .line 545
    goto :goto_0
.end method

.method public reportDevicePushOpen(J)Z
    .locals 7
    .param p1, "messageGroupID"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const-string v6, "ReportDevicePushOpen"

    .line 549
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-nez v4, :cond_0

    .line 550
    const-string v4, "reportDevicePushOpen:  message with Zero ID"

    invoke-static {v4}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 551
    const/4 v4, 0x1

    .line 565
    :goto_0
    return v4

    .line 554
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 555
    .local v0, "params":Lorg/json/JSONObject;
    const-string v4, "action"

    const-string v5, "ReportDevicePushOpen"

    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 556
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 558
    .local v1, "report":Lorg/json/JSONObject;
    const-string v4, "key"

    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getDeviceID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 559
    const-string v4, "messageGroupID"

    invoke-virtual {v1, v4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 560
    const-string v4, "ReportDevicePushOpen"

    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 562
    invoke-virtual {p0, v0}, Lcom/appoxee/connection/AppoxeeClient;->call(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 563
    .local v2, "response":Lorg/json/JSONObject;
    invoke-virtual {p0, v2}, Lcom/appoxee/connection/AppoxeeClient;->checkResponse(Lorg/json/JSONObject;)Z

    move-result v3

    .local v3, "result":Z
    move v4, v3

    .line 565
    goto :goto_0
.end method

.method public tag(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p1, "tagAction"    # Ljava/lang/String;

    .prologue
    .line 282
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/appoxee/connection/AppoxeeClient;->tag(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public tag(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/json/JSONObject;
    .locals 9
    .param p1, "tagAction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    const-string v6, "tags"

    .line 286
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 289
    .local v1, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string v6, "action"

    const-string v7, "tag"

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 290
    const-string v6, "udid"

    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getDeviceID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 292
    if-nez p2, :cond_0

    .line 293
    const-string v6, "tags"

    invoke-virtual {v1, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :goto_0
    invoke-virtual {p0, v1}, Lcom/appoxee/connection/AppoxeeClient;->call(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 309
    .local v2, "response":Lorg/json/JSONObject;
    invoke-virtual {p0, v2}, Lcom/appoxee/connection/AppoxeeClient;->checkResponse(Lorg/json/JSONObject;)Z

    move-result v3

    .line 311
    .local v3, "result":Z
    if-eqz v3, :cond_1

    move-object v6, v2

    .line 315
    .end local v2    # "response":Lorg/json/JSONObject;
    .end local v3    # "result":Z
    :goto_1
    return-object v6

    .line 295
    :cond_0
    :try_start_1
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, p2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 296
    .local v5, "valuesArray":Lorg/json/JSONArray;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 297
    .local v4, "tags":Lorg/json/JSONObject;
    invoke-virtual {v4, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 299
    const-string v6, "tags"

    invoke-virtual {v1, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 301
    .end local v4    # "tags":Lorg/json/JSONObject;
    .end local v5    # "valuesArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 302
    .local v0, "e":Lorg/json/JSONException;
    const-string v6, "Tags API: problem with creating request"

    invoke-static {v6}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 303
    invoke-static {v0}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    move-object v6, v8

    .line 305
    goto :goto_1

    .line 314
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v2    # "response":Lorg/json/JSONObject;
    .restart local v3    # "result":Z
    :cond_1
    const-string v6, "Tags API: error: result is null"

    invoke-static {v6}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    move-object v6, v8

    .line 315
    goto :goto_1
.end method

.method public toArray(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 321
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 322
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    move-object v2, p1

    .line 324
    .local v2, "jsonArray":Lorg/json/JSONArray;
    if-eqz v2, :cond_0

    .line 325
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 327
    .local v3, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_1

    .line 337
    .end local v1    # "i":I
    .end local v3    # "len":I
    :cond_0
    return-object v4

    .line 329
    .restart local v1    # "i":I
    .restart local v3    # "len":I
    :cond_1
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 330
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 332
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public unregisterDevice(J)V
    .locals 0
    .param p1, "nid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/appoxee/connection/ServiceNotAvailableException;
        }
    .end annotation

    .prologue
    .line 279
    return-void
.end method
