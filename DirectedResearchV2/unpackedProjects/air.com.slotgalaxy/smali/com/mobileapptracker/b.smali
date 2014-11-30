.class final Lcom/mobileapptracker/b;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/mobileapptracker/MobileAppTracker;


# direct methods
.method constructor <init>(Lcom/mobileapptracker/MobileAppTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/mobileapptracker/b;->a:Lcom/mobileapptracker/MobileAppTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/mobileapptracker/b;->a:Lcom/mobileapptracker/MobileAppTracker;

    invoke-static {v0}, Lcom/mobileapptracker/MobileAppTracker;->d(Lcom/mobileapptracker/MobileAppTracker;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobileapptracker/b;->a:Lcom/mobileapptracker/MobileAppTracker;

    invoke-static {v0}, Lcom/mobileapptracker/MobileAppTracker;->e(Lcom/mobileapptracker/MobileAppTracker;)I

    move-result v0

    if-lez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/mobileapptracker/b;->a:Lcom/mobileapptracker/MobileAppTracker;

    invoke-static {v0}, Lcom/mobileapptracker/MobileAppTracker;->f(Lcom/mobileapptracker/MobileAppTracker;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method
