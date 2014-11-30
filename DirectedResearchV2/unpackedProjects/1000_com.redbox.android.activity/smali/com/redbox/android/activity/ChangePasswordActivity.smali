.class public Lcom/redbox/android/activity/ChangePasswordActivity;
.super Lcom/redbox/android/activity/RBBaseActivity;
.source "ChangePasswordActivity.java"

# interfaces
.implements Lcom/redbox/android/http/ServerCommunicationListener;


# instance fields
.field private aborted:Z

.field changePasswordButton:Landroid/view/View;

.field inputMgr:Landroid/view/inputmethod/InputMethodManager;

.field password:Landroid/widget/TextView;

.field repassword:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/redbox/android/activity/RBBaseActivity;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/redbox/android/activity/ChangePasswordActivity;->aborted:Z

    .line 36
    return-void
.end method


# virtual methods
.method public connectionAborted()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/redbox/android/activity/ChangePasswordActivity;->aborted:Z

    .line 112
    return-void
.end method

.method public connectionError(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/redbox/android/activity/ChangePasswordActivity;->aborted:Z

    if-eqz v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-virtual {p0, p1}, Lcom/redbox/android/activity/ChangePasswordActivity;->showConnectionError(I)V

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dataReceived([B)V
    .locals 7
    .param p1, "data"    # [B

    .prologue
    .line 128
    iget-boolean v5, p0, Lcom/redbox/android/activity/ChangePasswordActivity;->aborted:Z

    if-eqz v5, :cond_0

    .line 197
    :goto_0
    return-void

    .line 131
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Data received :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v0, p1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 136
    .local v0, "detail":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 137
    .local v2, "json":Lorg/json/JSONObject;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Post data :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    const-string v5, "d"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 139
    .local v3, "loginResponse":Lorg/json/JSONObject;
    const-string v5, "success"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 140
    .local v4, "success":Z
    if-eqz v4, :cond_1

    .line 141
    iget-object v5, p0, Lcom/redbox/android/activity/ChangePasswordActivity;->handler:Landroid/os/Handler;

    new-instance v6, Lcom/redbox/android/activity/ChangePasswordActivity$2;

    invoke-direct {v6, p0}, Lcom/redbox/android/activity/ChangePasswordActivity$2;-><init>(Lcom/redbox/android/activity/ChangePasswordActivity;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 187
    .end local v0    # "detail":Ljava/lang/String;
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "loginResponse":Lorg/json/JSONObject;
    .end local v4    # "success":Z
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 189
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 190
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 166
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "detail":Ljava/lang/String;
    .restart local v2    # "json":Lorg/json/JSONObject;
    .restart local v3    # "loginResponse":Lorg/json/JSONObject;
    .restart local v4    # "success":Z
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/redbox/android/activity/ChangePasswordActivity;->handler:Landroid/os/Handler;

    new-instance v6, Lcom/redbox/android/activity/ChangePasswordActivity$3;

    invoke-direct {v6, p0}, Lcom/redbox/android/activity/ChangePasswordActivity$3;-><init>(Lcom/redbox/android/activity/ChangePasswordActivity;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 191
    .end local v0    # "detail":Ljava/lang/String;
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "loginResponse":Lorg/json/JSONObject;
    .end local v4    # "success":Z
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 193
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 194
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 45
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/redbox/android/activity/ChangePasswordActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/redbox/android/activity/RBBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/redbox/android/activity/ChangePasswordActivity;->setContentView(I)V

    .line 66
    const v0, 0x7f07000e

    invoke-virtual {p0, v0}, Lcom/redbox/android/activity/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/redbox/android/activity/ChangePasswordActivity;->password:Landroid/widget/TextView;

    .line 67
    const v0, 0x7f07000f

    invoke-virtual {p0, v0}, Lcom/redbox/android/activity/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/redbox/android/activity/ChangePasswordActivity;->repassword:Landroid/widget/TextView;

    .line 68
    const v0, 0x7f070010

    invoke-virtual {p0, v0}, Lcom/redbox/android/activity/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/redbox/android/activity/ChangePasswordActivity;->changePasswordButton:Landroid/view/View;

    .line 70
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/redbox/android/activity/ChangePasswordActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/redbox/android/activity/ChangePasswordActivity;->inputMgr:Landroid/view/inputmethod/InputMethodManager;

    .line 73
    iget-object v0, p0, Lcom/redbox/android/activity/ChangePasswordActivity;->password:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 75
    iget-object v0, p0, Lcom/redbox/android/activity/ChangePasswordActivity;->changePasswordButton:Landroid/view/View;

    new-instance v1, Lcom/redbox/android/activity/ChangePasswordActivity$1;

    invoke-direct {v1, p0}, Lcom/redbox/android/activity/ChangePasswordActivity$1;-><init>(Lcom/redbox/android/activity/ChangePasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 206
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/redbox/android/activity/ChangePasswordActivity;->finish()V

    .line 210
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/redbox/android/activity/RBBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 52
    .line 53
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/redbox/android/activity/ChangePasswordActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 52
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 55
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 56
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 58
    :cond_0
    invoke-super {p0}, Lcom/redbox/android/activity/RBBaseActivity;->onResume()V

    .line 59
    return-void
.end method

.method public status(II)V
    .locals 0
    .param p1, "event"    # I
    .param p2, "percent"    # I

    .prologue
    .line 203
    return-void
.end method
