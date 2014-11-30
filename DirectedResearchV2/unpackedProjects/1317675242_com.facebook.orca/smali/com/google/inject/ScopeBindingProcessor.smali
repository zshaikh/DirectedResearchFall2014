.class Lcom/google/inject/ScopeBindingProcessor;
.super Lcom/google/inject/AbstractProcessor;
.source "ScopeBindingProcessor.java"


# direct methods
.method constructor <init>(Lcom/google/inject/internal/Errors;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/inject/AbstractProcessor;-><init>(Lcom/google/inject/internal/Errors;)V

    .line 35
    return-void
.end method


# virtual methods
.method public visit(Lcom/google/inject/spi/ScopeBinding;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 38
    invoke-virtual {p1}, Lcom/google/inject/spi/ScopeBinding;->getScope()Lcom/google/inject/Scope;

    move-result-object v1

    .line 39
    invoke-virtual {p1}, Lcom/google/inject/spi/ScopeBinding;->getAnnotationType()Ljava/lang/Class;

    move-result-object v2

    .line 41
    invoke-static {v2}, Lcom/google/inject/internal/Annotations;->isScopeAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/google/inject/ScopeBindingProcessor;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {v0, v2}, Lcom/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->missingScopeAnnotation()Lcom/google/inject/internal/Errors;

    .line 46
    :cond_0
    invoke-static {v2}, Lcom/google/inject/internal/Annotations;->isRetainedAtRuntime(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/google/inject/ScopeBindingProcessor;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {v0, v2}, Lcom/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/inject/spi/ScopeBinding;->getSource()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/inject/internal/Errors;->missingRuntimeRetention(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/google/inject/ScopeBindingProcessor;->injector:Lcom/google/inject/InjectorImpl;

    iget-object v3, v0, Lcom/google/inject/InjectorImpl;->state:Lcom/google/inject/State;

    const-string v0, "annotation type"

    invoke-static {v2, v0}, Lcom/google/inject/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-interface {v3, v0}, Lcom/google/inject/State;->getScope(Ljava/lang/Class;)Lcom/google/inject/Scope;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    iget-object v3, p0, Lcom/google/inject/ScopeBindingProcessor;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {v3, v0, v2, v1}, Lcom/google/inject/internal/Errors;->duplicateScopes(Lcom/google/inject/Scope;Ljava/lang/Class;Lcom/google/inject/Scope;)Lcom/google/inject/internal/Errors;

    .line 59
    :goto_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/google/inject/ScopeBindingProcessor;->injector:Lcom/google/inject/InjectorImpl;

    iget-object v0, v0, Lcom/google/inject/InjectorImpl;->state:Lcom/google/inject/State;

    const-string v3, "scope"

    invoke-static {v1, v3}, Lcom/google/inject/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/inject/Scope;

    invoke-interface {v0, v2, p0}, Lcom/google/inject/State;->putAnnotation(Ljava/lang/Class;Lcom/google/inject/Scope;)V

    goto :goto_0
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/ScopeBinding;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/google/inject/ScopeBindingProcessor;->visit(Lcom/google/inject/spi/ScopeBinding;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
