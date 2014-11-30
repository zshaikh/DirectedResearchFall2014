.class public interface abstract Lcom/google/inject/Injector;
.super Ljava/lang/Object;
.source "Injector.java"


# virtual methods
.method public varargs abstract createChildInjector([Lcom/google/inject/Module;)Lcom/google/inject/Injector;
.end method

.method public abstract getBinding(Lcom/google/inject/Key;)Lcom/google/inject/Binding;
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
.end method

.method public abstract getInstance(Lcom/google/inject/Key;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract getProvider(Lcom/google/inject/Key;)Lcom/google/inject/Provider;
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
.end method

.method public abstract injectMembers(Ljava/lang/Object;)V
.end method
