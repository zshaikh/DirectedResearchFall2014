.class Lcom/facebook/dolphin/Facebook$TokenRefreshServiceConnection$1;
.super Landroid/os/Handler;
.source "Facebook.java"


# instance fields
.field final synthetic this$1:Lcom/facebook/dolphin/Facebook$TokenRefreshServiceConnection;


# direct methods
.method constructor <init>(Lcom/facebook/dolphin/Facebook$TokenRefreshServiceConnection;)V
    .locals 0

    .prologue
    .line 571
    iput-object p1, p0, Lcom/facebook/dolphin/Facebook$TokenRefreshServiceConnection$1;->this$1:Lcom/facebook/dolphin/Facebook$TokenRefreshServiceConnection;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    .line 574
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "access_token"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 575
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "expires_in"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 580
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 581
    const-string v4, "expires_in"

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 583
    if-eqz v1, :cond_1

    .line 584
    iget-object v4, p0, Lcom/facebook/dolphin/Facebook$TokenRefreshServiceConnection$1;->this$1:Lcom/facebook/dolphin/Facebook$TokenRefreshServiceConnection;

    iget-object v4, v4, Lcom/facebook/dolphin/Facebook$TokenRefreshServiceConnection;->this$0:Lcom/facebook/dolphin/Facebook;

    invoke-virtual {v4, v1}, Lcom/facebook/dolphin/Facebook;->setAccessToken(Ljava/lang/String;)V

    .line 585
    iget-object v1, p0, Lcom/facebook/dolphin/Facebook$TokenRefreshServiceConnection$1;->this$1:Lcom/facebook/dolphin/Facebook$TokenRefreshServiceConnection;

    iget-object v1, v1, Lcom/facebook/dolphin/Facebook$TokenRefreshServiceConnection;->this$0:Lcom/facebook/dolphin/Facebook;

    invoke-virtual {v1, v2, v3}, Lcom/facebook/dolphin/Facebook;->setAccessExpires(J)V

    .line 586
    iget-object v1, p0, Lcom/facebook/dolphin/Facebook$TokenRefreshServiceConnection$1;->this$1:Lcom/facebook/dolphin/Facebook$TokenRefreshServiceConnection;

    iget-object v1, v1, Lcom/facebook/dolphin/Facebook$TokenRefreshServiceConnection;->serviceListener:Lcom/facebook/dolphin/Facebook$ServiceListener;

    if-eqz v1, :cond_0

    .line 587
    iget-object v1, p0, Lcom/facebook/dolphin/Facebook$TokenRefreshServiceConnection$1;->this$1:Lcom/facebook/dolphin/Facebook$TokenRefreshServiceConnection;

    iget-object v1, v1, Lcom/facebook/dolphin/Facebook$TokenRefreshServiceConnection;->serviceListener:Lcom/facebook/dolphin/Facebook$ServiceListener;

    invoke-interface {v1, v0}, Lcom/facebook/dolphin/Facebook$ServiceListener;->onComplete(Landroid/os/Bundle;)V

    .line 602
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/dolphin/Facebook$TokenRefreshServiceConnection$1;->this$1:Lcom/facebook/dolphin/Facebook$TokenRefreshServiceConnection;

    iget-object v0, v0, Lcom/facebook/dolphin/Facebook$TokenRefreshServiceConnection;->applicationsContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/dolphin/Facebook$TokenRefreshServiceConnection$1;->this$1:Lcom/facebook/dolphin/Facebook$TokenRefreshServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 603
    return-void

    .line 589
    :cond_1
    iget-object v0, p0, Lcom/facebook/dolphin/Facebook$TokenRefreshServiceConnection$1;->this$1:Lcom/facebook/dolphin/Facebook$TokenRefreshServiceConnection;

    iget-object v0, v0, Lcom/facebook/dolphin/Facebook$TokenRefreshServiceConnection;->serviceListener:Lcom/facebook/dolphin/Facebook$ServiceListener;

    if-eqz v0, :cond_0

    .line 590
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "error"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 591
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "error_code"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 592
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "error_code"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 593
    iget-object v2, p0, Lcom/facebook/dolphin/Facebook$TokenRefreshServiceConnection$1;->this$1:Lcom/facebook/dolphin/Facebook$TokenRefreshServiceConnection;

    iget-object v2, v2, Lcom/facebook/dolphin/Facebook$TokenRefreshServiceConnection;->serviceListener:Lcom/facebook/dolphin/Facebook$ServiceListener;

    new-instance v3, Lcom/facebook/dolphin/FacebookError;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v1}, Lcom/facebook/dolphin/FacebookError;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Lcom/facebook/dolphin/Facebook$ServiceListener;->onFacebookError(Lcom/facebook/dolphin/FacebookError;)V

    goto :goto_0

    .line 595
    :cond_2
    iget-object v1, p0, Lcom/facebook/dolphin/Facebook$TokenRefreshServiceConnection$1;->this$1:Lcom/facebook/dolphin/Facebook$TokenRefreshServiceConnection;

    iget-object v1, v1, Lcom/facebook/dolphin/Facebook$TokenRefreshServiceConnection;->serviceListener:Lcom/facebook/dolphin/Facebook$ServiceListener;

    new-instance v2, Ljava/lang/Error;

    if-eqz v0, :cond_3

    :goto_1
    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/facebook/dolphin/Facebook$ServiceListener;->onError(Ljava/lang/Error;)V

    goto :goto_0

    :cond_3
    const-string v0, "Unknown service error"

    goto :goto_1
.end method
