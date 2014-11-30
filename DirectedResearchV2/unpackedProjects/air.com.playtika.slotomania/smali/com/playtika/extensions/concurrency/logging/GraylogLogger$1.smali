.class Lcom/playtika/extensions/concurrency/logging/GraylogLogger$1;
.super Ljava/lang/Object;
.source "GraylogLogger.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->getServiceConnection()Landroid/content/ServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/playtika/extensions/concurrency/logging/GraylogLogger;


# direct methods
.method constructor <init>(Lcom/playtika/extensions/concurrency/logging/GraylogLogger;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$1;->this$0:Lcom/playtika/extensions/concurrency/logging/GraylogLogger;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 198
    iget-object v1, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$1;->this$0:Lcom/playtika/extensions/concurrency/logging/GraylogLogger;

    monitor-enter v1

    .line 199
    :try_start_0
    iget-object v2, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$1;->this$0:Lcom/playtika/extensions/concurrency/logging/GraylogLogger;

    check-cast p2, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$LoggerBinder;

    .end local p2    # "binder":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$LoggerBinder;->getService()Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->access$0(Lcom/playtika/extensions/concurrency/logging/GraylogLogger;Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;)V

    .line 200
    iget-object v2, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$1;->this$0:Lcom/playtika/extensions/concurrency/logging/GraylogLogger;

    # getter for: Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->service:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;
    invoke-static {v2}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->access$2(Lcom/playtika/extensions/concurrency/logging/GraylogLogger;)Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;

    move-result-object v2

    iget-object v3, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$1;->this$0:Lcom/playtika/extensions/concurrency/logging/GraylogLogger;

    # getter for: Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->urlBase:Ljava/lang/String;
    invoke-static {v3}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->access$3(Lcom/playtika/extensions/concurrency/logging/GraylogLogger;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;->init(Ljava/lang/String;)V

    .line 201
    iget-object v2, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$1;->this$0:Lcom/playtika/extensions/concurrency/logging/GraylogLogger;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->access$1(Lcom/playtika/extensions/concurrency/logging/GraylogLogger;Z)V

    .line 203
    :goto_0
    iget-object v2, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$1;->this$0:Lcom/playtika/extensions/concurrency/logging/GraylogLogger;

    # getter for: Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->pendingLogs:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->access$4(Lcom/playtika/extensions/concurrency/logging/GraylogLogger;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    monitor-exit v1

    .line 212
    return-void

    .line 204
    :cond_0
    iget-object v2, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$1;->this$0:Lcom/playtika/extensions/concurrency/logging/GraylogLogger;

    # getter for: Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->pendingLogs:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->access$4(Lcom/playtika/extensions/concurrency/logging/GraylogLogger;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 205
    .local v0, "pendingItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$1;->this$0:Lcom/playtika/extensions/concurrency/logging/GraylogLogger;

    # getter for: Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->udid:Ljava/lang/String;
    invoke-static {v2}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->access$5(Lcom/playtika/extensions/concurrency/logging/GraylogLogger;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->UDID:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    invoke-virtual {v2}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 206
    sget-object v2, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->UDID:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    invoke-virtual {v2}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->getValue()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$1;->this$0:Lcom/playtika/extensions/concurrency/logging/GraylogLogger;

    # getter for: Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->udid:Ljava/lang/String;
    invoke-static {v3}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->access$5(Lcom/playtika/extensions/concurrency/logging/GraylogLogger;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_1
    iget-object v2, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$1;->this$0:Lcom/playtika/extensions/concurrency/logging/GraylogLogger;

    # getter for: Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->service:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;
    invoke-static {v2}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->access$2(Lcom/playtika/extensions/concurrency/logging/GraylogLogger;)Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;->log(Ljava/util/HashMap;)Z

    .line 209
    iget-object v2, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$1;->this$0:Lcom/playtika/extensions/concurrency/logging/GraylogLogger;

    # getter for: Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->pendingLogs:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->access$4(Lcom/playtika/extensions/concurrency/logging/GraylogLogger;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 198
    .end local v0    # "pendingItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$1;->this$0:Lcom/playtika/extensions/concurrency/logging/GraylogLogger;

    monitor-enter v0

    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$1;->this$0:Lcom/playtika/extensions/concurrency/logging/GraylogLogger;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->access$0(Lcom/playtika/extensions/concurrency/logging/GraylogLogger;Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;)V

    .line 192
    iget-object v1, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$1;->this$0:Lcom/playtika/extensions/concurrency/logging/GraylogLogger;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->access$1(Lcom/playtika/extensions/concurrency/logging/GraylogLogger;Z)V

    .line 190
    monitor-exit v0

    .line 194
    return-void

    .line 190
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
