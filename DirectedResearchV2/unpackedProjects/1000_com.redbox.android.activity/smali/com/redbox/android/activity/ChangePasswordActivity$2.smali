.class Lcom/redbox/android/activity/ChangePasswordActivity$2;
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
    iput-object p1, p0, Lcom/redbox/android/activity/ChangePasswordActivity$2;->this$0:Lcom/redbox/android/activity/ChangePasswordActivity;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/redbox/android/activity/ChangePasswordActivity$2;)Lcom/redbox/android/activity/ChangePasswordActivity;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/redbox/android/activity/ChangePasswordActivity$2;->this$0:Lcom/redbox/android/activity/ChangePasswordActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 144
    sput-boolean v2, Lcom/redbox/android/utils/RuntimeCache;->LOGGED_IN:Z

    .line 145
    iget-object v1, p0, Lcom/redbox/android/activity/ChangePasswordActivity$2;->this$0:Lcom/redbox/android/activity/ChangePasswordActivity;

    invoke-static {v1}, Lcom/redbox/android/adapter/LocalDataStore;->getInstance(Landroid/content/Context;)Lcom/redbox/android/adapter/LocalDataStore;

    move-result-object v1

    .line 146
    invoke-virtual {v1, v2}, Lcom/redbox/android/adapter/LocalDataStore;->setLogInState(Z)V

    .line 147
    iget-object v1, p0, Lcom/redbox/android/activity/ChangePasswordActivity$2;->this$0:Lcom/redbox/android/activity/ChangePasswordActivity;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/redbox/android/activity/ChangePasswordActivity;->dismissDialog(I)V

    .line 148
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 149
    iget-object v1, p0, Lcom/redbox/android/activity/ChangePasswordActivity$2;->this$0:Lcom/redbox/android/activity/ChangePasswordActivity;

    .line 148
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 150
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "Password Changed"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 151
    iget-object v1, p0, Lcom/redbox/android/activity/ChangePasswordActivity$2;->this$0:Lcom/redbox/android/activity/ChangePasswordActivity;

    const v2, 0x7f050008

    invoke-virtual {v1, v2}, Lcom/redbox/android/activity/ChangePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 152
    new-instance v2, Lcom/redbox/android/activity/ChangePasswordActivity$2$1;

    invoke-direct {v2, p0}, Lcom/redbox/android/activity/ChangePasswordActivity$2$1;-><init>(Lcom/redbox/android/activity/ChangePasswordActivity$2;)V

    .line 151
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 161
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 163
    return-void
.end method
