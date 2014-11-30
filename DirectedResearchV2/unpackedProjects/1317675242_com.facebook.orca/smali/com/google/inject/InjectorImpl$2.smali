.class Lcom/google/inject/InjectorImpl$2;
.super Ljava/lang/Object;
.source "InjectorImpl.java"

# interfaces
.implements Lcom/google/inject/internal/InternalFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/inject/internal/InternalFactory",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/inject/InjectorImpl;

.field final synthetic val$providerBinding:Lcom/google/inject/internal/BindingImpl;

.field final synthetic val$providerKey:Lcom/google/inject/Key;

.field final synthetic val$providerType:Ljava/lang/Class;

.field final synthetic val$rawType:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/google/inject/InjectorImpl;Lcom/google/inject/Key;Lcom/google/inject/internal/BindingImpl;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 493
    iput-object p1, p0, Lcom/google/inject/InjectorImpl$2;->this$0:Lcom/google/inject/InjectorImpl;

    iput-object p2, p0, Lcom/google/inject/InjectorImpl$2;->val$providerKey:Lcom/google/inject/Key;

    iput-object p3, p0, Lcom/google/inject/InjectorImpl$2;->val$providerBinding:Lcom/google/inject/internal/BindingImpl;

    iput-object p4, p0, Lcom/google/inject/InjectorImpl$2;->val$rawType:Ljava/lang/Class;

    iput-object p5, p0, Lcom/google/inject/InjectorImpl$2;->val$providerType:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/spi/Dependency;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/Errors;",
            "Lcom/google/inject/internal/InternalContext;",
            "Lcom/google/inject/spi/Dependency;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 496
    iget-object v0, p0, Lcom/google/inject/InjectorImpl$2;->val$providerKey:Lcom/google/inject/Key;

    invoke-virtual {p1, v0}, Lcom/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v1

    .line 497
    iget-object v0, p0, Lcom/google/inject/InjectorImpl$2;->val$providerBinding:Lcom/google/inject/internal/BindingImpl;

    invoke-virtual {v0}, Lcom/google/inject/internal/BindingImpl;->getInternalFactory()Lcom/google/inject/internal/InternalFactory;

    move-result-object v0

    invoke-interface {v0, v1, p2, p3}, Lcom/google/inject/internal/InternalFactory;->get(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/spi/Dependency;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/Provider;

    .line 500
    :try_start_0
    invoke-interface {v0}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    .line 501
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/inject/InjectorImpl$2;->val$rawType:Ljava/lang/Class;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 502
    iget-object v0, p0, Lcom/google/inject/InjectorImpl$2;->val$providerType:Ljava/lang/Class;

    iget-object v2, p0, Lcom/google/inject/InjectorImpl$2;->val$rawType:Ljava/lang/Class;

    invoke-virtual {v1, v0, v2}, Lcom/google/inject/internal/Errors;->subtypeNotProvided(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    :catch_0
    move-exception v0

    .line 508
    invoke-virtual {v1, v0}, Lcom/google/inject/internal/Errors;->errorInProvider(Ljava/lang/RuntimeException;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v0

    throw v0

    .line 506
    :cond_0
    return-object v0
.end method
