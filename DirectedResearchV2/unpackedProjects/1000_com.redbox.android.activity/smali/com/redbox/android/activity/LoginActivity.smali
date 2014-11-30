.class public Lcom/redbox/android/activity/LoginActivity;
.super Lcom/redbox/android/activity/RBBaseActivity;
.source "LoginActivity.java"

# interfaces
.implements Lcom/redbox/android/http/ServerCommunicationListener;


# static fields
.field public static final NEXT_ACTIVITY:Ljava/lang/String; = "nextactivity.class"

.field public static final NEXT_ACTIVITY_PARAMS:Ljava/lang/String; = "nextactivity.params"


# instance fields
.field private aborted:Z

.field btnCreatAccount:Landroid/widget/ImageButton;

.field btnLogin:Landroid/view/View;

.field forgotpassword:Landroid/view/View;

.field requestCode:I

.field txtEmailAddress:Landroid/widget/TextView;

.field txtPassword:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/redbox/android/activity/RBBaseActivity;-><init>()V

    .line 266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/redbox/android/activity/LoginActivity;->aborted:Z

    .line 31
    return-void
.end method


# virtual methods
.method public connectionAborted()V
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/redbox/android/activity/LoginActivity;->aborted:Z

    .line 271
    return-void
.end method

.method public connectionError(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/redbox/android/activity/LoginActivity;->aborted:Z

    if-eqz v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-virtual {p0, p1}, Lcom/redbox/android/activity/LoginActivity;->showConnectionError(I)V

    goto :goto_0
.end method

.method public dataReceived([B)V
    .locals 9
    .param p1, "data"    # [B

    .prologue
    .line 177
    iget-boolean v7, p0, Lcom/redbox/android/activity/LoginActivity;->aborted:Z

    if-eqz v7, :cond_0

    .line 259
    :goto_0
    return-void

    .line 180
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Data received :"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v0, p1, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 184
    .local v0, "detail":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 185
    .local v2, "json":Lorg/json/JSONObject;
    const-string v7, "d"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 186
    .local v3, "loginResponse":Lorg/json/JSONObject;
    const-string v7, "success"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 187
    .local v6, "success":Z
    const/4 v4, 0x0

    .line 188
    .local v4, "mustChange":Z
    const-string v7, "mustChange"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 189
    const-string v7, "mustChange"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 191
    :cond_1
    move v5, v4

    .line 192
    .local v5, "mustChangeFinal":Z
    if-eqz v6, :cond_2

    .line 193
    const-string v7, "Login scuessful"

    invoke-static {p0, v7}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    iget-object v7, p0, Lcom/redbox/android/activity/LoginActivity;->handler:Landroid/os/Handler;

    new-instance v8, Lcom/redbox/android/activity/LoginActivity$4;

    invoke-direct {v8, p0, v5}, Lcom/redbox/android/activity/LoginActivity$4;-><init>(Lcom/redbox/android/activity/LoginActivity;Z)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 250
    .end local v0    # "detail":Ljava/lang/String;
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "loginResponse":Lorg/json/JSONObject;
    .end local v4    # "mustChange":Z
    .end local v5    # "mustChangeFinal":Z
    .end local v6    # "success":Z
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 252
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 253
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Exception : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 226
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "detail":Ljava/lang/String;
    .restart local v2    # "json":Lorg/json/JSONObject;
    .restart local v3    # "loginResponse":Lorg/json/JSONObject;
    .restart local v4    # "mustChange":Z
    .restart local v5    # "mustChangeFinal":Z
    .restart local v6    # "success":Z
    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/redbox/android/activity/LoginActivity;->handler:Landroid/os/Handler;

    new-instance v8, Lcom/redbox/android/activity/LoginActivity$5;

    invoke-direct {v8, p0}, Lcom/redbox/android/activity/LoginActivity$5;-><init>(Lcom/redbox/android/activity/LoginActivity;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 254
    .end local v0    # "detail":Ljava/lang/String;
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "loginResponse":Lorg/json/JSONObject;
    .end local v4    # "mustChange":Z
    .end local v5    # "mustChangeFinal":Z
    .end local v6    # "success":Z
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 256
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 257
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Exception : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 143
    packed-switch p2, :pswitch_data_0

    .line 164
    :goto_0
    return-void

    .line 145
    :pswitch_0
    invoke-virtual {p0}, Lcom/redbox/android/activity/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "nextactivity.class"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 146
    .local v0, "cls":Ljava/lang/Class;
    if-eqz v0, :cond_1

    .line 147
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    .local v1, "i":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/redbox/android/activity/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 149
    const-string v8, "nextactivity.params"

    .line 148
    invoke-virtual {v7, v8}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 150
    .local v4, "params":Ljava/util/HashMap;
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 151
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iter":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 156
    invoke-virtual {p0, v1}, Lcom/redbox/android/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 157
    invoke-virtual {p0}, Lcom/redbox/android/activity/LoginActivity;->finish()V

    goto :goto_0

    .line 152
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 153
    .local v5, "string":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 154
    .local v6, "type":Ljava/lang/Object;
    check-cast v6, Ljava/io/Serializable;

    .end local v6    # "type":Ljava/lang/Object;
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_1

    .line 159
    .end local v1    # "i":Landroid/content/Intent;
    .end local v2    # "iter":Ljava/util/Iterator;
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "params":Ljava/util/HashMap;
    .end local v5    # "string":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/redbox/android/activity/LoginActivity;->finish()V

    goto :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 45
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/redbox/android/activity/LoginActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 46
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 47
    invoke-super {p0, p1}, Lcom/redbox/android/activity/RBBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 48
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/redbox/android/activity/RBBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/redbox/android/activity/LoginActivity;->setContentView(I)V

    .line 54
    const/16 v0, 0xb

    iput v0, p0, Lcom/redbox/android/activity/LoginActivity;->requestCode:I

    .line 55
    const v0, 0x7f070012

    invoke-virtual {p0, v0}, Lcom/redbox/android/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/redbox/android/activity/LoginActivity;->txtEmailAddress:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f070013

    invoke-virtual {p0, v0}, Lcom/redbox/android/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/redbox/android/activity/LoginActivity;->txtPassword:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f07003f

    invoke-virtual {p0, v0}, Lcom/redbox/android/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/redbox/android/activity/LoginActivity;->btnCreatAccount:Landroid/widget/ImageButton;

    .line 59
    iget-object v0, p0, Lcom/redbox/android/activity/LoginActivity;->btnCreatAccount:Landroid/widget/ImageButton;

    new-instance v1, Lcom/redbox/android/activity/LoginActivity$1;

    invoke-direct {v1, p0}, Lcom/redbox/android/activity/LoginActivity$1;-><init>(Lcom/redbox/android/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v0, 0x7f070040

    invoke-virtual {p0, v0}, Lcom/redbox/android/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/redbox/android/activity/LoginActivity;->btnLogin:Landroid/view/View;

    .line 71
    iget-object v0, p0, Lcom/redbox/android/activity/LoginActivity;->btnLogin:Landroid/view/View;

    new-instance v1, Lcom/redbox/android/activity/LoginActivity$2;

    invoke-direct {v1, p0}, Lcom/redbox/android/activity/LoginActivity$2;-><init>(Lcom/redbox/android/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const v0, 0x7f070041

    invoke-virtual {p0, v0}, Lcom/redbox/android/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/redbox/android/activity/LoginActivity;->forgotpassword:Landroid/view/View;

    .line 120
    iget-object v0, p0, Lcom/redbox/android/activity/LoginActivity;->forgotpassword:Landroid/view/View;

    new-instance v1, Lcom/redbox/android/activity/LoginActivity$3;

    invoke-direct {v1, p0}, Lcom/redbox/android/activity/LoginActivity$3;-><init>(Lcom/redbox/android/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 136
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/redbox/android/activity/LoginActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 137
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 138
    invoke-super {p0}, Lcom/redbox/android/activity/RBBaseActivity;->onResume()V

    .line 139
    return-void
.end method

.method public status(II)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "percent"    # I

    .prologue
    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Percent :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    return-void
.end method
