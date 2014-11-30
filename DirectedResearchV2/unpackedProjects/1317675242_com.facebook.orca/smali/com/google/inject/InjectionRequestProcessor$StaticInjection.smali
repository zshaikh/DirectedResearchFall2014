.class Lcom/google/inject/InjectionRequestProcessor$StaticInjection;
.super Ljava/lang/Object;
.source "InjectionRequestProcessor.java"


# instance fields
.field final injector:Lcom/google/inject/InjectorImpl;

.field memberInjectors:Lcom/google/inject/internal/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/ImmutableList",
            "<",
            "Lcom/google/inject/SingleMemberInjector;",
            ">;"
        }
    .end annotation
.end field

.field final request:Lcom/google/inject/spi/StaticInjectionRequest;

.field final source:Ljava/lang/Object;

.field final synthetic this$0:Lcom/google/inject/InjectionRequestProcessor;


# direct methods
.method public constructor <init>(Lcom/google/inject/InjectionRequestProcessor;Lcom/google/inject/InjectorImpl;Lcom/google/inject/spi/StaticInjectionRequest;)V
    .locals 1

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/inject/InjectionRequestProcessor$StaticInjection;->this$0:Lcom/google/inject/InjectionRequestProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p2, p0, Lcom/google/inject/InjectionRequestProcessor$StaticInjection;->injector:Lcom/google/inject/InjectorImpl;

    .line 87
    invoke-virtual {p3}, Lcom/google/inject/spi/StaticInjectionRequest;->getSource()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/InjectionRequestProcessor$StaticInjection;->source:Ljava/lang/Object;

    .line 88
    iput-object p3, p0, Lcom/google/inject/InjectionRequestProcessor$StaticInjection;->request:Lcom/google/inject/spi/StaticInjectionRequest;

    .line 89
    return-void
.end method


# virtual methods
.method injectMembers()V
    .locals 2

    .prologue
    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/google/inject/InjectionRequestProcessor$StaticInjection;->injector:Lcom/google/inject/InjectorImpl;

    new-instance v1, Lcom/google/inject/InjectionRequestProcessor$StaticInjection$1;

    invoke-direct {v1, p0}, Lcom/google/inject/InjectionRequestProcessor$StaticInjection$1;-><init>(Lcom/google/inject/InjectionRequestProcessor$StaticInjection;)V

    invoke-virtual {v0, v1}, Lcom/google/inject/InjectorImpl;->callInContext(Lcom/google/inject/ContextualCallable;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method validate()V
    .locals 4

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/inject/InjectionRequestProcessor$StaticInjection;->this$0:Lcom/google/inject/InjectionRequestProcessor;

    iget-object v0, v0, Lcom/google/inject/InjectionRequestProcessor;->errors:Lcom/google/inject/internal/Errors;

    iget-object v1, p0, Lcom/google/inject/InjectionRequestProcessor$StaticInjection;->source:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v1

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/google/inject/InjectionRequestProcessor$StaticInjection;->request:Lcom/google/inject/spi/StaticInjectionRequest;

    invoke-virtual {v0}, Lcom/google/inject/spi/StaticInjectionRequest;->getInjectionPoints()Ljava/util/Set;
    :try_end_0
    .catch Lcom/google/inject/ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 100
    :goto_0
    iget-object v2, p0, Lcom/google/inject/InjectionRequestProcessor$StaticInjection;->injector:Lcom/google/inject/InjectorImpl;

    iget-object v2, v2, Lcom/google/inject/InjectorImpl;->membersInjectorStore:Lcom/google/inject/MembersInjectorStore;

    invoke-virtual {v2, v0, v1}, Lcom/google/inject/MembersInjectorStore;->getInjectors(Ljava/util/Set;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/InjectionRequestProcessor$StaticInjection;->memberInjectors:Lcom/google/inject/internal/ImmutableList;

    .line 102
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    iget-object v2, p0, Lcom/google/inject/InjectionRequestProcessor$StaticInjection;->this$0:Lcom/google/inject/InjectionRequestProcessor;

    iget-object v2, v2, Lcom/google/inject/InjectionRequestProcessor;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {v0}, Lcom/google/inject/ConfigurationException;->getErrorMessages()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/inject/internal/Errors;->merge(Ljava/util/Collection;)Lcom/google/inject/internal/Errors;

    .line 98
    invoke-virtual {v0}, Lcom/google/inject/ConfigurationException;->getPartialValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    goto :goto_0
.end method
