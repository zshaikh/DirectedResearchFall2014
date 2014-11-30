.class Lcom/google/inject/InjectorImpl$ConvertedConstantBindingImpl;
.super Lcom/google/inject/internal/BindingImpl;
.source "InjectorImpl.java"

# interfaces
.implements Lcom/google/inject/spi/ConvertedConstantBinding;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/inject/internal/BindingImpl",
        "<TT;>;",
        "Lcom/google/inject/spi/ConvertedConstantBinding",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final originalBinding:Lcom/google/inject/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Binding",
            "<",
            "Ljava/lang/String;",
            ">;"
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

.field final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/inject/Injector;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/Binding;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Injector;",
            "Lcom/google/inject/Key",
            "<TT;>;TT;",
            "Lcom/google/inject/Binding",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 327
    invoke-interface {p4}, Lcom/google/inject/Binding;->getSource()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lcom/google/inject/ConstantFactory;

    invoke-static {p3}, Lcom/google/inject/Initializables;->of(Ljava/lang/Object;)Lcom/google/inject/Initializable;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/google/inject/ConstantFactory;-><init>(Lcom/google/inject/Initializable;)V

    sget-object v5, Lcom/google/inject/internal/Scoping;->UNSCOPED:Lcom/google/inject/internal/Scoping;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/inject/internal/BindingImpl;-><init>(Lcom/google/inject/Injector;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;)V

    .line 329
    iput-object p3, p0, Lcom/google/inject/InjectorImpl$ConvertedConstantBindingImpl;->value:Ljava/lang/Object;

    .line 330
    invoke-static {p3}, Lcom/google/inject/util/Providers;->of(Ljava/lang/Object;)Lcom/google/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/InjectorImpl$ConvertedConstantBindingImpl;->provider:Lcom/google/inject/Provider;

    .line 331
    iput-object p4, p0, Lcom/google/inject/InjectorImpl$ConvertedConstantBindingImpl;->originalBinding:Lcom/google/inject/Binding;

    .line 332
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
    .line 339
    invoke-interface {p1, p0}, Lcom/google/inject/spi/BindingTargetVisitor;->visit(Lcom/google/inject/spi/ConvertedConstantBinding;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public applyTo(Lcom/google/inject/Binder;)V
    .locals 2

    .prologue
    .line 355
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This element represents a synthetic binding."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .line 335
    iget-object v0, p0, Lcom/google/inject/InjectorImpl$ConvertedConstantBindingImpl;->provider:Lcom/google/inject/Provider;

    return-object v0
.end method

.method public getSourceKey()Lcom/google/inject/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/Key",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/inject/InjectorImpl$ConvertedConstantBindingImpl;->originalBinding:Lcom/google/inject/Binding;

    invoke-interface {v0}, Lcom/google/inject/Binding;->getKey()Lcom/google/inject/Key;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 359
    new-instance v0, Lcom/google/inject/internal/ToStringBuilder;

    const-class v1, Lcom/google/inject/spi/ConvertedConstantBinding;

    invoke-direct {v0, v1}, Lcom/google/inject/internal/ToStringBuilder;-><init>(Ljava/lang/Class;)V

    const-string v1, "key"

    invoke-virtual {p0}, Lcom/google/inject/InjectorImpl$ConvertedConstantBindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/inject/internal/ToStringBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/inject/internal/ToStringBuilder;

    move-result-object v0

    const-string v1, "sourceKey"

    invoke-virtual {p0}, Lcom/google/inject/InjectorImpl$ConvertedConstantBindingImpl;->getSourceKey()Lcom/google/inject/Key;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/inject/internal/ToStringBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/inject/internal/ToStringBuilder;

    move-result-object v0

    const-string v1, "value"

    iget-object v2, p0, Lcom/google/inject/InjectorImpl$ConvertedConstantBindingImpl;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/inject/internal/ToStringBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/inject/internal/ToStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
