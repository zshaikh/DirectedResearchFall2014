.class public Lcom/google/inject/internal/BindingBuilder;
.super Lcom/google/inject/internal/AbstractBindingBuilder;
.source "BindingBuilder.java"

# interfaces
.implements Lcom/google/inject/binder/AnnotatedBindingBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/inject/internal/AbstractBindingBuilder",
        "<TT;>;",
        "Lcom/google/inject/binder/AnnotatedBindingBuilder",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/inject/Binder;Ljava/util/List;Ljava/lang/Object;Lcom/google/inject/Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Binder;",
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/spi/Element;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/google/inject/Key",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/inject/internal/AbstractBindingBuilder;-><init>(Lcom/google/inject/Binder;Ljava/util/List;Ljava/lang/Object;Lcom/google/inject/Key;)V

    .line 43
    return-void
.end method


# virtual methods
.method public bridge synthetic to(Lcom/google/inject/Key;)Lcom/google/inject/binder/ScopedBindingBuilder;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/BindingBuilder;->to(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingBuilder;

    move-result-object v0

    return-object v0
.end method

.method public to(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<+TT;>;)",
            "Lcom/google/inject/internal/BindingBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 64
    const-string v0, "linkedKey"

    invoke-static {p1, v0}, Lcom/google/inject/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-virtual {p0}, Lcom/google/inject/internal/BindingBuilder;->checkNotTargetted()V

    .line 66
    invoke-virtual {p0}, Lcom/google/inject/internal/BindingBuilder;->getBinding()Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    .line 67
    new-instance v1, Lcom/google/inject/internal/LinkedBindingImpl;

    invoke-virtual {v0}, Lcom/google/inject/internal/BindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/inject/internal/BindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/inject/internal/BindingImpl;->getScoping()Lcom/google/inject/internal/Scoping;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0, p1}, Lcom/google/inject/internal/LinkedBindingImpl;-><init>(Ljava/lang/Object;Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;Lcom/google/inject/Key;)V

    invoke-virtual {p0, v1}, Lcom/google/inject/internal/BindingBuilder;->setBinding(Lcom/google/inject/internal/BindingImpl;)Lcom/google/inject/internal/BindingImpl;

    .line 69
    return-object p0
.end method

