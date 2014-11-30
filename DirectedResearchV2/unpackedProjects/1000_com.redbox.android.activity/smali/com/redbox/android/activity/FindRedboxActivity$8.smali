.class Lcom/redbox/android/activity/FindRedboxActivity$8;
.super Lcom/redbox/android/http/MobileInitCallHandler;
.source "FindRedboxActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/FindRedboxActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbox/android/activity/FindRedboxActivity;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/FindRedboxActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/FindRedboxActivity$8;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    .line 326
    invoke-direct {p0}, Lcom/redbox/android/http/MobileInitCallHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public callFinished()V
    .locals 4

    .prologue
    .line 329
    invoke-super {p0}, Lcom/redbox/android/http/MobileInitCallHandler;->callFinished()V

    .line 331
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$8;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity;->locTimer:Ljava/util/Timer;

    new-instance v1, Lcom/redbox/android/activity/FindRedboxActivity$TimeOut;

    iget-object v2, p0, Lcom/redbox/android/activity/FindRedboxActivity$8;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    invoke-direct {v1, v2}, Lcom/redbox/android/activity/FindRedboxActivity$TimeOut;-><init>(Lcom/redbox/android/activity/FindRedboxActivity;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 332
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$8;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    iget-boolean v0, v0, Lcom/redbox/android/activity/FindRedboxActivity;->movieMode:Z

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$8;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 334
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$8;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    invoke-virtual {v0}, Lcom/redbox/android/activity/FindRedboxActivity;->getFavInventory()V

    .line 340
    :goto_0
    return-void

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$8;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 338
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$8;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    invoke-virtual {v0}, Lcom/redbox/android/activity/FindRedboxActivity;->getLocation()V

    goto :goto_0
.end method
