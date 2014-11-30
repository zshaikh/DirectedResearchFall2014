.class public Lcom/google/inject/internal/ExposedBindingImpl;
.super Lcom/google/inject/internal/BindingImpl;
.source "ExposedBindingImpl.java"

# interfaces
.implements Lcom/google/inject/spi/ExposedBinding;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/inject/internal/BindingImpl",
        "<TT;>;",
        "Lcom/google/inject/spi/ExposedBinding",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final privateElements:Lcom/google/inject/spi/PrivateElements;


# direct methods
.method public constructor <init>(Lcom/google/inject/Injector;Ljava/lang/Object;Lcom/google/inject/Key;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/spi/PrivateElements;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Injector;",
            "Ljava/lang/Object;",
            "Lcom/google/inject/Key",
            "<TT;>;",
            "Lcom/google/inject/internal/InternalFactory",
            "<TT;>;",
            "Lcom/google/inject/spi/PrivateElements;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    sget-object v5, Lcom/google/inject/internal/Scoping;->UNSCOPED:Lcom/google/inject/internal/Scoping;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/inject/internal/BindingImpl;-><init>(Lcom/google/inject/Injector;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;)V

    .line 35
    iput-object p5, p0, Lcom/google/inject/internal/ExposedBindingImpl;->privateElements:Lcom/google/inject/spi/PrivateElements;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;Lcom/google/inject/spi/PrivateElements;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/google/inject/Key",
            "<TT;>;",
            "Lcom/google/inject/internal/Scoping;",
            "Lcom/google/inject/spi/PrivateElements;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/google/inject/internal/BindingImpl;-><init>(Ljava/lang/Object;Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;)V

    .line 41
    iput-object p4, p0, Lcom/google/inject/internal/ExposedBindingImpl;->privateElements:Lcom/google/inject/spi/PrivateElements;

    .line 42
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
    .line 45
    invoke-interface {p1, p0}, Lcom/google/inject/spi/BindingTargetVisitor;->visit(Lcom/google/inject/spi/ExposedBinding;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public applyTo(Lcom/google/inject/Binder;)V
    .locals 2

    .prologue
    .line 73
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This element represents a synthetic binding."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPrivateElements()Lcom/google/inject/spi/PrivateElements;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/inject/internal/ExposedBindingImpl;->privateElements:Lcom/google/inject/spi/PrivateElements;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 65
    new-instance v0, Lcom/google/inject/internal/ToStringBuilder;

    const-class v1, Lcom/google/inject/spi/ExposedBinding;

    invoke-direct {v0, v1}, Lcom/google/inject/internal/ToStringBuilder;-><init>(Ljava/lang/Class;)V

    const-string v1, "key"

    invoke-virtual {p0}, Lcom/google/inject/internal/ExposedBindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/inject/internal/ToStringBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/inject/internal/ToStringBuilder;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {p0}, Lcom/google/inject/internal/ExposedBindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/inject/internal/ToStringBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/inject/internal/ToStringBuilder;

    move-result-object v0

    const-string v1, "privateElements"

    iget-object v2, p0, Lcom/google/inject/internal/ExposedBindingImpl;->privateElements:Lcom/google/inject/spi/PrivateElements;

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
    .line 57
    new-instance v0, Lcom/google/inject/internal/ExposedBindingImpl;

    invoke-virtual {p0}, Lcom/google/inject/internal/ExposedBindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/inject/internal/ExposedBindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v2

    iget-object v3, p0, Lcom/google/inject/internal/ExposedBindingImpl;->privateElements:Lcom/google/inject/spi/PrivateElements;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/inject/internal/ExposedBindingImpl;-><init>(Ljava/lang/Object;Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;Lcom/google/inject/spi/PrivateElements;)V

    return-object v0
.end method
