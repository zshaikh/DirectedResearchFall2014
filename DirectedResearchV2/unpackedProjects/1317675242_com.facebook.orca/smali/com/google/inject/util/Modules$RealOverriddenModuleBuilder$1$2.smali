.class Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1$2;
.super Lcom/google/inject/util/Modules$ModuleWriter;
.source "Modules.java"


# instance fields
.field final synthetic this$1:Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1;

.field final synthetic val$overriddenKeys:Ljava/util/Set;

.field final synthetic val$scopeBindings:Ljava/util/List;

.field final synthetic val$scopeInstancesInUse:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1;Lcom/google/inject/Binder;Ljava/util/Set;Ljava/util/Map;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1$2;->this$1:Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1;

    iput-object p3, p0, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1$2;->val$overriddenKeys:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1$2;->val$scopeInstancesInUse:Ljava/util/Map;

    iput-object p5, p0, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1$2;->val$scopeBindings:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/google/inject/util/Modules$ModuleWriter;-><init>(Lcom/google/inject/Binder;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic visit(Lcom/google/inject/Binding;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1$2;->visit(Lcom/google/inject/Binding;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/PrivateElements;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1$2;->visit(Lcom/google/inject/spi/PrivateElements;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/ScopeBinding;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1$2;->visit(Lcom/google/inject/spi/ScopeBinding;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lcom/google/inject/Binding;)Ljava/lang/Void;
    .locals 3
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
    .line 173
    iget-object v0, p0, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1$2;->val$overriddenKeys:Ljava/util/Set;

    invoke-interface {p1}, Lcom/google/inject/Binding;->getKey()Lcom/google/inject/Key;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    invoke-super {p0, p1}, Lcom/google/inject/util/Modules$ModuleWriter;->visit(Lcom/google/inject/Binding;)Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1$2;->this$1:Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1;

    # invokes: Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1;->getScopeInstanceOrNull(Lcom/google/inject/Binding;)Lcom/google/inject/Scope;
    invoke-static {v0, p1}, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1;->access$200(Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1;Lcom/google/inject/Binding;)Lcom/google/inject/Scope;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_0

    .line 179
    iget-object v1, p0, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1$2;->val$scopeInstancesInUse:Ljava/util/Map;

    invoke-interface {p1}, Lcom/google/inject/Binding;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public visit(Lcom/google/inject/spi/PrivateElements;)Ljava/lang/Void;
    .locals 6

    .prologue
    .line 187
    iget-object v1, p0, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1$2;->binder:Lcom/google/inject/Binder;

    invoke-interface {p1}, Lcom/google/inject/spi/PrivateElements;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/inject/Binder;->withSource(Ljava/lang/Object;)Lcom/google/inject/Binder;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/inject/Binder;->newPrivateBinder()Lcom/google/inject/PrivateBinder;

    move-result-object v2

    .line 190
    invoke-static {}, Lcom/google/inject/internal/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v3

    .line 192
    invoke-interface {p1}, Lcom/google/inject/spi/PrivateElements;->getExposedKeys()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/inject/Key;

    .line 193
    iget-object v5, p0, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1$2;->val$overriddenKeys:Ljava/util/Set;

    invoke-interface {v5, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 194
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 196
    :cond_0
    invoke-interface {p1, v1}, Lcom/google/inject/spi/PrivateElements;->getExposedSource(Lcom/google/inject/Key;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/google/inject/PrivateBinder;->withSource(Ljava/lang/Object;)Lcom/google/inject/PrivateBinder;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/google/inject/PrivateBinder;->expose(Lcom/google/inject/Key;)V

    goto :goto_0

    .line 202
    :cond_1
    invoke-interface {p1}, Lcom/google/inject/spi/PrivateElements;->getElements()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/inject/spi/Element;

    .line 203
    instance-of v1, p0, Lcom/google/inject/Binding;

    if-eqz v1, :cond_3

    move-object v0, p0

    check-cast v0, Lcom/google/inject/Binding;

    move-object v1, v0

    invoke-interface {v1}, Lcom/google/inject/Binding;->getKey()Lcom/google/inject/Key;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 207
    :cond_3
    invoke-interface {p0, v2}, Lcom/google/inject/spi/Element;->applyTo(Lcom/google/inject/Binder;)V

    goto :goto_1

    .line 210
    :cond_4
    const/4 v1, 0x0

    return-object v1
.end method

.method public visit(Lcom/google/inject/spi/ScopeBinding;)Ljava/lang/Void;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1$2;->val$scopeBindings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    const/4 v0, 0x0

    return-object v0
.end method
