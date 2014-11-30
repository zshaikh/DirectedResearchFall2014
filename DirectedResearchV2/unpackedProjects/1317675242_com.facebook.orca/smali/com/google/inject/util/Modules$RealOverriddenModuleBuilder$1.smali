.class Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1;
.super Lcom/google/inject/AbstractModule;
.source "Modules.java"


# instance fields
.field final synthetic this$0:Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder;

.field final synthetic val$overrides:Ljava/lang/Iterable;


# direct methods
.method static synthetic access$200(Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1;Lcom/google/inject/Binding;)Lcom/google/inject/Scope;
    .locals 1

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1;->getScopeInstanceOrNull(Lcom/google/inject/Binding;)Lcom/google/inject/Scope;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1;)Lcom/google/inject/Binder;
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1;->binder()Lcom/google/inject/Binder;

    move-result-object v0

    return-object v0
.end method

.method private getScopeInstanceOrNull(Lcom/google/inject/Binding;)Lcom/google/inject/Scope;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Binding",
            "<*>;)",
            "Lcom/google/inject/Scope;"
        }
    .end annotation

    .prologue
    .line 241
    new-instance v0, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1$4;

    invoke-direct {v0, p0}, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1$4;-><init>(Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1;)V

    invoke-interface {p1, v0}, Lcom/google/inject/Binding;->acceptScopingVisitor(Lcom/google/inject/spi/BindingScopingVisitor;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/inject/Scope;

    return-object p0
.end method


# virtual methods
.method public configure()V
    .locals 8

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1;->this$0:Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder;

    # getter for: Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder;->baseModules:Lcom/google/inject/internal/ImmutableSet;
    invoke-static {v0}, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder;->access$100(Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder;)Lcom/google/inject/internal/ImmutableSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/spi/Elements;->getElements(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v6

    .line 143
    iget-object v0, p0, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1;->val$overrides:Ljava/lang/Iterable;

    invoke-static {v0}, Lcom/google/inject/spi/Elements;->getElements(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 145
    invoke-static {}, Lcom/google/inject/internal/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v3

    .line 146
    invoke-static {}, Lcom/google/inject/internal/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v7

    .line 149
    new-instance v1, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1$1;

    invoke-virtual {p0}, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1;->binder()Lcom/google/inject/Binder;

    move-result-object v2

    invoke-direct {v1, p0, v2, v3, v7}, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1$1;-><init>(Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1;Lcom/google/inject/Binder;Ljava/util/Set;Ljava/util/Set;)V

    invoke-virtual {v1, v0}, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1$1;->writeAll(Ljava/lang/Iterable;)V

    .line 169
    invoke-static {}, Lcom/google/inject/internal/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v4

    .line 170
    invoke-static {}, Lcom/google/inject/internal/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 171
    new-instance v0, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1$2;

    invoke-virtual {p0}, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1;->binder()Lcom/google/inject/Binder;

    move-result-object v2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1$2;-><init>(Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1;Lcom/google/inject/Binder;Ljava/util/Set;Ljava/util/Map;Ljava/util/List;)V

    invoke-virtual {v0, v6}, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1$2;->writeAll(Ljava/lang/Iterable;)V

    .line 221
    new-instance v0, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1$3;

    invoke-virtual {p0}, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1;->binder()Lcom/google/inject/Binder;

    move-result-object v1

    invoke-direct {v0, p0, v1, v7, v4}, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1$3;-><init>(Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1;Lcom/google/inject/Binder;Ljava/util/Set;Ljava/util/Map;)V

    invoke-virtual {v0, v5}, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder$1$3;->writeAll(Ljava/lang/Iterable;)V

    .line 238
    return-void
.end method
