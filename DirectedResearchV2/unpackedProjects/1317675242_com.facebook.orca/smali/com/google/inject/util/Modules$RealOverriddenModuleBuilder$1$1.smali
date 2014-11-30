.class Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1$1;
.super Lcom/google/inject/util/Modules$ModuleWriter;
.source "Modules.java"


# instance fields
.field final synthetic this$1:Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1;

.field final synthetic val$overriddenKeys:Ljava/util/Set;

.field final synthetic val$overridesScopeAnnotations:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1;Lcom/google/inject/Binder;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1$1;->this$1:Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1;

    iput-object p3, p0, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1$1;->val$overriddenKeys:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1$1;->val$overridesScopeAnnotations:Ljava/util/Set;

    invoke-direct {p0, p2}, Lcom/google/inject/util/Modules$ModuleWriter;-><init>(Lcom/google/inject/Binder;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic visit(Lcom/google/inject/Binding;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1$1;->visit(Lcom/google/inject/Binding;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/PrivateElements;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1$1;->visit(Lcom/google/inject/spi/PrivateElements;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/ScopeBinding;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1$1;->visit(Lcom/google/inject/spi/ScopeBinding;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lcom/google/inject/Binding;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Binding",
            "<TT;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1$1;->val$overriddenKeys:Ljava/util/Set;

    invoke-interface {p1}, Lcom/google/inject/Binding;->getKey()Lcom/google/inject/Key;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-super {p0, p1}, Lcom/google/inject/util/Modules$ModuleWriter;->visit(Lcom/google/inject/Binding;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Void;

    return-object p0
.end method

.method public visit(Lcom/google/inject/spi/PrivateElements;)Ljava/lang/Void;
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1$1;->val$overriddenKeys:Ljava/util/Set;

    invoke-interface {p1}, Lcom/google/inject/spi/PrivateElements;->getExposedKeys()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 162
    invoke-super {p0, p1}, Lcom/google/inject/util/Modules$ModuleWriter;->visit(Lcom/google/inject/spi/PrivateElements;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Void;

    return-object p0
.end method

.method public visit(Lcom/google/inject/spi/ScopeBinding;)Ljava/lang/Void;
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1$1;->val$overridesScopeAnnotations:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/inject/spi/ScopeBinding;->getAnnotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-super {p0, p1}, Lcom/google/inject/util/Modules$ModuleWriter;->visit(Lcom/google/inject/spi/ScopeBinding;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Void;

    return-object p0
.end method
