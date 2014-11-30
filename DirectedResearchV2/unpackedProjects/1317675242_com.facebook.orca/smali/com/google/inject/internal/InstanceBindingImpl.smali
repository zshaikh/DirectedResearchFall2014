.class public Lcom/google/inject/internal/InstanceBindingImpl;
.super Lcom/google/inject/internal/BindingImpl;
.source "InstanceBindingImpl.java"

# interfaces
.implements Lcom/google/inject/spi/InstanceBinding;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/inject/internal/BindingImpl",
        "<TT;>;",
        "Lcom/google/inject/spi/InstanceBinding",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final injectionPoints:Lcom/google/inject/internal/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/ImmutableSet",
            "<",
            "Lcom/google/inject/spi/InjectionPoint;",
            ">;"
        }
    .end annotation
.end field

.field final instance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final provider:Lcom/google/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Provider",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/inject/Injector;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Ljava/util/Set;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Injector;",
            "Lcom/google/inject/Key",
            "<TT;>;",
            "Ljava/lang/Object;",
            "Lcom/google/inject/internal/InternalFactory",
            "<+TT;>;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/inject/spi/InjectionPoint;",
            ">;TT;)V"
        }
    .end annotation

    .prologue
    .line 40
    sget-object v5, Lcom/google/inject/internal/Scoping;->UNSCOPED:Lcom/google/inject/internal/Scoping;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/inject/internal/BindingImpl;-><init>(Lcom/google/inject/Injector;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;)V

    .line 41
    invoke-static {p5}, Lcom/google/inject/internal/ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lcom/google/inject/internal/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/InstanceBindingImpl;->injectionPoints:Lcom/google/inject/internal/ImmutableSet;

    .line 42
    iput-object p6, p0, Lcom/google/inject/internal/InstanceBindingImpl;->instance:Ljava/lang/Object;

    .line 43
    invoke-static {p6}, Lcom/google/inject/util/Providers;->of(Ljava/lang/Object;)Lcom/google/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/InstanceBindingImpl;->provider:Lcom/google/inject/Provider;

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;Ljava/util/Set;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/google/inject/Key",
            "<TT;>;",
            "Lcom/google/inject/internal/Scoping;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/inject/spi/InjectionPoint;",
            ">;TT;)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/google/inject/internal/BindingImpl;-><init>(Ljava/lang/Object;Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;)V

    .line 49
    invoke-static {p4}, Lcom/google/inject/internal/ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lcom/google/inject/internal/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/InstanceBindingImpl;->injectionPoints:Lcom/google/inject/internal/ImmutableSet;

    .line 50
    iput-object p5, p0, Lcom/google/inject/internal/InstanceBindingImpl;->instance:Ljava/lang/Object;

    .line 51
    invoke-static {p5}, Lcom/google/inject/util/Providers;->of(Ljava/lang/Object;)Lcom/google/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/InstanceBindingImpl;->provider:Lcom/google/inject/Provider;

    .line 52
    return-void
.end method


# virtual methods
.method public acceptTargetVisitor(Lcom/google/inject/spi/BindingTargetVisitor;)Ljava/lang/Object;
    .locals 1
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
    .line 59
    invoke-interface {p1, p0}, Lcom/google/inject/spi/BindingTargetVisitor;->visit(Lcom/google/inject/spi/InstanceBinding;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public applyTo(Lcom/google/inject/Binder;)V
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/google/inject/internal/InstanceBindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/inject/Binder;->withSource(Ljava/lang/Object;)Lcom/google/inject/Binder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/inject/internal/InstanceBindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/inject/Binder;->bind(Lcom/google/inject/Key;)Lcom/google/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/inject/internal/InstanceBindingImpl;->instance:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/inject/binder/LinkedBindingBuilder;->toInstance(Ljava/lang/Object;)V

    .line 87
    return-void
.end method

.method public getInjectionPoints()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/inject/spi/InjectionPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/inject/internal/InstanceBindingImpl;->injectionPoints:Lcom/google/inject/internal/ImmutableSet;

    return-object v0
.end method

.method public getInstance()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/inject/internal/InstanceBindingImpl;->instance:Ljava/lang/Object;

    return-object v0
.end method

.method public getProvider()Lcom/google/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/Provider",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/inject/internal/InstanceBindingImpl;->provider:Lcom/google/inject/Provider;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 90
    new-instance v0, Lcom/google/inject/internal/ToStringBuilder;

    const-class v1, Lcom/google/inject/spi/InstanceBinding;

    invoke-direct {v0, v1}, Lcom/google/inject/internal/ToStringBuilder;-><init>(Ljava/lang/Class;)V

    const-string v1, "key"

    invoke-virtual {p0}, Lcom/google/inject/internal/InstanceBindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/inject/internal/ToStringBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/inject/internal/ToStringBuilder;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {p0}, Lcom/google/inject/internal/InstanceBindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/inject/internal/ToStringBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/inject/internal/ToStringBuilder;

    move-result-object v0

    const-string v1, "instance"

    iget-object v2, p0, Lcom/google/inject/internal/InstanceBindingImpl;->instance:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/inject/internal/ToStringBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/inject/internal/ToStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withScoping(Lcom/google/inject/internal/Scoping;)Lcom/google/inject/internal/BindingImpl;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/Scoping;",
            ")",
            "Lcom/google/inject/internal/BindingImpl",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Lcom/google/inject/internal/InstanceBindingImpl;

    invoke-virtual {p0}, Lcom/google/inject/internal/InstanceBindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/inject/internal/InstanceBindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v2

    iget-object v4, p0, Lcom/google/inject/internal/InstanceBindingImpl;->injectionPoints:Lcom/google/inject/internal/ImmutableSet;

    iget-object v5, p0, Lcom/google/inject/internal/InstanceBindingImpl;->instance:Ljava/lang/Object;

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/inject/internal/InstanceBindingImpl;-><init>(Ljava/lang/Object;Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;Ljava/util/Set;Ljava/lang/Object;)V

    return-object v0
.end method
