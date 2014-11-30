.class Lcom/google/inject/InjectorShell;
.super Ljava/lang/Object;
.source "InjectorShell.java"


# instance fields
.field private final elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/spi/Element;",
            ">;"
        }
    .end annotation
.end field

.field private final injector:Lcom/google/inject/InjectorImpl;

.field private final privateElements:Lcom/google/inject/spi/PrivateElements;


# direct methods
.method private constructor <init>(Lcom/google/inject/InjectorShell$Builder;Ljava/util/List;Lcom/google/inject/InjectorImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/InjectorShell$Builder;",
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/spi/Element;",
            ">;",
            "Lcom/google/inject/InjectorImpl;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    # getter for: Lcom/google/inject/InjectorShell$Builder;->privateElements:Lcom/google/inject/internal/PrivateElementsImpl;
    invoke-static {p1}, Lcom/google/inject/InjectorShell$Builder;->access$000(Lcom/google/inject/InjectorShell$Builder;)Lcom/google/inject/internal/PrivateElementsImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/InjectorShell;->privateElements:Lcom/google/inject/spi/PrivateElements;

    .line 56
    iput-object p2, p0, Lcom/google/inject/InjectorShell;->elements:Ljava/util/List;

    .line 57
    iput-object p3, p0, Lcom/google/inject/InjectorShell;->injector:Lcom/google/inject/InjectorImpl;

    .line 58
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/inject/InjectorShell$Builder;Ljava/util/List;Lcom/google/inject/InjectorImpl;Lcom/google/inject/InjectorShell$1;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/google/inject/InjectorShell;-><init>(Lcom/google/inject/InjectorShell$Builder;Ljava/util/List;Lcom/google/inject/InjectorImpl;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/inject/InjectorImpl;)V
    .locals 0

    .prologue
    .line 48
    invoke-static {p0}, Lcom/google/inject/InjectorShell;->bindInjector(Lcom/google/inject/InjectorImpl;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/inject/InjectorImpl;)V
    .locals 0

    .prologue
    .line 48
    invoke-static {p0}, Lcom/google/inject/InjectorShell;->bindLogger(Lcom/google/inject/InjectorImpl;)V

    return-void
.end method

.method private static bindInjector(Lcom/google/inject/InjectorImpl;)V
    .locals 9

    .prologue
    .line 189
    const-class v0, Lcom/google/inject/Injector;

    invoke-static {v0}, Lcom/google/inject/Key;->get(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v2

    .line 190
    new-instance v4, Lcom/google/inject/InjectorShell$InjectorFactory;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/google/inject/InjectorShell$InjectorFactory;-><init>(Lcom/google/inject/Injector;Lcom/google/inject/InjectorShell$1;)V

    .line 191
    iget-object v8, p0, Lcom/google/inject/InjectorImpl;->state:Lcom/google/inject/State;

    new-instance v0, Lcom/google/inject/internal/ProviderInstanceBindingImpl;

    sget-object v3, Lcom/google/inject/internal/SourceProvider;->UNKNOWN_SOURCE:Ljava/lang/Object;

    sget-object v5, Lcom/google/inject/internal/Scoping;->UNSCOPED:Lcom/google/inject/internal/Scoping;

    invoke-static {}, Lcom/google/inject/internal/ImmutableSet;->of()Lcom/google/inject/internal/ImmutableSet;

    move-result-object v7

    move-object v1, p0

    move-object v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/google/inject/internal/ProviderInstanceBindingImpl;-><init>(Lcom/google/inject/Injector;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;Lcom/google/inject/Provider;Ljava/util/Set;)V

    invoke-interface {v8, v2, v0}, Lcom/google/inject/State;->putBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/BindingImpl;)V

    .line 195
    return-void
.end method

.method private static bindLogger(Lcom/google/inject/InjectorImpl;)V
    .locals 9

    .prologue
    .line 223
    const-class v0, Ljava/util/logging/Logger;

    invoke-static {v0}, Lcom/google/inject/Key;->get(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v2

    .line 224
    new-instance v4, Lcom/google/inject/InjectorShell$LoggerFactory;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lcom/google/inject/InjectorShell$LoggerFactory;-><init>(Lcom/google/inject/InjectorShell$1;)V

    .line 225
    iget-object v8, p0, Lcom/google/inject/InjectorImpl;->state:Lcom/google/inject/State;

    new-instance v0, Lcom/google/inject/internal/ProviderInstanceBindingImpl;

    sget-object v3, Lcom/google/inject/internal/SourceProvider;->UNKNOWN_SOURCE:Ljava/lang/Object;

    sget-object v5, Lcom/google/inject/internal/Scoping;->UNSCOPED:Lcom/google/inject/internal/Scoping;

    invoke-static {}, Lcom/google/inject/internal/ImmutableSet;->of()Lcom/google/inject/internal/ImmutableSet;

    move-result-object v7

    move-object v1, p0

    move-object v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/google/inject/internal/ProviderInstanceBindingImpl;-><init>(Lcom/google/inject/Injector;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;Lcom/google/inject/Provider;Ljava/util/Set;)V

    invoke-interface {v8, v2, v0}, Lcom/google/inject/State;->putBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/BindingImpl;)V

    .line 229
    return-void
.end method


# virtual methods
.method getElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/spi/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/inject/InjectorShell;->elements:Ljava/util/List;

    return-object v0
.end method

.method getInjector()Lcom/google/inject/InjectorImpl;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/inject/InjectorShell;->injector:Lcom/google/inject/InjectorImpl;

    return-object v0
.end method
