.class Lcom/redbox/android/activity/ForgotPasswordActivity$2;
.super Ljava/lang/Object;
.source "ForgotPasswordActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/ForgotPasswordActivity;->dataReceived([B)V
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
    iput-object p1, p0, Lcom/redbox/android/activity/ForgotPasswordActivity$2;->this$0:Lcom/redbox/android/activity/ForgotPasswordActivity;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/redbox/android/activity/ForgotPasswordActivity$2;)Lcom/redbox/android/activity/ForgotPasswordActivity;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/redbox/android/activity/ForgotPasswordActivity$2;->this$0:Lcom/redbox/android/activity/ForgotPasswordActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 150
    const/4 v1, 0x1

    sput-boolean v1, Lcom/redbox/android/utils/RuntimeCache;->LOGGED_IN:Z

    .line 151
    iget-object v1, p0, Lcom/redbox/android/activity/ForgotPasswordActivity$2;->this$0:Lcom/redbox/android/activity/ForgotPasswordActivity;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/redbox/android/activity/ForgotPasswordActivity;->removeDialog(I)V

    .line 152
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 153
    iget-object v1, p0, Lcom/redbox/android/activity/ForgotPasswordActivity$2;->this$0:Lcom/redbox/android/activity/ForgotPasswordActivity;

    .line 152
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 154
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/redbox/android/activity/ForgotPasswordActivity$2;->this$0:Lcom/redbox/android/activity/ForgotPasswordActivity;

    const v2, 0x7f05002c

    invoke-virtual {v1, v2}, Lcom/redbox/android/activity/ForgotPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 155
    iget-object v1, p0, Lcom/redbox/android/activity/ForgotPasswordActivity$2;->this$0:Lcom/redbox/android/activity/ForgotPasswordActivity;

    const v2, 0x7f050008

    invoke-virtual {v1, v2}, Lcom/redbox/android/activity/ForgotPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 156
    new-instance v2, Lcom/redbox/android/activity/ForgotPasswordActivity$2$1;

    invoke-direct {v2, p0}, Lcom/redbox/android/activity/ForgotPasswordActivity$2$1;-><init>(Lcom/redbox/android/activity/ForgotPasswordActivity$2;)V

    .line 155
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 165
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 167
    return-void
.end method
