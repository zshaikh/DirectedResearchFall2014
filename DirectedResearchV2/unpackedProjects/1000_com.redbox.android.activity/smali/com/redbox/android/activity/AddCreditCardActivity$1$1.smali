.class Lcom/redbox/android/activity/AddCreditCardActivity$1$1;
.super Ljava/lang/Object;
.source "AddCreditCardActivity.java"

# interfaces
.implements Lcom/redbox/android/http/ServerCommunicationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/AddCreditCardActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private aborted:Z

.field final synthetic this$1:Lcom/redbox/android/activity/AddCreditCardActivity$1;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/AddCreditCardActivity$1;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1$1;->this$1:Lcom/redbox/android/activity/AddCreditCardActivity$1;

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1$1;->aborted:Z

    return-void
.end method

.method static synthetic access$0(Lcom/redbox/android/activity/AddCreditCardActivity$1$1;)Lcom/redbox/android/activity/AddCreditCardActivity$1;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1$1;->this$1:Lcom/redbox/android/activity/AddCreditCardActivity$1;

    return-object v0
.end method


# virtual methods
.method public connectionAborted()V
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1$1;->aborted:Z

    .line 348
    return-void
.end method

.method public connectionError(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1$1;->aborted:Z

    if-eqz v0, :cond_0

    .line 342
    :goto_0
    return-void

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1$1;->this$1:Lcom/redbox/android/activity/AddCreditCardActivity$1;

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/AddCreditCardActivity$1;->access$0(Lcom/redbox/android/activity/AddCreditCardActivity$1;)Lcom/redbox/android/activity/AddCreditCardActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/redbox/android/activity/AddCreditCardActivity;->showConnectionError(I)V

    goto :goto_0
.end method

.method public dataReceived([B)V
    .locals 10
    .param p1, "data"    # [B

    .prologue
    .line 247
    :try_start_0
    new-instance v2, Ljava/lang/String;

    .line 248
    const-string v8, "UTF-8"

    .line 247
    invoke-direct {v2, p1, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 249
    .local v2, "detail":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Data received :"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 249
    invoke-static {p0, v8}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 266
    .local v1, "d":Lorg/json/JSONObject;
    const-string v8, "d"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 268
    .local v6, "result":Lorg/json/JSONObject;
    const-string v8, "success"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 270
    .local v7, "sucess":Z
    const-string v8, "message"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 272
    .local v5, "message_card_saved":Ljava/lang/String;
    const-string v8, "message"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 273
    .local v4, "message":Ljava/lang/String;
    new-instance v0, Lcom/redbox/android/model/Card;

    const-string v8, "card"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/redbox/android/model/Card;-><init>(Lorg/json/JSONObject;)V

    .line 274
    .local v0, "changedCard":Lcom/redbox/android/model/Card;
    if-eqz v7, :cond_0

    .line 275
    const-string v8, "Card accepted"

    invoke-static {p0, v8}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    iget-object v8, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1$1;->this$1:Lcom/redbox/android/activity/AddCreditCardActivity$1;

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;
    invoke-static {v8}, Lcom/redbox/android/activity/AddCreditCardActivity$1;->access$0(Lcom/redbox/android/activity/AddCreditCardActivity$1;)Lcom/redbox/android/activity/AddCreditCardActivity;

    move-result-object v8

    iget-object v8, v8, Lcom/redbox/android/activity/AddCreditCardActivity;->handler:Landroid/os/Handler;

    new-instance v9, Lcom/redbox/android/activity/AddCreditCardActivity$1$1$1;

    invoke-direct {v9, p0, v0}, Lcom/redbox/android/activity/AddCreditCardActivity$1$1$1;-><init>(Lcom/redbox/android/activity/AddCreditCardActivity$1$1;Lcom/redbox/android/model/Card;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 334
    .end local v0    # "changedCard":Lcom/redbox/android/model/Card;
    .end local v1    # "d":Lorg/json/JSONObject;
    .end local v2    # "detail":Ljava/lang/String;
    .end local v4    # "message":Ljava/lang/String;
    .end local v5    # "message_card_saved":Ljava/lang/String;
    .end local v6    # "result":Lorg/json/JSONObject;
    .end local v7    # "sucess":Z
    :goto_0
    return-void

    .line 299
    .restart local v0    # "changedCard":Lcom/redbox/android/model/Card;
    .restart local v1    # "d":Lorg/json/JSONObject;
    .restart local v2    # "detail":Ljava/lang/String;
    .restart local v4    # "message":Ljava/lang/String;
    .restart local v5    # "message_card_saved":Ljava/lang/String;
    .restart local v6    # "result":Lorg/json/JSONObject;
    .restart local v7    # "sucess":Z
    :cond_0
    iget-object v8, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1$1;->this$1:Lcom/redbox/android/activity/AddCreditCardActivity$1;

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;
    invoke-static {v8}, Lcom/redbox/android/activity/AddCreditCardActivity$1;->access$0(Lcom/redbox/android/activity/AddCreditCardActivity$1;)Lcom/redbox/android/activity/AddCreditCardActivity;

    move-result-object v8

    iget-object v8, v8, Lcom/redbox/android/activity/AddCreditCardActivity;->handler:Landroid/os/Handler;

    new-instance v9, Lcom/redbox/android/activity/AddCreditCardActivity$1$1$2;

    invoke-direct {v9, p0, v4}, Lcom/redbox/android/activity/AddCreditCardActivity$1$1$2;-><init>(Lcom/redbox/android/activity/AddCreditCardActivity$1$1;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 311
    .end local v0    # "changedCard":Lcom/redbox/android/model/Card;
    .end local v1    # "d":Lorg/json/JSONObject;
    .end local v2    # "detail":Ljava/lang/String;
    .end local v4    # "message":Ljava/lang/String;
    .end local v5    # "message_card_saved":Ljava/lang/String;
    .end local v6    # "result":Lorg/json/JSONObject;
    .end local v7    # "sucess":Z
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 312
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 313
    iget-object v8, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1$1;->this$1:Lcom/redbox/android/activity/AddCreditCardActivity$1;

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;
    invoke-static {v8}, Lcom/redbox/android/activity/AddCreditCardActivity$1;->access$0(Lcom/redbox/android/activity/AddCreditCardActivity$1;)Lcom/redbox/android/activity/AddCreditCardActivity;

    move-result-object v8

    iget-object v8, v8, Lcom/redbox/android/activity/AddCreditCardActivity;->handler:Landroid/os/Handler;

    new-instance v9, Lcom/redbox/android/activity/AddCreditCardActivity$1$1$3;

    invoke-direct {v9, p0}, Lcom/redbox/android/activity/AddCreditCardActivity$1$1$3;-><init>(Lcom/redbox/android/activity/AddCreditCardActivity$1$1;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 321
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v8

    move-object v3, v8

    .line 322
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 323
    iget-object v8, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1$1;->this$1:Lcom/redbox/android/activity/AddCreditCardActivity$1;

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;
    invoke-static {v8}, Lcom/redbox/android/activity/AddCreditCardActivity$1;->access$0(Lcom/redbox/android/activity/AddCreditCardActivity$1;)Lcom/redbox/android/activity/AddCreditCardActivity;

    move-result-object v8

    iget-object v8, v8, Lcom/redbox/android/activity/AddCreditCardActivity;->handler:Landroid/os/Handler;

    new-instance v9, Lcom/redbox/android/activity/AddCreditCardActivity$1$1$4;

    invoke-direct {v9, p0}, Lcom/redbox/android/activity/AddCreditCardActivity$1$1$4;-><init>(Lcom/redbox/android/activity/AddCreditCardActivity$1$1;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public status(II)V
    .locals 0
    .param p1, "event"    # I
    .param p2, "percent"    # I

    .prologue
    .line 242
    return-void
.end method
