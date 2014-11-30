.class public Lcom/pocketchange/android/PCSingleton;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pocketchange/android/PCSingleton$e;,
        Lcom/pocketchange/android/PCSingleton$Configuration;,
        Lcom/pocketchange/android/PCSingleton$a;,
        Lcom/pocketchange/android/PCSingleton$d;,
        Lcom/pocketchange/android/PCSingleton$c;,
        Lcom/pocketchange/android/PCSingleton$b;
    }
.end annotation


# static fields
.field public static final SDK_VERSION:Ljava/lang/String; = "6.0.0"

.field static final a:Ljava/lang/String;

.field static final synthetic s:Z

.field private static final t:Lcom/pocketchange/android/util/ExceptionFilter;

.field private static volatile u:Lcom/pocketchange/android/PCSingleton;


# instance fields
.field private final A:Landroid/os/Handler;

.field private final B:Ljava/util/Timer;

.field private final C:Ljava/util/concurrent/ExecutorService;

.field private final D:Landroid/content/Context;

.field private final E:Lcom/pocketchange/android/api/APIRequestExecutor;

.field private final F:Lcom/pocketchange/android/util/PeriodicTask;

.field private final G:Lcom/pocketchange/android/util/PeriodicTask;

.field final b:Lcom/pocketchange/android/util/OperationQueue;

.field final c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field d:Z

.field volatile e:J

.field volatile f:J

.field final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final h:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final i:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final j:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field k:Ljava/lang/String;

.field l:J

.field m:J

.field n:J

.field o:J

.field p:J

.field final q:Lcom/pocketchange/android/PCSingleton$Configuration;

.field final r:Lcom/pocketchange/android/ProductTransactionManager;

.field private final v:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile w:Landroid/content/SharedPreferences;

.field private final x:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final y:Ljava/lang/Object;

.field private volatile z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 82
    const-class v0, Lcom/pocketchange/android/PCSingleton;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/pocketchange/android/PCSingleton;->s:Z

    .line 128
    new-instance v0, Lcom/pocketchange/android/util/ClassNamePatternExceptionFilter;

    const-string v1, "\\Acom\\.pocketchange\\."

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pocketchange/android/util/ClassNamePatternExceptionFilter;-><init>(Ljava/util/regex/Pattern;)V

    sput-object v0, Lcom/pocketchange/android/PCSingleton;->t:Lcom/pocketchange/android/util/ExceptionFilter;

    .line 135
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lcom/pocketchange/android/PCSingleton;->a:Ljava/lang/String;

    return-void

    .line 82
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/pocketchange/android/PCSingleton$Configuration;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Lcom/pocketchange/android/PCSingleton$Configuration;

    .prologue
    const/4 v3, 0x0

    .line 307
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/pocketchange/android/PCSingleton;-><init>(Landroid/content/Context;Lcom/pocketchange/android/PCSingleton$Configuration;Lcom/pocketchange/android/api/APIRequestExecutor;Lcom/pocketchange/android/ProductTransactionManager;Ljava/util/Timer;)V

    .line 308
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/pocketchange/android/PCSingleton$Configuration;Lcom/pocketchange/android/api/APIRequestExecutor;Lcom/pocketchange/android/ProductTransactionManager;Ljava/util/Timer;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Lcom/pocketchange/android/PCSingleton$Configuration;
    .param p3, "apiRequestExecutor"    # Lcom/pocketchange/android/api/APIRequestExecutor;
    .param p4, "productTransactionManager"    # Lcom/pocketchange/android/ProductTransactionManager;
    .param p5, "timer"    # Ljava/util/Timer;

    .prologue
    const/4 v3, 0x1

    const-wide/high16 v6, -0x8000000000000000L

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/pocketchange/android/PCSingleton;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 167
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/pocketchange/android/PCSingleton;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 169
    iput-wide v6, p0, Lcom/pocketchange/android/PCSingleton;->e:J

    .line 170
    iput-wide v6, p0, Lcom/pocketchange/android/PCSingleton;->f:J

    .line 171
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/pocketchange/android/PCSingleton;->x:Ljava/util/concurrent/ConcurrentHashMap;

    .line 172
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/pocketchange/android/PCSingleton;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 173
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/pocketchange/android/PCSingleton;->h:Ljava/util/concurrent/ConcurrentHashMap;

    .line 178
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/pocketchange/android/PCSingleton;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 179
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/pocketchange/android/PCSingleton;->j:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 180
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/pocketchange/android/PCSingleton;->y:Ljava/lang/Object;

    .line 197
    const-string v0, "PCSingleton.Executor"

    invoke-static {v3, v0}, Lcom/pocketchange/android/util/ThreadUtils;->createFixedThreadPool(ILjava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/pocketchange/android/PCSingleton;->C:Ljava/util/concurrent/ExecutorService;

    .line 311
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/pocketchange/android/PCSingleton;->A:Landroid/os/Handler;

    .line 312
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/pocketchange/android/PCSingleton;->D:Landroid/content/Context;

    .line 313
    iput-object p2, p0, Lcom/pocketchange/android/PCSingleton;->q:Lcom/pocketchange/android/PCSingleton$Configuration;

    .line 314
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton;->y:Ljava/lang/Object;

    monitor-enter v0

    .line 315
    const-wide/high16 v1, -0x8000000000000000L

    :try_start_0
    iput-wide v1, p0, Lcom/pocketchange/android/PCSingleton;->l:J

    .line 316
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Lcom/pocketchange/android/PCSingleton;->m:J

    .line 317
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Lcom/pocketchange/android/PCSingleton;->n:J

    .line 318
    const-wide/32 v1, 0x493e0

    iput-wide v1, p0, Lcom/pocketchange/android/PCSingleton;->o:J

    .line 319
    const-wide/16 v1, 0x7530

    iput-wide v1, p0, Lcom/pocketchange/android/PCSingleton;->p:J

    .line 320
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    new-instance v0, Lcom/pocketchange/android/util/OperationQueue;

    invoke-virtual {p2}, Lcom/pocketchange/android/PCSingleton$Configuration;->isDebugEnabled()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/pocketchange/android/util/OperationQueue;-><init>(Z)V

    iput-object v0, p0, Lcom/pocketchange/android/PCSingleton;->b:Lcom/pocketchange/android/util/OperationQueue;

    .line 322
    if-nez p3, :cond_0

    new-instance v0, Lcom/pocketchange/android/api/AsyncAPIRequestExecutor;

    invoke-virtual {p2}, Lcom/pocketchange/android/PCSingleton$Configuration;->isDebugEnabled()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/pocketchange/android/api/AsyncAPIRequestExecutor;-><init>(Z)V

    :goto_0
    iput-object v0, p0, Lcom/pocketchange/android/PCSingleton;->E:Lcom/pocketchange/android/api/APIRequestExecutor;

    .line 323
    if-nez p4, :cond_1

    new-instance v0, Lcom/pocketchange/android/ProductTransactionManagerImpl;

    iget-object v1, p0, Lcom/pocketchange/android/PCSingleton;->D:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/pocketchange/android/ProductTransactionManagerImpl;-><init>(Landroid/content/Context;)V

    :goto_1
    iput-object v0, p0, Lcom/pocketchange/android/PCSingleton;->r:Lcom/pocketchange/android/ProductTransactionManager;

    .line 324
    if-nez p5, :cond_2

    new-instance v0, Ljava/util/Timer;

    const-string v1, "PCSingleton.Timer"

    invoke-direct {v0, v1, v3}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    :goto_2
    iput-object v0, p0, Lcom/pocketchange/android/PCSingleton;->B:Ljava/util/Timer;

    .line 325
    new-instance v0, Lcom/pocketchange/android/util/PeriodicTask;

    const-string v1, "PCSingleton.DailyGiftTask"

    new-instance v2, Lcom/pocketchange/android/PCSingleton$10;

    invoke-direct {v2, p0}, Lcom/pocketchange/android/PCSingleton$10;-><init>(Lcom/pocketchange/android/PCSingleton;)V

    new-instance v3, Lcom/pocketchange/android/util/PeriodicTask$SystemBootClock;

    invoke-direct {v3}, Lcom/pocketchange/android/util/PeriodicTask$SystemBootClock;-><init>()V

    const-wide/32 v4, 0x36ee80

    invoke-direct/range {v0 .. v7}, Lcom/pocketchange/android/util/PeriodicTask;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Lcom/pocketchange/android/util/PeriodicTask$Clock;JJ)V

    iput-object v0, p0, Lcom/pocketchange/android/PCSingleton;->F:Lcom/pocketchange/android/util/PeriodicTask;

    .line 335
    new-instance v0, Lcom/pocketchange/android/util/PeriodicTask;

    const-string v1, "PCSingleton.FlushAsyncRequestsTask"

    new-instance v2, Lcom/pocketchange/android/PCSingleton$13;

    invoke-direct {v2, p0}, Lcom/pocketchange/android/PCSingleton$13;-><init>(Lcom/pocketchange/android/PCSingleton;)V

    new-instance v3, Lcom/pocketchange/android/util/PeriodicTask$SystemBootClock;

    invoke-direct {v3}, Lcom/pocketchange/android/util/PeriodicTask$SystemBootClock;-><init>()V

    const-wide/32 v4, 0xea60

    invoke-direct/range {v0 .. v7}, Lcom/pocketchange/android/util/PeriodicTask;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Lcom/pocketchange/android/util/PeriodicTask$Clock;JJ)V

    iput-object v0, p0, Lcom/pocketchange/android/PCSingleton;->G:Lcom/pocketchange/android/util/PeriodicTask;

    .line 345
    return-void

    .line 320
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    move-object v0, p3

    .line 322
    goto :goto_0

    :cond_1
    move-object v0, p4

    .line 323
    goto :goto_1

    :cond_2
    move-object v0, p5

    .line 324
    goto :goto_2
