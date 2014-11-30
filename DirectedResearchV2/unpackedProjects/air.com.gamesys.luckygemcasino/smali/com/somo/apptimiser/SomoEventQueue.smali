.class public Lcom/somo/apptimiser/SomoEventQueue;
.super Ljava/lang/Object;
.source "SomoEventQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/somo/apptimiser/SomoEventQueue$SomoEventObserver;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/somo/apptimiser/SomoEventQueue;


# instance fields
.field private final mEventStore:Lcom/somo/apptimiser/SomoEventStorer;

.field private final mEvents:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/somo/apptimiser/SomoEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventsLimit:J

.field private final mQueueObservers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/somo/apptimiser/SomoEventQueue$SomoEventObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/somo/apptimiser/SomoEventStorer;)V
    .locals 2
    .param p1, "e"    # Lcom/somo/apptimiser/SomoEventStorer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/somo/apptimiser/SomoEventQueue;->mQueueObservers:Ljava/util/Set;

    .line 19
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/somo/apptimiser/SomoEventQueue;->mEvents:Ljava/util/Queue;

    .line 29
    if-nez p1, :cond_0

    .line 30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SomoEventQueue requires an insance of SomoEventStorer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    iput-object p1, p0, Lcom/somo/apptimiser/SomoEventQueue;->mEventStore:Lcom/somo/apptimiser/SomoEventStorer;

    .line 34
    iget-object v0, p0, Lcom/somo/apptimiser/SomoEventQueue;->mEvents:Ljava/util/Queue;

    iget-object v1, p0, Lcom/somo/apptimiser/SomoEventQueue;->mEventStore:Lcom/somo/apptimiser/SomoEventStorer;

    invoke-interface {v1}, Lcom/somo/apptimiser/SomoEventStorer;->getEvents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 35
    iget-object v0, p0, Lcom/somo/apptimiser/SomoEventQueue;->mEventStore:Lcom/somo/apptimiser/SomoEventStorer;

    invoke-interface {v0}, Lcom/somo/apptimiser/SomoEventStorer;->getMaxCapacity()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/somo/apptimiser/SomoEventQueue;->mEventsLimit:J

    .line 36
    return-void
.end method

.method static getInstance()Lcom/somo/apptimiser/SomoEventQueue;
    .locals 2

    .prologue
    .line 44
    sget-object v0, Lcom/somo/apptimiser/SomoEventQueue;->INSTANCE:Lcom/somo/apptimiser/SomoEventQueue;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No Queue instance exists"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    sget-object v0, Lcom/somo/apptimiser/SomoEventQueue;->INSTANCE:Lcom/somo/apptimiser/SomoEventQueue;

    return-object v0
.end method

.method static setInstance(Lcom/somo/apptimiser/SomoEventQueue;)V
    .locals 0
    .param p0, "s"    # Lcom/somo/apptimiser/SomoEventQueue;

    .prologue
    .line 54
    sput-object p0, Lcom/somo/apptimiser/SomoEventQueue;->INSTANCE:Lcom/somo/apptimiser/SomoEventQueue;

    .line 55
    return-void
.end method


