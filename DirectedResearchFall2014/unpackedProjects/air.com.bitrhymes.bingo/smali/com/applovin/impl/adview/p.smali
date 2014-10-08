.class Lcom/applovin/impl/adview/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/AdViewControllerJsInterface;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/AdViewControllerJsInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/p;->a:Lcom/applovin/impl/adview/AdViewControllerJsInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    # getter for: Lcom/applovin/impl/adview/AdViewControllerJsInterface;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Waiting for VideoView to report a valid value."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/applovin/impl/adview/p;->a:Lcom/applovin/impl/adview/AdViewControllerJsInterface;

    const/4 v1, 0x1

    # setter for: Lcom/applovin/impl/adview/AdViewControllerJsInterface;->currentlyWaiting:Z
    invoke-static {v0, v1}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->access$502(Lcom/applovin/impl/adview/AdViewControllerJsInterface;Z)Z

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/applovin/impl/adview/q;

    invoke-direct {v1, p0}, Lcom/applovin/impl/adview/q;-><init>(Lcom/applovin/impl/adview/p;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/p;->a:Lcom/applovin/impl/adview/AdViewControllerJsInterface;

    # getter for: Lcom/applovin/impl/adview/AdViewControllerJsInterface;->videoOverlay:Lcom/applovin/impl/adview/AppLovinVideoOverlay;
    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->access$300(Lcom/applovin/impl/adview/AdViewControllerJsInterface;)Lcom/applovin/impl/adview/AppLovinVideoOverlay;

    move-result-object v0

    invoke-interface {v0}, Lcom/applovin/impl/adview/AppLovinVideoOverlay;->getPercentViewed()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/adview/p;->a:Lcom/applovin/impl/adview/AdViewControllerJsInterface;

    # getter for: Lcom/applovin/impl/adview/AdViewControllerJsInterface;->interruptNotify:Z
    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->access$600(Lcom/applovin/impl/adview/AdViewControllerJsInterface;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/adview/p;->a:Lcom/applovin/impl/adview/AdViewControllerJsInterface;

    # getter for: Lcom/applovin/impl/adview/AdViewControllerJsInterface;->interruptNotify:Z
    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->access$600(Lcom/applovin/impl/adview/AdViewControllerJsInterface;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/adview/p;->a:Lcom/applovin/impl/adview/AdViewControllerJsInterface;

    const/4 v1, 0x0

    # setter for: Lcom/applovin/impl/adview/AdViewControllerJsInterface;->currentlyWaiting:Z
    invoke-static {v0, v1}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->access$502(Lcom/applovin/impl/adview/AdViewControllerJsInterface;Z)Z

    # getter for: Lcom/applovin/impl/adview/AdViewControllerJsInterface;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video view returned percent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/adview/p;->a:Lcom/applovin/impl/adview/AdViewControllerJsInterface;

    # getter for: Lcom/applovin/impl/adview/AdViewControllerJsInterface;->videoOverlay:Lcom/applovin/impl/adview/AppLovinVideoOverlay;
    invoke-static {v2}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->access$300(Lcom/applovin/impl/adview/AdViewControllerJsInterface;)Lcom/applovin/impl/adview/AppLovinVideoOverlay;

    move-result-object v2

    invoke-interface {v2}, Lcom/applovin/impl/adview/AppLovinVideoOverlay;->getPercentViewed()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/applovin/impl/adview/p;->a:Lcom/applovin/impl/adview/AdViewControllerJsInterface;

    # getter for: Lcom/applovin/impl/adview/AdViewControllerJsInterface;->parentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->access$700(Lcom/applovin/impl/adview/AdViewControllerJsInterface;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/adview/s;

    iget-object v2, p0, Lcom/applovin/impl/adview/p;->a:Lcom/applovin/impl/adview/AdViewControllerJsInterface;

    invoke-direct {v1, v2}, Lcom/applovin/impl/adview/s;-><init>(Lcom/applovin/impl/adview/AdViewControllerJsInterface;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_2
    # getter for: Lcom/applovin/impl/adview/AdViewControllerJsInterface;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notification was interrupted by timeout."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
