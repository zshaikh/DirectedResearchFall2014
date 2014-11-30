.class public Lcom/google/inject/internal/ConstructionContext;
.super Ljava/lang/Object;
.source "ConstructionContext.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field constructing:Z

.field currentReference:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field invocationHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/internal/ConstructionContext$DelegatingInvocationHandler",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method


# virtual methods
.method public createProxy(Lcom/google/inject/internal/Errors;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/Errors;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p1, p2}, Lcom/google/inject/internal/Errors;->cannotSatisfyCircularDependency(Ljava/lang/Class;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v0

    throw v0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/google/inject/internal/ConstructionContext;->invocationHandlers:Ljava/util/List;

    if-nez v0, :cond_1

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/inject/internal/ConstructionContext;->invocationHandlers:Ljava/util/List;

    .line 76
    :cond_1
    new-instance v0, Lcom/google/inject/internal/ConstructionContext$DelegatingInvocationHandler;

    invoke-direct {v0}, Lcom/google/inject/internal/ConstructionContext$DelegatingInvocationHandler;-><init>()V

    .line 78
    iget-object v1, p0, Lcom/google/inject/internal/ConstructionContext;->invocationHandlers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-static {p2}, Lcom/google/inject/internal/BytecodeGen;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v1

    .line 81
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public finishConstruction()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/inject/internal/ConstructionContext;->constructing:Z

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/inject/internal/ConstructionContext;->invocationHandlers:Ljava/util/List;

    .line 61
    return-void
.end method

.method public getCurrentReference()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/inject/internal/ConstructionContext;->currentReference:Ljava/lang/Object;

    return-object v0
.end method

.method public isConstructing()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/google/inject/internal/ConstructionContext;->constructing:Z

    return v0
.end method

.method public removeCurrentReference()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/inject/internal/ConstructionContext;->currentReference:Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public setCurrentReference(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/inject/internal/ConstructionContext;->currentReference:Ljava/lang/Object;

    .line 48
    return-void
.end method

.method public setProxyDelegates(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/inject/internal/ConstructionContext;->invocationHandlers:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/google/inject/internal/ConstructionContext;->invocationHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/inject/internal/ConstructionContext$DelegatingInvocationHandler;

    .line 88
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/ConstructionContext$DelegatingInvocationHandler;->setDelegate(Ljava/lang/Object;)V

    goto :goto_0

    .line 91
    :cond_0
    return-void
.end method

.method public startConstruction()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/inject/internal/ConstructionContext;->constructing:Z

    .line 56
    return-void
.end method
