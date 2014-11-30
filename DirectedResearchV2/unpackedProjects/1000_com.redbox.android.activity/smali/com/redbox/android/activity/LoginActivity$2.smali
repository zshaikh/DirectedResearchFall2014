.class Lcom/redbox/android/activity/LoginActivity$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/LoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbox/android/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/LoginActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/LoginActivity$2;->this$0:Lcom/redbox/android/activity/LoginActivity;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v6, 0xb

    .line 75
    iget-object v3, p0, Lcom/redbox/android/activity/LoginActivity$2;->this$0:Lcom/redbox/android/activity/LoginActivity;

    iget-object v3, v3, Lcom/redbox/android/activity/LoginActivity;->txtEmailAddress:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "email":Ljava/lang/String;
    iget-object v3, p0, Lcom/redbox/android/activity/LoginActivity$2;->this$0:Lcom/redbox/android/activity/LoginActivity;

    iget-object v3, v3, Lcom/redbox/android/activity/LoginActivity;->txtPassword:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "password":Ljava/lang/String;
    iget-object v3, p0, Lcom/redbox/android/activity/LoginActivity$2;->this$0:Lcom/redbox/android/activity/LoginActivity;

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Lcom/redbox/android/activity/LoginActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 78
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v3, p0, Lcom/redbox/android/activity/LoginActivity$2;->this$0:Lcom/redbox/android/activity/LoginActivity;

    iget-object v3, v3, Lcom/redbox/android/activity/LoginActivity;->txtEmailAddress:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 79
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 80
    iget-object v3, p0, Lcom/redbox/android/activity/LoginActivity$2;->this$0:Lcom/redbox/android/activity/LoginActivity;

    invoke-virtual {v3, v0}, Lcom/redbox/android/activity/LoginActivity;->isEmailValid(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    const-string v3, "Valid Email"

    invoke-static {p0, v3}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 96
    iget-object v3, p0, Lcom/redbox/android/activity/LoginActivity$2;->this$0:Lcom/redbox/android/activity/LoginActivity;

    invoke-virtual {v3, v2}, Lcom/redbox/android/activity/LoginActivity;->isPassVaild(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 97
    const-string v3, "Valid password"

    invoke-static {p0, v3}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/redbox/android/http/ServerCommunicationHandler;->getInstance()Lcom/redbox/android/http/ServerCommunicationHandler;

    move-result-object v3

    .line 112
    iget-object v4, p0, Lcom/redbox/android/activity/LoginActivity$2;->this$0:Lcom/redbox/android/activity/LoginActivity;

    .line 111
    invoke-virtual {v3, v4, v0, v2}, Lcom/redbox/android/http/ServerCommunicationHandler;->makeLoginRequest(Lcom/redbox/android/http/ServerCommunicationListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v3, p0, Lcom/redbox/android/activity/LoginActivity$2;->this$0:Lcom/redbox/android/activity/LoginActivity;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/redbox/android/activity/LoginActivity;->showDialog(I)V

    .line 116
    iget-object v3, p0, Lcom/redbox/android/activity/LoginActivity$2;->this$0:Lcom/redbox/android/activity/LoginActivity;

    iget-object v3, v3, Lcom/redbox/android/activity/LoginActivity;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/redbox/android/activity/LoginActivity$2;->this$0:Lcom/redbox/android/activity/LoginActivity;

    const v5, 0x7f05003b

    invoke-virtual {v4, v5}, Lcom/redbox/android/activity/LoginActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 117
    :goto_0
    return-void

    .line 83
    :cond_0
    const-string v3, "Invalid Email"

    invoke-static {p0, v3}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object v3, p0, Lcom/redbox/android/activity/LoginActivity$2;->this$0:Lcom/redbox/android/activity/LoginActivity;

    iget-object v4, p0, Lcom/redbox/android/activity/LoginActivity$2;->this$0:Lcom/redbox/android/activity/LoginActivity;

    const v5, 0x7f050017

    invoke-virtual {v4, v5}, Lcom/redbox/android/activity/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/redbox/android/activity/LoginActivity;->alertBoxMsg:Ljava/lang/String;

    .line 85
    iget-object v3, p0, Lcom/redbox/android/activity/LoginActivity$2;->this$0:Lcom/redbox/android/activity/LoginActivity;

    invoke-virtual {v3, v6}, Lcom/redbox/android/activity/LoginActivity;->showDialog(I)V

    goto :goto_0

    .line 89
    :cond_1
    const-string v3, "No Email"

    invoke-static {p0, v3}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-object v3, p0, Lcom/redbox/android/activity/LoginActivity$2;->this$0:Lcom/redbox/android/activity/LoginActivity;

    iget-object v4, p0, Lcom/redbox/android/activity/LoginActivity$2;->this$0:Lcom/redbox/android/activity/LoginActivity;

    const v5, 0x7f050018

    invoke-virtual {v4, v5}, Lcom/redbox/android/activity/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/redbox/android/activity/LoginActivity;->alertBoxMsg:Ljava/lang/String;

    .line 91
    iget-object v3, p0, Lcom/redbox/android/activity/LoginActivity$2;->this$0:Lcom/redbox/android/activity/LoginActivity;

    invoke-virtual {v3, v6}, Lcom/redbox/android/activity/LoginActivity;->showDialog(I)V

    goto :goto_0

    .line 99
    :cond_2
    const-string v3, "Invalid password"

    invoke-static {p0, v3}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iget-object v3, p0, Lcom/redbox/android/activity/LoginActivity$2;->this$0:Lcom/redbox/android/activity/LoginActivity;

    iget-object v4, p0, Lcom/redbox/android/activity/LoginActivity$2;->this$0:Lcom/redbox/android/activity/LoginActivity;

    const v5, 0x7f05001a

    invoke-virtual {v4, v5}, Lcom/redbox/android/activity/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/redbox/android/activity/LoginActivity;->alertBoxMsg:Ljava/lang/String;

    .line 101
    iget-object v3, p0, Lcom/redbox/android/activity/LoginActivity$2;->this$0:Lcom/redbox/android/activity/LoginActivity;

    invoke-virtual {v3, v6}, Lcom/redbox/android/activity/LoginActivity;->showDialog(I)V

    goto :goto_0

    .line 105
    :cond_3
    const-string v3, "No password entered"

    invoke-static {p0, v3}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iget-object v3, p0, Lcom/redbox/android/activity/LoginActivity$2;->this$0:Lcom/redbox/android/activity/LoginActivity;

    iget-object v4, p0, Lcom/redbox/android/activity/LoginActivity$2;->this$0:Lcom/redbox/android/activity/LoginActivity;

    const v5, 0x7f050019

    invoke-virtual {v4, v5}, Lcom/redbox/android/activity/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/redbox/android/activity/LoginActivity;->alertBoxMsg:Ljava/lang/String;

    .line 107
    iget-object v3, p0, Lcom/redbox/android/activity/LoginActivity$2;->this$0:Lcom/redbox/android/activity/LoginActivity;

    invoke-virtual {v3, v6}, Lcom/redbox/android/activity/LoginActivity;->showDialog(I)V

    goto :goto_0
.end method
