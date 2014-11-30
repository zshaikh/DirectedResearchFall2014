.class public Lcom/google/inject/Scopes;
.super Ljava/lang/Object;
.source "Scopes.java"


# static fields
.field public static final NO_SCOPE:Lcom/google/inject/Scope;

.field public static final SINGLETON:Lcom/google/inject/Scope;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/google/inject/Scopes$1;

    invoke-direct {v0}, Lcom/google/inject/Scopes$1;-><init>()V

    sput-object v0, Lcom/google/inject/Scopes;->SINGLETON:Lcom/google/inject/Scope;

    .line 84
    new-instance v0, Lcom/google/inject/Scopes$2;

    invoke-direct {v0}, Lcom/google/inject/Scopes$2;-><init>()V

    sput-object v0, Lcom/google/inject/Scopes;->NO_SCOPE:Lcom/google/inject/Scope;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static makeInjectable(Lcom/google/inject/internal/Scoping;Lcom/google/inject/InjectorImpl;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Scoping;
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/google/inject/internal/Scoping;->getScopeAnnotation()Ljava/lang/Class;

    move-result-object v0

    .line 116
    if-nez v0, :cond_0

    move-object v0, p0

    .line 126
    :goto_0
    return-object v0

    .line 120
    :cond_0
    iget-object v1, p1, Lcom/google/inject/InjectorImpl;->state:Lcom/google/inject/State;

    invoke-interface {v1, v0}, Lcom/google/inject/State;->getScope(Ljava/lang/Class;)Lcom/google/inject/Scope;

    move-result-object v1

    .line 121
    if-eqz v1, :cond_1

    .line 122
    invoke-static {v1}, Lcom/google/inject/internal/Scoping;->forInstance(Lcom/google/inject/Scope;)Lcom/google/inject/internal/Scoping;

    move-result-object v0

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {p2, v0}, Lcom/google/inject/internal/Errors;->scopeNotFound(Ljava/lang/Class;)Lcom/google/inject/internal/Errors;

    .line 126
    sget-object v0, Lcom/google/inject/internal/Scoping;->UNSCOPED:Lcom/google/inject/internal/Scoping;

    goto :goto_0
.end method

.method static scope(Lcom/google/inject/Key;Lcom/google/inject/InjectorImpl;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;)Lcom/google/inject/internal/InternalFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;",
            "Lcom/google/inject/InjectorImpl;",
            "Lcom/google/inject/internal/InternalFactory",
            "<+TT;>;",
            "Lcom/google/inject/internal/Scoping;",
            ")",
            "Lcom/google/inject/internal/InternalFactory",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p3}, Lcom/google/inject/internal/Scoping;->isNoScope()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 105
    :goto_0
    return-object v0

    .line 101
    :cond_0
    invoke-virtual {p3}, Lcom/google/inject/internal/Scoping;->getScopeInstance()Lcom/google/inject/Scope;

    move-result-object v0

    .line 103
    new-instance v1, Lcom/google/inject/ProviderToInternalFactoryAdapter;

    invoke-direct {v1, p1, p2}, Lcom/google/inject/ProviderToInternalFactoryAdapter;-><init>(Lcom/google/inject/InjectorImpl;Lcom/google/inject/internal/InternalFactory;)V

    invoke-interface {v0, p0, v1}, Lcom/google/inject/Scope;->scope(Lcom/google/inject/Key;Lcom/google/inject/Provider;)Lcom/google/inject/Provider;

    move-result-object v0

    .line 105
    new-instance v1, Lcom/google/inject/InternalFactoryToProviderAdapter;

    invoke-static {v0}, Lcom/google/inject/Initializables;->of(Ljava/lang/Object;)Lcom/google/inject/Initializable;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/inject/InternalFactoryToProviderAdapter;-><init>(Lcom/google/inject/Initializable;)V

    move-object v0, v1

    goto :goto_0
.end method
