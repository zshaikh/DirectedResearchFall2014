.class abstract Lcom/google/inject/AbstractProcessor;
.super Ljava/lang/Object;
.source "AbstractProcessor.java"

# interfaces
.implements Lcom/google/inject/spi/ElementVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/inject/spi/ElementVisitor",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field protected errors:Lcom/google/inject/internal/Errors;

.field protected injector:Lcom/google/inject/InjectorImpl;


# direct methods
.method protected constructor <init>(Lcom/google/inject/internal/Errors;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/inject/AbstractProcessor;->errors:Lcom/google/inject/internal/Errors;

    .line 50
    return-void
.end method


# virtual methods
.method public process(Lcom/google/inject/InjectorImpl;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/InjectorImpl;",
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/spi/Element;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 59
    iget-object v1, p0, Lcom/google/inject/AbstractProcessor;->errors:Lcom/google/inject/internal/Errors;

    .line 60
    iput-object p1, p0, Lcom/google/inject/AbstractProcessor;->injector:Lcom/google/inject/InjectorImpl;

    .line 62
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/spi/Element;

    .line 64
    invoke-interface {v0}, Lcom/google/inject/spi/Element;->getSource()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v3

    iput-object v3, p0, Lcom/google/inject/AbstractProcessor;->errors:Lcom/google/inject/internal/Errors;

    .line 65
    invoke-interface {v0, p0}, Lcom/google/inject/spi/Element;->acceptVisitor(Lcom/google/inject/spi/ElementVisitor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 66
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/google/inject/AbstractProcessor;->errors:Lcom/google/inject/internal/Errors;

    .line 72
    iput-object v4, p0, Lcom/google/inject/AbstractProcessor;->injector:Lcom/google/inject/InjectorImpl;

    throw v0

    .line 71
    :cond_1
    iput-object v1, p0, Lcom/google/inject/AbstractProcessor;->errors:Lcom/google/inject/internal/Errors;

    .line 72
    iput-object v4, p0, Lcom/google/inject/AbstractProcessor;->injector:Lcom/google/inject/InjectorImpl;

    .line 74
    return-void
.end method

.method public process(Ljava/lang/Iterable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/inject/InjectorShell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/InjectorShell;

    .line 54
    invoke-virtual {v0}, Lcom/google/inject/InjectorShell;->getInjector()Lcom/google/inject/InjectorImpl;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/inject/InjectorShell;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/google/inject/AbstractProcessor;->process(Lcom/google/inject/InjectorImpl;Ljava/util/List;)V

    goto :goto_0

    .line 56
    :cond_0
    return-void
.end method

.method public visit(Lcom/google/inject/Binding;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Binding",
            "<TT;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lcom/google/inject/spi/InjectionRequest;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lcom/google/inject/spi/MembersInjectorLookup;)Ljava/lang/Boolean;
    .locals 1
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
    .line 116
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lcom/google/inject/spi/Message;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lcom/google/inject/spi/PrivateElements;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lcom/google/inject/spi/ProviderLookup;)Ljava/lang/Boolean;
    .locals 1
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
    .line 108
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lcom/google/inject/spi/ScopeBinding;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lcom/google/inject/spi/StaticInjectionRequest;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lcom/google/inject/spi/TypeConverterBinding;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lcom/google/inject/spi/TypeListenerBinding;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/inject/Binding;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/google/inject/AbstractProcessor;->visit(Lcom/google/inject/Binding;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/InjectionRequest;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/google/inject/AbstractProcessor;->visit(Lcom/google/inject/spi/InjectionRequest;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/MembersInjectorLookup;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/google/inject/AbstractProcessor;->visit(Lcom/google/inject/spi/MembersInjectorLookup;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/Message;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/google/inject/AbstractProcessor;->visit(Lcom/google/inject/spi/Message;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/PrivateElements;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/google/inject/AbstractProcessor;->visit(Lcom/google/inject/spi/PrivateElements;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/ProviderLookup;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/google/inject/AbstractProcessor;->visit(Lcom/google/inject/spi/ProviderLookup;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/ScopeBinding;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/google/inject/AbstractProcessor;->visit(Lcom/google/inject/spi/ScopeBinding;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/StaticInjectionRequest;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/google/inject/AbstractProcessor;->visit(Lcom/google/inject/spi/StaticInjectionRequest;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/TypeConverterBinding;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/google/inject/AbstractProcessor;->visit(Lcom/google/inject/spi/TypeConverterBinding;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/TypeListenerBinding;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/google/inject/AbstractProcessor;->visit(Lcom/google/inject/spi/TypeListenerBinding;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
