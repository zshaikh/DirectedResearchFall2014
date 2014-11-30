.class Lcom/redbox/android/activity/CreateAccountActivity$3;
.super Ljava/lang/Object;
.source "CreateAccountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/CreateAccountActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbox/android/activity/CreateAccountActivity;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/CreateAccountActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/CreateAccountActivity$3;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/redbox/android/activity/CreateAccountActivity$3;)Lcom/redbox/android/activity/CreateAccountActivity;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/redbox/android/activity/CreateAccountActivity$3;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v6, 0xb

    .line 108
    iget-object v0, p0, Lcom/redbox/android/activity/CreateAccountActivity$3;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/CreateAccountActivity;->user_email:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "email":Ljava/lang/String;
    iget-object v0, p0, Lcom/redbox/android/activity/CreateAccountActivity$3;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/CreateAccountActivity;->user_pass:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "password":Ljava/lang/String;
    iget-object v0, p0, Lcom/redbox/android/activity/CreateAccountActivity$3;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/CreateAccountActivity;->user_pass_confirm:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    .line 111
    .local v7, "pass_confirm":Ljava/lang/String;
    iget-object v0, p0, Lcom/redbox/android/activity/CreateAccountActivity$3;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/CreateAccountActivity;->captcha:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 117
    .local v4, "captcha_code":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/redbox/android/activity/CreateAccountActivity$3;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;

    invoke-virtual {v0, v2}, Lcom/redbox/android/activity/CreateAccountActivity;->isEmailValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const-string v0, "Valid Email"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-virtual {v3, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Passwords match : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/redbox/android/activity/CreateAccountActivity$3;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;

    invoke-virtual {v0, v3}, Lcom/redbox/android/activity/CreateAccountActivity;->isPassVaild(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    const-string v0, "Valid password"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    const-string v0, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 158
    iget-object v0, p0, Lcom/redbox/android/activity/CreateAccountActivity$3;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;

    iget-object v1, p0, Lcom/redbox/android/activity/CreateAccountActivity$3;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;

    const v5, 0x7f050020

    invoke-virtual {v1, v5}, Lcom/redbox/android/activity/CreateAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/redbox/android/activity/CreateAccountActivity;->alertBoxMsg:Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lcom/redbox/android/activity/CreateAccountActivity$3;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;

    invoke-virtual {v0, v6}, Lcom/redbox/android/activity/CreateAccountActivity;->showDialog(I)V

    .line 296
    :goto_0
    return-void

    .line 121
    :cond_0
    const-string v0, "Invalid Email"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/redbox/android/activity/CreateAccountActivity$3;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;

    iget-object v1, p0, Lcom/redbox/android/activity/CreateAccountActivity$3;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;

    const v5, 0x7f050017

    invoke-virtual {v1, v5}, Lcom/redbox/android/activity/CreateAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 122
    iput-object v1, v0, Lcom/redbox/android/activity/CreateAccountActivity;->alertBoxMsg:Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/redbox/android/activity/CreateAccountActivity$3;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;

    invoke-virtual {v0, v6}, Lcom/redbox/android/activity/CreateAccountActivity;->showDialog(I)V

    goto :goto_0

    .line 129
    :cond_1
    const-string v0, "No Email"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/redbox/android/activity/CreateAccountActivity$3;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;

    iget-object v1, p0, Lcom/redbox/android/activity/CreateAccountActivity$3;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;

    const v5, 0x7f050018

    invoke-virtual {v1, v5}, Lcom/redbox/android/activity/CreateAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/redbox/android/activity/CreateAccountActivity;->alertBoxMsg:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/redbox/android/activity/CreateAccountActivity$3;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;

    invoke-virtual {v0, v6}, Lcom/redbox/android/activity/CreateAccountActivity;->showDialog(I)V

    goto :goto_0

    .line 140
    :cond_2
    const-string v0, "Invalid password"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/redbox/android/activity/CreateAccountActivity$3;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;

    iget-object v1, p0, Lcom/redbox/android/activity/CreateAccountActivity$3;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;

    const v5, 0x7f05001a

    invoke-virtual {v1, v5}, Lcom/redbox/android/activity/CreateAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 141
    iput-object v1, v0, Lcom/redbox/android/activity/CreateAccountActivity;->alertBoxMsg:Ljava/lang/String;

    .line 143
    iget-object v0, p0, Lcom/redbox/android/activity/CreateAccountActivity$3;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;

    invoke-virtual {v0, v6}, Lcom/redbox/android/activity/CreateAccountActivity;->showDialog(I)V

    goto :goto_0

    .line 149
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Passwords did not match: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 150
    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/redbox/android/activity/CreateAccountActivity$3;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;

    iget-object v1, p0, Lcom/redbox/android/activity/CreateAccountActivity$3;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;

    const v5, 0x7f05001b

    invoke-virtual {v1, v5}, Lcom/redbox/android/activity/CreateAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 151
    iput-object v1, v0, Lcom/redbox/android/activity/CreateAccountActivity;->alertBoxMsg:Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/redbox/android/activity/CreateAccountActivity$3;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;

    invoke-virtual {v0, v6}, Lcom/redbox/android/activity/CreateAccountActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 163
    :cond_4
    iget-object v0, p0, Lcom/redbox/android/activity/CreateAccountActivity$3;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/CreateAccountActivity;->showDialog(I)V

    .line 164
    iget-object v0, p0, Lcom/redbox/android/activity/CreateAccountActivity$3;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/CreateAccountActivity;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Creating Account"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 168
    invoke-static {}, Lcom/redbox/android/http/ServerCommunicationHandler;->getInstance()Lcom/redbox/android/http/ServerCommunicationHandler;

    move-result-object v0

    .line 169
    new-instance v1, Lcom/redbox/android/activity/CreateAccountActivity$3$1;

    invoke-direct {v1, p0}, Lcom/redbox/android/activity/CreateAccountActivity$3$1;-><init>(Lcom/redbox/android/activity/CreateAccountActivity$3;)V

    .line 294
    iget-object v5, p0, Lcom/redbox/android/activity/CreateAccountActivity$3;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;

    iget-object v5, v5, Lcom/redbox/android/activity/CreateAccountActivity;->Hc:Ljava/lang/String;

    iget-object v6, p0, Lcom/redbox/android/activity/CreateAccountActivity$3;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;

    iget-object v6, v6, Lcom/redbox/android/activity/CreateAccountActivity;->Hcd:Ljava/lang/String;

    .line 168
    invoke-virtual/range {v0 .. v6}, Lcom/redbox/android/http/ServerCommunicationHandler;->createAccount(Lcom/redbox/android/http/ServerCommunicationListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
