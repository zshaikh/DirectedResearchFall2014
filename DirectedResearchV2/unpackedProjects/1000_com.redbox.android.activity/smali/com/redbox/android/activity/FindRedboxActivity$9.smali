.class Lcom/redbox/android/activity/FindRedboxActivity$9;
.super Lcom/redbox/android/http/KioskInventoryCallHandler;
.source "FindRedboxActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/FindRedboxActivity;->getFavInventory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private aborted:Z

.field final synthetic this$0:Lcom/redbox/android/activity/FindRedboxActivity;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/FindRedboxActivity;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/FindRedboxActivity$9;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    .line 372
    invoke-direct {p0}, Lcom/redbox/android/http/KioskInventoryCallHandler;-><init>()V

    .line 460
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$9;->aborted:Z

    return-void
.end method

.method static synthetic access$0(Lcom/redbox/android/activity/FindRedboxActivity$9;)Lcom/redbox/android/activity/FindRedboxActivity;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$9;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    return-object v0
.end method


# virtual methods
.method public connectionError(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 464
    iget-boolean v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$9;->aborted:Z

    if-eqz v0, :cond_0

    .line 468
    :goto_0
    return-void

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$9;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    invoke-virtual {v0, p1}, Lcom/redbox/android/activity/FindRedboxActivity;->showConnectionError(I)V

    goto :goto_0
.end method

.method public dataReceived([B)V
    .locals 12
    .param p1, "data"    # [B

    .prologue
    const/4 v11, 0x1

    .line 383
    iget-boolean v8, p0, Lcom/redbox/android/activity/FindRedboxActivity$9;->aborted:Z

    if-eqz v8, :cond_0

    .line 458
    :goto_0
    return-void

    .line 388
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v1, p1, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 390
    .local v1, "detail":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Sever response on inventory request "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 390
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 389
    invoke-static {p0, v8}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 395
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 396
    .local v4, "json":Lorg/json/JSONObject;
    const-string v8, "d"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 397
    .local v0, "d":Lorg/json/JSONArray;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Kiosks : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    const/4 v7, 0x0

    .local v7, "z":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lt v7, v8, :cond_1

    .line 434
    iget-object v8, p0, Lcom/redbox/android/activity/FindRedboxActivity$9;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    iget-object v8, v8, Lcom/redbox/android/activity/FindRedboxActivity;->handler:Landroid/os/Handler;

    new-instance v9, Lcom/redbox/android/activity/FindRedboxActivity$9$1;

    invoke-direct {v9, p0}, Lcom/redbox/android/activity/FindRedboxActivity$9$1;-><init>(Lcom/redbox/android/activity/FindRedboxActivity$9;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 455
    .end local v0    # "d":Lorg/json/JSONArray;
    .end local v1    # "detail":Ljava/lang/String;
    .end local v4    # "json":Lorg/json/JSONObject;
    .end local v7    # "z":I
    :goto_2
    iget-object v8, p0, Lcom/redbox/android/activity/FindRedboxActivity$9;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    iget-object v8, v8, Lcom/redbox/android/activity/FindRedboxActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v8, v11}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 457
    iget-object v8, p0, Lcom/redbox/android/activity/FindRedboxActivity$9;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    invoke-virtual {v8}, Lcom/redbox/android/activity/FindRedboxActivity;->getLocation()V

    goto :goto_0

    .line 400
    .restart local v0    # "d":Lorg/json/JSONArray;
    .restart local v1    # "detail":Ljava/lang/String;
    .restart local v4    # "json":Lorg/json/JSONObject;
    .restart local v7    # "z":I
    :cond_1
    :try_start_1
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 403
    .local v5, "kisok":Lorg/json/JSONObject;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Kiosk "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "KioskID"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 404
    const-string v9, " : Inventory : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 405
    const-string v9, "Inv"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 403
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 401
    invoke-static {p0, v8}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    const-string v8, "Inv"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 413
    .local v6, "moviesInv":Lorg/json/JSONArray;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Parsing Inventory : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 414
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 413
    invoke-static {p0, v8}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 419
    iget-object v8, p0, Lcom/redbox/android/activity/FindRedboxActivity$9;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    iget-object v8, v8, Lcom/redbox/android/activity/FindRedboxActivity;->inventory:Ljava/util/HashMap;

    const-string v9, "KioskID"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lt v3, v8, :cond_2

    .line 399
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 421
    :cond_2
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "ID"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iget-object v9, p0, Lcom/redbox/android/activity/FindRedboxActivity$9;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    iget v9, v9, Lcom/redbox/android/activity/FindRedboxActivity;->movieId:I

    if-ne v8, v9, :cond_3

    .line 422
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 423
    const-string v9, "Qty"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_3

    .line 424
    iget-object v8, p0, Lcom/redbox/android/activity/FindRedboxActivity$9;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    iget-object v8, v8, Lcom/redbox/android/activity/FindRedboxActivity;->inventory:Ljava/util/HashMap;

    const-string v9, "KioskID"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 425
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 424
    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Kiosk : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 429
    const-string v9, "KioskID"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 430
    const-string v9, " has movie"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 428
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 426
    invoke-static {p0, v8}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 420
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 447
    .end local v0    # "d":Lorg/json/JSONArray;
    .end local v1    # "detail":Ljava/lang/String;
    .end local v3    # "j":I
    .end local v4    # "json":Lorg/json/JSONObject;
    .end local v5    # "kisok":Lorg/json/JSONObject;
    .end local v6    # "moviesInv":Lorg/json/JSONArray;
    .end local v7    # "z":I
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 449
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 451
    const-string v8, "Encoding Error Parsing Kiosk Inventory"

    .line 450
    invoke-static {p0, v8}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 452
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v8

    move-object v2, v8

    .line 453
    .local v2, "e":Lorg/json/JSONException;
    const-string v8, "Error Parsing Kiosk Inventory"

    invoke-static {p0, v8}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public status(II)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "percent"    # I

    .prologue
    .line 375
    iget-boolean v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$9;->aborted:Z

    if-eqz v0, :cond_0

    .line 379
    :cond_0
    return-void
.end method