.end method

.method static a(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1656
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1657
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1658
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1659
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1660
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1662
    :cond_0
    return-object v1
.end method

.method static synthetic a(Lcom/pocketchange/android/PCSingleton;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton;->B:Ljava/util/Timer;

    return-object v0
.end method

.method static a(Landroid/content/Context;Lcom/pocketchange/android/PCSingleton$Configuration$a;)V
    .locals 3

    .prologue
    const-class v2, Lcom/pocketchange/android/PCSingleton;

    .line 270
    invoke-static {}, Lcom/pocketchange/android/util/ThreadUtils;->assertExecutingOnMainThread()V

    .line 271
    sget-object v0, Lcom/pocketchange/android/PCSingleton;->u:Lcom/pocketchange/android/PCSingleton;

    if-nez v0, :cond_0

    .line 272
    invoke-interface {p1}, Lcom/pocketchange/android/PCSingleton$Configuration$a;->a()Lcom/pocketchange/android/PCSingleton$Configuration;

    move-result-object v0

    .line 273
    new-instance v1, Lcom/pocketchange/android/PCSingleton;

    invoke-direct {v1, p0, v0}, Lcom/pocketchange/android/PCSingleton;-><init>(Landroid/content/Context;Lcom/pocketchange/android/PCSingleton$Configuration;)V

    .line 274
    invoke-virtual {v1}, Lcom/pocketchange/android/PCSingleton;->a()V

    .line 275
    sput-object v1, Lcom/pocketchange/android/PCSingleton;->u:Lcom/pocketchange/android/PCSingleton;

    .line 276
    const-class v0, Lcom/pocketchange/android/PCSingleton;

    monitor-enter v2

    .line 277
    :try_start_0
    const-class v1, Lcom/pocketchange/android/PCSingleton;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 278
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    :cond_0
    sget-object v0, Lcom/pocketchange/android/PCSingleton;->u:Lcom/pocketchange/android/PCSingleton;

    invoke-direct {v0}, Lcom/pocketchange/android/PCSingleton;->s()V

    .line 281
    return-void

    .line 278
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic a(Lcom/pocketchange/android/PCSingleton;Ljava/lang/String;Ljava/util/List;Lcom/pocketchange/android/api/JSONResponseHandler;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/pocketchange/android/PCSingleton;->a(Ljava/lang/String;Ljava/util/List;Lcom/pocketchange/android/api/JSONResponseHandler;Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/List;Lcom/pocketchange/android/api/JSONResponseHandler;Ljava/lang/Runnable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Lcom/pocketchange/android/api/JSONResponseHandler;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1595
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v1

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/pocketchange/android/PCSingleton;->a(Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;Ljava/lang/String;Ljava/util/List;Lcom/pocketchange/android/api/JSONResponseHandler;Lcom/pocketchange/android/api/ExceptionHandler;Ljava/lang/Runnable;)V

    .line 1596
    return-void
.end method

.method public static awaitInstance()Lcom/pocketchange/android/PCSingleton;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-class v1, Lcom/pocketchange/android/PCSingleton;

    .line 213
    sget-object v0, Lcom/pocketchange/android/PCSingleton;->u:Lcom/pocketchange/android/PCSingleton;

    if-nez v0, :cond_1

    .line 214
    const-class v0, Lcom/pocketchange/android/PCSingleton;

    monitor-enter v1

    .line 215
    :goto_0
    :try_start_0
    sget-object v1, Lcom/pocketchange/android/PCSingleton;->u:Lcom/pocketchange/android/PCSingleton;

    if-nez v1, :cond_0

    .line 216
    const-class v1, Lcom/pocketchange/android/PCSingleton;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 218
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    :cond_1
    sget-object v0, Lcom/pocketchange/android/PCSingleton;->u:Lcom/pocketchange/android/PCSingleton;

    return-object v0
.end method

.method static b(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 1667
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method static synthetic b(Lcom/pocketchange/android/PCSingleton;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/pocketchange/android/PCSingleton;->v()V

    return-void
.end method

.method static synthetic c(Lcom/pocketchange/android/PCSingleton;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton;->D:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/pocketchange/android/PCSingleton;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/pocketchange/android/PCSingleton;->u()V

    return-void
.end method

.method private static d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 951
    if-nez p0, :cond_1

    .line 957
    :cond_0
    return-void

    .line 954
    :cond_1
    invoke-static {p0}, Lcom/pocketchange/android/net/URIUtils;->isHttpUri(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 955
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument URL is not a valid HTTP URL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance()Lcom/pocketchange/android/PCSingleton;
    .locals 1

    .prologue
    .line 207
    sget-object v0, Lcom/pocketchange/android/PCSingleton;->u:Lcom/pocketchange/android/PCSingleton;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 248
    new-instance v0, Lcom/pocketchange/android/PCSingleton$b;

    invoke-direct {v0, p1}, Lcom/pocketchange/android/PCSingleton$b;-><init>(Landroid/os/Bundle;)V

    .line 249
    invoke-static {p0, v0}, Lcom/pocketchange/android/PCSingleton;->a(Landroid/content/Context;Lcom/pocketchange/android/PCSingleton$Configuration$a;)V

    .line 250
    return-void
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "testMode"    # Z

    .prologue
    .line 225
    new-instance v0, Lcom/pocketchange/android/PCSingleton$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/pocketchange/android/PCSingleton$1;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 243
    invoke-static {p0, v0}, Lcom/pocketchange/android/PCSingleton;->a(Landroid/content/Context;Lcom/pocketchange/android/PCSingleton$Configuration$a;)V

    .line 244
    return-void
.end method

.method private s()V
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton;->F:Lcom/pocketchange/android/util/PeriodicTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pocketchange/android/util/PeriodicTask;->runIfDue(Z)Z

    .line 379
    invoke-direct {p0}, Lcom/pocketchange/android/PCSingleton;->t()V

    .line 380
    return-void
.end method

.method public static staticRecordEvent(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 294
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/pocketchange/android/PCSingleton;->staticRecordEvent(Ljava/lang/String;Lorg/json/JSONObject;Z)Z

    move-result v0

    return v0
.end method

.method public static staticRecordEvent(Ljava/lang/String;Lorg/json/JSONObject;Z)Z
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "data"    # Lorg/json/JSONObject;
    .param p2, "oneShot"    # Z

    .prologue
    .line 299
    invoke-static {}, Lcom/pocketchange/android/PCSingleton;->getInstance()Lcom/pocketchange/android/PCSingleton;

    move-result-object v0

    .line 300
    if-nez v0, :cond_0

    .line 301
    const/4 v0, 0x0

    .line 303
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p0, p1, p2}, Lcom/pocketchange/android/PCSingleton;->recordEvent(Ljava/lang/String;Lorg/json/JSONObject;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static staticRecordException(Ljava/lang/Throwable;ZZ)V
    .locals 1
    .param p0, "exception"    # Ljava/lang/Throwable;
    .param p1, "isFatal"    # Z
    .param p2, "oneShot"    # Z

    .prologue
    .line 285
    invoke-static {}, Lcom/pocketchange/android/PCSingleton;->getInstance()Lcom/pocketchange/android/PCSingleton;

    move-result-object v0

    .line 286
    if-nez v0, :cond_0

    .line 290
    :goto_0
    return-void

    .line 289
    :cond_0
    invoke-virtual {v0, p0, p1, p2}, Lcom/pocketchange/android/PCSingleton;->recordException(Ljava/lang/Throwable;ZZ)V

    goto :goto_0
.end method

.method private t()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 384
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 385
    new-instance v5, Lcom/pocketchange/android/PCSingleton$15;

    invoke-direct {v5, p0, v2, v3}, Lcom/pocketchange/android/PCSingleton$15;-><init>(Lcom/pocketchange/android/PCSingleton;J)V

    .line 393
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton;->q:Lcom/pocketchange/android/PCSingleton$Configuration;

    invoke-virtual {v0}, Lcom/pocketchange/android/PCSingleton$Configuration;->getSessionsURL()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v3, v1

    move-object v4, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/pocketchange/android/PCSingleton;->a(Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;Ljava/lang/String;Ljava/util/List;Lcom/pocketchange/android/api/JSONResponseHandler;Lcom/pocketchange/android/api/ExceptionHandler;Ljava/lang/Runnable;)V

    .line 394
    return-void
.end method

.method private final u()V
    .locals 1

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/pocketchange/android/PCSingleton;->r()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pocketchange/android/PCSingleton;->b(Landroid/content/SharedPreferences$Editor;)V

    .line 517
    return-void
.end method

.method private v()V
    .locals 1

    .prologue
    .line 662
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pocketchange/android/PCSingleton;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pocketchange/android/PCSingleton;->a(Ljava/lang/String;)V

    .line 663
    return-void
.end method


# virtual methods
.method a(Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lorg/apache/http/client/methods/HttpUriRequest;"
        }
    .end annotation

    .prologue
    const-string v4, "email"

    .line 1616
    if-nez p3, :cond_1

    .line 1617
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1621
    :goto_0
    iget-object v1, p0, Lcom/pocketchange/android/PCSingleton;->q:Lcom/pocketchange/android/PCSingleton$Configuration;

    invoke-virtual {v1}, Lcom/pocketchange/android/PCSingleton$Configuration;->isAutoLoginEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1622
    sget-object v1, Lcom/pocketchange/android/api/APIRequestExecutor;->VERBOSE_PARAMS:Ljava/util/Set;

    .line 1623
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 1624
    const-string v3, "email"

    iget-object v3, p0, Lcom/pocketchange/android/PCSingleton;->q:Lcom/pocketchange/android/PCSingleton$Configuration;

    invoke-virtual {v3}, Lcom/pocketchange/android/PCSingleton$Configuration;->f()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    .line 1630
    :goto_1
    iget-object v3, p0, Lcom/pocketchange/android/PCSingleton;->D:Landroid/content/Context;

    invoke-static {v3, v0, v2, v1}, Lcom/pocketchange/android/api/APIRequestExecutor;->addParams(Landroid/content/Context;Ljava/util/Collection;Ljava/util/Set;Ljava/util/Map;)Ljava/util/Collection;

    .line 1631
    iget-object v1, p0, Lcom/pocketchange/android/PCSingleton;->q:Lcom/pocketchange/android/PCSingleton$Configuration;

    invoke-virtual {v1}, Lcom/pocketchange/android/PCSingleton$Configuration;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p2, v0}, Lcom/pocketchange/android/api/APIRequestExecutor;->constructAPIRequest(Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0

    .line 1626
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    sget-object v2, Lcom/pocketchange/android/api/APIRequestExecutor;->VERBOSE_PARAMS:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1627
    const-string v2, "email"

    invoke-interface {v1, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1628
    const/4 v2, 0x0

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_1

    :cond_1
    move-object v0, p3

    goto :goto_0
.end method

.method a()V
    .locals 4

    .prologue
    .line 349
    invoke-static {}, Lcom/pocketchange/android/util/SDKThreadExceptionHandler;->addToMainThread()V

    .line 350
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton;->D:Landroid/content/Context;

    new-instance v1, Lcom/pocketchange/android/PCSingleton$e;

    iget-object v2, p0, Lcom/pocketchange/android/PCSingleton;->q:Lcom/pocketchange/android/PCSingleton$Configuration;

    invoke-virtual {v2}, Lcom/pocketchange/android/PCSingleton$Configuration;->isDebugEnabled()Z

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/pocketchange/android/PCSingleton$e;-><init>(ZLcom/pocketchange/android/PCSingleton$1;)V

    sget-object v2, Lcom/pocketchange/android/PCSingleton$e;->a:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 351
    new-instance v0, Lcom/pocketchange/android/PCSingleton$14;

    const-string v1, "PocketChange"

    invoke-direct {v0, p0, v1}, Lcom/pocketchange/android/PCSingleton$14;-><init>(Lcom/pocketchange/android/PCSingleton;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/pocketchange/android/PCSingleton;->a(Ljava/lang/Runnable;)V

    .line 374
    return-void
.end method

.method a(J)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v3, 0xa

    const-wide/16 v7, 0x0

    .line 456
    invoke-static {}, Lcom/pocketchange/android/util/ThreadUtils;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_1

    cmp-long v0, p1, v7

    if-eqz v0, :cond_0

    cmp-long v0, p1, v3

    if-lez v0, :cond_1

    .line 458
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] exceeds maximum main thread timeout ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_1
    cmp-long v0, p1, v7

    if-gez v0, :cond_2

    .line 461
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    :cond_2
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 475
    :goto_0
    return-void

    .line 466
    :cond_3
    cmp-long v0, p1, v7

    if-nez v0, :cond_5

    move-wide v0, v7

    .line 468
    :goto_1
    iget-object v6, p0, Lcom/pocketchange/android/PCSingleton;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v6

    move-wide v2, p1

    .line 470
    :goto_2
    :try_start_0
    iget-object v4, p0, Lcom/pocketchange/android/PCSingleton;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_6

    cmp-long v4, p1, v7

    if-eqz v4, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/pocketchange/android/Util;->computeRemainingTimeout(JJJ)J

    move-result-wide v2

    cmp-long v4, v2, v7

    if-lez v4, :cond_6

    .line 472
    :cond_4
    iget-object v4, p0, Lcom/pocketchange/android/PCSingleton;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v2, v3}, Ljava/lang/Object;->wait(J)V

    goto :goto_2

    .line 474
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 466
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    goto :goto_1

    .line 474
    :cond_6
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method a(Landroid/content/SharedPreferences$Editor;)V
    .locals 2

    .prologue
    .line 489
    const-string v0, "webViewHardwareAccelerationEnabled"

    iget-boolean v1, p0, Lcom/pocketchange/android/PCSingleton;->z:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 490
    invoke-static {p1}, Lcom/pocketchange/android/content/ContentUtils;->writeSharedPreferences(Landroid/content/SharedPreferences$Editor;)V

    .line 491
    return-void
.end method

.method a(Landroid/content/SharedPreferences;)V
    .locals 3

    .prologue
    .line 483
    const-string v0, "webViewHardwareAccelerationEnabled"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pocketchange/android/PCSingleton;->z:Z

    .line 484
    return-void

    .line 483
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method a(Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;Ljava/lang/String;Ljava/util/List;Lcom/pocketchange/android/api/JSONResponseHandler;Lcom/pocketchange/android/api/ExceptionHandler;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Lcom/pocketchange/android/api/JSONResponseHandler;",
            "Lcom/pocketchange/android/api/ExceptionHandler;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1605
    new-instance v0, Lcom/pocketchange/android/PCSingleton$12;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/pocketchange/android/PCSingleton$12;-><init>(Lcom/pocketchange/android/PCSingleton;Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;Ljava/lang/String;Ljava/util/List;)V

    .line 1610
    iget-object v1, p0, Lcom/pocketchange/android/PCSingleton;->E:Lcom/pocketchange/android/api/APIRequestExecutor;

    invoke-virtual {v1, v0, p4, p5, p6}, Lcom/pocketchange/android/api/APIRequestExecutor;->submitAPIRequest(Lcom/pocketchange/android/api/APIRequestExecutor$RequestBuilder;Lcom/pocketchange/android/api/JSONResponseHandler;Lcom/pocketchange/android/api/ExceptionHandler;Ljava/lang/Runnable;)V

    .line 1611
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton;->G:Lcom/pocketchange/android/util/PeriodicTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pocketchange/android/util/PeriodicTask;->runIfDue(Z)Z

    .line 1612
    return-void
.end method

.method a(Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;Ljava/lang/String;Ljava/util/List;Lcom/pocketchange/android/api/JSONResponseHandler;Ljava/lang/Runnable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Lcom/pocketchange/android/api/JSONResponseHandler;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1600
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/pocketchange/android/PCSingleton;->a(Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;Ljava/lang/String;Ljava/util/List;Lcom/pocketchange/android/api/JSONResponseHandler;Lcom/pocketchange/android/api/ExceptionHandler;Ljava/lang/Runnable;)V

    .line 1601
    return-void
.end method

.method a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 1583
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton;->C:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1584
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 677
    :try_start_0
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    const-string v1, "preload=1"

    invoke-static {v0, v1}, Lcom/pocketchange/android/net/URIUtils;->appendQuery(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 678
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 683
    iget-object v1, p0, Lcom/pocketchange/android/PCSingleton;->A:Landroid/os/Handler;

    .line 687
    new-instance v2, Lcom/pocketchange/android/PCSingleton$16;

    iget-object v3, p0, Lcom/pocketchange/android/PCSingleton;->D:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/pocketchange/android/PCSingleton$16;-><init>(Lcom/pocketchange/android/PCSingleton;Landroid/content/Context;)V

    .line 713
    new-instance v3, Lcom/pocketchange/android/PCSingleton$17;

    invoke-direct {v3, p0, v2, v0}, Lcom/pocketchange/android/PCSingleton$17;-><init>(Lcom/pocketchange/android/PCSingleton;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 735
    :goto_0
    return-void

    .line 679
    :catch_0
    move-exception v0

    .line 680
    const-string v1, "PocketChange"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error constructing preload URL for url ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method a(Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 995
    if-nez p2, :cond_0

    .line 996
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "amount cannot be zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 998
    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/pocketchange/android/PCSingleton;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 999
    :cond_1
    sget-object v0, Lcom/pocketchange/android/PCSingleton;->a:Ljava/lang/String;

    .line 1001
    :goto_0
    if-lez p2, :cond_3

    .line 1002
    iget-object v1, p0, Lcom/pocketchange/android/PCSingleton;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1003
    if-eqz p0, :cond_2

    .line 1004
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 1016
    :cond_2
    return-void

    .line 1007
    :cond_3
    iget-object v1, p0, Lcom/pocketchange/android/PCSingleton;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1008
    if-nez p0, :cond_4

    .line 1009
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No amount pending for reward ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1011
    :cond_4
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    .line 1012
    if-gez v1, :cond_2

    .line 1013
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Amount pending ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] for reward ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] < 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    move-object v0, p1

    goto :goto_0
.end method

.method a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 537
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 538
    iget-object v2, p0, Lcom/pocketchange/android/PCSingleton;->x:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 540
    :cond_0
    return-void
.end method

.method a(Ljava/util/Map;Lorg/json/JSONObject;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v1, "amount"

    const-string v11, "] not present in request"

    const-string v10, "Response contained acknowledgement for reward ["

    .line 1076
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1078
    const-string v0, "amount"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1079
    const-string v0, "amount"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1080
    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1081
    if-nez v1, :cond_0

    const-string v3, "fail"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1083
    :cond_0
    sget-object v0, Lcom/pocketchange/android/PCSingleton;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1084
    if-nez v0, :cond_1

    .line 1085
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response contained acknowledgement for reward ["

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/pocketchange/android/PCSingleton;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] not present in request"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1087
    :cond_1
    sget-object v3, Lcom/pocketchange/android/PCSingleton;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    if-nez v8, :cond_2

    if-eqz v1, :cond_4

    :cond_2
    move v0, v9

    .line 1091
    :goto_0
    const-string v1, "rewards"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1092
    const-string v1, "rewards"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1093
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    move v5, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1094
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1095
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1096
    const-string v6, "ok"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1097
    if-nez v6, :cond_3

    const-string v7, "fail"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1099
    :cond_3
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1100
    if-nez v1, :cond_5

    .line 1101
    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Response contained acknowledgement for reward ["

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] not present in request"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    move v0, v8

    .line 1088
    goto :goto_0

    .line 1103
    :cond_5
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    if-nez v5, :cond_6

    if-eqz v6, :cond_7

    :cond_6
    move v0, v9

    :goto_2
    move v5, v0

    .line 1106
    goto :goto_1

    :cond_7
    move v0, v8

    .line 1104
    goto :goto_2

    :cond_8
    move v0, v5

    .line 1108
    :cond_9
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    .line 1109
    if-eqz v0, :cond_a

    .line 1110
    invoke-virtual {p0}, Lcom/pocketchange/android/PCSingleton;->m()V

    .line 1111
    invoke-virtual {p0}, Lcom/pocketchange/android/PCSingleton;->k()V

    .line 1113
    :cond_a
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1114
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0, v1, v0}, Lcom/pocketchange/android/PCSingleton;->a(Ljava/lang/String;I)V

    goto :goto_3

    .line 1116
    :cond_b
    invoke-virtual {p0}, Lcom/pocketchange/android/PCSingleton;->r()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pocketchange/android/PCSingleton;->d(Landroid/content/SharedPreferences$Editor;)V

    .line 1118
    :cond_c
    return-void

    :cond_d
    move v0, v5

    goto :goto_2

    :cond_e
    move v0, v8

    goto/16 :goto_0
.end method

.method a(Lorg/json/JSONArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1485
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 1486
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1487
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1488
    const-string v3, "transaction_id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1489
    const-string v4, "sku"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1490
    iget-object v4, p0, Lcom/pocketchange/android/PCSingleton;->r:Lcom/pocketchange/android/ProductTransactionManager;

    const/4 v5, 0x1

    invoke-interface {v4, v3, v2, v5}, Lcom/pocketchange/android/ProductTransactionManager;->createTransaction(Ljava/lang/String;Ljava/lang/String;I)J

    .line 1486
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1492
    :cond_0
    return-void
.end method

.method a(Z)V
    .locals 3

    .prologue
    .line 1410
    sget-boolean v0, Lcom/pocketchange/android/PCSingleton;->s:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/pocketchange/android/util/ThreadUtils;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Blocking method should not be invoked on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1411
    :cond_0
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton;->b:Lcom/pocketchange/android/util/OperationQueue;

    const-string v1, "UPDATE_PRODUCT_TRANSACTIONS"

    new-instance v2, Lcom/pocketchange/android/PCSingleton$11;

    invoke-direct {v2, p0, p1}, Lcom/pocketchange/android/PCSingleton$11;-><init>(Lcom/pocketchange/android/PCSingleton;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/pocketchange/android/util/OperationQueue;->offer(Ljava/lang/String;Lcom/pocketchange/android/util/OperationQueue$Enqueuer;)V

    .line 1442
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 934
    invoke-static {p2}, Lcom/pocketchange/android/PCSingleton;->d(Ljava/lang/String;)V

    .line 935
    const/4 v0, 0x0

    .line 936
    iget-object v1, p0, Lcom/pocketchange/android/PCSingleton;->y:Ljava/lang/Object;

    monitor-enter v1

    .line 937
    :try_start_0
    iget-object v2, p0, Lcom/pocketchange/android/PCSingleton;->k:Ljava/lang/String;

    if-eq p1, v2, :cond_0

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/pocketchange/android/PCSingleton;->k:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 939
    :cond_0
    iput-object p2, p0, Lcom/pocketchange/android/PCSingleton;->k:Ljava/lang/String;

    .line 940
    const/4 v0, 0x1

    .line 942
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 943
    if-eqz v0, :cond_2

    .line 944
    invoke-virtual {p0, p1, p2}, Lcom/pocketchange/android/PCSingleton;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    :cond_2
    return v0

    .line 942
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public acknowledgeProductTransactions(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1496
    .local p1, "ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1497
    iget-object v2, p0, Lcom/pocketchange/android/PCSingleton;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1498
    iget-object v2, p0, Lcom/pocketchange/android/PCSingleton;->h:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1504
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pocketchange/android/PCSingleton;->b(Z)V

    .line 1505
    return-void
.end method

.method b()V
    .locals 5

    .prologue
    const-string v4, "PocketChange"

    .line 406
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton;->q:Lcom/pocketchange/android/PCSingleton$Configuration;

    invoke-virtual {v0}, Lcom/pocketchange/android/PCSingleton$Configuration;->isDebugEnabled()Z

    move-result v0

    .line 407
    if-eqz v0, :cond_1

    .line 410
    sget-boolean v1, Lcom/pocketchange/android/PCSingleton;->s:Z

    if-nez v1, :cond_0

    const-string v1, "com.pocketchange.android.Preferences"

    const-string v2, "PCPrefs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "SharedPreferences instance with name [PCPrefs] has been deprecated"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 411
    :cond_0
    const-string v1, "PocketChange"

    const-string v1, "Initializing persistent state"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_1
    invoke-virtual {p0}, Lcom/pocketchange/android/PCSingleton;->r()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 415
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/pocketchange/android/PCSingleton;->a(Landroid/content/SharedPreferences;)V

    .line 416
    invoke-virtual {p0, v1}, Lcom/pocketchange/android/PCSingleton;->f(Landroid/content/SharedPreferences;)V

    .line 417
    invoke-virtual {p0, v1}, Lcom/pocketchange/android/PCSingleton;->g(Landroid/content/SharedPreferences;)V

    .line 418
    invoke-virtual {p0, v1}, Lcom/pocketchange/android/PCSingleton;->e(Landroid/content/SharedPreferences;)V

    .line 419
    invoke-virtual {p0, v1}, Lcom/pocketchange/android/PCSingleton;->c(Landroid/content/SharedPreferences;)V

    .line 420
    invoke-virtual {p0, v1}, Lcom/pocketchange/android/PCSingleton;->d(Landroid/content/SharedPreferences;)V

    .line 421
    invoke-virtual {p0, v1}, Lcom/pocketchange/android/PCSingleton;->b(Landroid/content/SharedPreferences;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 422
    invoke-direct {p0}, Lcom/pocketchange/android/PCSingleton;->u()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :cond_2
    :goto_0
    const-string v2, "productTransactionsInitialized"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/pocketchange/android/PCSingleton;->d:Z

    .line 428
    iget-object v1, p0, Lcom/pocketchange/android/PCSingleton;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 429
    :try_start_1
    iget-object v2, p0, Lcom/pocketchange/android/PCSingleton;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 430
    iget-object v2, p0, Lcom/pocketchange/android/PCSingleton;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 431
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 432
    if-eqz v0, :cond_3

    .line 433
    const-string v0, "PocketChange"

    const-string v0, "Persistent state initialized"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_3
    return-void

    .line 424
    :catch_0
    move-exception v2

    .line 425
    const-string v3, "PocketChange"

    const-string v3, "Error initializing persistent state"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 431
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method final b(J)V
    .locals 2

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton;->y:Ljava/lang/Object;

    monitor-enter v0

    .line 1178
    :try_start_0
    iput-wide p1, p0, Lcom/pocketchange/android/PCSingleton;->l:J

    .line 1179
    monitor-exit v0

    .line 1180
    return-void

    .line 1179
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method b(Landroid/content/SharedPreferences$Editor;)V
    .locals 5

    .prologue
    const-string v4, "productQuantityBySku"

    .line 522
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton;->r:Lcom/pocketchange/android/ProductTransactionManager;

    invoke-interface {v0}, Lcom/pocketchange/android/ProductTransactionManager;->getMaxTransactionId()J

    move-result-wide v0

    .line 523
    iget-object v2, p0, Lcom/pocketchange/android/PCSingleton;->r:Lcom/pocketchange/android/ProductTransactionManager;

    invoke-interface {v2}, Lcom/pocketchange/android/ProductTransactionManager;->getQuantityPurchasedBySku()Ljava/util/Map;

    move-result-object v2

    .line 524
    const-string v3, "productQuantityBySkuMaxTxnId"

    invoke-interface {p1, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 525
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 526
    :cond_0
    const-string v0, "productQuantityBySku"

    invoke-interface {p1, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 532
    :goto_0
    invoke-static {p1}, Lcom/pocketchange/android/content/ContentUtils;->writeSharedPreferences(Landroid/content/SharedPreferences$Editor;)V

    .line 533
    return-void

    .line 528
    :cond_1
    invoke-virtual {p0, v2}, Lcom/pocketchange/android/PCSingleton;->a(Ljava/util/Map;)V

    .line 529
    invoke-static {v2}, Lcom/pocketchange/android/PCSingleton;->b(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    .line 530
    const-string v1, "productQuantityBySku"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 916
    invoke-static {p1}, Lcom/pocketchange/android/PCSingleton;->d(Ljava/lang/String;)V

    .line 918
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton;->y:Ljava/lang/Object;

    monitor-enter v0

    .line 919
    :try_start_0
    iget-object v1, p0, Lcom/pocketchange/android/PCSingleton;->k:Ljava/lang/String;

    .line 920
    iput-object p1, p0, Lcom/pocketchange/android/PCSingleton;->k:Ljava/lang/String;

    .line 921
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 922
    invoke-virtual {p0, v1, p1}, Lcom/pocketchange/android/PCSingleton;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    return-void

    .line 921
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 961
    if-eq p1, p2, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 963
    :cond_0
    new-instance v0, Lcom/pocketchange/android/PCSingleton$3;

    const-string v1, "PocketChange"

    invoke-direct {v0, p0, v1}, Lcom/pocketchange/android/PCSingleton$3;-><init>(Lcom/pocketchange/android/PCSingleton;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/pocketchange/android/PCSingleton;->a(Ljava/lang/Runnable;)V

    .line 968
    invoke-virtual {p0}, Lcom/pocketchange/android/PCSingleton;->e()V

    .line 970
    :cond_1
    if-eqz p2, :cond_2

    .line 971
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton;->D:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 972
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.pocketchange.android.rewards.NOTIFY_PENDING_NOTIFICATION_INTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 973
    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 974
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 975
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton;->D:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 977
    :cond_2
    return-void
.end method

.method b(Z)V
    .locals 4

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1521
    :cond_0
    :goto_0
    return-void

    .line 1512
    :cond_1
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1515
    new-instance v0, Lcom/pocketchange/android/PCSingleton$a;

    invoke-direct {v0, p0}, Lcom/pocketchange/android/PCSingleton$a;-><init>(Lcom/pocketchange/android/PCSingleton;)V

    .line 1516
    if-eqz p1, :cond_2

    .line 1517
    invoke-virtual {v0}, Lcom/pocketchange/android/PCSingleton$a;->run()V

    goto :goto_0

    .line 1519
    :cond_2
    iget-object v1, p0, Lcom/pocketchange/android/PCSingleton;->B:Ljava/util/Timer;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method b(Landroid/content/SharedPreferences;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    .line 496
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton;->r:Lcom/pocketchange/android/ProductTransactionManager;

    invoke-interface {v0}, Lcom/pocketchange/android/ProductTransactionManager;->getMaxTransactionId()J

    move-result-wide v0

    .line 497
    const-string v2, "productQuantityBySkuMaxTxnId"

    invoke-interface {p1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 498
    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 499
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 500
    const-string v2, "productQuantityBySku"

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 501
    if-nez v2, :cond_1

    .line 502
    const-string v2, "PocketChange"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Potential data inconsistency: preferences returned maxProductTransactionId ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] with null productQuantityBySku"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 510
    :goto_1
    return v0

    .line 504
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/pocketchange/android/PCSingleton;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    .line 505
    invoke-virtual {p0, v0}, Lcom/pocketchange/android/PCSingleton;->a(Ljava/util/Map;)V

    goto :goto_0

    .line 510
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method c(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1232
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton;->q:Lcom/pocketchange/android/PCSingleton$Configuration;

    invoke-virtual {v0}, Lcom/pocketchange/android/PCSingleton$Configuration;->getShopURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 1233
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton;->D:Landroid/content/Context;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0, v2}, Lcom/pocketchange/android/api/APIRequestExecutor;->addVerboseParams(Landroid/content/Context;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1234
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "v"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1235
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "api_key"

    iget-object v4, p0, Lcom/pocketchange/android/PCSingleton;->q:Lcom/pocketchange/android/PCSingleton$Configuration;

    invoke-virtual {v4}, Lcom/pocketchange/android/PCSingleton$Configuration;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1236
    if-eqz p1, :cond_0

    .line 1237
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "source"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1239
    :cond_0
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "package"

    iget-object v4, p0, Lcom/pocketchange/android/PCSingleton;->D:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1240
    invoke-static {v0, v5}, Lcom/pocketchange/android/net/URIUtils;->buildQuery(Ljava/util/Collection;Z)Ljava/lang/String;

    move-result-object v0

    .line 1241
    invoke-static {v1, v0}, Lcom/pocketchange/android/net/URIUtils;->appendQuery(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 1242
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method c()V
    .locals 3

    .prologue
    .line 441
    :try_start_0
    invoke-virtual {p0}, Lcom/pocketchange/android/PCSingleton;->d()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    :goto_0
    return-void

    .line 442
    :catch_0
    move-exception v0

    .line 443
    const-string v1, "PocketChange"

    const-string v2, "Error waiting for persistent state initialization"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method c(J)V
    .locals 2

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton;->y:Ljava/lang/Object;

    monitor-enter v0

    .line 1190
    :try_start_0
    iput-wide p1, p0, Lcom/pocketchange/android/PCSingleton;->p:J

    .line 1191
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1192
    new-instance v0, Lcom/pocketchange/android/PCSingleton$7;

    const-string v1, "PocketChange"

    invoke-direct {v0, p0, v1}, Lcom/pocketchange/android/PCSingleton$7;-><init>(Lcom/pocketchange/android/PCSingleton;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/pocketchange/android/PCSingleton;->a(Ljava/lang/Runnable;)V

    .line 1197
    return-void

    .line 1191
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method c(Landroid/content/SharedPreferences$Editor;)V
    .locals 3

    .prologue
    const-string v2, "pendingAppEvents"

    .line 559
    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/pocketchange/android/PCSingleton;->j:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 560
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 561
    const-string v0, "pendingAppEvents"

    invoke-interface {p1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 565
    :goto_0
    invoke-static {p1}, Lcom/pocketchange/android/content/ContentUtils;->writeSharedPreferences(Landroid/content/SharedPreferences$Editor;)V

    .line 566
    return-void

    .line 563
    :cond_0
    const-string v1, "pendingAppEvents"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method c(Landroid/content/SharedPreferences;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 545
    const-string v0, "pendingAppEvents"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 546
    if-nez v0, :cond_1

    .line 554
    :cond_0
    return-void

    .line 549
    :cond_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 550
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 551
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 552
    iget-object v3, p0, Lcom/pocketchange/android/PCSingleton;->j:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 551
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1575
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.pocketchange.android.rewards.NOTIFY_PRODUCT_TRANSACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1576
    const-string v1, "signed_data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1577
    const-string v1, "signature"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1578
    iget-object v1, p0, Lcom/pocketchange/android/PCSingleton;->D:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/pocketchange/android/content/ContextUtils;->sendLocalBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1579
    return-void
.end method

.method d()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 450
    invoke-static {}, Lcom/pocketchange/android/util/ThreadUtils;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0xa

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/pocketchange/android/PCSingleton;->a(J)V

    .line 451
    return-void

    .line 450
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method d(J)V
    .locals 2

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton;->y:Ljava/lang/Object;

    monitor-enter v0

    .line 1202
    :try_start_0
    iput-wide p1, p0, Lcom/pocketchange/android/PCSingleton;->o:J

    .line 1203
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1204
    new-instance v0, Lcom/pocketchange/android/PCSingleton$8;

    const-string v1, "PocketChange"

    invoke-direct {v0, p0, v1}, Lcom/pocketchange/android/PCSingleton$8;-><init>(Lcom/pocketchange/android/PCSingleton;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/pocketchange/android/PCSingleton;->a(Ljava/lang/Runnable;)V

    .line 1209
    return-void

    .line 1203
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method d(Landroid/content/SharedPreferences$Editor;)V
    .locals 3

    .prologue
    const-string v2, "pendingRewardsById"

    .line 586
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/pocketchange/android/PCSingleton;->j()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 587
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 588
    const-string v0, "pendingRewardsById"

    invoke-interface {p1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 592
    :goto_0
    invoke-static {p1}, Lcom/pocketchange/android/content/ContentUtils;->writeSharedPreferences(Landroid/content/SharedPreferences$Editor;)V

    .line 593
    return-void

    .line 590
    :cond_0
    const-string v1, "pendingRewardsById"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method d(Landroid/content/SharedPreferences;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 571
    const-string v0, "pendingRewardsById"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 572
    if-nez v0, :cond_1

    .line 581
    :cond_0
    return-void

    .line 575
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 576
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 578
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 579
    invoke-virtual {p0, v0, v3}, Lcom/pocketchange/android/PCSingleton;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method e()V
    .locals 1

    .prologue
    .line 667
    invoke-virtual {p0}, Lcom/pocketchange/android/PCSingleton;->h()Ljava/lang/String;

    move-result-object v0

    .line 668
    if-eqz v0, :cond_0

    .line 669
    invoke-virtual {p0, v0}, Lcom/pocketchange/android/PCSingleton;->a(Ljava/lang/String;)V

    .line 671
    :cond_0
    return-void
.end method

.method e(Landroid/content/SharedPreferences$Editor;)V
    .locals 3

    .prologue
    const-string v2, "pendingNotificationUrl"

    .line 607
    invoke-virtual {p0}, Lcom/pocketchange/android/PCSingleton;->h()Ljava/lang/String;

    move-result-object v0

    .line 608
    if-nez v0, :cond_0

    .line 609
    const-string v0, "pendingNotificationUrl"

    invoke-interface {p1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 613
    :goto_0
    invoke-static {p1}, Lcom/pocketchange/android/content/ContentUtils;->writeSharedPreferences(Landroid/content/SharedPreferences$Editor;)V

    .line 614
    return-void

    .line 611
    :cond_0
    const-string v1, "pendingNotificationUrl"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method e(Landroid/content/SharedPreferences;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 598
    const-string v0, "pendingNotificationUrl"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 599
    if-eqz v0, :cond_0

    .line 600
    invoke-virtual {p0, v1, v0}, Lcom/pocketchange/android/PCSingleton;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 602
    :cond_0
    return-void
.end method

.method f()V
    .locals 3

    .prologue
    .line 750
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton;->b:Lcom/pocketchange/android/util/OperationQueue;

    const-string v1, "PROCESS_PENDING_APP_EVENTS"

    new-instance v2, Lcom/pocketchange/android/PCSingleton$19;

    invoke-direct {v2, p0}, Lcom/pocketchange/android/PCSingleton$19;-><init>(Lcom/pocketchange/android/PCSingleton;)V

    invoke-virtual {v0, v1, v2}, Lcom/pocketchange/android/util/OperationQueue;->offer(Ljava/lang/String;Lcom/pocketchange/android/util/OperationQueue$Enqueuer;)V

    .line 795
    return-void
.end method

.method f(Landroid/content/SharedPreferences$Editor;)V
    .locals 3

    .prologue
    .line 631
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton;->y:Ljava/lang/Object;

    monitor-enter v0

    .line 632
    :try_start_0
    iget-wide v1, p0, Lcom/pocketchange/android/PCSingleton;->p:J

    .line 633
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    const-string v0, "minNotificationDelayAfterClose"

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 635
    invoke-static {p1}, Lcom/pocketchange/android/content/ContentUtils;->writeSharedPreferences(Landroid/content/SharedPreferences$Editor;)V

    .line 636
    return-void

    .line 633
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method f(Landroid/content/SharedPreferences;)V
    .locals 3

    .prologue
    const-string v2, "minNotificationDelayAfterClose"

    .line 619
    const-string v0, "minNotificationDelayAfterClose"

    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    const-string v0, "minNotificationDelayAfterClose"

    const-wide/16 v0, 0x7530

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 621
    iget-object v2, p0, Lcom/pocketchange/android/PCSingleton;->y:Ljava/lang/Object;

    monitor-enter v2

    .line 622
    :try_start_0
    iput-wide v0, p0, Lcom/pocketchange/android/PCSingleton;->p:J

    .line 623
    monitor-exit v2

    .line 625
    :cond_0
    return-void

    .line 623
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method g(Landroid/content/SharedPreferences$Editor;)V
    .locals 3

    .prologue
    .line 653
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton;->y:Ljava/lang/Object;

    monitor-enter v0

    .line 654
    :try_start_0
    iget-wide v1, p0, Lcom/pocketchange/android/PCSingleton;->o:J

    .line 655
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 656
    const-string v0, "minNotificationDelayAfterCancel"

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 657
    invoke-static {p1}, Lcom/pocketchange/android/content/ContentUtils;->writeSharedPreferences(Landroid/content/SharedPreferences$Editor;)V

    .line 658
    return-void

    .line 655
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method g(Landroid/content/SharedPreferences;)V
    .locals 3

    .prologue
    const-string v2, "minNotificationDelayAfterCancel"

    .line 641
    const-string v0, "minNotificationDelayAfterCancel"

    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    const-string v0, "minNotificationDelayAfterCancel"

    const-wide/32 v0, 0x493e0

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 643
    iget-object v2, p0, Lcom/pocketchange/android/PCSingleton;->y:Ljava/lang/Object;

    monitor-enter v2

    .line 644
    :try_start_0
    iput-wide v0, p0, Lcom/pocketchange/android/PCSingleton;->o:J

    .line 645
    monitor-exit v2

    .line 647
    :cond_0
    return-void

    .line 645
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method g()Z
    .locals 10

    .prologue
    .line 903
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton;->y:Ljava/lang/Object;

    monitor-enter v0

    .line 904
    :try_start_0
    iget-wide v2, p0, Lcom/pocketchange/android/PCSingleton;->m:J

    .line 905
    iget-wide v6, p0, Lcom/pocketchange/android/PCSingleton;->n:J

    .line 906
    iget-wide v4, p0, Lcom/pocketchange/android/PCSingleton;->o:J

    .line 907
    iget-wide v8, p0, Lcom/pocketchange/android/PCSingleton;->p:J

    .line 908
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 909
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 910
    invoke-static/range {v0 .. v5}, Lcom/pocketchange/android/util/PeriodicTask;->timeHasElapsed(JJJ)Z

    move-result v2

    if-eqz v2, :cond_0

    move-wide v2, v6

    move-wide v4, v8

    invoke-static/range {v0 .. v5}, Lcom/pocketchange/android/util/PeriodicTask;->timeHasElapsed(JJJ)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 908
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 910
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConfiguration()Lcom/pocketchange/android/PCSingleton$Configuration;
    .locals 1

    .prologue
    .line 1645
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton;->q:Lcom/pocketchange/android/PCSingleton$Configuration;

    return-object v0
.end method

.method public getPendingNotificationIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 866
    invoke-virtual {p0}, Lcom/pocketchange/android/PCSingleton;->h()Ljava/lang/String;

    move-result-object v0

    .line 867
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/pocketchange/android/PCSingleton;->g()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/pocketchange/android/PCSingleton;->D:Landroid/content/Context;

    invoke-static {v1}, Lcom/pocketchange/android/net/NetUtils;->isConnectedToNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 870
    :cond_0
    const/4 v0, 0x0

    .line 876
    :goto_0
    return-object v0

    .line 872
    :cond_1
    invoke-virtual {p0}, Lcom/pocketchange/android/PCSingleton;->c()V

    .line 873
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/pocketchange/android/PCSingleton;->D:Landroid/content/Context;

    const-class v3, Lcom/pocketchange/android/rewards/NotificationActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 874
    const-string v2, "hardwareAccelerationEnabled"

    invoke-virtual {p0}, Lcom/pocketchange/android/PCSingleton;->getWebViewHardwareAccelerationEnabled()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 875
    const-string v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v0, v1

    .line 876
    goto :goto_0
.end method

.method public getQuantityPurchasedForProduct(Ljava/lang/String;)I
    .locals 1
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 1286
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton;->x:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/pocketchange/android/PCSingleton;
    check-cast p0, Ljava/lang/Integer;

    .line 1287
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getShopIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "sourceId"    # Ljava/lang/String;

    .prologue
    .line 1219
    invoke-virtual {p0}, Lcom/pocketchange/android/PCSingleton;->c()V

    .line 1220
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/pocketchange/android/PCSingleton;->D:Landroid/content/Context;

    const-class v2, Lcom/pocketchange/android/rewards/ShopActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1221
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1225
    const-string v1, "hardwareAccelerationEnabled"

    invoke-virtual {p0}, Lcom/pocketchange/android/PCSingleton;->getWebViewHardwareAccelerationEnabled()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1226
    const-string v1, "url"

    invoke-virtual {p0, p1}, Lcom/pocketchange/android/PCSingleton;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1227
    return-object v0
.end method

.method public getWebViewHardwareAccelerationEnabled()Z
    .locals 1

    .prologue
    .line 848
    iget-boolean v0, p0, Lcom/pocketchange/android/PCSingleton;->z:Z

    return v0
.end method

.method public grantReward(Ljava/lang/String;I)V
    .locals 2
    .param p1, "rewardId"    # Ljava/lang/String;
    .param p2, "amount"    # I

    .prologue
    .line 981
    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    .line 982
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "amount must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 984
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/pocketchange/android/PCSingleton;->a(Ljava/lang/String;I)V

    .line 985
    new-instance v0, Lcom/pocketchange/android/PCSingleton$4;

    const-string v1, "PocketChange"

    invoke-direct {v0, p0, v1}, Lcom/pocketchange/android/PCSingleton$4;-><init>(Lcom/pocketchange/android/PCSingleton;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/pocketchange/android/PCSingleton;->a(Ljava/lang/Runnable;)V

    .line 990
    invoke-virtual {p0}, Lcom/pocketchange/android/PCSingleton;->i()V

    .line 991
    return-void
.end method

.method h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 927
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton;->y:Ljava/lang/Object;

    monitor-enter v0

    .line 928
    :try_start_0
    iget-object v1, p0, Lcom/pocketchange/android/PCSingleton;->k:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 929
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasPurchasedProduct(Ljava/lang/String;)Z
    .locals 1
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 1292
    invoke-virtual {p0, p1}, Lcom/pocketchange/android/PCSingleton;->getQuantityPurchasedForProduct(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method i()V
    .locals 3

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton;->b:Lcom/pocketchange/android/util/OperationQueue;

    const-string v1, "PROCESS_PENDING_REWARDS"

    new-instance v2, Lcom/pocketchange/android/PCSingleton$5;

    invoke-direct {v2, p0}, Lcom/pocketchange/android/PCSingleton$5;-><init>(Lcom/pocketchange/android/PCSingleton;)V

    invoke-virtual {v0, v1, v2}, Lcom/pocketchange/android/util/OperationQueue;->offer(Ljava/lang/String;Lcom/pocketchange/android/util/OperationQueue$Enqueuer;)V

    .line 1071
    return-void
.end method

.method j()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1122
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1123
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 1124
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 1125
    if-lez v0, :cond_0

    .line 1126
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1129
    :cond_1
    return-object v1
.end method

.method k()V
    .locals 3

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton;->b:Lcom/pocketchange/android/util/OperationQueue;

    const-string v1, "UPDATE_NOTIFICATION"

    new-instance v2, Lcom/pocketchange/android/PCSingleton$6;

    invoke-direct {v2, p0}, Lcom/pocketchange/android/PCSingleton$6;-><init>(Lcom/pocketchange/android/PCSingleton;)V

    invoke-virtual {v0, v1, v2}, Lcom/pocketchange/android/util/OperationQueue;->offer(Ljava/lang/String;Lcom/pocketchange/android/util/OperationQueue$Enqueuer;)V

    .line 1151
    return-void
.end method

.method final l()J
    .locals 3

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton;->y:Ljava/lang/Object;

    monitor-enter v0

    .line 1171
    :try_start_0
    iget-wide v1, p0, Lcom/pocketchange/android/PCSingleton;->l:J

    monitor-exit v0

    return-wide v1

    .line 1172
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method m()V
    .locals 2

    .prologue
    .line 1184
    const-wide/high16 v0, -0x8000000000000000L

    invoke-virtual {p0, v0, v1}, Lcom/pocketchange/android/PCSingleton;->b(J)V

    .line 1185
    return-void
.end method

.method n()V
    .locals 3

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton;->b:Lcom/pocketchange/android/util/OperationQueue;

    const-string v1, "SEND_PACKAGE_DATA"

    new-instance v2, Lcom/pocketchange/android/PCSingleton$9;

    invoke-direct {v2, p0}, Lcom/pocketchange/android/PCSingleton$9;-><init>(Lcom/pocketchange/android/PCSingleton;)V

    invoke-virtual {v0, v1, v2}, Lcom/pocketchange/android/util/OperationQueue;->offer(Ljava/lang/String;Lcom/pocketchange/android/util/OperationQueue$Enqueuer;)V

    .line 1277
    return-void
.end method

.method o()V
    .locals 2

    .prologue
    .line 1281
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/pocketchange/android/PCSingleton;->f:J

    .line 1282
    return-void
.end method

.method public onAppEventTriggered(Ljava/lang/String;)V
    .locals 2
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 739
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton;->j:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 740
    new-instance v0, Lcom/pocketchange/android/PCSingleton$18;

    const-string v1, "PocketChange"

    invoke-direct {v0, p0, v1}, Lcom/pocketchange/android/PCSingleton$18;-><init>(Lcom/pocketchange/android/PCSingleton;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/pocketchange/android/PCSingleton;->a(Ljava/lang/Runnable;)V

    .line 745
    invoke-virtual {p0}, Lcom/pocketchange/android/PCSingleton;->f()V

    .line 746
    return-void
.end method

.method public onNotificationCancelled()V
    .locals 3

    .prologue
    .line 887
    const-string v0, "NOTIFICATION_CANCELLED"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/pocketchange/android/PCSingleton;->recordEvent(Ljava/lang/String;Lorg/json/JSONObject;Z)Z

    .line 888
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton;->y:Ljava/lang/Object;

    monitor-enter v0

    .line 889
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/pocketchange/android/PCSingleton;->m:J

    .line 890
    monitor-exit v0

    .line 891
    return-void

    .line 890
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onNotificationClosed()V
    .locals 3

    .prologue
    .line 895
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton;->y:Ljava/lang/Object;

    monitor-enter v0

    .line 896
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/pocketchange/android/PCSingleton;->n:J

    .line 897
    monitor-exit v0

    .line 898
    return-void

    .line 897
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onNotificationDisplayed(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 881
    const-string v0, "NOTIFICATION_DISPLAYED"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/pocketchange/android/PCSingleton;->recordEvent(Ljava/lang/String;Lorg/json/JSONObject;Z)Z

    .line 882
    invoke-virtual {p0, p1, v2}, Lcom/pocketchange/android/PCSingleton;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 883
    return-void
.end method

.method public openShop(Ljava/lang/String;)V
    .locals 2
    .param p1, "sourceId"    # Ljava/lang/String;

    .prologue
    .line 1213
    invoke-virtual {p0, p1}, Lcom/pocketchange/android/PCSingleton;->getShopIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1214
    iget-object v1, p0, Lcom/pocketchange/android/PCSingleton;->D:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1215
    return-void
.end method

.method p()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1473
    iget-boolean v0, p0, Lcom/pocketchange/android/PCSingleton;->d:Z

    if-eqz v0, :cond_0

    .line 1480
    :goto_0
    return-void

    .line 1476
    :cond_0
    invoke-virtual {p0}, Lcom/pocketchange/android/PCSingleton;->r()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1477
    const-string v1, "productTransactionsInitialized"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1478
    invoke-static {v0}, Lcom/pocketchange/android/content/ContentUtils;->writeSharedPreferences(Landroid/content/SharedPreferences$Editor;)V

    .line 1479
    iput-boolean v2, p0, Lcom/pocketchange/android/PCSingleton;->d:Z

    goto :goto_0
.end method

.method q()V
    .locals 3

    .prologue
    .line 1588
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/pocketchange/android/PCSingleton;->D:Landroid/content/Context;

    const-class v2, Lcom/pocketchange/android/http/AsyncHttpRequestService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1589
    const-string v1, "com.pocketchange.android.http.AsyncHttpRequestService$ProcessRequestQueue"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1590
    iget-object v1, p0, Lcom/pocketchange/android/PCSingleton;->D:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1591
    return-void
.end method

.method r()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 1637
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton;->w:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1638
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton;->D:Landroid/content/Context;

    const-string v1, "com.pocketchange.android.Preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/pocketchange/android/PCSingleton;->w:Landroid/content/SharedPreferences;

    .line 1640
    :cond_0
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton;->w:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public recordEvent(Ljava/lang/String;Lorg/json/JSONObject;Z)Z
    .locals 8
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/json/JSONObject;
    .param p3, "oneShot"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 827
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 828
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "message"

    invoke-direct {v0, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 829
    if-eqz p2, :cond_0

    .line 830
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "data"

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 832
    :cond_0
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 833
    if-eqz p3, :cond_2

    .line 834
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton;->D:Landroid/content/Context;

    invoke-static {v0}, Lcom/pocketchange/android/net/NetUtils;->isConnectedToNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 835
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton;->q:Lcom/pocketchange/android/PCSingleton$Configuration;

    invoke-virtual {v0}, Lcom/pocketchange/android/PCSingleton$Configuration;->getLoggingURL()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, v1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/pocketchange/android/PCSingleton;->a(Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;Ljava/lang/String;Ljava/util/List;Lcom/pocketchange/android/api/JSONResponseHandler;Ljava/lang/Runnable;)V

    move v0, v7

    .line 842
    :goto_0
    return v0

    :cond_1
    move v0, v6

    .line 838
    goto :goto_0

    .line 841
    :cond_2
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton;->q:Lcom/pocketchange/android/PCSingleton$Configuration;

    invoke-virtual {v0}, Lcom/pocketchange/android/PCSingleton$Configuration;->getLoggingURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0, v3}, Lcom/pocketchange/android/PCSingleton;->a(Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    .line 842
    iget-object v1, p0, Lcom/pocketchange/android/PCSingleton;->D:Landroid/content/Context;

    iget-object v2, p0, Lcom/pocketchange/android/PCSingleton;->D:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/pocketchange/android/http/AsyncHttpRequestService;->createIntentForRequest(Landroid/content/Context;Lorg/apache/http/client/methods/HttpUriRequest;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_3

    move v0, v7

    goto :goto_0

    :cond_3
    move v0, v6

    goto :goto_0
.end method

.method public recordException(Ljava/lang/Throwable;ZZ)V
    .locals 5
    .param p1, "exception"    # Ljava/lang/Throwable;
    .param p2, "isFatal"    # Z
    .param p3, "oneShot"    # Z

    .prologue
    .line 800
    :try_start_0
    sget-object v0, Lcom/pocketchange/android/PCSingleton;->t:Lcom/pocketchange/android/util/ExceptionFilter;

    invoke-interface {v0, p1}, Lcom/pocketchange/android/util/ExceptionFilter;->matches(Ljava/lang/Throwable;)Z

    move-result v0

    .line 801
    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 823
    :goto_0
    return-void

    .line 806
    :cond_0
    if-eqz v0, :cond_3

    .line 807
    invoke-static {p1}, Lcom/pocketchange/android/util/ExceptionUtils;->computeSignature(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 808
    if-nez v0, :cond_2

    const-string v1, "SDK_EXCEPTION"

    .line 811
    :goto_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 812
    const-string v3, "signature"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 813
    const-string v0, "trace"

    invoke-static {p1}, Lcom/pocketchange/android/util/ExceptionUtils;->createTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 814
    const-string v0, "isFatal"

    invoke-virtual {v2, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-object v0, v2

    .line 819
    :goto_2
    if-nez p3, :cond_1

    if-eqz p2, :cond_4

    :cond_1
    const/4 v2, 0x1

    :goto_3
    invoke-virtual {p0, v1, v0, v2}, Lcom/pocketchange/android/PCSingleton;->recordEvent(Ljava/lang/String;Lorg/json/JSONObject;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 820
    :catch_0
    move-exception v0

    .line 821
    const-string v1, "PocketChange"

    const-string v2, "Error recording exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 808
    :cond_2
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SDK_EXCEPTION."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 816
    :cond_3
    const-string v0, "APPLICATION_CRASH"
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 817
    const/4 v1, 0x0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2

    .line 819
    :cond_4
    const/4 v2, 0x0

    goto :goto_3
.end method

.method public saveState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 398
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 399
    const-string v1, "config"

    iget-object v2, p0, Lcom/pocketchange/android/PCSingleton;->q:Lcom/pocketchange/android/PCSingleton$Configuration;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 400
    return-object v0
.end method

.method public setWebViewHardwareAccelerationEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 853
    iget-boolean v0, p0, Lcom/pocketchange/android/PCSingleton;->z:Z

    if-ne v0, p1, :cond_0

    .line 862
    :goto_0
    return-void

    .line 856
    :cond_0
    iput-boolean p1, p0, Lcom/pocketchange/android/PCSingleton;->z:Z

    .line 857
    new-instance v0, Lcom/pocketchange/android/PCSingleton$2;

    const-string v1, "PocketChange"

    invoke-direct {v0, p0, v1}, Lcom/pocketchange/android/PCSingleton$2;-><init>(Lcom/pocketchange/android/PCSingleton;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/pocketchange/android/PCSingleton;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
