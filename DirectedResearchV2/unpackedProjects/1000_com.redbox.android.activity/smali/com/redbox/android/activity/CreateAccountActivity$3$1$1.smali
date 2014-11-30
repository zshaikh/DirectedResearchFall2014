.class Lcom/redbox/android/activity/CreateAccountActivity$3$1$1;
.super Ljava/lang/Object;
.source "CreateAccountActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/CreateAccountActivity$3$1;->dataReceived([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/redbox/android/activity/CreateAccountActivity$3$1;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/CreateAccountActivity$3$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/CreateAccountActivity$3$1$1;->this$2:Lcom/redbox/android/activity/CreateAccountActivity$3$1;

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/redbox/android/activity/CreateAccountActivity$3$1$1;->this$2:Lcom/redbox/android/activity/CreateAccountActivity$3$1;

    # getter for: Lcom/redbox/android/activity/CreateAccountActivity$3$1;->this$1:Lcom/redbox/android/activity/CreateAccountActivity$3;
    invoke-static {v0}, Lcom/redbox/android/activity/CreateAccountActivity$3$1;->access$0(Lcom/redbox/android/activity/CreateAccountActivity$3$1;)Lcom/redbox/android/activity/CreateAccountActivity$3;

    move-result-object v0

    # getter for: Lcom/redbox/android/activity/CreateAccountActivity$3;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/CreateAccountActivity$3;->access$0(Lcom/redbox/android/activity/CreateAccountActivity$3;)Lcom/redbox/android/activity/CreateAccountActivity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/CreateAccountActivity;->dismissDialog(I)V

    .line 205
    iget-object v0, p0, Lcom/redbox/android/activity/CreateAccountActivity$3$1$1;->this$2:Lcom/redbox/android/activity/CreateAccountActivity$3$1;

    # getter for: Lcom/redbox/android/activity/CreateAccountActivity$3$1;->this$1:Lcom/redbox/android/activity/CreateAccountActivity$3;
    invoke-static {v0}, Lcom/redbox/android/activity/CreateAccountActivity$3$1;->access$0(Lcom/redbox/android/activity/CreateAccountActivity$3$1;)Lcom/redbox/android/activity/CreateAccountActivity$3;

    move-result-object v0

    # getter for: Lcom/redbox/android/activity/CreateAccountActivity$3;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/CreateAccountActivity$3;->access$0(Lcom/redbox/android/activity/CreateAccountActivity$3;)Lcom/redbox/android/activity/CreateAccountActivity;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/CreateAccountActivity;->setResult(I)V

    .line 206
    const/4 v0, 0x1

    sput-boolean v0, Lcom/redbox/android/utils/RuntimeCache;->LOGGED_IN:Z

    .line 208
    invoke-static {}, Lcom/redbox/android/utils/RBTracker;->getInstance()Lcom/redbox/android/utils/RBTracker;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/redbox/android/activity/CreateAccountActivity$3$1$1;->this$2:Lcom/redbox/android/activity/CreateAccountActivity$3$1;

    # getter for: Lcom/redbox/android/activity/CreateAccountActivity$3$1;->this$1:Lcom/redbox/android/activity/CreateAccountActivity$3;
    invoke-static {v1}, Lcom/redbox/android/activity/CreateAccountActivity$3$1;->access$0(Lcom/redbox/android/activity/CreateAccountActivity$3$1;)Lcom/redbox/android/activity/CreateAccountActivity$3;

    move-result-object v1

    # getter for: Lcom/redbox/android/activity/CreateAccountActivity$3;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;
    invoke-static {v1}, Lcom/redbox/android/activity/CreateAccountActivity$3;->access$0(Lcom/redbox/android/activity/CreateAccountActivity$3;)Lcom/redbox/android/activity/CreateAccountActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/redbox/android/activity/CreateAccountActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 209
    invoke-virtual {v0, v1}, Lcom/redbox/android/utils/RBTracker;->setApplication(Landroid/app/Application;)V

    .line 212
    invoke-static {}, Lcom/redbox/android/utils/RBTracker;->getInstance()Lcom/redbox/android/utils/RBTracker;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/redbox/android/activity/CreateAccountActivity$3$1$1;->this$2:Lcom/redbox/android/activity/CreateAccountActivity$3$1;

    # getter for: Lcom/redbox/android/activity/CreateAccountActivity$3$1;->this$1:Lcom/redbox/android/activity/CreateAccountActivity$3;
    invoke-static {v1}, Lcom/redbox/android/activity/CreateAccountActivity$3$1;->access$0(Lcom/redbox/android/activity/CreateAccountActivity$3$1;)Lcom/redbox/android/activity/CreateAccountActivity$3;

    move-result-object v1

    # getter for: Lcom/redbox/android/activity/CreateAccountActivity$3;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;
    invoke-static {v1}, Lcom/redbox/android/activity/CreateAccountActivity$3;->access$0(Lcom/redbox/android/activity/CreateAccountActivity$3;)Lcom/redbox/android/activity/CreateAccountActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/redbox/android/activity/CreateAccountActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 213
    invoke-virtual {v0, v1}, Lcom/redbox/android/utils/RBTracker;->trackCreateAccount(Ljava/lang/Object;)V

    .line 215
    iget-object v0, p0, Lcom/redbox/android/activity/CreateAccountActivity$3$1$1;->this$2:Lcom/redbox/android/activity/CreateAccountActivity$3$1;

    # getter for: Lcom/redbox/android/activity/CreateAccountActivity$3$1;->this$1:Lcom/redbox/android/activity/CreateAccountActivity$3;
    invoke-static {v0}, Lcom/redbox/android/activity/CreateAccountActivity$3$1;->access$0(Lcom/redbox/android/activity/CreateAccountActivity$3$1;)Lcom/redbox/android/activity/CreateAccountActivity$3;

    move-result-object v0

    # getter for: Lcom/redbox/android/activity/CreateAccountActivity$3;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/CreateAccountActivity$3;->access$0(Lcom/redbox/android/activity/CreateAccountActivity$3;)Lcom/redbox/android/activity/CreateAccountActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/redbox/android/activity/CreateAccountActivity;->finish()V

    .line 216
    return-void
.end method
