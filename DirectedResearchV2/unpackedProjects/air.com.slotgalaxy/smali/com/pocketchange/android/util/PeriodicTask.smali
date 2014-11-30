.class public Lcom/pocketchange/android/util/PeriodicTask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pocketchange/android/util/PeriodicTask$1;,
        Lcom/pocketchange/android/util/PeriodicTask$a;,
        Lcom/pocketchange/android/util/PeriodicTask$CPUClock;,
        Lcom/pocketchange/android/util/PeriodicTask$SystemBootClock;,
        Lcom/pocketchange/android/util/PeriodicTask$SystemWallClock;,
        Lcom/pocketchange/android/util/PeriodicTask$Clock;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/Runnable;

.field private final c:Lcom/pocketchange/android/util/PeriodicTask$Clock;

.field private final d:J

.field private e:J

.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;Lcom/pocketchange/android/util/PeriodicTask$Clock;J)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "task"    # Ljava/lang/Runnable;
    .param p3, "clock"    # Lcom/pocketchange/android/util/PeriodicTask$Clock;
    .param p4, "period"    # J

    .prologue
    .line 16
    invoke-interface {p3}, Lcom/pocketchange/android/util/PeriodicTask$Clock;->getTime()J

    move-result-wide v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/pocketchange/android/util/PeriodicTask;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Lcom/pocketchange/android/util/PeriodicTask$Clock;JJ)V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;Lcom/pocketchange/android/util/PeriodicTask$Clock;JJ)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "task"    # Ljava/lang/Runnable;
    .param p3, "clock"    # Lcom/pocketchange/android/util/PeriodicTask$Clock;
    .param p4, "period"    # J
    .param p6, "lastExecutionTime"    # J

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/pocketchange/android/util/PeriodicTask;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-gez v0, :cond_0

    .line 21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Period must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pocketchange/android/util/PeriodicTask;->a:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/pocketchange/android/util/PeriodicTask;->b:Ljava/lang/Runnable;

    .line 25
    iput-object p3, p0, Lcom/pocketchange/android/util/PeriodicTask;->c:Lcom/pocketchange/android/util/PeriodicTask$Clock;

    .line 26
    iput-wide p4, p0, Lcom/pocketchange/android/util/PeriodicTask;->d:J

    .line 27
    iput-wide p6, p0, Lcom/pocketchange/android/util/PeriodicTask;->e:J

    .line 28
    return-void
.end method

.method public static timeHasElapsed(JJJ)Z
    .locals 7
    .param p0, "now"    # J
    .param p2, "previousTime"    # J
    .param p4, "duration"    # J

    .prologue
    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    .line 66
    sub-long v0, p0, p2

    .line 67
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    cmp-long v2, p0, v4

    if-lez v2, :cond_1

    cmp-long v2, p2, v4

    if-gez v2, :cond_1

    cmp-long v2, v0, v4

    if-gez v2, :cond_1

    :cond_0
    move v0, v6

    .line 71
    :goto_0
    return v0

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v0, v0, p4

    if-ltz v0, :cond_2

    move v0, v6

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/pocketchange/android/util/PeriodicTask;->c:Lcom/pocketchange/android/util/PeriodicTask$Clock;

    invoke-interface {v0}, Lcom/pocketchange/android/util/PeriodicTask$Clock;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pocketchange/android/util/PeriodicTask;->e:J

    .line 55
    iget-object v0, p0, Lcom/pocketchange/android/util/PeriodicTask;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    iget-object v0, p0, Lcom/pocketchange/android/util/PeriodicTask;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 59
    return-void

    .line 57
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/pocketchange/android/util/PeriodicTask;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method

.method public runIfDue()Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pocketchange/android/util/PeriodicTask;->runIfDue(Z)Z

    move-result v0

    return v0
.end method

.method public runIfDue(Z)Z
    .locals 8
    .param p1, "synchronous"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 35
    iget-object v0, p0, Lcom/pocketchange/android/util/PeriodicTask;->c:Lcom/pocketchange/android/util/PeriodicTask$Clock;

    invoke-interface {v0}, Lcom/pocketchange/android/util/PeriodicTask$Clock;->getTime()J

    move-result-wide v0

    .line 36
    iget-wide v2, p0, Lcom/pocketchange/android/util/PeriodicTask;->e:J

    iget-wide v4, p0, Lcom/pocketchange/android/util/PeriodicTask;->d:J

    invoke-static/range {v0 .. v5}, Lcom/pocketchange/android/util/PeriodicTask;->timeHasElapsed(JJJ)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/pocketchange/android/util/PeriodicTask;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v6

    .line 49
    :goto_0
    return v0

    .line 40
    :cond_1
    iget-wide v2, p0, Lcom/pocketchange/android/util/PeriodicTask;->e:J

    iget-wide v4, p0, Lcom/pocketchange/android/util/PeriodicTask;->d:J

    invoke-static/range {v0 .. v5}, Lcom/pocketchange/android/util/PeriodicTask;->timeHasElapsed(JJJ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 41
    if-eqz p1, :cond_2

    .line 42
    invoke-virtual {p0}, Lcom/pocketchange/android/util/PeriodicTask;->run()V

    :goto_1
    move v0, v7

    .line 46
    goto :goto_0

    .line 44
    :cond_2
    new-instance v0, Lcom/pocketchange/android/util/PeriodicTask$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pocketchange/android/util/PeriodicTask$a;-><init>(Lcom/pocketchange/android/util/PeriodicTask;Lcom/pocketchange/android/util/PeriodicTask$1;)V

    invoke-virtual {v0}, Lcom/pocketchange/android/util/PeriodicTask$a;->start()V

    goto :goto_1

    .line 48
    :cond_3
    iget-object v0, p0, Lcom/pocketchange/android/util/PeriodicTask;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move v0, v6

    .line 49
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/pocketchange/android/util/PeriodicTask;->a:Ljava/lang/String;

    return-object v0
.end method
