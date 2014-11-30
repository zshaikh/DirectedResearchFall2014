.class Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;
.super Ljava/lang/Object;
.source "MqttConnectionManager.java"

# interfaces
.implements Lcom/facebook/orca/push/mqtt/protocol/MqttClientCallback;


# instance fields
.field final synthetic a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

.field private final b:Lcom/facebook/orca/push/mqtt/protocol/MqttClient;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/push/mqtt/MqttConnectionManager;Lcom/facebook/orca/push/mqtt/protocol/MqttClient;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    iput-object p2, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;->b:Lcom/facebook/orca/push/mqtt/protocol/MqttClient;

    .line 306
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;)Lcom/facebook/orca/push/mqtt/protocol/MqttClient;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;->b:Lcom/facebook/orca/push/mqtt/protocol/MqttClient;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-static {v0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->b(Lcom/facebook/orca/push/mqtt/MqttConnectionManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler$1;-><init>(Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 319
    return-void
.end method

.method public a(I)V
    .locals 3

    .prologue
    .line 363
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-static {v0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->d(Lcom/facebook/orca/push/mqtt/MqttConnectionManager;)Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    .line 364
    :try_start_0
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-static {v1}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->d(Lcom/facebook/orca/push/mqtt/MqttConnectionManager;)Ljava/util/Set;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 365
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-static {v1}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->d(Lcom/facebook/orca/push/mqtt/MqttConnectionManager;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 366
    monitor-exit v0

    .line 367
    return-void

    .line 366
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Ljava/lang/String;[BIZ)V
    .locals 3

    .prologue
    .line 339
    invoke-static {p2}, Lcom/facebook/orca/common/util/StringUtil;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 341
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-static {v0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->c(Lcom/facebook/orca/push/mqtt/MqttConnectionManager;)Lcom/google/common/collect/Multimap;

    move-result-object v0

    monitor-enter v0

    .line 342
    :try_start_0
    iget-object v2, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-static {v2}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->c(Lcom/facebook/orca/push/mqtt/MqttConnectionManager;)Lcom/google/common/collect/Multimap;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/google/common/collect/Multimap;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    .line 343
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$PublishListener;

    .line 346
    invoke-virtual {v0, p1, v1}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$PublishListener;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 343
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-static {v0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->b(Lcom/facebook/orca/push/mqtt/MqttConnectionManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler$3;

    invoke-direct {v2, p0, p1, v1}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler$3;-><init>(Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 358
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-static {v0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->b(Lcom/facebook/orca/push/mqtt/MqttConnectionManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler$2;-><init>(Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 331
    return-void
.end method