.method public toInstance(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/google/inject/internal/BindingBuilder;->checkNotTargetted()V

    .line 77
    if-eqz p1, :cond_1

    .line 79
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/spi/InjectionPoint;->forInstanceMethodsAndFields(Ljava/lang/Class;)Ljava/util/Set;
    :try_end_0
    .catch Lcom/google/inject/ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v4, v0

    .line 91
    :goto_0
    invoke-virtual {p0}, Lcom/google/inject/internal/BindingBuilder;->getBinding()Lcom/google/inject/internal/BindingImpl;

    move-result-object v3

    .line 92
    new-instance v0, Lcom/google/inject/internal/InstanceBindingImpl;

    invoke-virtual {v3}, Lcom/google/inject/internal/BindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3}, Lcom/google/inject/internal/BindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v2

    invoke-virtual {v3}, Lcom/google/inject/internal/BindingImpl;->getScoping()Lcom/google/inject/internal/Scoping;

    move-result-object v3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/inject/internal/InstanceBindingImpl;-><init>(Ljava/lang/Object;Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;Ljava/util/Set;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/google/inject/internal/BindingBuilder;->setBinding(Lcom/google/inject/internal/BindingImpl;)Lcom/google/inject/internal/BindingImpl;

    .line 94
    return-void

    .line 80
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 81
    invoke-virtual {v1}, Lcom/google/inject/ConfigurationException;->getErrorMessages()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/spi/Message;

    .line 82
    iget-object v3, p0, Lcom/google/inject/internal/BindingBuilder;->binder:Lcom/google/inject/Binder;

    invoke-interface {v3, v0}, Lcom/google/inject/Binder;->addError(Lcom/google/inject/spi/Message;)V

    goto :goto_1

    .line 84
    :cond_0
    invoke-virtual {v1}, Lcom/google/inject/ConfigurationException;->getPartialValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    move-object v4, v0

    .line 85
    goto :goto_0

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/google/inject/internal/BindingBuilder;->binder:Lcom/google/inject/Binder;

    const-string v1, "Binding to null instances is not allowed. Use toProvider(Providers.of(null)) if this is your intended behaviour."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/inject/Binder;->addError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    invoke-static {}, Lcom/google/inject/internal/ImmutableSet;->of()Lcom/google/inject/internal/ImmutableSet;

    move-result-object v0

    move-object v4, v0

    goto :goto_0
.end method

.method public bridge synthetic toProvider(Lcom/google/inject/Key;)Lcom/google/inject/binder/ScopedBindingBuilder;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/BindingBuilder;->toProvider(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toProvider(Lcom/google/inject/Provider;)Lcom/google/inject/binder/ScopedBindingBuilder;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/BindingBuilder;->toProvider(Lcom/google/inject/Provider;)Lcom/google/inject/internal/BindingBuilder;

    move-result-object v0

    return-object v0
.end method

.method public toProvider(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<+",
            "Lcom/google/inject/Provider",
            "<+TT;>;>;)",
            "Lcom/google/inject/internal/BindingBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 122
    const-string v0, "providerKey"

    invoke-static {p1, v0}, Lcom/google/inject/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-virtual {p0}, Lcom/google/inject/internal/BindingBuilder;->checkNotTargetted()V

    .line 125
    invoke-virtual {p0}, Lcom/google/inject/internal/BindingBuilder;->getBinding()Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    .line 126
    new-instance v1, Lcom/google/inject/internal/LinkedProviderBindingImpl;

    invoke-virtual {v0}, Lcom/google/inject/internal/BindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/inject/internal/BindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/inject/internal/BindingImpl;->getScoping()Lcom/google/inject/internal/Scoping;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0, p1}, Lcom/google/inject/internal/LinkedProviderBindingImpl;-><init>(Ljava/lang/Object;Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;Lcom/google/inject/Key;)V

    invoke-virtual {p0, v1}, Lcom/google/inject/internal/BindingBuilder;->setBinding(Lcom/google/inject/internal/BindingImpl;)Lcom/google/inject/internal/BindingImpl;

    .line 128
    return-object p0
.end method

.method public toProvider(Lcom/google/inject/Provider;)Lcom/google/inject/internal/BindingBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Provider",
            "<+TT;>;)",
            "Lcom/google/inject/internal/BindingBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 97
    const-string v0, "provider"

    invoke-static {p1, v0}, Lcom/google/inject/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-virtual {p0}, Lcom/google/inject/internal/BindingBuilder;->checkNotTargetted()V

    .line 103
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/spi/InjectionPoint;->forInstanceMethodsAndFields(Ljava/lang/Class;)Ljava/util/Set;
    :try_end_0
    .catch Lcom/google/inject/ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v4, v0

    .line 111
    :goto_0
    invoke-virtual {p0}, Lcom/google/inject/internal/BindingBuilder;->getBinding()Lcom/google/inject/internal/BindingImpl;

    move-result-object v3

    .line 112
    new-instance v0, Lcom/google/inject/internal/ProviderInstanceBindingImpl;

    invoke-virtual {v3}, Lcom/google/inject/internal/BindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3}, Lcom/google/inject/internal/BindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v2

    invoke-virtual {v3}, Lcom/google/inject/internal/BindingImpl;->getScoping()Lcom/google/inject/internal/Scoping;

    move-result-object v3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/inject/internal/ProviderInstanceBindingImpl;-><init>(Ljava/lang/Object;Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;Ljava/util/Set;Lcom/google/inject/Provider;)V

    invoke-virtual {p0, v0}, Lcom/google/inject/internal/BindingBuilder;->setBinding(Lcom/google/inject/internal/BindingImpl;)Lcom/google/inject/internal/BindingImpl;

    .line 114
    return-object p0

    .line 104
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 105
    invoke-virtual {v1}, Lcom/google/inject/ConfigurationException;->getErrorMessages()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/spi/Message;

    .line 106
    iget-object v3, p0, Lcom/google/inject/internal/BindingBuilder;->binder:Lcom/google/inject/Binder;

    invoke-interface {v3, v0}, Lcom/google/inject/Binder;->addError(Lcom/google/inject/spi/Message;)V

    goto :goto_1

    .line 108
    :cond_0
    invoke-virtual {v1}, Lcom/google/inject/ConfigurationException;->getPartialValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    move-object v4, v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BindingBuilder<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/inject/internal/BindingBuilder;->getBinding()Lcom/google/inject/internal/BindingImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/inject/internal/BindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
