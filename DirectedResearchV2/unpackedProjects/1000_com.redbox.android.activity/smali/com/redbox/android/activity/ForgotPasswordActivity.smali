.class public Lcom/redbox/android/activity/ForgotPasswordActivity;
.super Lcom/redbox/android/activity/RBBaseActivity;
.source "ForgotPasswordActivity.java"

# interfaces
.implements Lcom/redbox/android/http/ServerCommunicationListener;


# instance fields
.field private aborted:Z

.field email:Landroid/widget/TextView;

.field getemail:Ljava/lang/String;

.field reset:Landroid/widget/ImageView;

.field validEmail:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/redbox/android/activity/RBBaseActivity;-><init>()V

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/redbox/android/activity/ForgotPasswordActivity;->aborted:Z

    .line 35
    return-void
.end method


# virtual methods
.method public connectionAborted()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/redbox/android/activity/ForgotPasswordActivity;->aborted:Z

    .line 123
    return-void
.end method

.method public connectionError(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Lcom/redbox/android/activity/ForgotPasswordActivity;->showConnectionError(I)V

    .line 129
    return-void
.end method

.method public dataReceived([B)V
    .locals 6
    .param p1, "data"    # [B

    .prologue
    .line 135
    iget-boolean v4, p0, Lcom/redbox/android/activity/ForgotPasswordActivity;->aborted:Z

    if-eqz v4, :cond_0

    .line 195
    :goto_0
    return-void

    .line 138
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Data received :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v0, p1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 142
    .local v0, "detail":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 143
    .local v1, "json":Lorg/json/JSONObject;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Post data :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    const-string v4, "d"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 145
    .local v2, "loginResponse":Lorg/json/JSONObject;
    const-string v4, "success"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 146
    .local v3, "success":Z
    if-eqz v3, :cond_1

    .line 147
    iget-object v4, p0, Lcom/redbox/android/activity/ForgotPasswordActivity;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/redbox/android/activity/ForgotPasswordActivity$2;

    invoke-direct {v5, p0}, Lcom/redbox/android/activity/ForgotPasswordActivity$2;-><init>(Lcom/redbox/android/activity/ForgotPasswordActivity;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 191
    .end local v0    # "detail":Ljava/lang/String;
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "loginResponse":Lorg/json/JSONObject;
    .end local v3    # "success":Z
    :catch_0
    move-exception v4

    goto :goto_0

    .line 170
    .restart local v0    # "detail":Ljava/lang/String;
    .restart local v1    # "json":Lorg/json/JSONObject;
    .restart local v2    # "loginResponse":Lorg/json/JSONObject;
    .restart local v3    # "success":Z
    :cond_1
    iget-object v4, p0, Lcom/redbox/android/activity/ForgotPasswordActivity;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/redbox/android/activity/ForgotPasswordActivity$3;

    invoke-direct {v5, p0}, Lcom/redbox/android/activity/ForgotPasswordActivity$3;-><init>(Lcom/redbox/android/activity/ForgotPasswordActivity;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 45
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/redbox/android/activity/ForgotPasswordActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

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
    .line 62
    invoke-super {p0, p1}, Lcom/redbox/android/activity/RBBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/redbox/android/activity/ForgotPasswordActivity;->setContentView(I)V

    .line 66
    const v0, 0x7f070010

    invoke-virtual {p0, v0}, Lcom/redbox/android/activity/ForgotPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/redbox/android/activity/ForgotPasswordActivity;->reset:Landroid/widget/ImageView;

    .line 67
    const v0, 0x7f070027

    invoke-virtual {p0, v0}, Lcom/redbox/android/activity/ForgotPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/redbox/android/activity/ForgotPasswordActivity;->email:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Lcom/redbox/android/activity/ForgotPasswordActivity;->email:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 71
    iget-object v0, p0, Lcom/redbox/android/activity/ForgotPasswordActivity;->reset:Landroid/widget/ImageView;

    new-instance v1, Lcom/redbox/android/activity/ForgotPasswordActivity$1;

    invoke-direct {v1, p0}, Lcom/redbox/android/activity/ForgotPasswordActivity$1;-><init>(Lcom/redbox/android/activity/ForgotPasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 204
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/redbox/android/activity/ForgotPasswordActivity;->finish()V

    .line 208
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/redbox/android/activity/RBBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 53
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/redbox/android/activity/ForgotPasswordActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 54
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 55
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 57
    :cond_0
    invoke-super {p0}, Lcom/redbox/android/activity/RBBaseActivity;->onResume()V

    .line 58
    return-void
.end method

.method public status(II)V
    .locals 0
    .param p1, "event"    # I
    .param p2, "percent"    # I

    .prologue
    .line 201
    return-void
.end method
