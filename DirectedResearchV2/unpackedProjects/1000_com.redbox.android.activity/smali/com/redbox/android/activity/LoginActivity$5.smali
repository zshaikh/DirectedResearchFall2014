.class Lcom/redbox/android/activity/LoginActivity$5;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/LoginActivity;->dataReceived([B)V
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
    iput-object p1, p0, Lcom/redbox/android/activity/LoginActivity$5;->this$0:Lcom/redbox/android/activity/LoginActivity;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 229
    const-string v1, "Login failed"

    invoke-static {p0, v1}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Lcom/redbox/android/activity/LoginActivity$5;->this$0:Lcom/redbox/android/activity/LoginActivity;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/redbox/android/activity/LoginActivity;->removeDialog(I)V

    .line 231
    sput-boolean v3, Lcom/redbox/android/utils/RuntimeCache;->LOGGED_IN:Z

    .line 232
    iget-object v1, p0, Lcom/redbox/android/activity/LoginActivity$5;->this$0:Lcom/redbox/android/activity/LoginActivity;

    invoke-static {v1}, Lcom/redbox/android/adapter/LocalDataStore;->getInstance(Landroid/content/Context;)Lcom/redbox/android/adapter/LocalDataStore;

    move-result-object v1

    .line 233
    invoke-virtual {v1, v3}, Lcom/redbox/android/adapter/LocalDataStore;->setLogInState(Z)V

    .line 234
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/redbox/android/activity/LoginActivity$5;->this$0:Lcom/redbox/android/activity/LoginActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 236
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/redbox/android/activity/LoginActivity$5;->this$0:Lcom/redbox/android/activity/LoginActivity;

    const v2, 0x7f05003e

    invoke-virtual {v1, v2}, Lcom/redbox/android/activity/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 237
    iget-object v1, p0, Lcom/redbox/android/activity/LoginActivity$5;->this$0:Lcom/redbox/android/activity/LoginActivity;

    const v2, 0x7f050008

    invoke-virtual {v1, v2}, Lcom/redbox/android/activity/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 238
    new-instance v2, Lcom/redbox/android/activity/LoginActivity$5$1;

    invoke-direct {v2, p0}, Lcom/redbox/android/activity/LoginActivity$5$1;-><init>(Lcom/redbox/android/activity/LoginActivity$5;)V

    .line 237
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 246
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 247
    return-void
.end method
