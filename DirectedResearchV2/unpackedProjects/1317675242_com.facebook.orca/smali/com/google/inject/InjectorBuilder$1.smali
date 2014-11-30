.class Lcom/google/inject/InjectorBuilder$1;
.super Ljava/lang/Object;
.source "InjectorBuilder.java"

# interfaces
.implements Lcom/google/inject/ContextualCallable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/inject/ContextualCallable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field dependency:Lcom/google/inject/spi/Dependency;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/spi/Dependency",
            "<*>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/inject/InjectorBuilder;

.field final synthetic val$binding:Lcom/google/inject/internal/BindingImpl;

.field final synthetic val$errors:Lcom/google/inject/internal/Errors;


# direct methods
.method constructor <init>(Lcom/google/inject/InjectorBuilder;Lcom/google/inject/internal/BindingImpl;Lcom/google/inject/internal/Errors;)V
    .locals 1

    .prologue
    .line 194
    iput-object p1, p0, Lcom/google/inject/InjectorBuilder$1;->this$0:Lcom/google/inject/InjectorBuilder;

    iput-object p2, p0, Lcom/google/inject/InjectorBuilder$1;->val$binding:Lcom/google/inject/internal/BindingImpl;

    iput-object p3, p0, Lcom/google/inject/InjectorBuilder$1;->val$errors:Lcom/google/inject/internal/Errors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iget-object v0, p0, Lcom/google/inject/InjectorBuilder$1;->val$binding:Lcom/google/inject/internal/BindingImpl;

    invoke-virtual {v0}, Lcom/google/inject/internal/BindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/spi/Dependency;->get(Lcom/google/inject/Key;)Lcom/google/inject/spi/Dependency;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/InjectorBuilder$1;->dependency:Lcom/google/inject/spi/Dependency;

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Lcom/google/inject/internal/InternalContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lcom/google/inject/InjectorBuilder$1;->call(Lcom/google/inject/internal/InternalContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call(Lcom/google/inject/internal/InternalContext;)Ljava/lang/Void;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 197
    iget-object v0, p0, Lcom/google/inject/InjectorBuilder$1;->dependency:Lcom/google/inject/spi/Dependency;

    invoke-virtual {p1, v0}, Lcom/google/inject/internal/InternalContext;->setDependency(Lcom/google/inject/spi/Dependency;)V

    .line 198
    iget-object v0, p0, Lcom/google/inject/InjectorBuilder$1;->val$errors:Lcom/google/inject/internal/Errors;

    iget-object v1, p0, Lcom/google/inject/InjectorBuilder$1;->dependency:Lcom/google/inject/spi/Dependency;

    invoke-virtual {v0, v1}, Lcom/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/google/inject/InjectorBuilder$1;->val$binding:Lcom/google/inject/internal/BindingImpl;

    invoke-virtual {v1}, Lcom/google/inject/internal/BindingImpl;->getInternalFactory()Lcom/google/inject/internal/InternalFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/google/inject/InjectorBuilder$1;->dependency:Lcom/google/inject/spi/Dependency;

    invoke-interface {v1, v0, p1, v2}, Lcom/google/inject/internal/InternalFactory;->get(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/spi/Dependency;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    invoke-virtual {p1, v3}, Lcom/google/inject/internal/InternalContext;->setDependency(Lcom/google/inject/spi/Dependency;)V

    .line 207
    :goto_0
    return-object v3

    .line 201
    :catch_0
    move-exception v1

    .line 202
    :try_start_1
    invoke-virtual {v1}, Lcom/google/inject/internal/ErrorsException;->getErrors()Lcom/google/inject/internal/Errors;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    invoke-virtual {p1, v3}, Lcom/google/inject/internal/InternalContext;->setDependency(Lcom/google/inject/spi/Dependency;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1, v3}, Lcom/google/inject/internal/InternalContext;->setDependency(Lcom/google/inject/spi/Dependency;)V

    throw v0
.end method
