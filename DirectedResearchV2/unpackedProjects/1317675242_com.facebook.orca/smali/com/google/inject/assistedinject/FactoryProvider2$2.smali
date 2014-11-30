.class Lcom/google/inject/assistedinject/FactoryProvider2$2;
.super Lcom/google/inject/AbstractModule;
.source "FactoryProvider2.java"


# instance fields
.field final synthetic this$0:Lcom/google/inject/assistedinject/FactoryProvider2;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$method:Ljava/lang/reflect/Method;

.field final synthetic val$returnType:Lcom/google/inject/Key;


# direct methods
.method constructor <init>(Lcom/google/inject/assistedinject/FactoryProvider2;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/google/inject/Key;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/google/inject/assistedinject/FactoryProvider2$2;->this$0:Lcom/google/inject/assistedinject/FactoryProvider2;

    iput-object p2, p0, Lcom/google/inject/assistedinject/FactoryProvider2$2;->val$method:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lcom/google/inject/assistedinject/FactoryProvider2$2;->val$args:[Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/inject/assistedinject/FactoryProvider2$2;->val$returnType:Lcom/google/inject/Key;

    invoke-direct {p0}, Lcom/google/inject/AbstractModule;-><init>()V

    return-void
.end method


# virtual methods
.method protected configure()V
    .locals 6

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/google/inject/assistedinject/FactoryProvider2$2;->binder()Lcom/google/inject/Binder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/inject/assistedinject/FactoryProvider2$2;->val$method:Ljava/lang/reflect/Method;

    invoke-interface {v0, v1}, Lcom/google/inject/Binder;->withSource(Ljava/lang/Object;)Lcom/google/inject/Binder;

    move-result-object v1

    .line 189
    const/4 v2, 0x0

    .line 190
    iget-object v0, p0, Lcom/google/inject/assistedinject/FactoryProvider2$2;->this$0:Lcom/google/inject/assistedinject/FactoryProvider2;

    # getter for: Lcom/google/inject/assistedinject/FactoryProvider2;->paramTypes:Lcom/google/inject/internal/ImmutableMap;
    invoke-static {v0}, Lcom/google/inject/assistedinject/FactoryProvider2;->access$000(Lcom/google/inject/assistedinject/FactoryProvider2;)Lcom/google/inject/internal/ImmutableMap;

    move-result-object v0

    iget-object v3, p0, Lcom/google/inject/assistedinject/FactoryProvider2$2;->val$method:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v3}, Lcom/google/inject/internal/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/internal/ImmutableList;

    invoke-virtual {v0}, Lcom/google/inject/internal/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/Key;

    .line 192
    invoke-interface {v1, v0}, Lcom/google/inject/Binder;->bind(Lcom/google/inject/Key;)Lcom/google/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/google/inject/assistedinject/FactoryProvider2$2;->val$args:[Ljava/lang/Object;

    add-int/lit8 v5, v2, 0x1

    aget-object v2, v4, v2

    invoke-static {v2}, Lcom/google/inject/util/Providers;->of(Ljava/lang/Object;)Lcom/google/inject/Provider;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/inject/binder/LinkedBindingBuilder;->toProvider(Lcom/google/inject/Provider;)Lcom/google/inject/binder/ScopedBindingBuilder;

    move v2, v5

    goto :goto_0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/google/inject/assistedinject/FactoryProvider2$2;->this$0:Lcom/google/inject/assistedinject/FactoryProvider2;

    # getter for: Lcom/google/inject/assistedinject/FactoryProvider2;->producedType:Lcom/google/inject/Key;
    invoke-static {v0}, Lcom/google/inject/assistedinject/FactoryProvider2;->access$100(Lcom/google/inject/assistedinject/FactoryProvider2;)Lcom/google/inject/Key;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/inject/assistedinject/FactoryProvider2$2;->val$returnType:Lcom/google/inject/Key;

    iget-object v2, p0, Lcom/google/inject/assistedinject/FactoryProvider2$2;->this$0:Lcom/google/inject/assistedinject/FactoryProvider2;

    # getter for: Lcom/google/inject/assistedinject/FactoryProvider2;->producedType:Lcom/google/inject/Key;
    invoke-static {v2}, Lcom/google/inject/assistedinject/FactoryProvider2;->access$100(Lcom/google/inject/assistedinject/FactoryProvider2;)Lcom/google/inject/Key;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/inject/Key;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/google/inject/assistedinject/FactoryProvider2$2;->val$returnType:Lcom/google/inject/Key;

    invoke-interface {v1, v0}, Lcom/google/inject/Binder;->bind(Lcom/google/inject/Key;)Lcom/google/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/inject/assistedinject/FactoryProvider2$2;->this$0:Lcom/google/inject/assistedinject/FactoryProvider2;

    # getter for: Lcom/google/inject/assistedinject/FactoryProvider2;->producedType:Lcom/google/inject/Key;
    invoke-static {v1}, Lcom/google/inject/assistedinject/FactoryProvider2;->access$100(Lcom/google/inject/assistedinject/FactoryProvider2;)Lcom/google/inject/Key;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/inject/binder/LinkedBindingBuilder;->to(Lcom/google/inject/Key;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 200
    :goto_1
    return-void

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/google/inject/assistedinject/FactoryProvider2$2;->val$returnType:Lcom/google/inject/Key;

    invoke-interface {v1, v0}, Lcom/google/inject/Binder;->bind(Lcom/google/inject/Key;)Lcom/google/inject/binder/LinkedBindingBuilder;

    goto :goto_1
.end method
