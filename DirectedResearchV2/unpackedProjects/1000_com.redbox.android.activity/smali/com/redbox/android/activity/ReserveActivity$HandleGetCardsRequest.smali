.class Lcom/redbox/android/activity/ReserveActivity$HandleGetCardsRequest;
.super Ljava/lang/Object;
.source "ReserveActivity.java"

# interfaces
.implements Lcom/redbox/android/http/ServerCommunicationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbox/android/activity/ReserveActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HandleGetCardsRequest"
.end annotation


# instance fields
.field private aborted:Z

.field final synthetic this$0:Lcom/redbox/android/activity/ReserveActivity;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/ReserveActivity;)V
    .locals 1

    .prologue
    .line 404
    iput-object p1, p0, Lcom/redbox/android/activity/ReserveActivity$HandleGetCardsRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/redbox/android/activity/ReserveActivity$HandleGetCardsRequest;->aborted:Z

    return-void
.end method

.method static synthetic access$0(Lcom/redbox/android/activity/ReserveActivity$HandleGetCardsRequest;)Lcom/redbox/android/activity/ReserveActivity;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/redbox/android/activity/ReserveActivity$HandleGetCardsRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    return-object v0
.end method


# virtual methods
.method public connectionAborted()V
    .locals 1

    .prologue
    .line 410
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/redbox/android/activity/ReserveActivity$HandleGetCardsRequest;->aborted:Z

    .line 411
    return-void
.end method

.method public connectionError(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 415
    iget-boolean v0, p0, Lcom/redbox/android/activity/ReserveActivity$HandleGetCardsRequest;->aborted:Z

    if-eqz v0, :cond_0

    .line 419
    :goto_0
    return-void

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/redbox/android/activity/ReserveActivity$HandleGetCardsRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    const/4 v1, 0x1

    # invokes: Lcom/redbox/android/activity/ReserveActivity;->problemReserving(Z)V
    invoke-static {v0, v1}, Lcom/redbox/android/activity/ReserveActivity;->access$0(Lcom/redbox/android/activity/ReserveActivity;Z)V

    goto :goto_0
.end method

.method public dataReceived([B)V
    .locals 11
    .param p1, "data"    # [B

    .prologue
    const/4 v10, 0x0

    .line 423
    iget-boolean v6, p0, Lcom/redbox/android/activity/ReserveActivity$HandleGetCardsRequest;->aborted:Z

    if-eqz v6, :cond_0

    .line 474
    :goto_0
    return-void

    .line 427
    :cond_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1}, Ljava/lang/String;-><init>([B)V

    .line 428
    .local v5, "output":Ljava/lang/String;
    iget-object v6, p0, Lcom/redbox/android/activity/ReserveActivity$HandleGetCardsRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    invoke-virtual {v6, v5}, Lcom/redbox/android/activity/ReserveActivity;->d(Ljava/lang/String;)V

    .line 429
    iget-object v6, p0, Lcom/redbox/android/activity/ReserveActivity$HandleGetCardsRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    iget-object v6, v6, Lcom/redbox/android/activity/ReserveActivity;->handler:Landroid/os/Handler;

    new-instance v7, Lcom/redbox/android/activity/ReserveActivity$HandleGetCardsRequest$1;

    invoke-direct {v7, p0}, Lcom/redbox/android/activity/ReserveActivity$HandleGetCardsRequest$1;-><init>(Lcom/redbox/android/activity/ReserveActivity$HandleGetCardsRequest;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 438
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 439
    .local v4, "obj":Lorg/json/JSONObject;
    const-string v6, "d"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 440
    .local v1, "cardsJson":Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 442
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lt v3, v6, :cond_2

    .line 465
    .end local v3    # "i":I
    :cond_1
    const-string v6, "post card load"

    invoke-static {p0, v6}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 468
    .end local v1    # "cardsJson":Lorg/json/JSONArray;
    .end local v4    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 469
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 470
    iget-object v6, p0, Lcom/redbox/android/activity/ReserveActivity$HandleGetCardsRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    const-string v7, "Problem converting getCards request to json object"

    invoke-virtual {v6, v7}, Lcom/redbox/android/activity/ReserveActivity;->e(Ljava/lang/String;)V

    .line 471
    iget-object v6, p0, Lcom/redbox/android/activity/ReserveActivity$HandleGetCardsRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    invoke-virtual {v6, v5}, Lcom/redbox/android/activity/ReserveActivity;->e(Ljava/lang/String;)V

    .line 472
    iget-object v6, p0, Lcom/redbox/android/activity/ReserveActivity$HandleGetCardsRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    # invokes: Lcom/redbox/android/activity/ReserveActivity;->problemReserving(Z)V
    invoke-static {v6, v10}, Lcom/redbox/android/activity/ReserveActivity;->access$0(Lcom/redbox/android/activity/ReserveActivity;Z)V

    goto :goto_0

    .line 443
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v1    # "cardsJson":Lorg/json/JSONArray;
    .restart local v3    # "i":I
    .restart local v4    # "obj":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    new-instance v0, Lcom/redbox/android/model/Card;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/redbox/android/model/Card;-><init>(Lorg/json/JSONObject;)V

    .line 445
    .local v0, "c":Lcom/redbox/android/model/Card;
    invoke-virtual {v0}, Lcom/redbox/android/model/Card;->getId()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_5

    .line 446
    iget-object v6, p0, Lcom/redbox/android/activity/ReserveActivity$HandleGetCardsRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    iget-object v6, v6, Lcom/redbox/android/activity/ReserveActivity;->cards:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    iget-object v6, p0, Lcom/redbox/android/activity/ReserveActivity$HandleGetCardsRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    iget v6, v6, Lcom/redbox/android/activity/ReserveActivity;->indexOfCardShown:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    .line 448
    iget-object v6, p0, Lcom/redbox/android/activity/ReserveActivity$HandleGetCardsRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    const/4 v7, 0x0

    iput v7, v6, Lcom/redbox/android/activity/ReserveActivity;->indexOfCardShown:I

    .line 450
    :cond_3
    invoke-virtual {v0}, Lcom/redbox/android/model/Card;->isPreferred()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 451
    iget-object v6, p0, Lcom/redbox/android/activity/ReserveActivity$HandleGetCardsRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    iput v3, v6, Lcom/redbox/android/activity/ReserveActivity;->indexOfCardShown:I

    .line 453
    :cond_4
    iget-object v6, p0, Lcom/redbox/android/activity/ReserveActivity$HandleGetCardsRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Card #"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " :: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/redbox/android/model/Card;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/redbox/android/activity/ReserveActivity;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 442
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public status(II)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "percent"    # I

    .prologue
    .line 478
    iget-boolean v0, p0, Lcom/redbox/android/activity/ReserveActivity$HandleGetCardsRequest;->aborted:Z

    if-eqz v0, :cond_0

    .line 481
    :cond_0
    return-void
.end method