# virtual methods
.method addEvent(Lcom/somo/apptimiser/SomoEvent;)V
    .locals 6
    .param p1, "e"    # Lcom/somo/apptimiser/SomoEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Event is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/somo/apptimiser/SomoEventQueue;->mEvents:Ljava/util/Queue;

    monitor-enter v1

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/somo/apptimiser/SomoEventQueue;->mEvents:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    int-to-long v2, v0

    iget-wide v4, p0, Lcom/somo/apptimiser/SomoEventQueue;->mEventsLimit:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/somo/apptimiser/SomoEventQueue;->mEvents:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/somo/apptimiser/SomoEventQueue;->mEvents:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 100
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    iget-object v0, p0, Lcom/somo/apptimiser/SomoEventQueue;->mEventStore:Lcom/somo/apptimiser/SomoEventStorer;

    invoke-virtual {p1, v0}, Lcom/somo/apptimiser/SomoEvent;->save(Lcom/somo/apptimiser/SomoEventStorer;)V

    .line 102
    invoke-virtual {p0}, Lcom/somo/apptimiser/SomoEventQueue;->notifyObservers()V

    .line 103
    return-void

    .line 100
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method addObserver(Lcom/somo/apptimiser/SomoEventQueue$SomoEventObserver;)Z
    .locals 3
    .param p1, "o"    # Lcom/somo/apptimiser/SomoEventQueue$SomoEventObserver;

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, "result":Z
    iget-object v2, p0, Lcom/somo/apptimiser/SomoEventQueue;->mQueueObservers:Ljava/util/Set;

    monitor-enter v2

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/somo/apptimiser/SomoEventQueue;->mQueueObservers:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 131
    monitor-exit v2

    .line 132
    return v0

    .line 131
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method clear()V
    .locals 2

    .prologue
    .line 172
    iget-object v1, p0, Lcom/somo/apptimiser/SomoEventQueue;->mQueueObservers:Ljava/util/Set;

    monitor-enter v1

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/somo/apptimiser/SomoEventQueue;->mQueueObservers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 174
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    iget-object v1, p0, Lcom/somo/apptimiser/SomoEventQueue;->mEvents:Ljava/util/Queue;

    monitor-enter v1

    .line 176
    :try_start_1
    iget-object v0, p0, Lcom/somo/apptimiser/SomoEventQueue;->mEventStore:Lcom/somo/apptimiser/SomoEventStorer;

    invoke-interface {v0}, Lcom/somo/apptimiser/SomoEventStorer;->clear()I

    .line 177
    iget-object v0, p0, Lcom/somo/apptimiser/SomoEventQueue;->mEvents:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 178
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 179
    return-void

    .line 174
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 178
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method getEventCount()J
    .locals 4

    .prologue
    .line 73
    const-wide/16 v0, 0x0

    .line 74
    .local v0, "iCount":J
    iget-object v3, p0, Lcom/somo/apptimiser/SomoEventQueue;->mEvents:Ljava/util/Queue;

    monitor-enter v3

    .line 75
    :try_start_0
    iget-object v2, p0, Lcom/somo/apptimiser/SomoEventQueue;->mEvents:Ljava/util/Queue;

    if-eqz v2, :cond_0

    .line 76
    iget-object v2, p0, Lcom/somo/apptimiser/SomoEventQueue;->mEvents:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    int-to-long v0, v2

    .line 78
    :cond_0
    monitor-exit v3

    .line 79
    return-wide v0

    .line 78
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method getEvents()Ljava/util/Queue;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Lcom/somo/apptimiser/SomoEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 63
    .local v0, "snapshot":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/somo/apptimiser/SomoEvent;>;"
    iget-object v3, p0, Lcom/somo/apptimiser/SomoEventQueue;->mEvents:Ljava/util/Queue;

    monitor-enter v3

    .line 64
    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/somo/apptimiser/SomoEventQueue;->mEvents:Ljava/util/Queue;

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .end local v0    # "snapshot":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/somo/apptimiser/SomoEvent;>;"
    .local v1, "snapshot":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/somo/apptimiser/SomoEvent;>;"
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 66
    return-object v1

    .line 65
    .end local v1    # "snapshot":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/somo/apptimiser/SomoEvent;>;"
    .restart local v0    # "snapshot":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/somo/apptimiser/SomoEvent;>;"
    :catchall_0
    move-exception v2

    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "snapshot":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/somo/apptimiser/SomoEvent;>;"
    .restart local v1    # "snapshot":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/somo/apptimiser/SomoEvent;>;"
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "snapshot":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/somo/apptimiser/SomoEvent;>;"
    .restart local v0    # "snapshot":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/somo/apptimiser/SomoEvent;>;"
    goto :goto_0
.end method

