.class Lcom/redbox/android/activity/ChangePasswordActivity$3;
.super Ljava/lang/Object;
.source "ChangePasswordActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/ChangePasswordActivity;->dataReceived([B)V
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
    iput-object p1, p0, Lcom/redbox/android/activity/ChangePasswordActivity$3;->this$0:Lcom/redbox/android/activity/ChangePasswordActivity;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 170
    iget-object v1, p0, Lcom/redbox/android/activity/ChangePasswordActivity$3;->this$0:Lcom/redbox/android/activity/ChangePasswordActivity;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/redbox/android/activity/ChangePasswordActivity;->dismissDialog(I)V

    .line 171
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 172
    iget-object v1, p0, Lcom/redbox/android/activity/ChangePasswordActivity$3;->this$0:Lcom/redbox/android/activity/ChangePasswordActivity;

    .line 171
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 173
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "Error Changing Password"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 174
    iget-object v1, p0, Lcom/redbox/android/activity/ChangePasswordActivity$3;->this$0:Lcom/redbox/android/activity/ChangePasswordActivity;

    const v2, 0x7f050008

    invoke-virtual {v1, v2}, Lcom/redbox/android/activity/ChangePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 175
    new-instance v2, Lcom/redbox/android/activity/ChangePasswordActivity$3$1;

    invoke-direct {v2, p0}, Lcom/redbox/android/activity/ChangePasswordActivity$3$1;-><init>(Lcom/redbox/android/activity/ChangePasswordActivity$3;)V

    .line 174
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 183
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 184
    return-void
.end method
