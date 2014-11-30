.class Lcom/redbox/android/activity/RBBaseActivity$8$1;
.super Ljava/lang/Object;
.source "RBBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/RBBaseActivity$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/redbox/android/activity/RBBaseActivity$8;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/RBBaseActivity$8;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/RBBaseActivity$8$1;->this$1:Lcom/redbox/android/activity/RBBaseActivity$8;

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/redbox/android/activity/RBBaseActivity$8$1;->this$1:Lcom/redbox/android/activity/RBBaseActivity$8;

    # getter for: Lcom/redbox/android/activity/RBBaseActivity$8;->this$0:Lcom/redbox/android/activity/RBBaseActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/RBBaseActivity$8;->access$0(Lcom/redbox/android/activity/RBBaseActivity$8;)Lcom/redbox/android/activity/RBBaseActivity;

    move-result-object v0

    iget-boolean v0, v0, Lcom/redbox/android/activity/RBBaseActivity;->activityShowing:Z

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/redbox/android/activity/RBBaseActivity$8$1;->this$1:Lcom/redbox/android/activity/RBBaseActivity$8;

    # getter for: Lcom/redbox/android/activity/RBBaseActivity$8;->this$0:Lcom/redbox/android/activity/RBBaseActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/RBBaseActivity$8;->access$0(Lcom/redbox/android/activity/RBBaseActivity$8;)Lcom/redbox/android/activity/RBBaseActivity;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/RBBaseActivity;->showDialog(I)V

    .line 336
    :cond_0
    return-void
.end method
