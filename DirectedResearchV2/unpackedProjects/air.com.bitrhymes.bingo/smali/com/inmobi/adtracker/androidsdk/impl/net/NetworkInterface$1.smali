.class Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface$1;
.super Ljava/lang/Object;
.source "NetworkInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->reportToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface$1;->c:Ljava/lang/String;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 57
    :goto_0
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->isSynced:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    :goto_1
    return-void

    .line 59
    :cond_0
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->isSynced:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 61
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->goalEventList:Lcom/inmobi/adtracker/androidsdk/impl/GoalList;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->goalEventList:Lcom/inmobi/adtracker/androidsdk/impl/GoalList;

    invoke-virtual {v0}, Lcom/inmobi/adtracker/androidsdk/impl/GoalList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 63
    :cond_1
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->a()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    .line 71
    :cond_2
    :try_start_0
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->goalEventList:Lcom/inmobi/adtracker/androidsdk/impl/GoalList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/adtracker/androidsdk/impl/GoalList;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/adtracker/androidsdk/impl/Goal;

    .line 72
    invoke-virtual {v0}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->getGoalName()Ljava/lang/String;

    move-result-object v3

    .line 73
    invoke-virtual {v0}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->getGoalCount()I

    move-result v4

    .line 74
    invoke-virtual {v0}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->getRetryTime()J

    move-result-wide v5

    .line 76
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->b()Z

    move-result v0

    if-nez v0, :cond_4

    .line 78
    iget-object v0, p0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface$1;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface$1;->c:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->reportUsingWebview(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 68
    :cond_3
    :goto_2
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->goalEventList:Lcom/inmobi/adtracker/androidsdk/impl/GoalList;

    invoke-virtual {v0}, Lcom/inmobi/adtracker/androidsdk/impl/GoalList;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->a()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 82
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface$1;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface$1;->c:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->reportUsingNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 86
    :catch_0
    move-exception v0

    .line 88
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->a()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1
.end method
