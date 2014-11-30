.class Lcom/facebook/dolphin/Facebook$TokenRefreshServiceConnection;
.super Ljava/lang/Object;
.source "Facebook.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final applicationsContext:Landroid/content/Context;

.field final messageReceiver:Landroid/os/Messenger;

.field messageSender:Landroid/os/Messenger;

.field final serviceListener:Lcom/facebook/dolphin/Facebook$ServiceListener;

.field final synthetic this$0:Lcom/facebook/dolphin/Facebook;


# direct methods
.method public constructor <init>(Lcom/facebook/dolphin/Facebook;Landroid/content/Context;Lcom/facebook/dolphin/Facebook$ServiceListener;)V
    .locals 2

    .prologue
    .line 612
    iput-object p1, p0, Lcom/facebook/dolphin/Facebook$TokenRefreshServiceConnection;->this$0:Lcom/facebook/dolphin/Facebook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 571
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/facebook/dolphin/Facebook$TokenRefreshServiceConnection$1;

    invoke-direct {v1, p0}, Lcom/facebook/dolphin/Facebook$TokenRefreshServiceConnection$1;-><init>(Lcom/facebook/dolphin/Facebook$TokenRefreshServiceConnection;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/facebook/dolphin/Facebook$TokenRefreshServiceConnection;->messageReceiver:Landroid/os/Messenger;

    .line 609
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/dolphin/Facebook$TokenRefreshServiceConnection;->messageSender:Landroid/os/Messenger;

    .line 613
    iput-object p2, p0, Lcom/facebook/dolphin/Facebook$TokenRefreshServiceConnection;->applicationsContext:Landroid/content/Context;

    .line 614
    iput-object p3, p0, Lcom/facebook/dolphin/Facebook$TokenRefreshServiceConnection;->serviceListener:Lcom/facebook/dolphin/Facebook$ServiceListener;

    .line 615
    return-void
.end method

.method private refreshToken()V
    .locals 3

    .prologue
    .line 632
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 633
    const-string v1, "access_token"

    iget-object v2, p0, Lcom/facebook/dolphin/Facebook$TokenRefreshServiceConnection;->this$0:Lcom/facebook/dolphin/Facebook;

    # getter for: Lcom/facebook/dolphin/Facebook;->mAccessToken:Ljava/lang/String;
    invoke-static {v2}, Lcom/facebook/dolphin/Facebook;->access$100(Lcom/facebook/dolphin/Facebook;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 636
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 637
    iget-object v0, p0, Lcom/facebook/dolphin/Facebook$TokenRefreshServiceConnection;->messageReceiver:Landroid/os/Messenger;

    iput-object v0, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 640
    :try_start_0
    iget-object v0, p0, Lcom/facebook/dolphin/Facebook$TokenRefreshServiceConnection;->messageSender:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    :goto_0
    return-void

    .line 641
    :catch_0
    move-exception v0

    .line 642
    iget-object v0, p0, Lcom/facebook/dolphin/Facebook$TokenRefreshServiceConnection;->serviceListener:Lcom/facebook/dolphin/Facebook$ServiceListener;

    new-instance v1, Ljava/lang/Error;

    const-string v2, "Service connection error"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/facebook/dolphin/Facebook$ServiceListener;->onError(Ljava/lang/Error;)V

    goto :goto_0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 619
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/facebook/dolphin/Facebook$TokenRefreshServiceConnection;->messageSender:Landroid/os/Messenger;

    .line 620
    invoke-direct {p0}, Lcom/facebook/dolphin/Facebook$TokenRefreshServiceConnection;->refreshToken()V

    .line 621
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .prologue
    .line 625
    iget-object v0, p0, Lcom/facebook/dolphin/Facebook$TokenRefreshServiceConnection;->serviceListener:Lcom/facebook/dolphin/Facebook$ServiceListener;

    new-instance v1, Ljava/lang/Error;

    const-string v2, "Service disconnected"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/facebook/dolphin/Facebook$ServiceListener;->onError(Ljava/lang/Error;)V

    .line 628
    iget-object v0, p0, Lcom/facebook/dolphin/Facebook$TokenRefreshServiceConnection;->applicationsContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 629
    return-void
.end method
