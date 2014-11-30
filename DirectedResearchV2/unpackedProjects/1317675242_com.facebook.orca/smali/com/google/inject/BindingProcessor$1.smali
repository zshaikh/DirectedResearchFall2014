.class Lcom/google/inject/BindingProcessor$1;
.super Ljava/lang/Object;
.source "BindingProcessor.java"

# interfaces
.implements Lcom/google/inject/spi/BindingTargetVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/inject/spi/BindingTargetVisitor",
        "<TT;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/inject/BindingProcessor;

.field final synthetic val$key:Lcom/google/inject/Key;

.field final synthetic val$scoping:Lcom/google/inject/internal/Scoping;

.field final synthetic val$source:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/inject/BindingProcessor;Ljava/lang/Object;Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/inject/BindingProcessor$1;->this$0:Lcom/google/inject/BindingProcessor;

    iput-object p2, p0, Lcom/google/inject/BindingProcessor$1;->val$source:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/inject/BindingProcessor$1;->val$key:Lcom/google/inject/Key;

    iput-object p4, p0, Lcom/google/inject/BindingProcessor$1;->val$scoping:Lcom/google/inject/internal/Scoping;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic visit(Lcom/google/inject/spi/ConstructorBinding;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/google/inject/BindingProcessor$1;->visit(Lcom/google/inject/spi/ConstructorBinding;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/ConvertedConstantBinding;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/google/inject/BindingProcessor$1;->visit(Lcom/google/inject/spi/ConvertedConstantBinding;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/ExposedBinding;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/google/inject/BindingProcessor$1;->visit(Lcom/google/inject/spi/ExposedBinding;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/InstanceBinding;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/google/inject/BindingProcessor$1;->visit(Lcom/google/inject/spi/InstanceBinding;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/LinkedKeyBinding;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/google/inject/BindingProcessor$1;->visit(Lcom/google/inject/spi/LinkedKeyBinding;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/ProviderBinding;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/google/inject/BindingProcessor$1;->visit(Lcom/google/inject/spi/ProviderBinding;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/ProviderInstanceBinding;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/google/inject/BindingProcessor$1;->visit(Lcom/google/inject/spi/ProviderInstanceBinding;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/ProviderKeyBinding;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/google/inject/BindingProcessor$1;->visit(Lcom/google/inject/spi/ProviderKeyBinding;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/UntargettedBinding;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/google/inject/BindingProcessor$1;->visit(Lcom/google/inject/spi/UntargettedBinding;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lcom/google/inject/spi/ConstructorBinding;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/ConstructorBinding",
            "<+TT;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 189
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot apply a non-module element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visit(Lcom/google/inject/spi/ConvertedConstantBinding;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/ConvertedConstantBinding",
            "<+TT;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot apply a non-module element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visit(Lcom/google/inject/spi/ExposedBinding;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/ExposedBinding",
            "<+TT;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot apply a non-module element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visit(Lcom/google/inject/spi/InstanceBinding;)Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/InstanceBinding",
            "<+TT;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 95
    invoke-interface {p1}, Lcom/google/inject/spi/InstanceBinding;->getInjectionPoints()Ljava/util/Set;

    move-result-object v5

    .line 96
    invoke-interface {p1}, Lcom/google/inject/spi/InstanceBinding;->getInstance()Ljava/lang/Object;

    move-result-object v6

    .line 97
    iget-object v0, p0, Lcom/google/inject/BindingProcessor$1;->this$0:Lcom/google/inject/BindingProcessor;

    # getter for: Lcom/google/inject/BindingProcessor;->initializer:Lcom/google/inject/Initializer;
    invoke-static {v0}, Lcom/google/inject/BindingProcessor;->access$000(Lcom/google/inject/BindingProcessor;)Lcom/google/inject/Initializer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/inject/BindingProcessor$1;->this$0:Lcom/google/inject/BindingProcessor;

    iget-object v1, v1, Lcom/google/inject/BindingProcessor;->injector:Lcom/google/inject/InjectorImpl;

    iget-object v2, p0, Lcom/google/inject/BindingProcessor$1;->val$source:Ljava/lang/Object;

    invoke-virtual {v0, v1, v6, v2, v5}, Lcom/google/inject/Initializer;->requestInjection(Lcom/google/inject/InjectorImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Set;)Lcom/google/inject/Initializable;

    move-result-object v0

    .line 99
    new-instance v1, Lcom/google/inject/ConstantFactory;

    invoke-direct {v1, v0}, Lcom/google/inject/ConstantFactory;-><init>(Lcom/google/inject/Initializable;)V

    .line 100
    iget-object v0, p0, Lcom/google/inject/BindingProcessor$1;->val$key:Lcom/google/inject/Key;

    iget-object v2, p0, Lcom/google/inject/BindingProcessor$1;->this$0:Lcom/google/inject/BindingProcessor;

    iget-object v2, v2, Lcom/google/inject/BindingProcessor;->injector:Lcom/google/inject/InjectorImpl;

    iget-object v3, p0, Lcom/google/inject/BindingProcessor$1;->val$scoping:Lcom/google/inject/internal/Scoping;

    invoke-static {v0, v2, v1, v3}, Lcom/google/inject/Scopes;->scope(Lcom/google/inject/Key;Lcom/google/inject/InjectorImpl;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;)Lcom/google/inject/internal/InternalFactory;

    move-result-object v4

    .line 101
    iget-object v7, p0, Lcom/google/inject/BindingProcessor$1;->this$0:Lcom/google/inject/BindingProcessor;

    new-instance v0, Lcom/google/inject/internal/InstanceBindingImpl;

    iget-object v1, p0, Lcom/google/inject/BindingProcessor$1;->this$0:Lcom/google/inject/BindingProcessor;

    iget-object v1, v1, Lcom/google/inject/BindingProcessor;->injector:Lcom/google/inject/InjectorImpl;

    iget-object v2, p0, Lcom/google/inject/BindingProcessor$1;->val$key:Lcom/google/inject/Key;

    iget-object v3, p0, Lcom/google/inject/BindingProcessor$1;->val$source:Ljava/lang/Object;

    invoke-direct/range {v0 .. v6}, Lcom/google/inject/internal/InstanceBindingImpl;-><init>(Lcom/google/inject/Injector;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Ljava/util/Set;Ljava/lang/Object;)V

    # invokes: Lcom/google/inject/BindingProcessor;->putBinding(Lcom/google/inject/internal/BindingImpl;)V
    invoke-static {v7, v0}, Lcom/google/inject/BindingProcessor;->access$100(Lcom/google/inject/BindingProcessor;Lcom/google/inject/internal/BindingImpl;)V

    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public visit(Lcom/google/inject/spi/LinkedKeyBinding;)Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/LinkedKeyBinding",
            "<+TT;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 131
    invoke-interface {p1}, Lcom/google/inject/spi/LinkedKeyBinding;->getLinkedKey()Lcom/google/inject/Key;

    move-result-object v6

    .line 132
    iget-object v0, p0, Lcom/google/inject/BindingProcessor$1;->val$key:Lcom/google/inject/Key;

    invoke-virtual {v0, v6}, Lcom/google/inject/Key;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/google/inject/BindingProcessor$1;->this$0:Lcom/google/inject/BindingProcessor;

    iget-object v0, v0, Lcom/google/inject/BindingProcessor;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->recursiveBinding()Lcom/google/inject/internal/Errors;

    .line 136
    :cond_0
    new-instance v0, Lcom/google/inject/FactoryProxy;

    iget-object v1, p0, Lcom/google/inject/BindingProcessor$1;->this$0:Lcom/google/inject/BindingProcessor;

    iget-object v1, v1, Lcom/google/inject/BindingProcessor;->injector:Lcom/google/inject/InjectorImpl;

    iget-object v2, p0, Lcom/google/inject/BindingProcessor$1;->val$key:Lcom/google/inject/Key;

    iget-object v3, p0, Lcom/google/inject/BindingProcessor$1;->val$source:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v6, v3}, Lcom/google/inject/FactoryProxy;-><init>(Lcom/google/inject/InjectorImpl;Lcom/google/inject/Key;Lcom/google/inject/Key;Ljava/lang/Object;)V

    .line 137
    iget-object v1, p0, Lcom/google/inject/BindingProcessor$1;->this$0:Lcom/google/inject/BindingProcessor;

    # getter for: Lcom/google/inject/BindingProcessor;->creationListeners:Ljava/util/List;
    invoke-static {v1}, Lcom/google/inject/BindingProcessor;->access$200(Lcom/google/inject/BindingProcessor;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v1, p0, Lcom/google/inject/BindingProcessor$1;->val$key:Lcom/google/inject/Key;

    iget-object v2, p0, Lcom/google/inject/BindingProcessor$1;->this$0:Lcom/google/inject/BindingProcessor;

    iget-object v2, v2, Lcom/google/inject/BindingProcessor;->injector:Lcom/google/inject/InjectorImpl;

    iget-object v3, p0, Lcom/google/inject/BindingProcessor$1;->val$scoping:Lcom/google/inject/internal/Scoping;

    invoke-static {v1, v2, v0, v3}, Lcom/google/inject/Scopes;->scope(Lcom/google/inject/Key;Lcom/google/inject/InjectorImpl;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;)Lcom/google/inject/internal/InternalFactory;

    move-result-object v4

    .line 139
    iget-object v7, p0, Lcom/google/inject/BindingProcessor$1;->this$0:Lcom/google/inject/BindingProcessor;

    new-instance v0, Lcom/google/inject/internal/LinkedBindingImpl;

    iget-object v1, p0, Lcom/google/inject/BindingProcessor$1;->this$0:Lcom/google/inject/BindingProcessor;

    iget-object v1, v1, Lcom/google/inject/BindingProcessor;->injector:Lcom/google/inject/InjectorImpl;

    iget-object v2, p0, Lcom/google/inject/BindingProcessor$1;->val$key:Lcom/google/inject/Key;

    iget-object v3, p0, Lcom/google/inject/BindingProcessor$1;->val$source:Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/inject/BindingProcessor$1;->val$scoping:Lcom/google/inject/internal/Scoping;

    invoke-direct/range {v0 .. v6}, Lcom/google/inject/internal/LinkedBindingImpl;-><init>(Lcom/google/inject/Injector;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;Lcom/google/inject/Key;)V

    # invokes: Lcom/google/inject/BindingProcessor;->putBinding(Lcom/google/inject/internal/BindingImpl;)V
    invoke-static {v7, v0}, Lcom/google/inject/BindingProcessor;->access$100(Lcom/google/inject/BindingProcessor;Lcom/google/inject/internal/BindingImpl;)V

    .line 141
    const/4 v0, 0x0

    return-object v0
.end method

.method public visit(Lcom/google/inject/spi/ProviderBinding;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/ProviderBinding",
            "<+TT;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot apply a non-module element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visit(Lcom/google/inject/spi/ProviderInstanceBinding;)Ljava/lang/Void;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/ProviderInstanceBinding",
            "<+TT;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 107
    invoke-interface {p1}, Lcom/google/inject/spi/ProviderInstanceBinding;->getProviderInstance()Lcom/google/inject/Provider;

    move-result-object v6

    .line 108
    invoke-interface {p1}, Lcom/google/inject/spi/ProviderInstanceBinding;->getInjectionPoints()Ljava/util/Set;

    move-result-object v7

    .line 109
    iget-object v0, p0, Lcom/google/inject/BindingProcessor$1;->this$0:Lcom/google/inject/BindingProcessor;

    # getter for: Lcom/google/inject/BindingProcessor;->initializer:Lcom/google/inject/Initializer;
    invoke-static {v0}, Lcom/google/inject/BindingProcessor;->access$000(Lcom/google/inject/BindingProcessor;)Lcom/google/inject/Initializer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/inject/BindingProcessor$1;->this$0:Lcom/google/inject/BindingProcessor;

    iget-object v1, v1, Lcom/google/inject/BindingProcessor;->injector:Lcom/google/inject/InjectorImpl;

    iget-object v2, p0, Lcom/google/inject/BindingProcessor$1;->val$source:Ljava/lang/Object;

    invoke-virtual {v0, v1, v6, v2, v7}, Lcom/google/inject/Initializer;->requestInjection(Lcom/google/inject/InjectorImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Set;)Lcom/google/inject/Initializable;

    move-result-object v0

    .line 111
    new-instance v1, Lcom/google/inject/InternalFactoryToProviderAdapter;

    iget-object v2, p0, Lcom/google/inject/BindingProcessor$1;->val$source:Ljava/lang/Object;

    invoke-direct {v1, v0, v2}, Lcom/google/inject/InternalFactoryToProviderAdapter;-><init>(Lcom/google/inject/Initializable;Ljava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lcom/google/inject/BindingProcessor$1;->val$key:Lcom/google/inject/Key;

    iget-object v2, p0, Lcom/google/inject/BindingProcessor$1;->this$0:Lcom/google/inject/BindingProcessor;

    iget-object v2, v2, Lcom/google/inject/BindingProcessor;->injector:Lcom/google/inject/InjectorImpl;

    iget-object v3, p0, Lcom/google/inject/BindingProcessor$1;->val$scoping:Lcom/google/inject/internal/Scoping;

    invoke-static {v0, v2, v1, v3}, Lcom/google/inject/Scopes;->scope(Lcom/google/inject/Key;Lcom/google/inject/InjectorImpl;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;)Lcom/google/inject/internal/InternalFactory;

    move-result-object v4

    .line 113
    iget-object v8, p0, Lcom/google/inject/BindingProcessor$1;->this$0:Lcom/google/inject/BindingProcessor;

    new-instance v0, Lcom/google/inject/internal/ProviderInstanceBindingImpl;

    iget-object v1, p0, Lcom/google/inject/BindingProcessor$1;->this$0:Lcom/google/inject/BindingProcessor;

    iget-object v1, v1, Lcom/google/inject/BindingProcessor;->injector:Lcom/google/inject/InjectorImpl;

    iget-object v2, p0, Lcom/google/inject/BindingProcessor$1;->val$key:Lcom/google/inject/Key;

    iget-object v3, p0, Lcom/google/inject/BindingProcessor$1;->val$source:Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/inject/BindingProcessor$1;->val$scoping:Lcom/google/inject/internal/Scoping;

    invoke-direct/range {v0 .. v7}, Lcom/google/inject/internal/ProviderInstanceBindingImpl;-><init>(Lcom/google/inject/Injector;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;Lcom/google/inject/Provider;Ljava/util/Set;)V

    # invokes: Lcom/google/inject/BindingProcessor;->putBinding(Lcom/google/inject/internal/BindingImpl;)V
    invoke-static {v8, v0}, Lcom/google/inject/BindingProcessor;->access$100(Lcom/google/inject/BindingProcessor;Lcom/google/inject/internal/BindingImpl;)V

    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public visit(Lcom/google/inject/spi/ProviderKeyBinding;)Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/ProviderKeyBinding",
            "<+TT;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 119
    invoke-interface {p1}, Lcom/google/inject/spi/ProviderKeyBinding;->getProviderKey()Lcom/google/inject/Key;

    move-result-object v6

    .line 120
    new-instance v0, Lcom/google/inject/BoundProviderFactory;

    iget-object v1, p0, Lcom/google/inject/BindingProcessor$1;->this$0:Lcom/google/inject/BindingProcessor;

    iget-object v1, v1, Lcom/google/inject/BindingProcessor;->injector:Lcom/google/inject/InjectorImpl;

    iget-object v2, p0, Lcom/google/inject/BindingProcessor$1;->val$source:Ljava/lang/Object;

    invoke-direct {v0, v1, v6, v2}, Lcom/google/inject/BoundProviderFactory;-><init>(Lcom/google/inject/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;)V

    .line 122
    iget-object v1, p0, Lcom/google/inject/BindingProcessor$1;->this$0:Lcom/google/inject/BindingProcessor;

    # getter for: Lcom/google/inject/BindingProcessor;->creationListeners:Ljava/util/List;
    invoke-static {v1}, Lcom/google/inject/BindingProcessor;->access$200(Lcom/google/inject/BindingProcessor;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v1, p0, Lcom/google/inject/BindingProcessor$1;->val$key:Lcom/google/inject/Key;

    iget-object v2, p0, Lcom/google/inject/BindingProcessor$1;->this$0:Lcom/google/inject/BindingProcessor;

    iget-object v2, v2, Lcom/google/inject/BindingProcessor;->injector:Lcom/google/inject/InjectorImpl;

    iget-object v3, p0, Lcom/google/inject/BindingProcessor$1;->val$scoping:Lcom/google/inject/internal/Scoping;

    invoke-static {v1, v2, v0, v3}, Lcom/google/inject/Scopes;->scope(Lcom/google/inject/Key;Lcom/google/inject/InjectorImpl;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;)Lcom/google/inject/internal/InternalFactory;

    move-result-object v4

    .line 125
    iget-object v7, p0, Lcom/google/inject/BindingProcessor$1;->this$0:Lcom/google/inject/BindingProcessor;

    new-instance v0, Lcom/google/inject/internal/LinkedProviderBindingImpl;

    iget-object v1, p0, Lcom/google/inject/BindingProcessor$1;->this$0:Lcom/google/inject/BindingProcessor;

    iget-object v1, v1, Lcom/google/inject/BindingProcessor;->injector:Lcom/google/inject/InjectorImpl;

    iget-object v2, p0, Lcom/google/inject/BindingProcessor$1;->val$key:Lcom/google/inject/Key;

    iget-object v3, p0, Lcom/google/inject/BindingProcessor$1;->val$source:Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/inject/BindingProcessor$1;->val$scoping:Lcom/google/inject/internal/Scoping;

    invoke-direct/range {v0 .. v6}, Lcom/google/inject/internal/LinkedProviderBindingImpl;-><init>(Lcom/google/inject/Injector;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;Lcom/google/inject/Key;)V

    # invokes: Lcom/google/inject/BindingProcessor;->putBinding(Lcom/google/inject/internal/BindingImpl;)V
    invoke-static {v7, v0}, Lcom/google/inject/BindingProcessor;->access$100(Lcom/google/inject/BindingProcessor;Lcom/google/inject/internal/BindingImpl;)V

    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method public visit(Lcom/google/inject/spi/UntargettedBinding;)Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/UntargettedBinding",
            "<+TT;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 149
    iget-object v0, p0, Lcom/google/inject/BindingProcessor$1;->val$key:Lcom/google/inject/Key;

    invoke-virtual {v0}, Lcom/google/inject/Key;->hasAnnotationType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/google/inject/BindingProcessor$1;->this$0:Lcom/google/inject/BindingProcessor;

    iget-object v0, v0, Lcom/google/inject/BindingProcessor;->errors:Lcom/google/inject/internal/Errors;

    iget-object v1, p0, Lcom/google/inject/BindingProcessor$1;->val$key:Lcom/google/inject/Key;

    invoke-virtual {v0, v1}, Lcom/google/inject/internal/Errors;->missingImplementation(Lcom/google/inject/Key;)Lcom/google/inject/internal/Errors;

    .line 151
    iget-object v0, p0, Lcom/google/inject/BindingProcessor$1;->this$0:Lcom/google/inject/BindingProcessor;

    iget-object v1, p0, Lcom/google/inject/BindingProcessor$1;->this$0:Lcom/google/inject/BindingProcessor;

    iget-object v2, p0, Lcom/google/inject/BindingProcessor$1;->this$0:Lcom/google/inject/BindingProcessor;

    iget-object v2, v2, Lcom/google/inject/BindingProcessor;->injector:Lcom/google/inject/InjectorImpl;

    iget-object v3, p0, Lcom/google/inject/BindingProcessor$1;->val$key:Lcom/google/inject/Key;

    iget-object v4, p0, Lcom/google/inject/BindingProcessor$1;->val$source:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/inject/BindingProcessor;->invalidBinding(Lcom/google/inject/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;)Lcom/google/inject/internal/UntargettedBindingImpl;

    move-result-object v1

    # invokes: Lcom/google/inject/BindingProcessor;->putBinding(Lcom/google/inject/internal/BindingImpl;)V
    invoke-static {v0, v1}, Lcom/google/inject/BindingProcessor;->access$100(Lcom/google/inject/BindingProcessor;Lcom/google/inject/internal/BindingImpl;)V

    move-object v0, v5

    .line 177
    :goto_0
    return-object v0

    .line 158
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/inject/BindingProcessor$1;->this$0:Lcom/google/inject/BindingProcessor;

    iget-object v0, v0, Lcom/google/inject/BindingProcessor;->injector:Lcom/google/inject/InjectorImpl;

    iget-object v1, p0, Lcom/google/inject/BindingProcessor$1;->val$key:Lcom/google/inject/Key;

    iget-object v2, p0, Lcom/google/inject/BindingProcessor$1;->val$scoping:Lcom/google/inject/internal/Scoping;

    iget-object v3, p0, Lcom/google/inject/BindingProcessor$1;->val$source:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/inject/BindingProcessor$1;->this$0:Lcom/google/inject/BindingProcessor;

    iget-object v4, v4, Lcom/google/inject/BindingProcessor;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/inject/InjectorImpl;->createUnitializedBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;Ljava/lang/Object;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/google/inject/BindingProcessor$1;->this$0:Lcom/google/inject/BindingProcessor;

    # invokes: Lcom/google/inject/BindingProcessor;->putBinding(Lcom/google/inject/internal/BindingImpl;)V
    invoke-static {v1, v0}, Lcom/google/inject/BindingProcessor;->access$100(Lcom/google/inject/BindingProcessor;Lcom/google/inject/internal/BindingImpl;)V
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    iget-object v1, p0, Lcom/google/inject/BindingProcessor$1;->this$0:Lcom/google/inject/BindingProcessor;

    # getter for: Lcom/google/inject/BindingProcessor;->uninitializedBindings:Ljava/util/List;
    invoke-static {v1}, Lcom/google/inject/BindingProcessor;->access$300(Lcom/google/inject/BindingProcessor;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/google/inject/BindingProcessor$1$1;

    invoke-direct {v2, p0, v0}, Lcom/google/inject/BindingProcessor$1$1;-><init>(Lcom/google/inject/BindingProcessor$1;Lcom/google/inject/internal/BindingImpl;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v5

    .line 177
    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    iget-object v1, p0, Lcom/google/inject/BindingProcessor$1;->this$0:Lcom/google/inject/BindingProcessor;

    iget-object v1, v1, Lcom/google/inject/BindingProcessor;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {v0}, Lcom/google/inject/internal/ErrorsException;->getErrors()Lcom/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;

    .line 162
    iget-object v0, p0, Lcom/google/inject/BindingProcessor$1;->this$0:Lcom/google/inject/BindingProcessor;

    iget-object v1, p0, Lcom/google/inject/BindingProcessor$1;->this$0:Lcom/google/inject/BindingProcessor;

    iget-object v2, p0, Lcom/google/inject/BindingProcessor$1;->this$0:Lcom/google/inject/BindingProcessor;

    iget-object v2, v2, Lcom/google/inject/BindingProcessor;->injector:Lcom/google/inject/InjectorImpl;

    iget-object v3, p0, Lcom/google/inject/BindingProcessor$1;->val$key:Lcom/google/inject/Key;

    iget-object v4, p0, Lcom/google/inject/BindingProcessor$1;->val$source:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/inject/BindingProcessor;->invalidBinding(Lcom/google/inject/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;)Lcom/google/inject/internal/UntargettedBindingImpl;

    move-result-object v1

    # invokes: Lcom/google/inject/BindingProcessor;->putBinding(Lcom/google/inject/internal/BindingImpl;)V
    invoke-static {v0, v1}, Lcom/google/inject/BindingProcessor;->access$100(Lcom/google/inject/BindingProcessor;Lcom/google/inject/internal/BindingImpl;)V

    move-object v0, v5

    .line 163
    goto :goto_0
.end method
