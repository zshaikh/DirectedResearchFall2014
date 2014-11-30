.class Lcom/google/inject/InjectorBuilder$ToolStageInjector;
.super Ljava/lang/Object;
.source "InjectorBuilder.java"

# interfaces
.implements Lcom/google/inject/Injector;


# instance fields
.field private final delegateInjector:Lcom/google/inject/Injector;


# direct methods
.method constructor <init>(Lcom/google/inject/Injector;)V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p1, p0, Lcom/google/inject/InjectorBuilder$ToolStageInjector;->delegateInjector:Lcom/google/inject/Injector;

    .line 223
    return-void
.end method


# virtual methods
.method public varargs createChildInjector([Lcom/google/inject/Module;)Lcom/google/inject/Injector;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/inject/InjectorBuilder$ToolStageInjector;->delegateInjector:Lcom/google/inject/Injector;

    invoke-interface {v0, p1}, Lcom/google/inject/Injector;->createChildInjector([Lcom/google/inject/Module;)Lcom/google/inject/Injector;

    move-result-object v0

    return-object v0
.end method

.method public getBinding(Lcom/google/inject/Key;)Lcom/google/inject/Binding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Lcom/google/inject/Binding",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/inject/InjectorBuilder$ToolStageInjector;->delegateInjector:Lcom/google/inject/Injector;

    invoke-interface {v0, p1}, Lcom/google/inject/Injector;->getBinding(Lcom/google/inject/Key;)Lcom/google/inject/Binding;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Lcom/google/inject/Key;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 266
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Injector.getInstance(Key<T>) is not supported in Stage.TOOL"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getProvider(Lcom/google/inject/Key;)Lcom/google/inject/Provider;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Lcom/google/inject/Provider",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 250
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Injector.getProvider(Key<T>) is not supported in Stage.TOOL"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public injectMembers(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 225
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Injector.injectMembers(Object) is not supported in Stage.TOOL"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
