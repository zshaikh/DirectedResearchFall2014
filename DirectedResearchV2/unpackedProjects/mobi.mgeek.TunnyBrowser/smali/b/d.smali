.class final Lb/d;
.super Ljava/lang/Object;
.source "Executors.java"


# static fields
.field static final a:I

.field static final b:I

.field private static final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lb/d;->c:I

    .line 53
    sget v0, Lb/d;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lb/d;->a:I

    .line 54
    sget v0, Lb/d;->c:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lb/d;->b:I

    return-void
.end method

.method public static a()Ljava/util/concurrent/ExecutorService;
    .locals 8

    .prologue
    .line 69
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v1, Lb/d;->a:I

    sget v2, Lb/d;->b:I

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v7, 0x80

    invoke-direct {v6, v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 75
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lb/d;->a(Ljava/util/concurrent/ThreadPoolExecutor;Z)V

    .line 77
    return-object v0
.end method

.method public static a(Ljava/util/concurrent/ThreadPoolExecutor;Z)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 115
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 116
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 118
    :cond_0
    return-void
.end method
