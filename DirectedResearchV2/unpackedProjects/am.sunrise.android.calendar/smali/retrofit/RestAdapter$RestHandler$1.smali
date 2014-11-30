.class Lretrofit/RestAdapter$RestHandler$1;
.super Ljava/lang/Object;
.source "RestAdapter.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lretrofit/ResponseWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lretrofit/RestAdapter$RestHandler;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$interceptorTape:Lretrofit/RequestInterceptorTape;

.field final synthetic val$methodInfo:Lretrofit/RestMethodInfo;


# direct methods
.method constructor <init>(Lretrofit/RestAdapter$RestHandler;Lretrofit/RequestInterceptorTape;Lretrofit/RestMethodInfo;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lretrofit/RestAdapter$RestHandler$1;->this$1:Lretrofit/RestAdapter$RestHandler;

    iput-object p2, p0, Lretrofit/RestAdapter$RestHandler$1;->val$interceptorTape:Lretrofit/RequestInterceptorTape;

    iput-object p3, p0, Lretrofit/RestAdapter$RestHandler$1;->val$methodInfo:Lretrofit/RestMethodInfo;

    iput-object p4, p0, Lretrofit/RestAdapter$RestHandler$1;->val$args:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 303
    invoke-virtual {p0}, Lretrofit/RestAdapter$RestHandler$1;->call()Lretrofit/ResponseWrapper;

    move-result-object v0

    return-object v0
.end method

.method public call()Lretrofit/ResponseWrapper;
    .locals 4

    .prologue
    .line 305
    iget-object v0, p0, Lretrofit/RestAdapter$RestHandler$1;->this$1:Lretrofit/RestAdapter$RestHandler;

    iget-object v1, p0, Lretrofit/RestAdapter$RestHandler$1;->val$interceptorTape:Lretrofit/RequestInterceptorTape;

    iget-object v2, p0, Lretrofit/RestAdapter$RestHandler$1;->val$methodInfo:Lretrofit/RestMethodInfo;

    iget-object v3, p0, Lretrofit/RestAdapter$RestHandler$1;->val$args:[Ljava/lang/Object;

    # invokes: Lretrofit/RestAdapter$RestHandler;->invokeRequest(Lretrofit/RequestInterceptor;Lretrofit/RestMethodInfo;[Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, v1, v2, v3}, Lretrofit/RestAdapter$RestHandler;->access$100(Lretrofit/RestAdapter$RestHandler;Lretrofit/RequestInterceptor;Lretrofit/RestMethodInfo;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lretrofit/ResponseWrapper;

    return-object v0
.end method
