.class Lcom/somo/apptimiser/SomoDispatch$1;
.super Ljava/lang/Object;
.source "SomoDispatch.java"

# interfaces
.implements Lcom/somo/apptimiser/SomoDispatch$StatusUpdate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/somo/apptimiser/SomoDispatch;->getStatusUpdater()Lcom/somo/apptimiser/SomoDispatch$StatusUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/somo/apptimiser/SomoDispatch;


# direct methods
.method constructor <init>(Lcom/somo/apptimiser/SomoDispatch;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/somo/apptimiser/SomoDispatch$1;->this$0:Lcom/somo/apptimiser/SomoDispatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setDelayTime(J)V
    .locals 12
    .param p1, "delayMillis"    # J

    .prologue
    const/4 v11, 0x1

    const/16 v10, 0x10

    .line 89
    iget-object v3, p0, Lcom/somo/apptimiser/SomoDispatch$1;->this$0:Lcom/somo/apptimiser/SomoDispatch;

    # getter for: Lcom/somo/apptimiser/SomoDispatch;->mHandler:Lcom/somo/apptimiser/SomoDispatch$DispatchHandler;
    invoke-static {v3}, Lcom/somo/apptimiser/SomoDispatch;->access$000(Lcom/somo/apptimiser/SomoDispatch;)Lcom/somo/apptimiser/SomoDispatch$DispatchHandler;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/somo/apptimiser/SomoDispatch$DispatchHandler;->hasMessages(I)Z

    move-result v2

    .line 90
    .local v2, "resend":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long v0, v3, p1

    .line 92
    .local v0, "delay":J
    iget-object v3, p0, Lcom/somo/apptimiser/SomoDispatch$1;->this$0:Lcom/somo/apptimiser/SomoDispatch;

    # getter for: Lcom/somo/apptimiser/SomoDispatch;->mHandler:Lcom/somo/apptimiser/SomoDispatch$DispatchHandler;
    invoke-static {v3}, Lcom/somo/apptimiser/SomoDispatch;->access$000(Lcom/somo/apptimiser/SomoDispatch;)Lcom/somo/apptimiser/SomoDispatch$DispatchHandler;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/somo/apptimiser/SomoDispatch$DispatchHandler;->removeMessages(I)V

    .line 94
    iget-object v3, p0, Lcom/somo/apptimiser/SomoDispatch$1;->this$0:Lcom/somo/apptimiser/SomoDispatch;

    # getter for: Lcom/somo/apptimiser/SomoDispatch;->mErrorBackoff:Ljava/lang/Long;
    invoke-static {v3}, Lcom/somo/apptimiser/SomoDispatch;->access$100(Lcom/somo/apptimiser/SomoDispatch;)Ljava/lang/Long;

    move-result-object v4

    monitor-enter v4

    .line 95
    :try_start_0
    iget-object v3, p0, Lcom/somo/apptimiser/SomoDispatch$1;->this$0:Lcom/somo/apptimiser/SomoDispatch;

    # getter for: Lcom/somo/apptimiser/SomoDispatch;->mErrorBackoff:Ljava/lang/Long;
    invoke-static {v3}, Lcom/somo/apptimiser/SomoDispatch;->access$100(Lcom/somo/apptimiser/SomoDispatch;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v0, v5

    if-lez v3, :cond_0

    .line 96
    iget-object v3, p0, Lcom/somo/apptimiser/SomoDispatch$1;->this$0:Lcom/somo/apptimiser/SomoDispatch;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    # setter for: Lcom/somo/apptimiser/SomoDispatch;->mErrorBackoff:Ljava/lang/Long;
    invoke-static {v3, v5}, Lcom/somo/apptimiser/SomoDispatch;->access$102(Lcom/somo/apptimiser/SomoDispatch;Ljava/lang/Long;)Ljava/lang/Long;

    .line 97
    # getter for: Lcom/somo/apptimiser/SomoDispatch;->log:Lcom/somo/apptimiser/SomoLogger;
    invoke-static {}, Lcom/somo/apptimiser/SomoDispatch;->access$200()Lcom/somo/apptimiser/SomoLogger;

    move-result-object v3

    const-string v5, "Update backoff value to %d millis. Moderation now set to %d millis"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/somo/apptimiser/SomoDispatch$1;->this$0:Lcom/somo/apptimiser/SomoDispatch;

    # getter for: Lcom/somo/apptimiser/SomoDispatch;->mErrorBackoff:Ljava/lang/Long;
    invoke-static {v8}, Lcom/somo/apptimiser/SomoDispatch;->access$100(Lcom/somo/apptimiser/SomoDispatch;)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/somo/apptimiser/SomoDispatch$1;->this$0:Lcom/somo/apptimiser/SomoDispatch;

    invoke-virtual {v8}, Lcom/somo/apptimiser/SomoDispatch;->getModeration()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Lcom/somo/apptimiser/SomoLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 100
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    if-ne v2, v11, :cond_1

    .line 102
    iget-object v3, p0, Lcom/somo/apptimiser/SomoDispatch$1;->this$0:Lcom/somo/apptimiser/SomoDispatch;

    # getter for: Lcom/somo/apptimiser/SomoDispatch;->mHandler:Lcom/somo/apptimiser/SomoDispatch$DispatchHandler;
    invoke-static {v3}, Lcom/somo/apptimiser/SomoDispatch;->access$000(Lcom/somo/apptimiser/SomoDispatch;)Lcom/somo/apptimiser/SomoDispatch$DispatchHandler;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/somo/apptimiser/SomoDispatch$DispatchHandler;->removeMessages(I)V

    .line 103
    iget-object v3, p0, Lcom/somo/apptimiser/SomoDispatch$1;->this$0:Lcom/somo/apptimiser/SomoDispatch;

    # getter for: Lcom/somo/apptimiser/SomoDispatch;->mHandler:Lcom/somo/apptimiser/SomoDispatch$DispatchHandler;
    invoke-static {v3}, Lcom/somo/apptimiser/SomoDispatch;->access$000(Lcom/somo/apptimiser/SomoDispatch;)Lcom/somo/apptimiser/SomoDispatch$DispatchHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/somo/apptimiser/SomoDispatch$1;->this$0:Lcom/somo/apptimiser/SomoDispatch;

    invoke-virtual {v4}, Lcom/somo/apptimiser/SomoDispatch;->getModeration()J

    move-result-wide v4

    invoke-virtual {v3, v10, v4, v5}, Lcom/somo/apptimiser/SomoDispatch$DispatchHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 105
    :cond_1
    return-void

    .line 100
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
