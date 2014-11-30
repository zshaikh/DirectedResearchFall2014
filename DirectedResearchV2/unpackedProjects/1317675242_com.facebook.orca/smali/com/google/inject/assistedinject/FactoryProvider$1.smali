.class Lcom/google/inject/assistedinject/FactoryProvider$1;
.super Ljava/lang/Object;
.source "FactoryProvider.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field final synthetic this$0:Lcom/google/inject/assistedinject/FactoryProvider;


# direct methods
.method constructor <init>(Lcom/google/inject/assistedinject/FactoryProvider;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/google/inject/assistedinject/FactoryProvider$1;->this$0:Lcom/google/inject/assistedinject/FactoryProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public gatherArgsForConstructor(Lcom/google/inject/assistedinject/AssistedConstructor;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/assistedinject/AssistedConstructor",
            "<*>;[",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 321
    invoke-virtual {p1}, Lcom/google/inject/assistedinject/AssistedConstructor;->getAllParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 323
    new-array v2, v1, [Ljava/lang/Object;

    move v4, v3

    .line 325
    :goto_0
    if-ge v3, v1, :cond_1

    .line 326
    invoke-virtual {p1}, Lcom/google/inject/assistedinject/AssistedConstructor;->getAllParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/assistedinject/Parameter;

    .line 327
    invoke-virtual {v0}, Lcom/google/inject/assistedinject/Parameter;->isProvidedByFactory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 328
    aget-object v0, p2, v4

    aput-object v0, v2, v3

    .line 329
    add-int/lit8 v0, v4, 0x1

    .line 325
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v4, v0

    goto :goto_0

    .line 331
    :cond_0
    iget-object v5, p0, Lcom/google/inject/assistedinject/FactoryProvider$1;->this$0:Lcom/google/inject/assistedinject/FactoryProvider;

    # getter for: Lcom/google/inject/assistedinject/FactoryProvider;->injector:Lcom/google/inject/Injector;
    invoke-static {v5}, Lcom/google/inject/assistedinject/FactoryProvider;->access$100(Lcom/google/inject/assistedinject/FactoryProvider;)Lcom/google/inject/Injector;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/inject/assistedinject/Parameter;->getValue(Lcom/google/inject/Injector;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v3

    move v0, v4

    goto :goto_1

    .line 334
    :cond_1
    return-object v2
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 307
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 315
    :goto_0
    return-object v0

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/google/inject/assistedinject/FactoryProvider$1;->this$0:Lcom/google/inject/assistedinject/FactoryProvider;

    # getter for: Lcom/google/inject/assistedinject/FactoryProvider;->factoryMethodToConstructor:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/inject/assistedinject/FactoryProvider;->access$000(Lcom/google/inject/assistedinject/FactoryProvider;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/assistedinject/AssistedConstructor;

    .line 312
    invoke-virtual {p0, v0, p3}, Lcom/google/inject/assistedinject/FactoryProvider$1;->gatherArgsForConstructor(Lcom/google/inject/assistedinject/AssistedConstructor;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 313
    invoke-virtual {v0, v1}, Lcom/google/inject/assistedinject/AssistedConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 314
    iget-object v1, p0, Lcom/google/inject/assistedinject/FactoryProvider$1;->this$0:Lcom/google/inject/assistedinject/FactoryProvider;

    # getter for: Lcom/google/inject/assistedinject/FactoryProvider;->injector:Lcom/google/inject/Injector;
    invoke-static {v1}, Lcom/google/inject/assistedinject/FactoryProvider;->access$100(Lcom/google/inject/assistedinject/FactoryProvider;)Lcom/google/inject/Injector;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/inject/Injector;->injectMembers(Ljava/lang/Object;)V

    goto :goto_0
.end method
