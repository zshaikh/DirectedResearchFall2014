.class public Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader$MyWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "WebViewLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MyWebViewClient"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const-string v5, "IMAdTrackerSDK_V_2_5_1"

    .line 114
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->loadingWebview:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    sput-boolean v2, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->lastUploadStatus:Z

    .line 119
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->goalEventList:Lcom/inmobi/adtracker/androidsdk/impl/GoalList;

    invoke-virtual {v0, v2}, Lcom/inmobi/adtracker/androidsdk/impl/GoalList;->remove(I)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->goalEventList:Lcom/inmobi/adtracker/androidsdk/impl/GoalList;

    sget-object v1, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->mCurrentEvent:Lcom/inmobi/adtracker/androidsdk/impl/Goal;

    invoke-virtual {v1}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->getGoalName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->mCurrentEvent:Lcom/inmobi/adtracker/androidsdk/impl/Goal;

    invoke-virtual {v2}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->getGoalCount()I

    move-result v2

    sget-object v3, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->mCurrentEvent:Lcom/inmobi/adtracker/androidsdk/impl/Goal;

    invoke-virtual {v3}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->getRetryTime()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/inmobi/adtracker/androidsdk/impl/GoalList;->addGoal(Ljava/lang/String;IJ)Z

    .line 121
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->mCurrentEvent:Lcom/inmobi/adtracker/androidsdk/impl/Goal;

    invoke-virtual {v0}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->getGoalName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->mCurrentEvent:Lcom/inmobi/adtracker/androidsdk/impl/Goal;

    invoke-virtual {v1}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->getGoalCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->increaseRetryTime(Ljava/lang/String;I)Z

    .line 122
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->networkThread:Ljava/lang/Thread;

    monitor-enter v0

    .line 123
    :try_start_0
    sget-object v1, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->networkThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 122
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    const-string v0, "IMAdTrackerSDK_V_2_5_1"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to upload goal: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->mCurrentEvent:Lcom/inmobi/adtracker/androidsdk/impl/Goal;

    invoke-virtual {v1}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->getGoalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v0, "IMAdTrackerSDK_V_2_5_1"

    const-string v0, "Webview Received Error"

    invoke-static {v5, v0}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void

    .line 122
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const-string v5, "IMAdTrackerStatusUpload"

    const-string v8, "IMAdTrackerSDK_V_2_5_1"

    const-string v7, "Failed to upload goal: "

    .line 55
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 57
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->loadingWebview:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    const-string v0, "iat"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x7

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {v0}, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->a(Ljava/lang/String;)Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader$a;

    move-result-object v0

    .line 65
    if-nez v0, :cond_2

    .line 67
    sput-boolean v4, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->lastUploadStatus:Z

    .line 70
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->goalEventList:Lcom/inmobi/adtracker/androidsdk/impl/GoalList;

    invoke-virtual {v0, v4}, Lcom/inmobi/adtracker/androidsdk/impl/GoalList;->remove(I)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->goalEventList:Lcom/inmobi/adtracker/androidsdk/impl/GoalList;

    sget-object v1, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->mCurrentEvent:Lcom/inmobi/adtracker/androidsdk/impl/Goal;

    invoke-virtual {v1}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->getGoalName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->mCurrentEvent:Lcom/inmobi/adtracker/androidsdk/impl/Goal;

    invoke-virtual {v2}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->getGoalCount()I

    move-result v2

    sget-object v3, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->mCurrentEvent:Lcom/inmobi/adtracker/androidsdk/impl/Goal;

    invoke-virtual {v3}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->getRetryTime()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/inmobi/adtracker/androidsdk/impl/GoalList;->addGoal(Ljava/lang/String;IJ)Z

    .line 72
    const-string v0, "IMAdTrackerSDK_V_2_5_1"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to upload goal: "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->mCurrentEvent:Lcom/inmobi/adtracker/androidsdk/impl/Goal;

    invoke-virtual {v1}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->getGoalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->mCurrentEvent:Lcom/inmobi/adtracker/androidsdk/impl/Goal;

    invoke-virtual {v0}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->getGoalName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->mCurrentEvent:Lcom/inmobi/adtracker/androidsdk/impl/Goal;

    invoke-virtual {v1}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->getGoalCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->increaseRetryTime(Ljava/lang/String;I)Z

    .line 100
    :cond_0
    :goto_0
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->networkThread:Ljava/lang/Thread;

    monitor-enter v0

    .line 101
    :try_start_0
    sget-object v1, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->networkThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 100
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :cond_1
    return v6

    .line 77
    :cond_2
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "IMAdTrackerStatusUpload"

    const-string v2, "errcode"

    iget v3, v0, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader$a;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v5, v2, v3}, Lcom/inmobi/commons/internal/IMFileOperations;->setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 79
    const/16 v1, 0x1388

    iget v2, v0, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader$a;->a:I

    if-eq v1, v2, :cond_3

    .line 81
    sput-boolean v4, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->lastUploadStatus:Z

    .line 82
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "IMAdTrackerStatusUpload"

    const-string v2, "iat_ids"

    const/4 v3, 0x0

    invoke-static {v1, v5, v2, v3}, Lcom/inmobi/commons/internal/IMFileOperations;->setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 85
    sget-object v1, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->goalEventList:Lcom/inmobi/adtracker/androidsdk/impl/GoalList;

    invoke-virtual {v1, v4}, Lcom/inmobi/adtracker/androidsdk/impl/GoalList;->remove(I)Ljava/lang/Object;

    .line 86
    sget-object v1, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->goalEventList:Lcom/inmobi/adtracker/androidsdk/impl/GoalList;

    sget-object v2, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->mCurrentEvent:Lcom/inmobi/adtracker/androidsdk/impl/Goal;

    invoke-virtual {v2}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->getGoalName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->mCurrentEvent:Lcom/inmobi/adtracker/androidsdk/impl/Goal;

    invoke-virtual {v3}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->getGoalCount()I

    move-result v3

    sget-object v4, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->mCurrentEvent:Lcom/inmobi/adtracker/androidsdk/impl/Goal;

    invoke-virtual {v4}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->getRetryTime()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/inmobi/adtracker/androidsdk/impl/GoalList;->addGoal(Ljava/lang/String;IJ)Z

    .line 87
    sget-object v1, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->mCurrentEvent:Lcom/inmobi/adtracker/androidsdk/impl/Goal;

    invoke-virtual {v1}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->getGoalName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->mCurrentEvent:Lcom/inmobi/adtracker/androidsdk/impl/Goal;

    invoke-virtual {v2}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->getGoalCount()I

    move-result v2

    invoke-static {v1, v2}, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->increaseRetryTime(Ljava/lang/String;I)Z

    .line 88
    const-string v1, "IMAdTrackerSDK_V_2_5_1"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to upload goal: "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->mCurrentEvent:Lcom/inmobi/adtracker/androidsdk/impl/Goal;

    invoke-virtual {v2}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->getGoalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :goto_1
    sget-boolean v1, Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants;->TestMode:Z

    if-eqz v1, :cond_0

    .line 96
    iget v0, v0, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader$a;->a:I

    invoke-static {v0}, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->sendBroadcastMessage(I)Z

    goto :goto_0

    .line 92
    :cond_3
    iget-object v1, v0, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader$a;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 100
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
