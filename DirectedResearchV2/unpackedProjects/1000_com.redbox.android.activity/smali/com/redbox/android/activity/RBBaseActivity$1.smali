.class Lcom/redbox/android/activity/RBBaseActivity$1;
.super Ljava/lang/Object;
.source "RBBaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/RBBaseActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    iput-object p1, p0, Lcom/redbox/android/activity/RBBaseActivity$1;->this$0:Lcom/redbox/android/activity/RBBaseActivity;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 134
    .line 135
    const-string v0, "-----------------Aborted the progress-----------------"

    .line 134
    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/redbox/android/activity/RBBaseActivity$1;->this$0:Lcom/redbox/android/activity/RBBaseActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/RBBaseActivity;->removeDialog(I)V

    .line 137
    invoke-static {}, Lcom/redbox/android/http/ConnectionManager;->getInstance()Lcom/redbox/android/http/ConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/redbox/android/http/ConnectionManager;->shutDown()V

    .line 138
    iget-object v0, p0, Lcom/redbox/android/activity/RBBaseActivity$1;->this$0:Lcom/redbox/android/activity/RBBaseActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/redbox/android/activity/RBBaseActivity;->locationUpdate:Z

    .line 139
    iget-object v0, p0, Lcom/redbox/android/activity/RBBaseActivity$1;->this$0:Lcom/redbox/android/activity/RBBaseActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/RBBaseActivity;->locTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/redbox/android/activity/RBBaseActivity$1;->this$0:Lcom/redbox/android/activity/RBBaseActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/RBBaseActivity;->locTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/redbox/android/activity/RBBaseActivity$1;->this$0:Lcom/redbox/android/activity/RBBaseActivity;

    # getter for: Lcom/redbox/android/activity/RBBaseActivity;->listener:Lcom/redbox/android/adapter/DisableLocationUpdateListener;
    invoke-static {v0}, Lcom/redbox/android/activity/RBBaseActivity;->access$0(Lcom/redbox/android/activity/RBBaseActivity;)Lcom/redbox/android/adapter/DisableLocationUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/redbox/android/activity/RBBaseActivity$1;->this$0:Lcom/redbox/android/activity/RBBaseActivity;

    # getter for: Lcom/redbox/android/activity/RBBaseActivity;->listener:Lcom/redbox/android/adapter/DisableLocationUpdateListener;
    invoke-static {v0}, Lcom/redbox/android/activity/RBBaseActivity;->access$0(Lcom/redbox/android/activity/RBBaseActivity;)Lcom/redbox/android/adapter/DisableLocationUpdateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/redbox/android/adapter/DisableLocationUpdateListener;->locationUpdatesDisable()V

    .line 145
    :cond_1
    return-void
.end method
