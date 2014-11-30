.class final Lretrofit/RestAdapter$RxSupport;
.super Ljava/lang/Object;
.source "RestAdapter.java"


# instance fields
.field private final scheduler:Lrx/Scheduler;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    invoke-static {p1}, Lrx/schedulers/Schedulers;->executor(Ljava/util/concurrent/Executor;)Lrx/Scheduler;

    move-result-object v0

    iput-object v0, p0, Lretrofit/RestAdapter$RxSupport;->scheduler:Lrx/Scheduler;

    .line 237
    return-void
.end method


# virtual methods
.method createRequestObservable(Ljava/util/concurrent/Callable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lretrofit/ResponseWrapper;",
            ">;)",
            "Lrx/Observable;"
        }
    .end annotation

    .prologue
    .line 244
    new-instance v0, Lretrofit/RestAdapter$RxSupport$1;

    invoke-direct {v0, p0, p1}, Lretrofit/RestAdapter$RxSupport$1;-><init>(Lretrofit/RestAdapter$RxSupport;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribeFunc;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method getScheduler()Lrx/Scheduler;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lretrofit/RestAdapter$RxSupport;->scheduler:Lrx/Scheduler;

    return-object v0
.end method
