.class Lcom/google/inject/ProviderToInternalFactoryAdapter$1;
.super Ljava/lang/Object;
.source "ProviderToInternalFactoryAdapter.java"

# interfaces
.implements Lcom/google/inject/ContextualCallable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/inject/ContextualCallable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/inject/ProviderToInternalFactoryAdapter;

.field final synthetic val$errors:Lcom/google/inject/internal/Errors;


# direct methods
.method constructor <init>(Lcom/google/inject/ProviderToInternalFactoryAdapter;Lcom/google/inject/internal/Errors;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/inject/ProviderToInternalFactoryAdapter$1;->this$0:Lcom/google/inject/ProviderToInternalFactoryAdapter;

    iput-object p2, p0, Lcom/google/inject/ProviderToInternalFactoryAdapter$1;->val$errors:Lcom/google/inject/internal/Errors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/google/inject/internal/InternalContext;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/InternalContext;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p1}, Lcom/google/inject/internal/InternalContext;->getDependency()Lcom/google/inject/spi/Dependency;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/google/inject/ProviderToInternalFactoryAdapter$1;->this$0:Lcom/google/inject/ProviderToInternalFactoryAdapter;

    # getter for: Lcom/google/inject/ProviderToInternalFactoryAdapter;->internalFactory:Lcom/google/inject/internal/InternalFactory;
    invoke-static {v1}, Lcom/google/inject/ProviderToInternalFactoryAdapter;->access$000(Lcom/google/inject/ProviderToInternalFactoryAdapter;)Lcom/google/inject/internal/InternalFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/google/inject/ProviderToInternalFactoryAdapter$1;->val$errors:Lcom/google/inject/internal/Errors;

    invoke-interface {v1, v2, p1, v0}, Lcom/google/inject/internal/InternalFactory;->get(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/spi/Dependency;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
