.class final Lcom/vungle/sdk/VungleIntentService$a$1;
.super Landroid/os/Handler;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/sdk/VungleIntentService$a;-><init>(Lcom/vungle/sdk/VungleIntentService;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/sdk/VungleIntentService;

.field final synthetic b:Landroid/os/Looper;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/vungle/sdk/VungleIntentService$a;


# direct methods
.method constructor <init>(Lcom/vungle/sdk/VungleIntentService$a;Landroid/os/Looper;Lcom/vungle/sdk/VungleIntentService;Landroid/os/Looper;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/vungle/sdk/VungleIntentService$a$1;->d:Lcom/vungle/sdk/VungleIntentService$a;

    iput-object p3, p0, Lcom/vungle/sdk/VungleIntentService$a$1;->a:Lcom/vungle/sdk/VungleIntentService;

    iput-object p4, p0, Lcom/vungle/sdk/VungleIntentService$a$1;->b:Landroid/os/Looper;

    iput-object p5, p0, Lcom/vungle/sdk/VungleIntentService$a$1;->c:Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/vungle/sdk/VungleIntentService$a$1;->d:Lcom/vungle/sdk/VungleIntentService$a;

    invoke-virtual {v0, p1}, Lcom/vungle/sdk/VungleIntentService$a;->a(Landroid/os/Message;)V

    .line 130
    iget-object v0, p0, Lcom/vungle/sdk/VungleIntentService$a$1;->a:Lcom/vungle/sdk/VungleIntentService;

    iget-object v0, v0, Lcom/vungle/sdk/VungleIntentService;->b:Ljava/util/Map;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/vungle/sdk/VungleIntentService$a$1;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    sget-object v1, Lcom/vungle/sdk/VungleIntentService;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Stopping "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vungle/sdk/VungleIntentService$a$1;->d:Lcom/vungle/sdk/VungleIntentService$a;

    iget-object v2, v2, Lcom/vungle/sdk/VungleIntentService$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget-object v1, p0, Lcom/vungle/sdk/VungleIntentService$a$1;->b:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 137
    iget-object v1, p0, Lcom/vungle/sdk/VungleIntentService$a$1;->a:Lcom/vungle/sdk/VungleIntentService;

    iget-object v1, v1, Lcom/vungle/sdk/VungleIntentService;->b:Ljava/util/Map;

    iget-object v2, p0, Lcom/vungle/sdk/VungleIntentService$a$1;->c:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v1, p0, Lcom/vungle/sdk/VungleIntentService$a$1;->a:Lcom/vungle/sdk/VungleIntentService;

    iget-object v1, v1, Lcom/vungle/sdk/VungleIntentService;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    sget-object v1, Lcom/vungle/sdk/VungleIntentService;->a:Ljava/lang/String;

    .line 141
    iget-object v1, p0, Lcom/vungle/sdk/VungleIntentService$a$1;->a:Lcom/vungle/sdk/VungleIntentService;

    invoke-virtual {v1}, Lcom/vungle/sdk/VungleIntentService;->stopSelf()V

    .line 144
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    :goto_0
    return-void

    .line 144
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 149
    :catch_0
    move-exception v0

    .line 148
    sget-object v1, Lcom/vungle/sdk/VungleIntentService;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/vungle/sdk/r;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
