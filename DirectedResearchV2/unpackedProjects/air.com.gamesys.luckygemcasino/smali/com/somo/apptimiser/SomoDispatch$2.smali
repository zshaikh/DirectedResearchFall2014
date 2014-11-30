.class Lcom/somo/apptimiser/SomoDispatch$2;
.super Ljava/lang/Object;
.source "SomoDispatch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/somo/apptimiser/SomoDispatch;
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
    .line 115
    iput-object p1, p0, Lcom/somo/apptimiser/SomoDispatch$2;->this$0:Lcom/somo/apptimiser/SomoDispatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 118
    iget-object v4, p0, Lcom/somo/apptimiser/SomoDispatch$2;->this$0:Lcom/somo/apptimiser/SomoDispatch;

    # invokes: Lcom/somo/apptimiser/SomoDispatch;->isConnected()Z
    invoke-static {v4}, Lcom/somo/apptimiser/SomoDispatch;->access$300(Lcom/somo/apptimiser/SomoDispatch;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 120
    iget-object v4, p0, Lcom/somo/apptimiser/SomoDispatch$2;->this$0:Lcom/somo/apptimiser/SomoDispatch;

    # getter for: Lcom/somo/apptimiser/SomoDispatch;->mConnectionReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v4}, Lcom/somo/apptimiser/SomoDispatch;->access$400(Lcom/somo/apptimiser/SomoDispatch;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 122
    iget-object v4, p0, Lcom/somo/apptimiser/SomoDispatch$2;->this$0:Lcom/somo/apptimiser/SomoDispatch;

    # getter for: Lcom/somo/apptimiser/SomoDispatch;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/somo/apptimiser/SomoDispatch;->access$500(Lcom/somo/apptimiser/SomoDispatch;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/somo/apptimiser/SomoDispatch$2;->this$0:Lcom/somo/apptimiser/SomoDispatch;

    # getter for: Lcom/somo/apptimiser/SomoDispatch;->mConnectionReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v5}, Lcom/somo/apptimiser/SomoDispatch;->access$400(Lcom/somo/apptimiser/SomoDispatch;)Landroid/content/BroadcastReceiver;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 123
    iget-object v4, p0, Lcom/somo/apptimiser/SomoDispatch$2;->this$0:Lcom/somo/apptimiser/SomoDispatch;

    const/4 v5, 0x0

    # setter for: Lcom/somo/apptimiser/SomoDispatch;->mConnectionReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v4, v5}, Lcom/somo/apptimiser/SomoDispatch;->access$402(Lcom/somo/apptimiser/SomoDispatch;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 126
    :cond_0
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v2, "mSendingEvents":Ljava/util/List;, "Ljava/util/List<Lcom/somo/apptimiser/SomoEvent;>;"
    const/4 v3, 0x0

    .line 129
    .local v3, "sent":Z
    iget-object v4, p0, Lcom/somo/apptimiser/SomoDispatch$2;->this$0:Lcom/somo/apptimiser/SomoDispatch;

    # getter for: Lcom/somo/apptimiser/SomoDispatch;->mEventQueue:Lcom/somo/apptimiser/SomoEventQueue;
    invoke-static {v4}, Lcom/somo/apptimiser/SomoDispatch;->access$600(Lcom/somo/apptimiser/SomoDispatch;)Lcom/somo/apptimiser/SomoEventQueue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/somo/apptimiser/SomoEventQueue;->getEvents()Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 131
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 132
    iget-object v4, p0, Lcom/somo/apptimiser/SomoDispatch$2;->this$0:Lcom/somo/apptimiser/SomoDispatch;

    # getter for: Lcom/somo/apptimiser/SomoDispatch;->mNetworkAgent:Lcom/somo/apptimiser/SomoNetworkAgent;
    invoke-static {v4}, Lcom/somo/apptimiser/SomoDispatch;->access$800(Lcom/somo/apptimiser/SomoDispatch;)Lcom/somo/apptimiser/SomoNetworkAgent;

    move-result-object v4

    iget-object v5, p0, Lcom/somo/apptimiser/SomoDispatch$2;->this$0:Lcom/somo/apptimiser/SomoDispatch;

    # getter for: Lcom/somo/apptimiser/SomoDispatch;->mFeedback:Lcom/somo/apptimiser/SomoDispatch$StatusUpdate;
    invoke-static {v5}, Lcom/somo/apptimiser/SomoDispatch;->access$700(Lcom/somo/apptimiser/SomoDispatch;)Lcom/somo/apptimiser/SomoDispatch$StatusUpdate;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/somo/apptimiser/SomoNetworkAgent;->send(Ljava/util/List;Lcom/somo/apptimiser/SomoDispatch$StatusUpdate;)Z

    move-result v3

    .line 135
    :cond_1
    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 136
    iget-object v4, p0, Lcom/somo/apptimiser/SomoDispatch$2;->this$0:Lcom/somo/apptimiser/SomoDispatch;

    # getter for: Lcom/somo/apptimiser/SomoDispatch;->mEventQueue:Lcom/somo/apptimiser/SomoEventQueue;
    invoke-static {v4}, Lcom/somo/apptimiser/SomoDispatch;->access$600(Lcom/somo/apptimiser/SomoDispatch;)Lcom/somo/apptimiser/SomoEventQueue;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/somo/apptimiser/SomoEventQueue;->removeEvents(Ljava/util/List;)V

    .line 137
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 165
    .end local v2    # "mSendingEvents":Ljava/util/List;, "Ljava/util/List<Lcom/somo/apptimiser/SomoEvent;>;"
    .end local v3    # "sent":Z
    :cond_2
    :goto_0
    return-void

    .line 139
    .restart local v2    # "mSendingEvents":Ljava/util/List;, "Ljava/util/List<Lcom/somo/apptimiser/SomoEvent;>;"
    .restart local v3    # "sent":Z
    :cond_3
    # getter for: Lcom/somo/apptimiser/SomoDispatch;->log:Lcom/somo/apptimiser/SomoLogger;
    invoke-static {}, Lcom/somo/apptimiser/SomoDispatch;->access$200()Lcom/somo/apptimiser/SomoLogger;

    move-result-object v4

    const-string v5, "Return has failed"

    invoke-virtual {v4, v5}, Lcom/somo/apptimiser/SomoLogger;->d(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    .end local v2    # "mSendingEvents":Ljava/util/List;, "Ljava/util/List<Lcom/somo/apptimiser/SomoEvent;>;"
    .end local v3    # "sent":Z
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/somo/apptimiser/SomoApptimiser;->TAG:Ljava/lang/String;

    const-string v5, "Cannot upload Somo Apptimiser event(s)"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 145
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    # getter for: Lcom/somo/apptimiser/SomoDispatch;->log:Lcom/somo/apptimiser/SomoLogger;
    invoke-static {}, Lcom/somo/apptimiser/SomoDispatch;->access$200()Lcom/somo/apptimiser/SomoLogger;

    move-result-object v4

    const-string v5, "No active connection"

    invoke-virtual {v4, v5}, Lcom/somo/apptimiser/SomoLogger;->d(Ljava/lang/String;)I

    .line 147
    iget-object v4, p0, Lcom/somo/apptimiser/SomoDispatch$2;->this$0:Lcom/somo/apptimiser/SomoDispatch;

    # getter for: Lcom/somo/apptimiser/SomoDispatch;->mConnectionReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v4}, Lcom/somo/apptimiser/SomoDispatch;->access$400(Lcom/somo/apptimiser/SomoDispatch;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    if-nez v4, :cond_2

    .line 148
    iget-object v4, p0, Lcom/somo/apptimiser/SomoDispatch$2;->this$0:Lcom/somo/apptimiser/SomoDispatch;

    new-instance v5, Lcom/somo/apptimiser/SomoDispatch$2$1;

    invoke-direct {v5, p0}, Lcom/somo/apptimiser/SomoDispatch$2$1;-><init>(Lcom/somo/apptimiser/SomoDispatch$2;)V

    # setter for: Lcom/somo/apptimiser/SomoDispatch;->mConnectionReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v4, v5}, Lcom/somo/apptimiser/SomoDispatch;->access$402(Lcom/somo/apptimiser/SomoDispatch;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 160
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 161
    .local v1, "filters":Landroid/content/IntentFilter;
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    iget-object v4, p0, Lcom/somo/apptimiser/SomoDispatch$2;->this$0:Lcom/somo/apptimiser/SomoDispatch;

    # getter for: Lcom/somo/apptimiser/SomoDispatch;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/somo/apptimiser/SomoDispatch;->access$500(Lcom/somo/apptimiser/SomoDispatch;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/somo/apptimiser/SomoDispatch$2;->this$0:Lcom/somo/apptimiser/SomoDispatch;

    # getter for: Lcom/somo/apptimiser/SomoDispatch;->mConnectionReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v5}, Lcom/somo/apptimiser/SomoDispatch;->access$400(Lcom/somo/apptimiser/SomoDispatch;)Landroid/content/BroadcastReceiver;

    move-result-object v5

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6, v1}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method
