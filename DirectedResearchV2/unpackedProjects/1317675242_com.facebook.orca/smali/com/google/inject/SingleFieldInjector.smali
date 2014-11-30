.class Lcom/google/inject/SingleFieldInjector;
.super Ljava/lang/Object;
.source "SingleFieldInjector.java"

# interfaces
.implements Lcom/google/inject/SingleMemberInjector;


# instance fields
.field final dependency:Lcom/google/inject/spi/Dependency;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/spi/Dependency",
            "<*>;"
        }
    .end annotation
.end field

.field final factory:Lcom/google/inject/internal/InternalFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/InternalFactory",
            "<*>;"
        }
    .end annotation
.end field

.field final field:Ljava/lang/reflect/Field;

.field final injectionPoint:Lcom/google/inject/spi/InjectionPoint;


# direct methods
.method public constructor <init>(Lcom/google/inject/InjectorImpl;Lcom/google/inject/spi/InjectionPoint;Lcom/google/inject/internal/Errors;)V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p2, p0, Lcom/google/inject/SingleFieldInjector;->injectionPoint:Lcom/google/inject/spi/InjectionPoint;

    .line 39
    invoke-virtual {p2}, Lcom/google/inject/spi/InjectionPoint;->getMember()Ljava/lang/reflect/Member;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    iput-object v0, p0, Lcom/google/inject/SingleFieldInjector;->field:Ljava/lang/reflect/Field;

    .line 40
    invoke-virtual {p2}, Lcom/google/inject/spi/InjectionPoint;->getDependencies()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/spi/Dependency;

    iput-object v0, p0, Lcom/google/inject/SingleFieldInjector;->dependency:Lcom/google/inject/spi/Dependency;

    .line 43
    iget-object v0, p0, Lcom/google/inject/SingleFieldInjector;->field:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 44
    iget-object v0, p0, Lcom/google/inject/SingleFieldInjector;->dependency:Lcom/google/inject/spi/Dependency;

    invoke-virtual {v0}, Lcom/google/inject/spi/Dependency;->getKey()Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Lcom/google/inject/InjectorImpl;->getInternalFactory(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/InternalFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/SingleFieldInjector;->factory:Lcom/google/inject/internal/InternalFactory;

    .line 45
    return-void
.end method


# virtual methods
.method public getInjectionPoint()Lcom/google/inject/spi/InjectionPoint;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/inject/SingleFieldInjector;->injectionPoint:Lcom/google/inject/spi/InjectionPoint;

    return-object v0
.end method

.method public inject(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 52
    iget-object v0, p0, Lcom/google/inject/SingleFieldInjector;->dependency:Lcom/google/inject/spi/Dependency;

    invoke-virtual {p1, v0}, Lcom/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/google/inject/SingleFieldInjector;->dependency:Lcom/google/inject/spi/Dependency;

    invoke-virtual {p2, v1}, Lcom/google/inject/internal/InternalContext;->setDependency(Lcom/google/inject/spi/Dependency;)V

    .line 56
    :try_start_0
    iget-object v1, p0, Lcom/google/inject/SingleFieldInjector;->factory:Lcom/google/inject/internal/InternalFactory;

    iget-object v2, p0, Lcom/google/inject/SingleFieldInjector;->dependency:Lcom/google/inject/spi/Dependency;

    invoke-interface {v1, v0, p2, v2}, Lcom/google/inject/internal/InternalFactory;->get(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/spi/Dependency;)Ljava/lang/Object;

    move-result-object v1

    .line 57
    iget-object v2, p0, Lcom/google/inject/SingleFieldInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p3, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-virtual {p2, v3}, Lcom/google/inject/internal/InternalContext;->setDependency(Lcom/google/inject/spi/Dependency;)V

    .line 65
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v1

    .line 59
    :try_start_1
    iget-object v2, p0, Lcom/google/inject/SingleFieldInjector;->injectionPoint:Lcom/google/inject/spi/InjectionPoint;

    invoke-virtual {v0, v2}, Lcom/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/inject/internal/ErrorsException;->getErrors()Lcom/google/inject/internal/Errors;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    invoke-virtual {p2, v3}, Lcom/google/inject/internal/InternalContext;->setDependency(Lcom/google/inject/spi/Dependency;)V

    goto :goto_0

    .line 60
    :catch_1
    move-exception v0

    .line 61
    :try_start_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    :catchall_0
    move-exception v0

    invoke-virtual {p2, v3}, Lcom/google/inject/internal/InternalContext;->setDependency(Lcom/google/inject/spi/Dependency;)V

    throw v0
.end method
