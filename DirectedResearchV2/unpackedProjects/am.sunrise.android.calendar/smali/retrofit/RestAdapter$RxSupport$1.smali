.class Lretrofit/RestAdapter$RxSupport$1;
.super Ljava/lang/Object;
.source "RestAdapter.java"

# interfaces
.implements Lrx/Observable$OnSubscribeFunc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribeFunc",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lretrofit/RestAdapter$RxSupport;

.field final synthetic val$request:Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>(Lretrofit/RestAdapter$RxSupport;Ljava/util/concurrent/Callable;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lretrofit/RestAdapter$RxSupport$1;->this$0:Lretrofit/RestAdapter$RxSupport;

    iput-object p2, p0, Lretrofit/RestAdapter$RxSupport$1;->val$request:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscribe(Lrx/Observer;)Lrx/Subscription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observer",
            "<-",
            "Ljava/lang/Object;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 247
    :try_start_0
    iget-object v0, p0, Lretrofit/RestAdapter$RxSupport$1;->val$request:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lretrofit/ResponseWrapper;

    .line 248
    iget-object v0, v0, Lretrofit/ResponseWrapper;->responseBody:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 249
    invoke-interface {p1}, Lrx/Observer;->onCompleted()V
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 256
    :goto_0
    invoke-static {}, Lrx/subscriptions/Subscriptions;->empty()Lrx/Subscription;

    move-result-object v0

    return-object v0

    .line 250
    :catch_0
    move-exception v0

    .line 251
    invoke-interface {p1, v0}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 252
    :catch_1
    move-exception v0

    .line 254
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
