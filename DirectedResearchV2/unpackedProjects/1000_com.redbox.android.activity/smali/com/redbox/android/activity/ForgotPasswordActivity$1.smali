.class Lcom/redbox/android/activity/ForgotPasswordActivity$1;
.super Ljava/lang/Object;
.source "ForgotPasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/ForgotPasswordActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbox/android/activity/ForgotPasswordActivity;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/ForgotPasswordActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/ForgotPasswordActivity$1;->this$0:Lcom/redbox/android/activity/ForgotPasswordActivity;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isEmailValid(Ljava/lang/String;)Z
    .locals 5
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 101
    const-string v0, "^[\\w\\.-]+@([\\w\\-]+\\.)+[A-Z]{2,4}$"

    .line 102
    .local v0, "expression":Ljava/lang/String;
    move-object v1, p1

    .line 105
    .local v1, "inputStr":Ljava/lang/CharSequence;
    const/4 v4, 0x2

    .line 104
    invoke-static {v0, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 106
    .local v3, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 107
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 108
    const/4 v4, 0x1

    .line 111
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v3, 0xb

    .line 76
    iget-object v0, p0, Lcom/redbox/android/activity/ForgotPasswordActivity$1;->this$0:Lcom/redbox/android/activity/ForgotPasswordActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/ForgotPasswordActivity;->email:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/redbox/android/activity/ForgotPasswordActivity$1;->this$0:Lcom/redbox/android/activity/ForgotPasswordActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/ForgotPasswordActivity;->email:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/redbox/android/activity/ForgotPasswordActivity$1;->isEmailValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "Valid Email"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-static {}, Lcom/redbox/android/http/ServerCommunicationHandler;->getInstance()Lcom/redbox/android/http/ServerCommunicationHandler;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/redbox/android/activity/ForgotPasswordActivity$1;->this$0:Lcom/redbox/android/activity/ForgotPasswordActivity;

    .line 93
    iget-object v2, p0, Lcom/redbox/android/activity/ForgotPasswordActivity$1;->this$0:Lcom/redbox/android/activity/ForgotPasswordActivity;

    iget-object v2, v2, Lcom/redbox/android/activity/ForgotPasswordActivity;->email:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-virtual {v0, v1, v2}, Lcom/redbox/android/http/ServerCommunicationHandler;->resetPassword(Lcom/redbox/android/http/ServerCommunicationListener;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/redbox/android/activity/ForgotPasswordActivity$1;->this$0:Lcom/redbox/android/activity/ForgotPasswordActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/ForgotPasswordActivity;->showDialog(I)V

    .line 95
    iget-object v0, p0, Lcom/redbox/android/activity/ForgotPasswordActivity$1;->this$0:Lcom/redbox/android/activity/ForgotPasswordActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/ForgotPasswordActivity;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Validating"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 97
    :goto_0
    return-void

    .line 80
    :cond_0
    const-string v0, "Invalid Email"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/redbox/android/activity/ForgotPasswordActivity$1;->this$0:Lcom/redbox/android/activity/ForgotPasswordActivity;

    iget-object v1, p0, Lcom/redbox/android/activity/ForgotPasswordActivity$1;->this$0:Lcom/redbox/android/activity/ForgotPasswordActivity;

    const v2, 0x7f050017

    invoke-virtual {v1, v2}, Lcom/redbox/android/activity/ForgotPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/redbox/android/activity/ForgotPasswordActivity;->alertBoxMsg:Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/redbox/android/activity/ForgotPasswordActivity$1;->this$0:Lcom/redbox/android/activity/ForgotPasswordActivity;

    invoke-virtual {v0, v3}, Lcom/redbox/android/activity/ForgotPasswordActivity;->showDialog(I)V

    goto :goto_0

    .line 86
    :cond_1
    const-string v0, "No Email"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/redbox/android/activity/ForgotPasswordActivity$1;->this$0:Lcom/redbox/android/activity/ForgotPasswordActivity;

    iget-object v1, p0, Lcom/redbox/android/activity/ForgotPasswordActivity$1;->this$0:Lcom/redbox/android/activity/ForgotPasswordActivity;

    const v2, 0x7f050018

    invoke-virtual {v1, v2}, Lcom/redbox/android/activity/ForgotPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/redbox/android/activity/ForgotPasswordActivity;->alertBoxMsg:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/redbox/android/activity/ForgotPasswordActivity$1;->this$0:Lcom/redbox/android/activity/ForgotPasswordActivity;

    invoke-virtual {v0, v3}, Lcom/redbox/android/activity/ForgotPasswordActivity;->showDialog(I)V

    goto :goto_0
.end method
