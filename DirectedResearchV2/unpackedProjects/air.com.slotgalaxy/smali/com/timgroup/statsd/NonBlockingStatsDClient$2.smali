.class Lcom/timgroup/statsd/NonBlockingStatsDClient$2;
.super Ljava/lang/Object;
.source "NonBlockingStatsDClient.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/timgroup/statsd/NonBlockingStatsDClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final delegate:Ljava/util/concurrent/ThreadFactory;

.field final synthetic this$0:Lcom/timgroup/statsd/NonBlockingStatsDClient;


# direct methods
.method constructor <init>(Lcom/timgroup/statsd/NonBlockingStatsDClient;)V
    .locals 1

    .prologue
    .line 47
    iput-object p1, p0, Lcom/timgroup/statsd/NonBlockingStatsDClient$2;->this$0:Lcom/timgroup/statsd/NonBlockingStatsDClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/timgroup/statsd/NonBlockingStatsDClient$2;->delegate:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 50
    iget-object v1, p0, Lcom/timgroup/statsd/NonBlockingStatsDClient$2;->delegate:Ljava/util/concurrent/ThreadFactory;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    .line 51
    .local v0, "result":Ljava/lang/Thread;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatsD-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 52
    return-object v0
.end method
