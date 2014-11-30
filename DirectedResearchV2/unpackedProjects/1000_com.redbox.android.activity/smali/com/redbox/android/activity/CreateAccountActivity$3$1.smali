.class Lcom/redbox/android/activity/CreateAccountActivity$3$1;
.super Ljava/lang/Object;
.source "CreateAccountActivity.java"

# interfaces
.implements Lcom/redbox/android/http/ServerCommunicationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/CreateAccountActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private aborted:Z

.field final synthetic this$1:Lcom/redbox/android/activity/CreateAccountActivity$3;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/CreateAccountActivity$3;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/CreateAccountActivity$3$1;->this$1:Lcom/redbox/android/activity/CreateAccountActivity$3;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/redbox/android/activity/CreateAccountActivity$3$1;->aborted:Z

    return-void
.end method

.method static synthetic access$0(Lcom/redbox/android/activity/CreateAccountActivity$3$1;)Lcom/redbox/android/activity/CreateAccountActivity$3;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/redbox/android/activity/CreateAccountActivity$3$1;->this$1:Lcom/redbox/android/activity/CreateAccountActivity$3;

    return-object v0
.end method


# virtual methods
.method public connectionAborted()V
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/redbox/android/activity/CreateAccountActivity$3$1;->aborted:Z

    .line 293
    return-void
.end method

