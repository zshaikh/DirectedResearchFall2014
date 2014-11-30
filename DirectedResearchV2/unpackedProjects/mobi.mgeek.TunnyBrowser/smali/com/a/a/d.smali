.class final Lcom/a/a/d;
.super Ljava/lang/Thread;
.source "TaskQueue.java"


# instance fields
.field private synthetic a:Lcom/a/a/c;


# direct methods
.method public constructor <init>(Lcom/a/a/c;)V
    .locals 1

    .prologue
    .line 44
    iput-object p1, p0, Lcom/a/a/d;->a:Lcom/a/a/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 45
    const-string v0, "TaskQueue Thread"

    invoke-virtual {p0, v0}, Lcom/a/a/d;->setName(Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/a/a/d;->setPriority(I)V

    .line 47
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 53
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/a/a/d;->a:Lcom/a/a/c;

    invoke-static {v0}, Lcom/a/a/c;->a(Lcom/a/a/c;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 54
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    const-string v1, "TaskQueue"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method
