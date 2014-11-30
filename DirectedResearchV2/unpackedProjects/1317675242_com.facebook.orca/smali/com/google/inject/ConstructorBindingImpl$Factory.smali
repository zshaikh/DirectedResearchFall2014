.class Lcom/google/inject/ConstructorBindingImpl$Factory;
.super Ljava/lang/Object;
.source "ConstructorBindingImpl.java"

# interfaces
.implements Lcom/google/inject/internal/InternalFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/inject/internal/InternalFactory",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private constructorInjector:Lcom/google/inject/ConstructorInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/ConstructorInjector",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/inject/ConstructorBindingImpl$1;)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/google/inject/ConstructorBindingImpl$Factory;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/inject/ConstructorBindingImpl$Factory;)Lcom/google/inject/ConstructorInjector;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/inject/ConstructorBindingImpl$Factory;->constructorInjector:Lcom/google/inject/ConstructorInjector;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/inject/ConstructorBindingImpl$Factory;Lcom/google/inject/ConstructorInjector;)Lcom/google/inject/ConstructorInjector;
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/google/inject/ConstructorBindingImpl$Factory;->constructorInjector:Lcom/google/inject/ConstructorInjector;

    return-object p1
.end method


# virtual methods
.method public get(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/spi/Dependency;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/Errors;",
            "Lcom/google/inject/internal/InternalContext;",
            "Lcom/google/inject/spi/Dependency",
            "<*>;)TT;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/inject/ConstructorBindingImpl$Factory;->constructorInjector:Lcom/google/inject/ConstructorInjector;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Constructor not ready"

    invoke-static {v0, v1}, Lcom/google/inject/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/google/inject/ConstructorBindingImpl$Factory;->constructorInjector:Lcom/google/inject/ConstructorInjector;

    invoke-virtual {p3}, Lcom/google/inject/spi/Dependency;->getKey()Lcom/google/inject/Key;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/inject/Key;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/inject/ConstructorInjector;->construct(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 107
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
