.class Lcom/google/inject/LookupProcessor;
.super Lcom/google/inject/AbstractProcessor;
.source "LookupProcessor.java"


# direct methods
.method constructor <init>(Lcom/google/inject/internal/Errors;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/google/inject/AbstractProcessor;-><init>(Lcom/google/inject/internal/Errors;)V

    .line 34
    return-void
.end method


# virtual methods
.method public visit(Lcom/google/inject/spi/MembersInjectorLookup;)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/spi/MembersInjectorLookup",
            "<TT;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/google/inject/LookupProcessor;->injector:Lcom/google/inject/InjectorImpl;

    iget-object v0, v0, Lcom/google/inject/InjectorImpl;->membersInjectorStore:Lcom/google/inject/MembersInjectorStore;

    invoke-virtual {p1}, Lcom/google/inject/spi/MembersInjectorLookup;->getType()Lcom/google/inject/TypeLiteral;

    move-result-object v1

    iget-object v2, p0, Lcom/google/inject/LookupProcessor;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {v0, v1, v2}, Lcom/google/inject/MembersInjectorStore;->get(Lcom/google/inject/TypeLiteral;Lcom/google/inject/internal/Errors;)Lcom/google/inject/MembersInjectorImpl;

    move-result-object v0

    .line 40
    invoke-virtual {p1, v0}, Lcom/google/inject/spi/MembersInjectorLookup;->initializeDelegate(Lcom/google/inject/MembersInjector;)V
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    iget-object v1, p0, Lcom/google/inject/LookupProcessor;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {v0}, Lcom/google/inject/internal/ErrorsException;->getErrors()Lcom/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;

    goto :goto_0
.end method

.method public visit(Lcom/google/inject/spi/ProviderLookup;)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/spi/ProviderLookup",
            "<TT;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/google/inject/LookupProcessor;->injector:Lcom/google/inject/InjectorImpl;

    invoke-virtual {p1}, Lcom/google/inject/spi/ProviderLookup;->getKey()Lcom/google/inject/Key;

    move-result-object v1

    iget-object v2, p0, Lcom/google/inject/LookupProcessor;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {v0, v1, v2}, Lcom/google/inject/InjectorImpl;->getProviderOrThrow(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/Provider;

    move-result-object v0

    .line 52
    invoke-virtual {p1, v0}, Lcom/google/inject/spi/ProviderLookup;->initializeDelegate(Lcom/google/inject/Provider;)V
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    iget-object v1, p0, Lcom/google/inject/LookupProcessor;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {v0}, Lcom/google/inject/internal/ErrorsException;->getErrors()Lcom/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;

    goto :goto_0
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/MembersInjectorLookup;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/google/inject/LookupProcessor;->visit(Lcom/google/inject/spi/MembersInjectorLookup;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/ProviderLookup;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/google/inject/LookupProcessor;->visit(Lcom/google/inject/spi/ProviderLookup;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
