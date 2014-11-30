.class Lcom/gamesys/android/social/facebook/ane/FacebookContext$2;
.super Ljava/lang/Object;
.source "FacebookContext.java"

# interfaces
.implements Lcom/facebook/widget/WebDialog$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamesys/android/social/facebook/ane/FacebookContext;->executeActionRequestDialog(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/gamesys/android/social/facebook/ane/FacebookContext$2;->this$0:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .locals 6
    .param p1, "values"    # Landroid/os/Bundle;
    .param p2, "error"    # Lcom/facebook/FacebookException;

    .prologue
    .line 393
    iget-object v3, p0, Lcom/gamesys/android/social/facebook/ane/FacebookContext$2;->this$0:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->access$1(Lcom/gamesys/android/social/facebook/ane/FacebookContext;Lcom/facebook/widget/WebDialog;)V

    .line 395
    # getter for: Lcom/gamesys/android/social/facebook/ane/FacebookContext;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->access$2()Ljava/lang/String;

    move-result-object v3

    const-string v4, "onComplete request dialog"

    invoke-static {v3, v4}, Lcom/gamesys/android/social/facebook/ane/FacebookExtension;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    if-nez p2, :cond_1

    .line 398
    const-string v3, "request"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 400
    .local v1, "request":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 401
    iget-object v3, p0, Lcom/gamesys/android/social/facebook/ane/FacebookContext$2;->this$0:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    # invokes: Lcom/gamesys/android/social/facebook/ane/FacebookContext;->createEventBodyfromRequestBundle(Landroid/os/Bundle;)Ljava/lang/String;
    invoke-static {v3, p1}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->access$3(Lcom/gamesys/android/social/facebook/ane/FacebookContext;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 402
    .local v2, "str":Ljava/lang/String;
    iget-object v3, p0, Lcom/gamesys/android/social/facebook/ane/FacebookContext$2;->this$0:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    const-string v4, "com.gamesys.android.ane.fb.LEVEL_DIALOG_REQUEST_SUCCESS"

    invoke-virtual {v3, v2, v4}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    .end local v1    # "request":Ljava/lang/String;
    .end local v2    # "str":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/gamesys/android/social/facebook/ane/FacebookContext$2;->this$0:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    invoke-virtual {v3}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->notifyActionDone()V

    .line 420
    return-void

    .line 406
    .restart local v1    # "request":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/gamesys/android/social/facebook/ane/FacebookContext$2;->this$0:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    const-string v4, "com.gamesys.android.ane.fb.CODE_DIALOG_FEED_REQUEST_ERROR_USER_CANCEL_BTN"

    .line 407
    const-string v5, "com.gamesys.android.ane.fb.LEVEL_DIALOG_REQUEST_ERROR"

    .line 406
    invoke-virtual {v3, v4, v5}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 409
    .end local v1    # "request":Ljava/lang/String;
    :cond_1
    instance-of v3, p2, Lcom/facebook/FacebookOperationCanceledException;

    if-eqz v3, :cond_2

    .line 411
    iget-object v3, p0, Lcom/gamesys/android/social/facebook/ane/FacebookContext$2;->this$0:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    const-string v4, "com.gamesys.android.ane.fb.CODE_DIALOG_FEED_REQUEST_ERROR_USER_CANCEL_X"

    const-string v5, "com.gamesys.android.ane.fb.LEVEL_DIALOG_REQUEST_ERROR"

    invoke-virtual {v3, v4, v5}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 412
    :cond_2
    instance-of v3, p2, Lcom/facebook/FacebookDialogException;

    if-eqz v3, :cond_3

    move-object v0, p2

    .line 413
    check-cast v0, Lcom/facebook/FacebookDialogException;

    .line 414
    .local v0, "ex":Lcom/facebook/FacebookDialogException;
    iget-object v3, p0, Lcom/gamesys/android/social/facebook/ane/FacebookContext$2;->this$0:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    invoke-virtual {v0}, Lcom/facebook/FacebookDialogException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/facebook/FacebookDialogException;->getErrorCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 417
    .end local v0    # "ex":Lcom/facebook/FacebookDialogException;
    :cond_3
    iget-object v3, p0, Lcom/gamesys/android/social/facebook/ane/FacebookContext$2;->this$0:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    const-string v4, "com.gamesys.android.ane.fb.CODE_DIALOG_FEED_REQUEST_ERROR_GENERIC"

    const-string v5, "com.gamesys.android.ane.fb.LEVEL_DIALOG_REQUEST_ERROR"

    invoke-virtual {v3, v4, v5}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
