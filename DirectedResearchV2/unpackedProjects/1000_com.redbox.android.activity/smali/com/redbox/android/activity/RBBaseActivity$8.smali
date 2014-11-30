.class Lcom/redbox/android/activity/RBBaseActivity$8;
.super Ljava/lang/Object;
.source "RBBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/RBBaseActivity;->showConnectionError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbox/android/activity/RBBaseActivity;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/RBBaseActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/RBBaseActivity$8;->this$0:Lcom/redbox/android/activity/RBBaseActivity;

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/redbox/android/activity/RBBaseActivity$8;)Lcom/redbox/android/activity/RBBaseActivity;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/redbox/android/activity/RBBaseActivity$8;->this$0:Lcom/redbox/android/activity/RBBaseActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/redbox/android/activity/RBBaseActivity$8;->this$0:Lcom/redbox/android/activity/RBBaseActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/RBBaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/redbox/android/activity/RBBaseActivity$8;->this$0:Lcom/redbox/android/activity/RBBaseActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/RBBaseActivity;->removeDialog(I)V

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/redbox/android/activity/RBBaseActivity$8;->this$0:Lcom/redbox/android/activity/RBBaseActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/RBBaseActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/redbox/android/activity/RBBaseActivity$8$1;

    invoke-direct {v1, p0}, Lcom/redbox/android/activity/RBBaseActivity$8$1;-><init>(Lcom/redbox/android/activity/RBBaseActivity$8;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 339
    return-void
.end method
