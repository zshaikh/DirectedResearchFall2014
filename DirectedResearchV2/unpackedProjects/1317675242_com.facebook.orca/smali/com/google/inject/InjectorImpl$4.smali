.class Lcom/google/inject/InjectorImpl$4;
.super Ljava/lang/Object;
.source "InjectorImpl.java"

# interfaces
.implements Lcom/google/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/inject/Provider",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/inject/InjectorImpl;

.field final synthetic val$dependency:Lcom/google/inject/spi/Dependency;

.field final synthetic val$factory:Lcom/google/inject/internal/InternalFactory;


# direct methods
.method constructor <init>(Lcom/google/inject/InjectorImpl;Lcom/google/inject/spi/Dependency;Lcom/google/inject/internal/InternalFactory;)V
    .locals 0

    .prologue
    .line 750
    iput-object p1, p0, Lcom/google/inject/InjectorImpl$4;->this$0:Lcom/google/inject/InjectorImpl;

    iput-object p2, p0, Lcom/google/inject/InjectorImpl$4;->val$dependency:Lcom/google/inject/spi/Dependency;

    iput-object p3, p0, Lcom/google/inject/InjectorImpl$4;->val$factory:Lcom/google/inject/internal/InternalFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 752
    new-instance v0, Lcom/google/inject/internal/Errors;

    iget-object v1, p0, Lcom/google/inject/InjectorImpl$4;->val$dependency:Lcom/google/inject/spi/Dependency;

    invoke-direct {v0, v1}, Lcom/google/inject/internal/Errors;-><init>(Ljava/lang/Object;)V

    .line 754
    :try_start_0
    iget-object v1, p0, Lcom/google/inject/InjectorImpl$4;->this$0:Lcom/google/inject/InjectorImpl;

    new-instance v2, Lcom/google/inject/InjectorImpl$4$1;

    invoke-direct {v2, p0, v0}, Lcom/google/inject/InjectorImpl$4$1;-><init>(Lcom/google/inject/InjectorImpl$4;Lcom/google/inject/internal/Errors;)V

    invoke-virtual {v1, v2}, Lcom/google/inject/InjectorImpl;->callInContext(Lcom/google/inject/ContextualCallable;)Ljava/lang/Object;

    move-result-object v1

    .line 764
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/inject/internal/Errors;->throwIfNewErrors(I)V
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    return-object v1

    .line 766
    :catch_0
    move-exception v1

    .line 767
    new-instance v2, Lcom/google/inject/ProvisionException;

    invoke-virtual {v1}, Lcom/google/inject/internal/ErrorsException;->getErrors()Lcom/google/inject/internal/Errors;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->getMessages()Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/inject/ProvisionException;-><init>(Ljava/lang/Iterable;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 772
    iget-object v0, p0, Lcom/google/inject/InjectorImpl$4;->val$factory:Lcom/google/inject/internal/InternalFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
