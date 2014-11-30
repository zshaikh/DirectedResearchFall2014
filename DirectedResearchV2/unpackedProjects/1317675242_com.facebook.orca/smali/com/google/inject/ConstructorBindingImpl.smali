.class Lcom/google/inject/ConstructorBindingImpl;
.super Lcom/google/inject/internal/BindingImpl;
.source "ConstructorBindingImpl.java"

# interfaces
.implements Lcom/google/inject/spi/ConstructorBinding;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/inject/internal/BindingImpl",
        "<TT;>;",
        "Lcom/google/inject/spi/ConstructorBinding",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final factory:Lcom/google/inject/ConstructorBindingImpl$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/ConstructorBindingImpl$Factory",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/inject/Injector;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;Lcom/google/inject/ConstructorBindingImpl$Factory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Injector;",
            "Lcom/google/inject/Key",
            "<TT;>;",
            "Ljava/lang/Object;",
            "Lcom/google/inject/internal/InternalFactory",
            "<+TT;>;",
            "Lcom/google/inject/internal/Scoping;",
            "Lcom/google/inject/ConstructorBindingImpl$Factory",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct/range {p0 .. p5}, Lcom/google/inject/internal/BindingImpl;-><init>(Lcom/google/inject/Injector;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;)V

    .line 44
    iput-object p6, p0, Lcom/google/inject/ConstructorBindingImpl;->factory:Lcom/google/inject/ConstructorBindingImpl$Factory;

    .line 45
    return-void
.end method

.method static create(Lcom/google/inject/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/Scoping;)Lcom/google/inject/ConstructorBindingImpl;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/InjectorImpl;",
            "Lcom/google/inject/Key",
            "<TT;>;",
            "Ljava/lang/Object;",
            "Lcom/google/inject/internal/Scoping;",
            ")",
            "Lcom/google/inject/ConstructorBindingImpl",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v6, Lcom/google/inject/ConstructorBindingImpl$Factory;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lcom/google/inject/ConstructorBindingImpl$Factory;-><init>(Lcom/google/inject/ConstructorBindingImpl$1;)V

    .line 50
    invoke-static {p1, p0, v6, p3}, Lcom/google/inject/Scopes;->scope(Lcom/google/inject/Key;Lcom/google/inject/InjectorImpl;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;)Lcom/google/inject/internal/InternalFactory;

    move-result-object v4

    .line 52
    new-instance v0, Lcom/google/inject/ConstructorBindingImpl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/inject/ConstructorBindingImpl;-><init>(Lcom/google/inject/Injector;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;Lcom/google/inject/ConstructorBindingImpl$Factory;)V

    return-object v0
.end method


# virtual methods
.method public acceptTargetVisitor(Lcom/google/inject/spi/BindingTargetVisitor;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/spi/BindingTargetVisitor",
            "<-TT;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/inject/ConstructorBindingImpl;->factory:Lcom/google/inject/ConstructorBindingImpl$Factory;

    # getter for: Lcom/google/inject/ConstructorBindingImpl$Factory;->constructorInjector:Lcom/google/inject/ConstructorInjector;
    invoke-static {v0}, Lcom/google/inject/ConstructorBindingImpl$Factory;->access$100(Lcom/google/inject/ConstructorBindingImpl$Factory;)Lcom/google/inject/ConstructorInjector;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "not initialized"

    invoke-static {v0, v1}, Lcom/google/inject/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 62
    invoke-interface {p1, p0}, Lcom/google/inject/spi/BindingTargetVisitor;->visit(Lcom/google/inject/spi/ConstructorBinding;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 61
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public applyTo(Lcom/google/inject/Binder;)V
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This element represents a synthetic binding."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initialize(Lcom/google/inject/InjectorImpl;Lcom/google/inject/internal/Errors;)V
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/inject/ConstructorBindingImpl;->factory:Lcom/google/inject/ConstructorBindingImpl$Factory;

    iget-object v1, p1, Lcom/google/inject/InjectorImpl;->constructors:Lcom/google/inject/ConstructorInjectorStore;

    invoke-virtual {p0}, Lcom/google/inject/ConstructorBindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/google/inject/ConstructorInjectorStore;->get(Lcom/google/inject/TypeLiteral;Lcom/google/inject/internal/Errors;)Lcom/google/inject/ConstructorInjector;

    move-result-object v1

    # setter for: Lcom/google/inject/ConstructorBindingImpl$Factory;->constructorInjector:Lcom/google/inject/ConstructorInjector;
    invoke-static {v0, v1}, Lcom/google/inject/ConstructorBindingImpl$Factory;->access$102(Lcom/google/inject/ConstructorBindingImpl$Factory;Lcom/google/inject/ConstructorInjector;)Lcom/google/inject/ConstructorInjector;

    .line 58
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 94
    new-instance v0, Lcom/google/inject/internal/ToStringBuilder;

    const-class v1, Lcom/google/inject/spi/ConstructorBinding;

    invoke-direct {v0, v1}, Lcom/google/inject/internal/ToStringBuilder;-><init>(Ljava/lang/Class;)V

    const-string v1, "key"

    invoke-virtual {p0}, Lcom/google/inject/ConstructorBindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/inject/internal/ToStringBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/inject/internal/ToStringBuilder;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {p0}, Lcom/google/inject/ConstructorBindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/inject/internal/ToStringBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/inject/internal/ToStringBuilder;

    move-result-object v0

    const-string v1, "scope"

    invoke-virtual {p0}, Lcom/google/inject/ConstructorBindingImpl;->getScoping()Lcom/google/inject/internal/Scoping;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/inject/internal/ToStringBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/inject/internal/ToStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
