.class Lcom/gamesys/android/social/facebook/ane/FacebookContext$1;
.super Ljava/lang/Object;
.source "FacebookContext.java"

# interfaces
.implements Lcom/facebook/widget/WebDialog$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamesys/android/social/facebook/ane/FacebookContext;->executeActionFeedDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gamesys/android/social/facebook/ane/FacebookContext;


# direct methods
.method constructor <init>(Lcom/gamesys/android/social/facebook/ane/FacebookContext;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamesys/android/social/facebook/ane/FacebookContext$1;->this$0:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .locals 5
    .param p1, "values"    # Landroid/os/Bundle;
    .param p2, "error"    # Lcom/facebook/FacebookException;

    .prologue
    .line 342
    iget-object v2, p0, Lcom/gamesys/android/social/facebook/ane/FacebookContext$1;->this$0:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->access$1(Lcom/gamesys/android/social/facebook/ane/FacebookContext;Lcom/facebook/widget/WebDialog;)V

    .line 344
    # getter for: Lcom/gamesys/android/social/facebook/ane/FacebookContext;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->access$2()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onComplete feed dialog"

    invoke-static {v2, v3}, Lcom/gamesys/android/social/facebook/ane/FacebookExtension;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    if-nez p2, :cond_1

    .line 347
    const-string v2, "post_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, "postId":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 350
    iget-object v2, p0, Lcom/gamesys/android/social/facebook/ane/FacebookContext$1;->this$0:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    const-string v3, "com.gamesys.android.ane.fb.LEVEL_DIALOG_FEED_SUCCESS"

    invoke-virtual {v2, v1, v3}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    .end local v1    # "postId":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/gamesys/android/social/facebook/ane/FacebookContext$1;->this$0:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    invoke-virtual {v2}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->notifyActionDone()V

    .line 366
    return-void

    .line 353
    .restart local v1    # "postId":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/gamesys/android/social/facebook/ane/FacebookContext$1;->this$0:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    const-string v3, "com.gamesys.android.ane.fb.CODE_DIALOG_FEED_REQUEST_ERROR_USER_CANCEL_BTN"

    const-string v4, "com.gamesys.android.ane.fb.LEVEL_DIALOG_FEED_ERROR"

    invoke-virtual {v2, v3, v4}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 355
    .end local v1    # "postId":Ljava/lang/String;
    :cond_1
    instance-of v2, p2, Lcom/facebook/FacebookOperationCanceledException;

    if-eqz v2, :cond_2

    .line 357
    iget-object v2, p0, Lcom/gamesys/android/social/facebook/ane/FacebookContext$1;->this$0:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    const-string v3, "com.gamesys.android.ane.fb.CODE_DIALOG_FEED_REQUEST_ERROR_USER_CANCEL_X"

    const-string v4, "com.gamesys.android.ane.fb.LEVEL_DIALOG_FEED_ERROR"

    invoke-virtual {v2, v3, v4}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 358
    :cond_2
    instance-of v2, p2, Lcom/facebook/FacebookDialogException;

    if-eqz v2, :cond_3

    move-object v0, p2

    .line 359
    check-cast v0, Lcom/facebook/FacebookDialogException;

    .line 360
    .local v0, "ex":Lcom/facebook/FacebookDialogException;
    iget-object v2, p0, Lcom/gamesys/android/social/facebook/ane/FacebookContext$1;->this$0:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    invoke-virtual {v0}, Lcom/facebook/FacebookDialogException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/facebook/FacebookDialogException;->getErrorCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 363
    .end local v0    # "ex":Lcom/facebook/FacebookDialogException;
    :cond_3
    iget-object v2, p0, Lcom/gamesys/android/social/facebook/ane/FacebookContext$1;->this$0:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    const-string v3, "com.gamesys.android.ane.fb.CODE_DIALOG_FEED_REQUEST_ERROR_GENERIC"

    const-string v4, "com.gamesys.android.ane.fb.LEVEL_DIALOG_FEED_ERROR"

    invoke-virtual {v2, v3, v4}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
