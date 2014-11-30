.class Lcom/redbox/android/activity/CreateAccountActivity$4;
.super Ljava/lang/Object;
.source "CreateAccountActivity.java"

# interfaces
.implements Lcom/redbox/android/http/ServerCommunicationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/CreateAccountActivity;->getCaptcha()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private aborted:Z

.field final synthetic this$0:Lcom/redbox/android/activity/CreateAccountActivity;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/CreateAccountActivity;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/CreateAccountActivity$4;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/redbox/android/activity/CreateAccountActivity$4;->aborted:Z

    return-void
.end method


# virtual methods
.method public connectionAborted()V
    .locals 1

    .prologue
    .line 374
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/redbox/android/activity/CreateAccountActivity$4;->aborted:Z

    .line 375
    return-void
.end method

.method public connectionError(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/redbox/android/activity/CreateAccountActivity$4;->aborted:Z

    if-eqz v0, :cond_0

    .line 310
    :goto_0
    return-void

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/redbox/android/activity/CreateAccountActivity$4;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;

    invoke-virtual {v0, p1}, Lcom/redbox/android/activity/CreateAccountActivity;->showConnectionError(I)V

    goto :goto_0
.end method

.method public dataReceived([B)V
    .locals 7
    .param p1, "data"    # [B

    .prologue
    .line 313
    iget-boolean v4, p0, Lcom/redbox/android/activity/CreateAccountActivity$4;->aborted:Z

    if-eqz v4, :cond_0

    .line 363
    :goto_0
    return-void

    .line 317
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v1, p1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 319
    .local v1, "detail":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 320
    .local v3, "json":Lorg/json/JSONObject;
    const-string v4, "d"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 322
    .local v0, "captcha":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/redbox/android/activity/CreateAccountActivity$4;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;

    const-string v5, "Hc"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/redbox/android/activity/CreateAccountActivity;->Hc:Ljava/lang/String;

    .line 323
    iget-object v4, p0, Lcom/redbox/android/activity/CreateAccountActivity$4;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;

    const-string v5, "Hcd"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/redbox/android/activity/CreateAccountActivity;->Hcd:Ljava/lang/String;

    .line 325
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "captcha Hc : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/redbox/android/activity/CreateAccountActivity$4;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;

    iget-object v5, v5, Lcom/redbox/android/activity/CreateAccountActivity;->Hc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "captcha Hcd : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/redbox/android/activity/CreateAccountActivity$4;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;

    iget-object v5, v5, Lcom/redbox/android/activity/CreateAccountActivity;->Hcd:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "captcha Img : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "Img"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 327
    invoke-static {p0, v4}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    iget-object v4, p0, Lcom/redbox/android/activity/CreateAccountActivity$4;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "https://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 333
    sget-object v6, Lcom/redbox/android/utils/Configuration;->DOMAIN:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 334
    const-string v6, "/Account"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 335
    const-string v6, "Img"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    .line 332
    invoke-virtual {v4, v5, v6}, Lcom/redbox/android/activity/CreateAccountActivity;->setCaptcha(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 356
    .end local v0    # "captcha":Lorg/json/JSONObject;
    .end local v1    # "detail":Ljava/lang/String;
    .end local v3    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 358
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_0

    .line 359
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 361
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public status(II)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "percent"    # I

    .prologue
    .line 366
    iget-boolean v0, p0, Lcom/redbox/android/activity/CreateAccountActivity$4;->aborted:Z

    if-eqz v0, :cond_0

    .line 368
    :cond_0
    return-void
.end method
