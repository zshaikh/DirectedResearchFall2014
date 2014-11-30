.class Lcom/google/inject/PrivateElementProcessor;
.super Lcom/google/inject/AbstractProcessor;
.source "PrivateElementProcessor.java"


# instance fields
.field private final injectorShellBuilders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/InjectorShell$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final stage:Lcom/google/inject/Stage;


# direct methods
.method constructor <init>(Lcom/google/inject/internal/Errors;Lcom/google/inject/Stage;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/inject/AbstractProcessor;-><init>(Lcom/google/inject/internal/Errors;)V

    .line 32
    invoke-static {}, Lcom/google/inject/internal/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/PrivateElementProcessor;->injectorShellBuilders:Ljava/util/List;

    .line 36
    iput-object p2, p0, Lcom/google/inject/PrivateElementProcessor;->stage:Lcom/google/inject/Stage;

    .line 37
    return-void
.end method


# virtual methods
.method public getInjectorShellBuilders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/InjectorShell$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/inject/PrivateElementProcessor;->injectorShellBuilders:Ljava/util/List;

    return-object v0
.end method

.method public visit(Lcom/google/inject/spi/PrivateElements;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcom/google/inject/InjectorShell$Builder;

    invoke-direct {v0}, Lcom/google/inject/InjectorShell$Builder;-><init>()V

    iget-object v1, p0, Lcom/google/inject/PrivateElementProcessor;->injector:Lcom/google/inject/InjectorImpl;

    invoke-virtual {v0, v1}, Lcom/google/inject/InjectorShell$Builder;->parent(Lcom/google/inject/InjectorImpl;)Lcom/google/inject/InjectorShell$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/inject/PrivateElementProcessor;->stage:Lcom/google/inject/Stage;

    invoke-virtual {v0, v1}, Lcom/google/inject/InjectorShell$Builder;->stage(Lcom/google/inject/Stage;)Lcom/google/inject/InjectorShell$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/inject/InjectorShell$Builder;->privateElements(Lcom/google/inject/spi/PrivateElements;)Lcom/google/inject/InjectorShell$Builder;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/google/inject/PrivateElementProcessor;->injectorShellBuilders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/PrivateElements;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/google/inject/PrivateElementProcessor;->visit(Lcom/google/inject/spi/PrivateElements;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
