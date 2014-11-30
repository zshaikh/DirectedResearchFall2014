.class Lcom/google/inject/DefaultConstructionProxyFactory$1;
.super Ljava/lang/Object;
.source "DefaultConstructionProxyFactory.java"

# interfaces
.implements Lcom/google/inject/ConstructionProxy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/inject/ConstructionProxy",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/inject/DefaultConstructionProxyFactory;

.field final synthetic val$constructor:Ljava/lang/reflect/Constructor;


# direct methods
.method constructor <init>(Lcom/google/inject/DefaultConstructionProxyFactory;Ljava/lang/reflect/Constructor;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/inject/DefaultConstructionProxyFactory$1;->this$0:Lcom/google/inject/DefaultConstructionProxyFactory;

    iput-object p2, p0, Lcom/google/inject/DefaultConstructionProxyFactory$1;->val$constructor:Ljava/lang/reflect/Constructor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInjectionPoint()Lcom/google/inject/spi/InjectionPoint;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/inject/DefaultConstructionProxyFactory$1;->this$0:Lcom/google/inject/DefaultConstructionProxyFactory;

    # getter for: Lcom/google/inject/DefaultConstructionProxyFactory;->injectionPoint:Lcom/google/inject/spi/InjectionPoint;
    invoke-static {v0}, Lcom/google/inject/DefaultConstructionProxyFactory;->access$000(Lcom/google/inject/DefaultConstructionProxyFactory;)Lcom/google/inject/spi/InjectionPoint;

    move-result-object v0

    return-object v0
.end method

.method public varargs newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/google/inject/DefaultConstructionProxyFactory$1;->val$constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 84
    :catch_1
    move-exception v0

    .line 85
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
