.class Lcom/applovin/impl/adview/q;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/p;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/p;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/q;->a:Lcom/applovin/impl/adview/p;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/adview/q;->a:Lcom/applovin/impl/adview/p;

    iget-object v0, v0, Lcom/applovin/impl/adview/p;->a:Lcom/applovin/impl/adview/AdViewControllerJsInterface;

    # getter for: Lcom/applovin/impl/adview/AdViewControllerJsInterface;->currentlyWaiting:Z
    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->access$500(Lcom/applovin/impl/adview/AdViewControllerJsInterface;)Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/applovin/impl/adview/AdViewControllerJsInterface;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Timeout was reached, expiring video notification."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/applovin/impl/adview/q;->a:Lcom/applovin/impl/adview/p;

    iget-object v0, v0, Lcom/applovin/impl/adview/p;->a:Lcom/applovin/impl/adview/AdViewControllerJsInterface;

    const/4 v1, 0x1

    # setter for: Lcom/applovin/impl/adview/AdViewControllerJsInterface;->interruptNotify:Z
    invoke-static {v0, v1}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->access$602(Lcom/applovin/impl/adview/AdViewControllerJsInterface;Z)Z

    :goto_0
    return-void

    :cond_0
    # getter for: Lcom/applovin/impl/adview/AdViewControllerJsInterface;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Timeout was reached, notification has already finished."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
