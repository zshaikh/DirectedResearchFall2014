.class abstract Lretrofit/CallbackRunnable;
.super Ljava/lang/Object;
.source "CallbackRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final callback:Lretrofit/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit/Callback",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final callbackExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Lretrofit/Callback;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Callback",
            "<TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lretrofit/CallbackRunnable;->callback:Lretrofit/Callback;

    .line 32
    iput-object p2, p0, Lretrofit/CallbackRunnable;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lretrofit/CallbackRunnable;)Lretrofit/Callback;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lretrofit/CallbackRunnable;->callback:Lretrofit/Callback;

    return-object v0
.end method


# virtual methods
.method public abstract obtainResponse()Lretrofit/ResponseWrapper;
.end method

.method public final run()V
    .locals 3

    .prologue
    .line 38
    :try_start_0
    invoke-virtual {p0}, Lretrofit/CallbackRunnable;->obtainResponse()Lretrofit/ResponseWrapper;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lretrofit/CallbackRunnable;->callbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lretrofit/CallbackRunnable$1;

    invoke-direct {v2, p0, v0}, Lretrofit/CallbackRunnable$1;-><init>(Lretrofit/CallbackRunnable;Lretrofit/ResponseWrapper;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    iget-object v1, p0, Lretrofit/CallbackRunnable;->callbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lretrofit/CallbackRunnable$2;

    invoke-direct {v2, p0, v0}, Lretrofit/CallbackRunnable$2;-><init>(Lretrofit/CallbackRunnable;Lretrofit/RetrofitError;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
