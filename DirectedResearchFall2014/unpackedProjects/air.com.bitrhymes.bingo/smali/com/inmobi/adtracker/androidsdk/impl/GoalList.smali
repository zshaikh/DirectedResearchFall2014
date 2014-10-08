.class public Lcom/inmobi/adtracker/androidsdk/impl/GoalList;
.super Ljava/util/Vector;
.source "GoalList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Vector",
        "<",
        "Lcom/inmobi/adtracker/androidsdk/impl/Goal;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    return-void
.end method


# virtual methods
.method public addGoal(Ljava/lang/String;IJ)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v2, "IMAdTrackerSDK_V_2_5_1"

    .line 109
    .line 110
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->isSynced:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 111
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    :cond_0
    const-string v0, "IMAdTrackerSDK_V_2_5_1"

    const-string v0, "GoalName is null"

    invoke-static {v2, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    .line 151
    :goto_0
    return v0

    .line 116
    :cond_1
    if-lt p2, v4, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_3

    .line 118
    :cond_2
    const-string v0, "IMAdTrackerSDK_V_2_5_1"

    const-string v0, "GoalCount cant be 0 or RetryTime cannot be negative"

    invoke-static {v2, v0}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    .line 119
    goto :goto_0

    .line 123
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/adtracker/androidsdk/impl/GoalList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 124
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v3

    .line 140
    :goto_1
    if-nez v0, :cond_5

    .line 142
    new-instance v0, Lcom/inmobi/adtracker/androidsdk/impl/Goal;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;-><init>(Ljava/lang/String;IJ)V

    invoke-virtual {p0, v0}, Lcom/inmobi/adtracker/androidsdk/impl/GoalList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :cond_5
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "eventlog"

    invoke-static {v0, v1, p0}, Lcom/inmobi/commons/internal/IMFileOperations;->saveToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    move v0, v4

    .line 151
    goto :goto_0

    .line 126
    :cond_6
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/adtracker/androidsdk/impl/Goal;

    .line 127
    invoke-virtual {v0}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->getGoalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 130
    const-string v1, "download"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 132
    invoke-virtual {v0}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->getGoalCount()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {v0, v1}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->setGoalCount(I)V

    .line 134
    :cond_7
    invoke-virtual {v0, p3, p4}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->setRetryTime(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v4

    .line 136
    goto :goto_1

    .line 145
    :catch_0
    move-exception v0

    move v0, v3

    .line 147
    goto :goto_0
.end method

.method public getGoal(Ljava/lang/String;)Lcom/inmobi/adtracker/androidsdk/impl/Goal;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 41
    .line 42
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    :cond_0
    const-string v0, "IMAdTrackerSDK_V_2_5_1"

    const-string v1, "GoalName is null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 62
    :goto_0
    return-object v0

    .line 48
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/adtracker/androidsdk/impl/GoalList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 49
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    move-object v0, v2

    .line 62
    goto :goto_0

    .line 51
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/inmobi/adtracker/androidsdk/impl/Goal;

    .line 52
    invoke-virtual {p0}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->getGoalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, p0

    .line 54
    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    move-object v0, v2

    .line 60
    goto :goto_0
.end method

.method public getLoggedGoals()Lcom/inmobi/adtracker/androidsdk/impl/GoalList;
    .locals 3

    .prologue
    const-string v2, "eventlog"

    .line 22
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "eventlog"

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/IMFileOperations;->readFromFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/inmobi/adtracker/androidsdk/impl/GoalList;

    if-eqz p0, :cond_0

    .line 23
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "eventlog"

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/IMFileOperations;->readFromFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/inmobi/adtracker/androidsdk/impl/GoalList;

    move-object v0, p0

    .line 25
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/inmobi/adtracker/androidsdk/impl/GoalList;

    invoke-direct {v0}, Lcom/inmobi/adtracker/androidsdk/impl/GoalList;-><init>()V

    goto :goto_0
.end method

.method public removeGoal(Ljava/lang/String;I)Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "IMAdTrackerSDK_V_2_5_1"

    .line 70
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->isSynced:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 71
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    :cond_0
    const-string v0, "IMAdTrackerSDK_V_2_5_1"

    const-string v0, "GoalName is null"

    invoke-static {v4, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 102
    :goto_0
    return v0

    .line 76
    :cond_1
    if-ge p2, v3, :cond_2

    .line 78
    const-string v0, "IMAdTrackerSDK_V_2_5_1"

    const-string v0, "GoalCount cannot be 0 or negative"

    invoke-static {v4, v0}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 79
    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/adtracker/androidsdk/impl/GoalList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 82
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 101
    :goto_1
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "eventlog"

    invoke-static {v0, v1, p0}, Lcom/inmobi/commons/internal/IMFileOperations;->saveToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    move v0, v3

    .line 102
    goto :goto_0

    .line 84
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/adtracker/androidsdk/impl/Goal;

    .line 85
    invoke-virtual {v0}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->getGoalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 87
    invoke-virtual {v0}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->getGoalCount()I

    move-result v1

    sub-int/2addr v1, p2

    .line 88
    const-string v2, "download"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 90
    invoke-virtual {p0, v0}, Lcom/inmobi/adtracker/androidsdk/impl/GoalList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 93
    :cond_5
    if-gtz v1, :cond_6

    .line 94
    invoke-virtual {p0, v0}, Lcom/inmobi/adtracker/androidsdk/impl/GoalList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 96
    :cond_6
    invoke-virtual {v0, v1}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->setGoalCount(I)V

    goto :goto_1
.end method

.method public saveGoals()V
    .locals 2

    .prologue
    .line 33
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "eventlog"

    invoke-static {v0, v1, p0}, Lcom/inmobi/commons/internal/IMFileOperations;->saveToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 34
    return-void
.end method
