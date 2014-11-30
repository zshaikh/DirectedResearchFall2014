.class public Lcom/redbox/android/activity/CreateAccountActivity;
.super Lcom/redbox/android/activity/RBBaseActivity;
.source "CreateAccountActivity.java"


# instance fields
.field Hc:Ljava/lang/String;

.field Hcd:Ljava/lang/String;

.field captcha:Landroid/widget/EditText;

.field captchaImg:Landroid/widget/ImageView;

.field createAccount:Landroid/widget/FrameLayout;

.field task:Lcom/redbox/android/model/ImageDownloadTask;

.field taskID:I

.field user_email:Landroid/widget/EditText;

.field user_pass:Landroid/widget/EditText;

.field user_pass_confirm:Landroid/widget/EditText;

.field validEmail:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/redbox/android/activity/RBBaseActivity;-><init>()V

    .line 43
    const/16 v0, 0x162e

    iput v0, p0, Lcom/redbox/android/activity/CreateAccountActivity;->taskID:I

    .line 40
    return-void
.end method


# virtual methods
.method protected getCaptcha()V
    .locals 2

    .prologue
    .line 303
    invoke-static {}, Lcom/redbox/android/http/ServerCommunicationHandler;->getInstance()Lcom/redbox/android/http/ServerCommunicationHandler;

    move-result-object v0

    .line 304
    new-instance v1, Lcom/redbox/android/activity/CreateAccountActivity$4;

    invoke-direct {v1, p0}, Lcom/redbox/android/activity/CreateAccountActivity$4;-><init>(Lcom/redbox/android/activity/CreateAccountActivity;)V

    .line 303
    invoke-virtual {v0, v1}, Lcom/redbox/android/http/ServerCommunicationHandler;->getcaptcha(Lcom/redbox/android/http/ServerCommunicationListener;)V

    .line 378
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 59
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/redbox/android/activity/CreateAccountActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 60
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 61
    invoke-super {p0, p1}, Lcom/redbox/android/activity/RBBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 62
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/redbox/android/activity/RBBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v1, 0x7f030002

    invoke-virtual {p0, v1}, Lcom/redbox/android/activity/CreateAccountActivity;->setContentView(I)V

    .line 68
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/redbox/android/activity/CreateAccountActivity;->showDialog(I)V

    .line 69
    iget-object v1, p0, Lcom/redbox/android/activity/CreateAccountActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f05000c

    invoke-virtual {p0, v2}, Lcom/redbox/android/activity/CreateAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v1, p0, Lcom/redbox/android/activity/CreateAccountActivity;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/redbox/android/activity/CreateAccountActivity$1;

    invoke-direct {v2, p0}, Lcom/redbox/android/activity/CreateAccountActivity$1;-><init>(Lcom/redbox/android/activity/CreateAccountActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 80
    const v1, 0x7f070015

    invoke-virtual {p0, v1}, Lcom/redbox/android/activity/CreateAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/redbox/android/activity/CreateAccountActivity;->captchaImg:Landroid/widget/ImageView;

    .line 81
    sget-object v1, Lcom/redbox/android/utils/RuntimeCache;->KEY:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 82
    const-string v1, "No Key. Get Key"

    invoke-static {p0, v1}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/redbox/android/http/ServerCommunicationHandler;->getInstance()Lcom/redbox/android/http/ServerCommunicationHandler;

    move-result-object v1

    .line 84
    new-instance v2, Lcom/redbox/android/activity/CreateAccountActivity$2;

    invoke-direct {v2, p0}, Lcom/redbox/android/activity/CreateAccountActivity$2;-><init>(Lcom/redbox/android/activity/CreateAccountActivity;)V

    .line 83
    invoke-virtual {v1, v2}, Lcom/redbox/android/http/ServerCommunicationHandler;->mobileInitCall(Lcom/redbox/android/http/ServerCommunicationListener;)V

    .line 96
    :goto_0
    const v1, 0x7f070012

    invoke-virtual {p0, v1}, Lcom/redbox/android/activity/CreateAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/redbox/android/activity/CreateAccountActivity;->user_email:Landroid/widget/EditText;

    .line 97
    const v1, 0x7f070013

    invoke-virtual {p0, v1}, Lcom/redbox/android/activity/CreateAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/redbox/android/activity/CreateAccountActivity;->user_pass:Landroid/widget/EditText;

    .line 98
    const v1, 0x7f070014

    invoke-virtual {p0, v1}, Lcom/redbox/android/activity/CreateAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/redbox/android/activity/CreateAccountActivity;->user_pass_confirm:Landroid/widget/EditText;

    .line 99
    const v1, 0x7f070016

    invoke-virtual {p0, v1}, Lcom/redbox/android/activity/CreateAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/redbox/android/activity/CreateAccountActivity;->captcha:Landroid/widget/EditText;

    .line 101
    const v1, 0x7f070017

    invoke-virtual {p0, v1}, Lcom/redbox/android/activity/CreateAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 103
    .local v0, "createAccount":Landroid/widget/FrameLayout;
    new-instance v1, Lcom/redbox/android/activity/CreateAccountActivity$3;

    invoke-direct {v1, p0}, Lcom/redbox/android/activity/CreateAccountActivity$3;-><init>(Lcom/redbox/android/activity/CreateAccountActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    return-void

    .line 92
    .end local v0    # "createAccount":Landroid/widget/FrameLayout;
    :cond_0
    const-string v1, "Key exists"

    invoke-static {p0, v1}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/redbox/android/activity/CreateAccountActivity;->getCaptcha()V

    goto :goto_0
.end method

.method public setCaptcha(Ljava/lang/String;I)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "attempt"    # I

    .prologue
    .line 387
    const/4 v0, 0x0

    check-cast v0, [B

    .line 389
    .local v0, "data2":[B
    invoke-static {}, Lcom/redbox/android/http/ServerCommunicationHandler;->getInstance()Lcom/redbox/android/http/ServerCommunicationHandler;

    move-result-object v1

    .line 390
    new-instance v2, Lcom/redbox/android/activity/CreateAccountActivity$5;

    invoke-direct {v2, p0}, Lcom/redbox/android/activity/CreateAccountActivity$5;-><init>(Lcom/redbox/android/activity/CreateAccountActivity;)V

    .line 389
    invoke-virtual {v1, v2, p1}, Lcom/redbox/android/http/ServerCommunicationHandler;->getCaptcha(Lcom/redbox/android/http/ServerCommunicationListener;Ljava/lang/String;)V

    .line 449
    return-void
.end method
