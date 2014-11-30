.class Lcom/google/inject/TypeListenerBindingProcessor;
.super Lcom/google/inject/AbstractProcessor;
.source "TypeListenerBindingProcessor.java"


# direct methods
.method constructor <init>(Lcom/google/inject/internal/Errors;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/inject/AbstractProcessor;-><init>(Lcom/google/inject/internal/Errors;)V

    .line 31
    return-void
.end method


# virtual methods
.method public visit(Lcom/google/inject/spi/TypeListenerBinding;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/inject/TypeListenerBindingProcessor;->injector:Lcom/google/inject/InjectorImpl;

    iget-object v0, v0, Lcom/google/inject/InjectorImpl;->state:Lcom/google/inject/State;

    invoke-interface {v0, p1}, Lcom/google/inject/State;->addTypeListener(Lcom/google/inject/spi/TypeListenerBinding;)V

    .line 35
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/TypeListenerBinding;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/google/inject/TypeListenerBindingProcessor;->visit(Lcom/google/inject/spi/TypeListenerBinding;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
