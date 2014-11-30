.class public final Lcom/google/inject/internal/LinkedBindingImpl;
.super Lcom/google/inject/internal/BindingImpl;
.source "LinkedBindingImpl.java"

# interfaces
.implements Lcom/google/inject/spi/LinkedKeyBinding;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/inject/internal/BindingImpl",
        "<TT;>;",
        "Lcom/google/inject/spi/LinkedKeyBinding",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final targetKey:Lcom/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Key",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/inject/Injector;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;Lcom/google/inject/Key;)V
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
            "Lcom/google/inject/Key",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct/range {p0 .. p5}, Lcom/google/inject/internal/BindingImpl;-><init>(Lcom/google/inject/Injector;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;)V

    .line 33
    iput-object p6, p0, Lcom/google/inject/internal/LinkedBindingImpl;->targetKey:Lcom/google/inject/Key;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;Lcom/google/inject/Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/google/inject/Key",
            "<TT;>;",
            "Lcom/google/inject/internal/Scoping;",
            "Lcom/google/inject/Key",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/google/inject/internal/BindingImpl;-><init>(Ljava/lang/Object;Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;)V

    .line 38
    iput-object p4, p0, Lcom/google/inject/internal/LinkedBindingImpl;->targetKey:Lcom/google/inject/Key;

    .line 39
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
    .line 42
    invoke-interface {p1, p0}, Lcom/google/inject/spi/BindingTargetVisitor;->visit(Lcom/google/inject/spi/LinkedKeyBinding;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public applyTo(Lcom/google/inject/Binder;)V
    .locals 3

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedBindingImpl;->getScoping()Lcom/google/inject/internal/Scoping;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedBindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/inject/Binder;->withSource(Ljava/lang/Object;)Lcom/google/inject/Binder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedBindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/inject/Binder;->bind(Lcom/google/inject/Key;)Lcom/google/inject/binder/LinkedBindingBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedBindingImpl;->getLinkedKey()Lcom/google/inject/Key;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/inject/binder/LinkedBindingBuilder;->to(Lcom/google/inject/Key;)Lcom/google/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/inject/internal/Scoping;->applyTo(Lcom/google/inject/binder/ScopedBindingBuilder;)V

    .line 59
    return-void
.end method

.method public getLinkedKey()Lcom/google/inject/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/Key",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/inject/internal/LinkedBindingImpl;->targetKey:Lcom/google/inject/Key;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 62
    new-instance v0, Lcom/google/inject/internal/ToStringBuilder;

    const-class v1, Lcom/google/inject/spi/LinkedKeyBinding;

    invoke-direct {v0, v1}, Lcom/google/inject/internal/ToStringBuilder;-><init>(Ljava/lang/Class;)V

    const-string v1, "key"

    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedBindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/inject/internal/ToStringBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/inject/internal/ToStringBuilder;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedBindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/inject/internal/ToStringBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/inject/internal/ToStringBuilder;

    move-result-object v0

    const-string v1, "scope"

    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedBindingImpl;->getScoping()Lcom/google/inject/internal/Scoping;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/inject/internal/ToStringBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/inject/internal/ToStringBuilder;

    move-result-object v0

    const-string v1, "target"

    iget-object v2, p0, Lcom/google/inject/internal/LinkedBindingImpl;->targetKey:Lcom/google/inject/Key;

    invoke-virtual {v0, v1, v2}, Lcom/google/inject/internal/ToStringBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/inject/internal/ToStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withScoping(Lcom/google/inject/internal/Scoping;)Lcom/google/inject/internal/BindingImpl;
    .locals 4
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
    .line 50
    new-instance v0, Lcom/google/inject/internal/LinkedBindingImpl;

    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedBindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedBindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v2

    iget-object v3, p0, Lcom/google/inject/internal/LinkedBindingImpl;->targetKey:Lcom/google/inject/Key;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/inject/internal/LinkedBindingImpl;-><init>(Ljava/lang/Object;Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;Lcom/google/inject/Key;)V

    return-object v0
.end method
