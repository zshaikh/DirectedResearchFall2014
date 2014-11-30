.class Lcom/redbox/android/activity/ChangePasswordActivity$1;
.super Ljava/lang/Object;
.source "ChangePasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/ChangePasswordActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbox/android/activity/ChangePasswordActivity;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/ChangePasswordActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/ChangePasswordActivity$1;->this$0:Lcom/redbox/android/activity/ChangePasswordActivity;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v3, 0xb

    .line 79
    iget-object v0, p0, Lcom/redbox/android/activity/ChangePasswordActivity$1;->this$0:Lcom/redbox/android/activity/ChangePasswordActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/ChangePasswordActivity;->password:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/redbox/android/activity/ChangePasswordActivity$1;->this$0:Lcom/redbox/android/activity/ChangePasswordActivity;

    iget-object v1, v1, Lcom/redbox/android/activity/ChangePasswordActivity;->repassword:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 79
    if-eqz v0, :cond_0

    .line 81
    const-string v0, "Passwords do not match"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/redbox/android/activity/ChangePasswordActivity$1;->this$0:Lcom/redbox/android/activity/ChangePasswordActivity;

    iget-object v1, p0, Lcom/redbox/android/activity/ChangePasswordActivity$1;->this$0:Lcom/redbox/android/activity/ChangePasswordActivity;

    const v2, 0x7f05001b

    invoke-virtual {v1, v2}, Lcom/redbox/android/activity/ChangePasswordActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/redbox/android/activity/ChangePasswordActivity;->alertBoxMsg:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/redbox/android/activity/ChangePasswordActivity$1;->this$0:Lcom/redbox/android/activity/ChangePasswordActivity;

    invoke-virtual {v0, v3}, Lcom/redbox/android/activity/ChangePasswordActivity;->showDialog(I)V

    .line 101
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/redbox/android/activity/ChangePasswordActivity$1;->this$0:Lcom/redbox/android/activity/ChangePasswordActivity;

    iget-object v1, p0, Lcom/redbox/android/activity/ChangePasswordActivity$1;->this$0:Lcom/redbox/android/activity/ChangePasswordActivity;

    iget-object v1, v1, Lcom/redbox/android/activity/ChangePasswordActivity;->password:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/ChangePasswordActivity;->isPassVaild(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Passwords invalid : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/redbox/android/activity/ChangePasswordActivity$1;->this$0:Lcom/redbox/android/activity/ChangePasswordActivity;

    iget-object v1, v1, Lcom/redbox/android/activity/ChangePasswordActivity;->password:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/redbox/android/activity/ChangePasswordActivity$1;->this$0:Lcom/redbox/android/activity/ChangePasswordActivity;

    iget-object v1, p0, Lcom/redbox/android/activity/ChangePasswordActivity$1;->this$0:Lcom/redbox/android/activity/ChangePasswordActivity;

    const v2, 0x7f05001a

    invoke-virtual {v1, v2}, Lcom/redbox/android/activity/ChangePasswordActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 90
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    iput-object v1, v0, Lcom/redbox/android/activity/ChangePasswordActivity;->alertBoxMsg:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/redbox/android/activity/ChangePasswordActivity$1;->this$0:Lcom/redbox/android/activity/ChangePasswordActivity;

    invoke-virtual {v0, v3}, Lcom/redbox/android/activity/ChangePasswordActivity;->showDialog(I)V

    goto :goto_0

    .line 95
    :cond_1
    invoke-static {}, Lcom/redbox/android/http/ServerCommunicationHandler;->getInstance()Lcom/redbox/android/http/ServerCommunicationHandler;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/redbox/android/activity/ChangePasswordActivity$1;->this$0:Lcom/redbox/android/activity/ChangePasswordActivity;

    .line 97
    iget-object v2, p0, Lcom/redbox/android/activity/ChangePasswordActivity$1;->this$0:Lcom/redbox/android/activity/ChangePasswordActivity;

    iget-object v2, v2, Lcom/redbox/android/activity/ChangePasswordActivity;->password:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-virtual {v0, v1, v2}, Lcom/redbox/android/http/ServerCommunicationHandler;->changePassword(Lcom/redbox/android/http/ServerCommunicationListener;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/redbox/android/activity/ChangePasswordActivity$1;->this$0:Lcom/redbox/android/activity/ChangePasswordActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/ChangePasswordActivity;->showDialog(I)V

    .line 99
    iget-object v0, p0, Lcom/redbox/android/activity/ChangePasswordActivity$1;->this$0:Lcom/redbox/android/activity/ChangePasswordActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/ChangePasswordActivity;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Validating"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
