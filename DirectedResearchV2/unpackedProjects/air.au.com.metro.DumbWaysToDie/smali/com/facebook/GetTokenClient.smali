.class final Lcom/facebook/GetTokenClient;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final applicationId:Ljava/lang/String;

.field final context:Landroid/content/Context;

.field final handler:Landroid/os/Handler;

.field listener:Lcom/facebook/GetTokenClient$CompletedListener;

.field running:Z

.field sender:Landroid/os/Messenger;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    iput-object v0, p0, Lcom/facebook/GetTokenClient;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/GetTokenClient;->applicationId:Ljava/lang/String;

    new-instance v0, Lcom/facebook/GetTokenClient$1;

    invoke-direct {v0, p0}, Lcom/facebook/GetTokenClient$1;-><init>(Lcom/facebook/GetTokenClient;)V

    iput-object v0, p0, Lcom/facebook/GetTokenClient;->handler:Landroid/os/Handler;

    return-void

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/facebook/GetTokenClient;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/GetTokenClient;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private callback(Landroid/os/Bundle;)V
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/GetTokenClient;->running:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/GetTokenClient;->running:Z

    iget-object v0, p0, Lcom/facebook/GetTokenClient;->listener:Lcom/facebook/GetTokenClient$CompletedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/facebook/GetTokenClient$CompletedListener;->completed(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private getToken()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.facebook.platform.extra.APPLICATION_ID"

    iget-object v2, p0, Lcom/facebook/GetTokenClient;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v1, 0x10000

    invoke-static {v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const v2, 0x133060d

    iput v2, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    new-instance v0, Landroid/os/Messenger;

    iget-object v2, p0, Lcom/facebook/GetTokenClient;->handler:Landroid/os/Handler;

    invoke-direct {v0, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_0
    iget-object v0, p0, Lcom/facebook/GetTokenClient;->sender:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v3}, Lcom/facebook/GetTokenClient;->callback(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x10001

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.facebook.platform.status.ERROR_TYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/GetTokenClient;->callback(Landroid/os/Bundle;)V

    :goto_0
    iget-object v0, p0, Lcom/facebook/GetTokenClient;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/facebook/GetTokenClient;->callback(Landroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method final cancel()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/GetTokenClient;->running:Z

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/facebook/GetTokenClient;->sender:Landroid/os/Messenger;

    invoke-direct {p0}, Lcom/facebook/GetTokenClient;->getToken()V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/GetTokenClient;->sender:Landroid/os/Messenger;

    iget-object v0, p0, Lcom/facebook/GetTokenClient;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-direct {p0, v1}, Lcom/facebook/GetTokenClient;->callback(Landroid/os/Bundle;)V

    return-void
.end method

.method final setCompletedListener(Lcom/facebook/GetTokenClient$CompletedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/GetTokenClient;->listener:Lcom/facebook/GetTokenClient$CompletedListener;

    return-void
.end method

.method final start()Z
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.facebook.platform.PLATFORM_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/GetTokenClient;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/facebook/NativeProtocol;->validateKatanaServiceIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/GetTokenClient;->callback(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iput-boolean v2, p0, Lcom/facebook/GetTokenClient;->running:Z

    iget-object v1, p0, Lcom/facebook/GetTokenClient;->context:Landroid/content/Context;

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move v0, v2

    goto :goto_0
.end method