.method notifyObservers()V
    .locals 6

    .prologue
    .line 159
    const/4 v2, 0x0

    .line 160
    .local v2, "snapshot":Ljava/util/Set;, "Ljava/util/Set<Lcom/somo/apptimiser/SomoEventQueue$SomoEventObserver;>;"
    iget-object v5, p0, Lcom/somo/apptimiser/SomoEventQueue;->mQueueObservers:Ljava/util/Set;

    monitor-enter v5

    .line 161
    :try_start_0
    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p0, Lcom/somo/apptimiser/SomoEventQueue;->mQueueObservers:Ljava/util/Set;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    .end local v2    # "snapshot":Ljava/util/Set;, "Ljava/util/Set<Lcom/somo/apptimiser/SomoEventQueue$SomoEventObserver;>;"
    .local v3, "snapshot":Ljava/util/Set;, "Ljava/util/Set<Lcom/somo/apptimiser/SomoEventQueue$SomoEventObserver;>;"
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 163
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/somo/apptimiser/SomoEventQueue$SomoEventObserver;

    .line 164
    .local v1, "o":Lcom/somo/apptimiser/SomoEventQueue$SomoEventObserver;
    invoke-interface {v1}, Lcom/somo/apptimiser/SomoEventQueue$SomoEventObserver;->notifyEventAdded()V

    goto :goto_0

    .line 162
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "o":Lcom/somo/apptimiser/SomoEventQueue$SomoEventObserver;
    .end local v3    # "snapshot":Ljava/util/Set;, "Ljava/util/Set<Lcom/somo/apptimiser/SomoEventQueue$SomoEventObserver;>;"
    .restart local v2    # "snapshot":Ljava/util/Set;, "Ljava/util/Set<Lcom/somo/apptimiser/SomoEventQueue$SomoEventObserver;>;"
    :catchall_0
    move-exception v4

    :goto_1
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 166
    .end local v2    # "snapshot":Ljava/util/Set;, "Ljava/util/Set<Lcom/somo/apptimiser/SomoEventQueue$SomoEventObserver;>;"
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v3    # "snapshot":Ljava/util/Set;, "Ljava/util/Set<Lcom/somo/apptimiser/SomoEventQueue$SomoEventObserver;>;"
    :cond_0
    return-void

    .line 162
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "snapshot":Ljava/util/Set;, "Ljava/util/Set<Lcom/somo/apptimiser/SomoEventQueue$SomoEventObserver;>;"
    .restart local v2    # "snapshot":Ljava/util/Set;, "Ljava/util/Set<Lcom/somo/apptimiser/SomoEventQueue$SomoEventObserver;>;"
    goto :goto_1
.end method

.method removeEvents(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/somo/apptimiser/SomoEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "l":Ljava/util/List;, "Ljava/util/List<Lcom/somo/apptimiser/SomoEvent;>;"
    iget-object v3, p0, Lcom/somo/apptimiser/SomoEventQueue;->mEvents:Ljava/util/Queue;

    monitor-enter v3

    .line 112
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/somo/apptimiser/SomoEvent;

    .line 113
    .local v0, "e":Lcom/somo/apptimiser/SomoEvent;
    iget-object v2, p0, Lcom/somo/apptimiser/SomoEventQueue;->mEvents:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 114
    iget-object v2, p0, Lcom/somo/apptimiser/SomoEventQueue;->mEventStore:Lcom/somo/apptimiser/SomoEventStorer;

    invoke-virtual {v0, v2}, Lcom/somo/apptimiser/SomoEvent;->delete(Lcom/somo/apptimiser/SomoEventStorer;)V

    goto :goto_0

    .line 116
    .end local v0    # "e":Lcom/somo/apptimiser/SomoEvent;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    return-void
.end method

.method removeObserver(Lcom/somo/apptimiser/SomoEventQueue$SomoEventObserver;)Z
    .locals 3
    .param p1, "o"    # Lcom/somo/apptimiser/SomoEventQueue$SomoEventObserver;

    .prologue
    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, "result":Z
    iget-object v2, p0, Lcom/somo/apptimiser/SomoEventQueue;->mQueueObservers:Ljava/util/Set;

    monitor-enter v2

    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/somo/apptimiser/SomoEventQueue;->mQueueObservers:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 147
    monitor-exit v2

    .line 148
    return v0

    .line 147
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
