.class Lcom/google/inject/InjectionRequestProcessor;
.super Lcom/google/inject/AbstractProcessor;
.source "InjectionRequestProcessor.java"


# instance fields
.field private final initializer:Lcom/google/inject/Initializer;

.field private final staticInjections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/InjectionRequestProcessor$StaticInjection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/inject/internal/Errors;Lcom/google/inject/Initializer;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/google/inject/AbstractProcessor;-><init>(Lcom/google/inject/internal/Errors;)V

    .line 39
    invoke-static {}, Lcom/google/inject/internal/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/InjectionRequestProcessor;->staticInjections:Ljava/util/List;

    .line 44
    iput-object p2, p0, Lcom/google/inject/InjectionRequestProcessor;->initializer:Lcom/google/inject/Initializer;

    .line 45
    return-void
.end method


# virtual methods
.method public injectMembers()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/inject/InjectionRequestProcessor;->staticInjections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/inject/InjectionRequestProcessor$StaticInjection;

    .line 74
    invoke-virtual {p0}, Lcom/google/inject/InjectionRequestProcessor$StaticInjection;->injectMembers()V

    goto :goto_0

    .line 76
    :cond_0
    return-void
.end method

.method public validate()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/inject/InjectionRequestProcessor;->staticInjections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/inject/InjectionRequestProcessor$StaticInjection;

    .line 68
    invoke-virtual {p0}, Lcom/google/inject/InjectionRequestProcessor$StaticInjection;->validate()V

    goto :goto_0

    .line 70
    :cond_0
    return-void
.end method

.method public visit(Lcom/google/inject/spi/InjectionRequest;)Ljava/lang/Boolean;
    .locals 5

    .prologue
    .line 55
    :try_start_0
    invoke-virtual {p1}, Lcom/google/inject/spi/InjectionRequest;->getInjectionPoints()Ljava/util/Set;
    :try_end_0
    .catch Lcom/google/inject/ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 61
    :goto_0
    iget-object v1, p0, Lcom/google/inject/InjectionRequestProcessor;->initializer:Lcom/google/inject/Initializer;

    iget-object v2, p0, Lcom/google/inject/InjectionRequestProcessor;->injector:Lcom/google/inject/InjectorImpl;

    invoke-virtual {p1}, Lcom/google/inject/spi/InjectionRequest;->getInstance()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/inject/spi/InjectionRequest;->getSource()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/inject/Initializer;->requestInjection(Lcom/google/inject/InjectorImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Set;)Lcom/google/inject/Initializable;

    .line 63
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    iget-object v1, p0, Lcom/google/inject/InjectionRequestProcessor;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {v0}, Lcom/google/inject/ConfigurationException;->getErrorMessages()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/inject/internal/Errors;->merge(Ljava/util/Collection;)Lcom/google/inject/internal/Errors;

    .line 58
    invoke-virtual {v0}, Lcom/google/inject/ConfigurationException;->getPartialValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    goto :goto_0
.end method

.method public visit(Lcom/google/inject/spi/StaticInjectionRequest;)Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/inject/InjectionRequestProcessor;->staticInjections:Ljava/util/List;

    new-instance v1, Lcom/google/inject/InjectionRequestProcessor$StaticInjection;

    iget-object v2, p0, Lcom/google/inject/InjectionRequestProcessor;->injector:Lcom/google/inject/InjectorImpl;

    invoke-direct {v1, p0, v2, p1}, Lcom/google/inject/InjectionRequestProcessor$StaticInjection;-><init>(Lcom/google/inject/InjectionRequestProcessor;Lcom/google/inject/InjectorImpl;Lcom/google/inject/spi/StaticInjectionRequest;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/InjectionRequest;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/google/inject/InjectionRequestProcessor;->visit(Lcom/google/inject/spi/InjectionRequest;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/StaticInjectionRequest;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/google/inject/InjectionRequestProcessor;->visit(Lcom/google/inject/spi/StaticInjectionRequest;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
