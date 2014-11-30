.class Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1$3;
.super Lcom/google/inject/util/Modules$ModuleWriter;
.source "Modules.java"


# instance fields
.field final synthetic this$1:Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1;

.field final synthetic val$overridesScopeAnnotations:Ljava/util/Set;

.field final synthetic val$scopeInstancesInUse:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1;Lcom/google/inject/Binder;Ljava/util/Set;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1$3;->this$1:Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1;

    iput-object p3, p0, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1$3;->val$overridesScopeAnnotations:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1$3;->val$scopeInstancesInUse:Ljava/util/Map;

    invoke-direct {p0, p2}, Lcom/google/inject/util/Modules$ModuleWriter;-><init>(Lcom/google/inject/Binder;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic visit(Lcom/google/inject/spi/ScopeBinding;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 221
    invoke-virtual {p0, p1}, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1$3;->visit(Lcom/google/inject/spi/ScopeBinding;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lcom/google/inject/spi/ScopeBinding;)Ljava/lang/Void;
    .locals 5

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1$3;->val$overridesScopeAnnotations:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/inject/spi/ScopeBinding;->getAnnotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 224
    invoke-super {p0, p1}, Lcom/google/inject/util/Modules$ModuleWriter;->visit(Lcom/google/inject/spi/ScopeBinding;)Ljava/lang/Object;

    .line 233
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1$3;->val$scopeInstancesInUse:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/inject/spi/ScopeBinding;->getScope()Lcom/google/inject/Scope;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 227
    if-eqz v0, :cond_0

    .line 228
    iget-object v1, p0, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1$3;->this$1:Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1;

    # invokes: Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1;->binder()Lcom/google/inject/Binder;
    invoke-static {v1}, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1;->access$300(Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1;)Lcom/google/inject/Binder;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/inject/Binder;->withSource(Ljava/lang/Object;)Lcom/google/inject/Binder;

    move-result-object v0

    const-string v1, "The scope for @%s is bound directly and cannot be overridden."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/inject/spi/ScopeBinding;->getAnnotationType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/inject/Binder;->addError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
