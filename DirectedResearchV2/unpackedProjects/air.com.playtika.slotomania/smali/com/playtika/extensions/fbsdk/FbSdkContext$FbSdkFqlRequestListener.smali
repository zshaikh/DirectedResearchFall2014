.class Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkFqlRequestListener;
.super Ljava/lang/Object;
.source "FbSdkContext.java"

# interfaces
.implements Lcom/facebook/Request$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playtika/extensions/fbsdk/FbSdkContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FbSdkFqlRequestListener"
.end annotation


# instance fields
.field private final cbid:Ljava/lang/String;

.field final synthetic this$0:Lcom/playtika/extensions/fbsdk/FbSdkContext;


# direct methods
.method public constructor <init>(Lcom/playtika/extensions/fbsdk/FbSdkContext;Ljava/lang/String;)V
    .locals 0
    .param p2, "cbid"    # Ljava/lang/String;

    .prologue
    .line 491
    iput-object p1, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkFqlRequestListener;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkContext;

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 493
    iput-object p2, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkFqlRequestListener;->cbid:Ljava/lang/String;

    .line 494
    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .locals 12
    .param p1, "response"    # Lcom/facebook/Response;

    .prologue
    const/4 v11, 0x0

    const-string v6, "uid"

    const-string v6, "pic"

    const-string v10, "error"

    .line 498
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 499
    .local v0, "answer":Lorg/json/JSONArray;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 500
    .local v5, "resp":Lorg/json/JSONObject;
    const/4 v2, 0x0

    .line 502
    .local v2, "hasError":Z
    if-eqz p1, :cond_5

    .line 504
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v6

    invoke-interface {v6}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "data"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 505
    const-string v6, "Fql answer: "

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "answer: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lt v3, v6, :cond_1

    .line 517
    new-instance v6, Lorg/json/JSONTokener;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v4

    .line 518
    .local v4, "json":Ljava/lang/Object;
    if-eqz v4, :cond_0

    instance-of v6, v4, Lorg/json/JSONObject;

    if-eqz v6, :cond_0

    .line 519
    check-cast v4, Lorg/json/JSONObject;

    .end local v4    # "json":Ljava/lang/Object;
    const-string v6, "error"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 527
    :cond_0
    if-eqz v2, :cond_4

    .line 528
    const-string v6, "Fql response hasError"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "response "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iget-object v6, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkFqlRequestListener;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkContext;

    iget-object v7, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkFqlRequestListener;->cbid:Ljava/lang/String;

    const-string v8, "response hasError"

    # invokes: Lcom/playtika/extensions/fbsdk/FbSdkContext;->pushErrorJSONToAS(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v8}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->access$1(Lcom/playtika/extensions/fbsdk/FbSdkContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    .end local v3    # "i":I
    :goto_1
    return-void

    .line 507
    .restart local v3    # "i":I
    :cond_1
    :try_start_1
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "pic"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 508
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "picture.data"

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "pic"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 510
    :cond_2
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "uid"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 511
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "uid"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 506
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 513
    :cond_3
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "uid2"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 520
    .end local v3    # "i":I
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 521
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "Fql exception"

    invoke-static {v1, v6}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logSessionException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 522
    iget-object v6, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkFqlRequestListener;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkContext;

    iget-object v7, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkFqlRequestListener;->cbid:Ljava/lang/String;

    const-string v8, "error"

    # invokes: Lcom/playtika/extensions/fbsdk/FbSdkContext;->pushErrorToAS(Ljava/lang/String;ILjava/lang/String;)V
    invoke-static {v6, v7, v11, v10}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->access$0(Lcom/playtika/extensions/fbsdk/FbSdkContext;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 531
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "i":I
    :cond_4
    const-string v6, "Fql response sucsess "

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "answer "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    iget-object v6, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkFqlRequestListener;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkContext;

    iget-object v7, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkFqlRequestListener;->cbid:Ljava/lang/String;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/playtika/extensions/fbsdk/FbSdkContext;->pushSuccessToAS(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v8}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->access$2(Lcom/playtika/extensions/fbsdk/FbSdkContext;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 535
    .end local v3    # "i":I
    :cond_5
    new-instance v1, Ljava/lang/Exception;

    const-string v6, "Fql response == null"

    invoke-direct {v1, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 536
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v6, "Fql response"

    invoke-static {v1, v6}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logSessionException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 537
    iget-object v6, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkFqlRequestListener;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkContext;

    iget-object v7, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkFqlRequestListener;->cbid:Ljava/lang/String;

    const-string v8, "error"

    # invokes: Lcom/playtika/extensions/fbsdk/FbSdkContext;->pushErrorToAS(Ljava/lang/String;ILjava/lang/String;)V
    invoke-static {v6, v7, v11, v10}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->access$0(Lcom/playtika/extensions/fbsdk/FbSdkContext;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1
.end method