.method public connectionError(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/redbox/android/activity/CreateAccountActivity$3$1;->aborted:Z

    if-eqz v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    const-string v0, "connection error in create account call."

    .line 173
    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/redbox/android/activity/CreateAccountActivity$3$1;->this$1:Lcom/redbox/android/activity/CreateAccountActivity$3;

    # getter for: Lcom/redbox/android/activity/CreateAccountActivity$3;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/CreateAccountActivity$3;->access$0(Lcom/redbox/android/activity/CreateAccountActivity$3;)Lcom/redbox/android/activity/CreateAccountActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/redbox/android/activity/CreateAccountActivity;->showConnectionError(I)V

    goto :goto_0
.end method

.method public dataReceived([B)V
    .locals 9
    .param p1, "data"    # [B

    .prologue
    .line 179
    iget-boolean v6, p0, Lcom/redbox/android/activity/CreateAccountActivity$3$1;->aborted:Z

    if-eqz v6, :cond_0

    .line 283
    :goto_0
    return-void

    .line 183
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v1, p1, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 185
    .local v1, "detail":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Sever response on create "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 185
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 184
    invoke-static {p0, v6}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 190
    .local v3, "json":Lorg/json/JSONObject;
    const-string v6, "d"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 194
    .local v4, "result":Lorg/json/JSONObject;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Sucess "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    const-string v7, "success"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 194
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 192
    invoke-static {p0, v6}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    const-string v6, "success"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 200
    .local v5, "success":Z
    if-eqz v5, :cond_1

    .line 201
    iget-object v6, p0, Lcom/redbox/android/activity/CreateAccountActivity$3$1;->this$1:Lcom/redbox/android/activity/CreateAccountActivity$3;

    # getter for: Lcom/redbox/android/activity/CreateAccountActivity$3;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;
    invoke-static {v6}, Lcom/redbox/android/activity/CreateAccountActivity$3;->access$0(Lcom/redbox/android/activity/CreateAccountActivity$3;)Lcom/redbox/android/activity/CreateAccountActivity;

    move-result-object v6

    iget-object v6, v6, Lcom/redbox/android/activity/CreateAccountActivity;->handler:Landroid/os/Handler;

    new-instance v7, Lcom/redbox/android/activity/CreateAccountActivity$3$1$1;

    invoke-direct {v7, p0}, Lcom/redbox/android/activity/CreateAccountActivity$3$1$1;-><init>(Lcom/redbox/android/activity/CreateAccountActivity$3$1;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 276
    .end local v1    # "detail":Ljava/lang/String;
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "result":Lorg/json/JSONObject;
    .end local v5    # "success":Z
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 278
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 219
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "detail":Ljava/lang/String;
    .restart local v3    # "json":Lorg/json/JSONObject;
    .restart local v4    # "result":Lorg/json/JSONObject;
    .restart local v5    # "success":Z
    :cond_1
    :try_start_1
    const-string v6, "Account not Created"

    invoke-static {p0, v6}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    iget-object v6, p0, Lcom/redbox/android/activity/CreateAccountActivity$3$1;->this$1:Lcom/redbox/android/activity/CreateAccountActivity$3;

    # getter for: Lcom/redbox/android/activity/CreateAccountActivity$3;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;
    invoke-static {v6}, Lcom/redbox/android/activity/CreateAccountActivity$3;->access$0(Lcom/redbox/android/activity/CreateAccountActivity$3;)Lcom/redbox/android/activity/CreateAccountActivity;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/redbox/android/activity/CreateAccountActivity;->dismissDialog(I)V

    .line 221
    iget-object v6, p0, Lcom/redbox/android/activity/CreateAccountActivity$3$1;->this$1:Lcom/redbox/android/activity/CreateAccountActivity$3;

    # getter for: Lcom/redbox/android/activity/CreateAccountActivity$3;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;
    invoke-static {v6}, Lcom/redbox/android/activity/CreateAccountActivity$3;->access$0(Lcom/redbox/android/activity/CreateAccountActivity$3;)Lcom/redbox/android/activity/CreateAccountActivity;

    move-result-object v6

    iget-object v6, v6, Lcom/redbox/android/activity/CreateAccountActivity;->handler:Landroid/os/Handler;

    new-instance v7, Lcom/redbox/android/activity/CreateAccountActivity$3$1$2;

    invoke-direct {v7, p0, v4}, Lcom/redbox/android/activity/CreateAccountActivity$3$1$2;-><init>(Lcom/redbox/android/activity/CreateAccountActivity$3$1;Lorg/json/JSONObject;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 238
    const-string v6, "captcha"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 240
    .local v0, "captcha":Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/redbox/android/activity/CreateAccountActivity$3$1;->this$1:Lcom/redbox/android/activity/CreateAccountActivity$3;

    # getter for: Lcom/redbox/android/activity/CreateAccountActivity$3;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;
    invoke-static {v6}, Lcom/redbox/android/activity/CreateAccountActivity$3;->access$0(Lcom/redbox/android/activity/CreateAccountActivity$3;)Lcom/redbox/android/activity/CreateAccountActivity;

    move-result-object v6

    .line 241
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "https://"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 242
    sget-object v8, Lcom/redbox/android/utils/Configuration;->DOMAIN:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 243
    const-string v8, "/Account"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 244
    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 246
    const-string v8, "Img"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 245
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 241
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 247
    const/4 v8, 0x1

    .line 240
    invoke-virtual {v6, v7, v8}, Lcom/redbox/android/activity/CreateAccountActivity;->setCaptcha(Ljava/lang/String;I)V

    .line 268
    iget-object v6, p0, Lcom/redbox/android/activity/CreateAccountActivity$3$1;->this$1:Lcom/redbox/android/activity/CreateAccountActivity$3;

    # getter for: Lcom/redbox/android/activity/CreateAccountActivity$3;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;
    invoke-static {v6}, Lcom/redbox/android/activity/CreateAccountActivity$3;->access$0(Lcom/redbox/android/activity/CreateAccountActivity$3;)Lcom/redbox/android/activity/CreateAccountActivity;

    move-result-object v6

    const-string v7, "Hc"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/redbox/android/activity/CreateAccountActivity;->Hc:Ljava/lang/String;

    .line 269
    iget-object v6, p0, Lcom/redbox/android/activity/CreateAccountActivity$3$1;->this$1:Lcom/redbox/android/activity/CreateAccountActivity$3;

    # getter for: Lcom/redbox/android/activity/CreateAccountActivity$3;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;
    invoke-static {v6}, Lcom/redbox/android/activity/CreateAccountActivity$3;->access$0(Lcom/redbox/android/activity/CreateAccountActivity$3;)Lcom/redbox/android/activity/CreateAccountActivity;

    move-result-object v6

    const-string v7, "Hcd"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/redbox/android/activity/CreateAccountActivity;->Hcd:Ljava/lang/String;

    .line 270
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "captcha Hc : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/redbox/android/activity/CreateAccountActivity$3$1;->this$1:Lcom/redbox/android/activity/CreateAccountActivity$3;

    # getter for: Lcom/redbox/android/activity/CreateAccountActivity$3;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;
    invoke-static {v7}, Lcom/redbox/android/activity/CreateAccountActivity$3;->access$0(Lcom/redbox/android/activity/CreateAccountActivity$3;)Lcom/redbox/android/activity/CreateAccountActivity;

    move-result-object v7

    iget-object v7, v7, Lcom/redbox/android/activity/CreateAccountActivity;->Hc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "captcha Hcd : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/redbox/android/activity/CreateAccountActivity$3$1;->this$1:Lcom/redbox/android/activity/CreateAccountActivity$3;

    # getter for: Lcom/redbox/android/activity/CreateAccountActivity$3;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;
    invoke-static {v7}, Lcom/redbox/android/activity/CreateAccountActivity$3;->access$0(Lcom/redbox/android/activity/CreateAccountActivity$3;)Lcom/redbox/android/activity/CreateAccountActivity;

    move-result-object v7

    iget-object v7, v7, Lcom/redbox/android/activity/CreateAccountActivity;->Hcd:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "captcha Img : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 273
    const-string v7, "Img"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 272
    invoke-static {p0, v6}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 279
    .end local v0    # "captcha":Lorg/json/JSONObject;
    .end local v1    # "detail":Ljava/lang/String;
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "result":Lorg/json/JSONObject;
    .end local v5    # "success":Z
    :catch_1
    move-exception v6

    move-object v2, v6

    .line 281
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public status(II)V
    .locals 0
    .param p1, "event"    # I
    .param p2, "percent"    # I

    .prologue
    .line 286
    return-void
.end method
