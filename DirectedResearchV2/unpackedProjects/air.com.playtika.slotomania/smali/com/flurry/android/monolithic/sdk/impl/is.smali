.class public final Lcom/flurry/android/monolithic/sdk/impl/is;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/flurry/android/monolithic/sdk/impl/is;


# instance fields
.field private final b:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Thread$UncaughtExceptionHandler;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/is;->c:Ljava/util/Map;

    .line 78
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/is;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 79
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/iu;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flurry/android/monolithic/sdk/impl/iu;-><init>(Lcom/flurry/android/monolithic/sdk/impl/is;Lcom/flurry/android/monolithic/sdk/impl/it;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 80
    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/android/monolithic/sdk/impl/is;
    .locals 2

    .prologue
    .line 31
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/is;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/is;->a:Lcom/flurry/android/monolithic/sdk/impl/is;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/is;

    invoke-direct {v1}, Lcom/flurry/android/monolithic/sdk/impl/is;-><init>()V

    sput-object v1, Lcom/flurry/android/monolithic/sdk/impl/is;->a:Lcom/flurry/android/monolithic/sdk/impl/is;

    .line 35
    :cond_0
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/is;->a:Lcom/flurry/android/monolithic/sdk/impl/is;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 31
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lcom/flurry/android/monolithic/sdk/impl/is;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/is;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/is;->b()Ljava/util/Set;

    move-result-object v0

    .line 88
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 90
    :try_start_0
    invoke-interface {p0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v1

    goto :goto_0

    .line 95
    :cond_0
    return-void
.end method

.method private b()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Thread$UncaughtExceptionHandler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/is;->c:Ljava/util/Map;

    monitor-enter v0

    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/is;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 73
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic b(Lcom/flurry/android/monolithic/sdk/impl/is;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/is;->b(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method private b(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/is;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/is;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 101
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/is;->c:Ljava/util/Map;

    monitor-enter v0

    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/is;->c:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    monitor-exit v0

    .line 57
    return-void

    .line 56
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
