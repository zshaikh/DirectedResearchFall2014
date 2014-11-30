.class public Lcom/mgeek/android/util/e;
.super Ljava/lang/Object;
.source "DataSyncScheduler.java"


# static fields
.field private static a:I


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mgeek/android/util/f;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/mgeek/android/util/h;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/os/HandlerThread;

.field private f:Landroid/os/Handler;

.field private g:Z

.field private h:Z

.field private i:Landroid/os/ConditionVariable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput v0, Lcom/mgeek/android/util/e;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/mgeek/android/util/e;->d:Ljava/util/Set;

    .line 66
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DataSync process thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mgeek/android/util/e;->e:Landroid/os/HandlerThread;

    .line 71
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/mgeek/android/util/e;->i:Landroid/os/ConditionVariable;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataSyncScheduler{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mgeek/android/util/e;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgeek/android/util/e;->b:Ljava/lang/String;

    .line 75
    sget v0, Lcom/mgeek/android/util/e;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/mgeek/android/util/e;->a:I

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/mgeek/android/util/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mgeek/android/util/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/mgeek/android/util/e;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mgeek/android/util/e;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/mgeek/android/util/e;)Landroid/os/HandlerThread;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mgeek/android/util/e;->e:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic d(Lcom/mgeek/android/util/e;)Ljava/util/List;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mgeek/android/util/e;->c:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 5

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mgeek/android/util/e;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 135
    :cond_0
    monitor-exit p0

    return-void

    .line 111
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/mgeek/android/util/e;->b:Ljava/lang/String;

    const-string v1, "startSyncData"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgeek/android/util/e;->g:Z

    .line 115
    iget-object v0, p0, Lcom/mgeek/android/util/e;->i:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 116
    iget-object v0, p0, Lcom/mgeek/android/util/e;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 118
    new-instance v0, Lcom/mgeek/android/util/g;

    iget-object v1, p0, Lcom/mgeek/android/util/e;->e:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mgeek/android/util/g;-><init>(Lcom/mgeek/android/util/e;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mgeek/android/util/e;->f:Landroid/os/Handler;

    .line 120
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mgeek/android/util/e;->c:Ljava/util/List;

    .line 122
    iget-object v0, p0, Lcom/mgeek/android/util/e;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgeek/android/util/h;

    .line 123
    new-instance v2, Lcom/mgeek/android/util/f;

    invoke-direct {v2, p0, v0}, Lcom/mgeek/android/util/f;-><init>(Lcom/mgeek/android/util/e;Lcom/mgeek/android/util/h;)V

    .line 124
    iget-object v3, p0, Lcom/mgeek/android/util/e;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    instance-of v0, v0, Lcom/dolphin/browser/ui/launcher/a/g;

    if-eqz v0, :cond_2

    .line 126
    const-string v0, "App Start(First Start), load online home data successfully"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/dolphin/browser/util/cw;->a(Ljava/lang/String;ZZ)Lcom/dolphin/browser/util/cw;

    .line 129
    const-string v0, "App Start(First Start), load online home data failed"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/dolphin/browser/util/cw;->a(Ljava/lang/String;ZZ)Lcom/dolphin/browser/util/cw;

    .line 132
    :cond_2
    sget-object v0, Lcom/dolphin/browser/util/t;->c:Lcom/dolphin/browser/util/t;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-static {v2, v0, v3}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;Lcom/dolphin/browser/util/t;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/mgeek/android/util/h;)V
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/mgeek/android/util/e;->g:Z

    if-eqz v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/mgeek/android/util/e;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public declared-synchronized b()V
    .locals 3

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mgeek/android/util/e;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mgeek/android/util/e;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 170
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 145
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/mgeek/android/util/e;->b:Ljava/lang/String;

    const-string v1, "stop sync data"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgeek/android/util/e;->h:Z

    .line 150
    iget-object v0, p0, Lcom/mgeek/android/util/e;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 152
    iget-object v0, p0, Lcom/mgeek/android/util/e;->e:Landroid/os/HandlerThread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 154
    :try_start_2
    iget-object v0, p0, Lcom/mgeek/android/util/e;->e:Landroid/os/HandlerThread;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/os/HandlerThread;->join(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    :cond_2
    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/mgeek/android/util/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgeek/android/util/f;

    .line 162
    invoke-virtual {v0}, Lcom/mgeek/android/util/f;->c()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    :try_start_4
    iget-object v1, p0, Lcom/mgeek/android/util/e;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 165
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgeek/android/util/e;->g:Z

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgeek/android/util/e;->h:Z

    .line 167
    iget-object v0, p0, Lcom/mgeek/android/util/e;->i:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 169
    iget-object v0, p0, Lcom/mgeek/android/util/e;->b:Ljava/lang/String;

    const-string v1, "Sync data has stopped"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method
