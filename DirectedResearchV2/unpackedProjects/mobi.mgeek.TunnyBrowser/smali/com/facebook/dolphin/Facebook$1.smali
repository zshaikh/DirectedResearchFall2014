.class Lcom/facebook/dolphin/Facebook$1;
.super Ljava/lang/Object;
.source "Facebook.java"

# interfaces
.implements Lcom/facebook/dolphin/Facebook$DialogListener;


# instance fields
.field final synthetic this$0:Lcom/facebook/dolphin/Facebook;


# direct methods
.method constructor <init>(Lcom/facebook/dolphin/Facebook;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/facebook/dolphin/Facebook$1;->this$0:Lcom/facebook/dolphin/Facebook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 413
    const-string v0, "Facebook-authorize"

    const-string v1, "Login canceled"

    invoke-static {v0, v1}, Lcom/facebook/dolphin/Util;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/facebook/dolphin/Facebook$1;->this$0:Lcom/facebook/dolphin/Facebook;

    # getter for: Lcom/facebook/dolphin/Facebook;->mAuthDialogListener:Lcom/facebook/dolphin/Facebook$DialogListener;
    invoke-static {v0}, Lcom/facebook/dolphin/Facebook;->access$000(Lcom/facebook/dolphin/Facebook;)Lcom/facebook/dolphin/Facebook$DialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/dolphin/Facebook$DialogListener;->onCancel()V

    .line 415
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 388
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 389
    iget-object v0, p0, Lcom/facebook/dolphin/Facebook$1;->this$0:Lcom/facebook/dolphin/Facebook;

    const-string v1, "access_token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/dolphin/Facebook;->setAccessToken(Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/facebook/dolphin/Facebook$1;->this$0:Lcom/facebook/dolphin/Facebook;

    const-string v1, "expires_in"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/dolphin/Facebook;->setAccessExpiresIn(Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/facebook/dolphin/Facebook$1;->this$0:Lcom/facebook/dolphin/Facebook;

    invoke-virtual {v0}, Lcom/facebook/dolphin/Facebook;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    const-string v0, "Facebook-authorize"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Login Success! access_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/dolphin/Facebook$1;->this$0:Lcom/facebook/dolphin/Facebook;

    invoke-virtual {v2}, Lcom/facebook/dolphin/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " expires="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/dolphin/Facebook$1;->this$0:Lcom/facebook/dolphin/Facebook;

    invoke-virtual {v2}, Lcom/facebook/dolphin/Facebook;->getAccessExpires()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/dolphin/Util;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/facebook/dolphin/Facebook$1;->this$0:Lcom/facebook/dolphin/Facebook;

    # getter for: Lcom/facebook/dolphin/Facebook;->mAuthDialogListener:Lcom/facebook/dolphin/Facebook$DialogListener;
    invoke-static {v0}, Lcom/facebook/dolphin/Facebook;->access$000(Lcom/facebook/dolphin/Facebook;)Lcom/facebook/dolphin/Facebook$DialogListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/dolphin/Facebook$DialogListener;->onComplete(Landroid/os/Bundle;)V

    .line 400
    :goto_0
    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/facebook/dolphin/Facebook$1;->this$0:Lcom/facebook/dolphin/Facebook;

    # getter for: Lcom/facebook/dolphin/Facebook;->mAuthDialogListener:Lcom/facebook/dolphin/Facebook$DialogListener;
    invoke-static {v0}, Lcom/facebook/dolphin/Facebook;->access$000(Lcom/facebook/dolphin/Facebook;)Lcom/facebook/dolphin/Facebook$DialogListener;

    move-result-object v0

    new-instance v1, Lcom/facebook/dolphin/FacebookError;

    const-string v2, "Failed to receive access token."

    invoke-direct {v1, v2}, Lcom/facebook/dolphin/FacebookError;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/facebook/dolphin/Facebook$DialogListener;->onFacebookError(Lcom/facebook/dolphin/FacebookError;)V

    goto :goto_0
.end method

.method public onError(Lcom/facebook/dolphin/DialogError;)V
    .locals 3

    .prologue
    .line 403
    const-string v0, "Facebook-authorize"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Login failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/dolphin/Util;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/facebook/dolphin/Facebook$1;->this$0:Lcom/facebook/dolphin/Facebook;

    # getter for: Lcom/facebook/dolphin/Facebook;->mAuthDialogListener:Lcom/facebook/dolphin/Facebook$DialogListener;
    invoke-static {v0}, Lcom/facebook/dolphin/Facebook;->access$000(Lcom/facebook/dolphin/Facebook;)Lcom/facebook/dolphin/Facebook$DialogListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/dolphin/Facebook$DialogListener;->onError(Lcom/facebook/dolphin/DialogError;)V

    .line 405
    return-void
.end method

.method public onFacebookError(Lcom/facebook/dolphin/FacebookError;)V
    .locals 3

    .prologue
    .line 408
    const-string v0, "Facebook-authorize"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Login failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/dolphin/Util;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/facebook/dolphin/Facebook$1;->this$0:Lcom/facebook/dolphin/Facebook;

    # getter for: Lcom/facebook/dolphin/Facebook;->mAuthDialogListener:Lcom/facebook/dolphin/Facebook$DialogListener;
    invoke-static {v0}, Lcom/facebook/dolphin/Facebook;->access$000(Lcom/facebook/dolphin/Facebook;)Lcom/facebook/dolphin/Facebook$DialogListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/dolphin/Facebook$DialogListener;->onFacebookError(Lcom/facebook/dolphin/FacebookError;)V

    .line 410
    return-void
.end method
