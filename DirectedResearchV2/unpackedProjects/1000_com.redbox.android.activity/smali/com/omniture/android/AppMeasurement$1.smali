.class Lcom/omniture/android/AppMeasurement$1;
.super Ljava/lang/Thread;
.source "AppMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/omniture/android/AppMeasurement;->startRequestProcessor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/omniture/android/AppMeasurement;


# direct methods
.method constructor <init>(Lcom/omniture/android/AppMeasurement;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/omniture/android/AppMeasurement$1;->this$0:Lcom/omniture/android/AppMeasurement;

    .line 758
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 762
    :goto_0
    # getter for: Lcom/omniture/android/AppMeasurement;->requestList:Ljava/util/LinkedList;
    invoke-static {}, Lcom/omniture/android/AppMeasurement;->access$0()Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    .line 763
    :goto_1
    :try_start_0
    # getter for: Lcom/omniture/android/AppMeasurement;->requestList:Ljava/util/LinkedList;
    invoke-static {}, Lcom/omniture/android/AppMeasurement;->access$0()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 770
    # getter for: Lcom/omniture/android/AppMeasurement;->requestList:Ljava/util/LinkedList;
    invoke-static {}, Lcom/omniture/android/AppMeasurement;->access$0()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/omniture/android/Request;

    .line 762
    .local v0, "request":Lcom/omniture/android/Request;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 772
    invoke-virtual {v0}, Lcom/omniture/android/Request;->send()V

    goto :goto_0

    .line 765
    .end local v0    # "request":Lcom/omniture/android/Request;
    :cond_0
    :try_start_1
    # getter for: Lcom/omniture/android/AppMeasurement;->requestList:Ljava/util/LinkedList;
    invoke-static {}, Lcom/omniture/android/AppMeasurement;->access$0()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 766
    :catch_0
    move-exception v2

    goto :goto_1

    .line 762
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
