.class Lcom/dolphin/browser/util/ct;
.super Ljava/lang/Thread;
.source "TaskQueue.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/util/cs;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/util/cs;)V
    .locals 1

    .prologue
    .line 47
    iput-object p1, p0, Lcom/dolphin/browser/util/ct;->a:Lcom/dolphin/browser/util/cs;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 48
    const-string v0, "TaskQueue Thread"

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/util/ct;->setName(Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/util/ct;->setPriority(I)V

    .line 50
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/dolphin/browser/util/ct;->a:Lcom/dolphin/browser/util/cs;

    invoke-static {v0}, Lcom/dolphin/browser/util/cs;->a(Lcom/dolphin/browser/util/cs;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/util/ct;->a:Lcom/dolphin/browser/util/cs;

    invoke-static {v0}, Lcom/dolphin/browser/util/cs;->a(Lcom/dolphin/browser/util/cs;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 63
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/util/ct;->a:Lcom/dolphin/browser/util/cs;

    invoke-static {v0}, Lcom/dolphin/browser/util/cs;->b(Lcom/dolphin/browser/util/cs;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/dolphin/browser/util/ct;->interrupted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    :try_start_1
    iget-object v0, p0, Lcom/dolphin/browser/util/ct;->a:Lcom/dolphin/browser/util/cs;

    invoke-static {v0}, Lcom/dolphin/browser/util/cs;->c(Lcom/dolphin/browser/util/cs;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 66
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    const-string v1, "TaskQueue"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 58
    :catch_1
    move-exception v0

    .line 59
    const-string v1, "TaskQueue"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 71
    :cond_1
    return-void
.end method
