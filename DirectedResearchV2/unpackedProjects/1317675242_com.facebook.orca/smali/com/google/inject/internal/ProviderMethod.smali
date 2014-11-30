.class public Lcom/google/inject/internal/ProviderMethod;
.super Ljava/lang/Object;
.source "ProviderMethod.java"

# interfaces
.implements Lcom/google/inject/spi/ProviderWithDependencies;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/inject/spi/ProviderWithDependencies",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final dependencies:Lcom/google/inject/internal/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/ImmutableSet",
            "<",
            "Lcom/google/inject/spi/Dependency",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final exposed:Z

.field private final instance:Ljava/lang/Object;

.field private final key:Lcom/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Key",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final method:Ljava/lang/reflect/Method;

.field private final parameterProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/Provider",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final scopeAnnotation:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/inject/Key;Ljava/lang/reflect/Method;Ljava/lang/Object;Lcom/google/inject/internal/ImmutableSet;Ljava/util/List;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<TT;>;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Object;",
            "Lcom/google/inject/internal/ImmutableSet",
            "<",
            "Lcom/google/inject/spi/Dependency",
            "<*>;>;",
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/Provider",
            "<*>;>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/inject/internal/ProviderMethod;->key:Lcom/google/inject/Key;

    .line 53
    iput-object p6, p0, Lcom/google/inject/internal/ProviderMethod;->scopeAnnotation:Ljava/lang/Class;

    .line 54
    iput-object p3, p0, Lcom/google/inject/internal/ProviderMethod;->instance:Ljava/lang/Object;

    .line 55
    iput-object p4, p0, Lcom/google/inject/internal/ProviderMethod;->dependencies:Lcom/google/inject/internal/ImmutableSet;

    .line 56
    iput-object p2, p0, Lcom/google/inject/internal/ProviderMethod;->method:Ljava/lang/reflect/Method;

    .line 57
    iput-object p5, p0, Lcom/google/inject/internal/ProviderMethod;->parameterProviders:Ljava/util/List;

    .line 58
    const-class v0, Lcom/google/inject/Exposed;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/inject/internal/ProviderMethod;->exposed:Z

    .line 60
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 61
    return-void
.end method


# virtual methods
.method public configure(Lcom/google/inject/Binder;)V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/inject/internal/ProviderMethod;->method:Ljava/lang/reflect/Method;

    invoke-interface {p1, v0}, Lcom/google/inject/Binder;->withSource(Ljava/lang/Object;)Lcom/google/inject/Binder;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/google/inject/internal/ProviderMethod;->scopeAnnotation:Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 80
    iget-object v1, p0, Lcom/google/inject/internal/ProviderMethod;->key:Lcom/google/inject/Key;

    invoke-interface {v0, v1}, Lcom/google/inject/Binder;->bind(Lcom/google/inject/Key;)Lcom/google/inject/binder/LinkedBindingBuilder;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/inject/binder/LinkedBindingBuilder;->toProvider(Lcom/google/inject/Provider;)Lcom/google/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/inject/internal/ProviderMethod;->scopeAnnotation:Ljava/lang/Class;

    invoke-interface {v1, v2}, Lcom/google/inject/binder/ScopedBindingBuilder;->in(Ljava/lang/Class;)V

    .line 85
    :goto_0
    iget-boolean v1, p0, Lcom/google/inject/internal/ProviderMethod;->exposed:Z

    if-eqz v1, :cond_0

    .line 88
    check-cast v0, Lcom/google/inject/PrivateBinder;

    iget-object v1, p0, Lcom/google/inject/internal/ProviderMethod;->key:Lcom/google/inject/Key;

    invoke-interface {v0, v1}, Lcom/google/inject/PrivateBinder;->expose(Lcom/google/inject/Key;)V

    .line 90
    :cond_0
    return-void

    .line 82
    :cond_1
    iget-object v1, p0, Lcom/google/inject/internal/ProviderMethod;->key:Lcom/google/inject/Key;

    invoke-interface {v0, v1}, Lcom/google/inject/Binder;->bind(Lcom/google/inject/Key;)Lcom/google/inject/binder/LinkedBindingBuilder;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/inject/binder/LinkedBindingBuilder;->toProvider(Lcom/google/inject/Provider;)Lcom/google/inject/binder/ScopedBindingBuilder;

    goto :goto_0
.end method

.method public get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/inject/internal/ProviderMethod;->parameterProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/Object;

    .line 94
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    array-length v0, v1

    if-ge v2, v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/google/inject/internal/ProviderMethod;->parameterProviders:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/Provider;

    invoke-interface {v0}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v2

    .line 94
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 101
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/inject/internal/ProviderMethod;->method:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/google/inject/internal/ProviderMethod;->instance:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 102
    return-object v0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 105
    :catch_1
    move-exception v0

    .line 106
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
