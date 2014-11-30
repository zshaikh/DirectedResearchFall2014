.class public Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListenerThread;
.super Ljava/lang/Thread;
.source "AppoxeeGCMRegIDListenerThread.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final handler:Landroid/os/Handler;

.field private msg:Landroid/os/Message;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 13
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object v0, p0, Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListenerThread;->msg:Landroid/os/Message;

    .line 16
    iput-object p1, p0, Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListenerThread;->context:Landroid/content/Context;

    .line 17
    iput-object p2, p0, Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListenerThread;->handler:Landroid/os/Handler;

    .line 18
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListenerThread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    :goto_0
    return-void

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListenerThread;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gcm/GCMRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eq v0, v1, :cond_0

    .line 24
    iget-object v0, p0, Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListenerThread;->msg:Landroid/os/Message;

    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 25
    iget-object v0, p0, Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListenerThread;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListenerThread;->msg:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
