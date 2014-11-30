.class Lcom/google/inject/DeferredLookups;
.super Ljava/lang/Object;
.source "DeferredLookups.java"

# interfaces
.implements Lcom/google/inject/Lookups;


# instance fields
.field private final injector:Lcom/google/inject/InjectorImpl;

.field private final lookups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/spi/Element;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/inject/InjectorImpl;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Lcom/google/inject/internal/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/DeferredLookups;->lookups:Ljava/util/List;

    .line 37
    iput-object p1, p0, Lcom/google/inject/DeferredLookups;->injector:Lcom/google/inject/InjectorImpl;

    .line 38
    return-void
.end method


# virtual methods
.method public initialize(Lcom/google/inject/internal/Errors;)V
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/inject/DeferredLookups;->injector:Lcom/google/inject/InjectorImpl;

    iget-object v1, p0, Lcom/google/inject/DeferredLookups;->injector:Lcom/google/inject/InjectorImpl;

    iput-object v1, v0, Lcom/google/inject/InjectorImpl;->lookups:Lcom/google/inject/Lookups;

    .line 45
    new-instance v0, Lcom/google/inject/LookupProcessor;

    invoke-direct {v0, p1}, Lcom/google/inject/LookupProcessor;-><init>(Lcom/google/inject/internal/Errors;)V

    iget-object v1, p0, Lcom/google/inject/DeferredLookups;->injector:Lcom/google/inject/InjectorImpl;

    iget-object v2, p0, Lcom/google/inject/DeferredLookups;->lookups:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/inject/LookupProcessor;->process(Lcom/google/inject/InjectorImpl;Ljava/util/List;)V

    .line 46
    return-void
.end method
