.class public abstract Lcom/google/inject/internal/AbstractBindingBuilder;
.super Ljava/lang/Object;
.source "AbstractBindingBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final NULL_KEY:Lcom/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Key",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field protected final binder:Lcom/google/inject/Binder;

.field private binding:Lcom/google/inject/internal/BindingImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/BindingImpl",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/spi/Element;",
            ">;"
        }
    .end annotation
.end field

.field protected position:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Ljava/lang/Void;

    invoke-static {v0}, Lcom/google/inject/Key;->get(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    sput-object v0, Lcom/google/inject/internal/AbstractBindingBuilder;->NULL_KEY:Lcom/google/inject/Key;

    return-void
.end method

.method public constructor <init>(Lcom/google/inject/Binder;Ljava/util/List;Ljava/lang/Object;Lcom/google/inject/Key;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Binder;",
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/spi/Element;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/google/inject/Key",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/inject/internal/AbstractBindingBuilder;->binder:Lcom/google/inject/Binder;

    .line 54
    iput-object p2, p0, Lcom/google/inject/internal/AbstractBindingBuilder;->elements:Ljava/util/List;

    .line 55
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/google/inject/internal/AbstractBindingBuilder;->position:I

    .line 56
    new-instance v0, Lcom/google/inject/internal/UntargettedBindingImpl;

    sget-object v1, Lcom/google/inject/internal/Scoping;->UNSCOPED:Lcom/google/inject/internal/Scoping;

    invoke-direct {v0, p3, p4, v1}, Lcom/google/inject/internal/UntargettedBindingImpl;-><init>(Ljava/lang/Object;Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;)V

    iput-object v0, p0, Lcom/google/inject/internal/AbstractBindingBuilder;->binding:Lcom/google/inject/internal/BindingImpl;

    .line 57
    iget v0, p0, Lcom/google/inject/internal/AbstractBindingBuilder;->position:I

    iget-object v1, p0, Lcom/google/inject/internal/AbstractBindingBuilder;->binding:Lcom/google/inject/internal/BindingImpl;

    invoke-interface {p2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 58
    return-void
.end method


# virtual methods
.method public asEagerSingleton()V
    .locals 2

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/google/inject/internal/AbstractBindingBuilder;->checkNotScoped()V

    .line 100
    invoke-virtual {p0}, Lcom/google/inject/internal/AbstractBindingBuilder;->getBinding()Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    sget-object v1, Lcom/google/inject/internal/Scoping;->EAGER_SINGLETON:Lcom/google/inject/internal/Scoping;

    invoke-virtual {v0, v1}, Lcom/google/inject/internal/BindingImpl;->withScoping(Lcom/google/inject/internal/Scoping;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/inject/internal/AbstractBindingBuilder;->setBinding(Lcom/google/inject/internal/BindingImpl;)Lcom/google/inject/internal/BindingImpl;

    .line 101
    return-void
.end method

.method protected checkNotScoped()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 121
    iget-object v0, p0, Lcom/google/inject/internal/AbstractBindingBuilder;->binding:Lcom/google/inject/internal/BindingImpl;

    instance-of v0, v0, Lcom/google/inject/spi/InstanceBinding;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/google/inject/internal/AbstractBindingBuilder;->binder:Lcom/google/inject/Binder;

    const-string v1, "Setting the scope is not permitted when binding to a single instance."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/inject/Binder;->addError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/google/inject/internal/AbstractBindingBuilder;->binding:Lcom/google/inject/internal/BindingImpl;

    invoke-virtual {v0}, Lcom/google/inject/internal/BindingImpl;->getScoping()Lcom/google/inject/internal/Scoping;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/Scoping;->isExplicitlyScoped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/google/inject/internal/AbstractBindingBuilder;->binder:Lcom/google/inject/Binder;

    const-string v1, "Scope is set more than once."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/inject/Binder;->addError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected checkNotTargetted()V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/inject/internal/AbstractBindingBuilder;->binding:Lcom/google/inject/internal/BindingImpl;

    instance-of v0, v0, Lcom/google/inject/internal/UntargettedBindingImpl;

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/google/inject/internal/AbstractBindingBuilder;->binder:Lcom/google/inject/Binder;

    const-string v1, "Implementation is set more than once."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/inject/Binder;->addError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    :cond_0
    return-void
.end method

.method protected getBinding()Lcom/google/inject/internal/BindingImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/internal/BindingImpl",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/inject/internal/AbstractBindingBuilder;->binding:Lcom/google/inject/internal/BindingImpl;

    return-object v0
.end method

.method public in(Lcom/google/inject/Scope;)V
    .locals 2

    .prologue
    .line 93
    const-string v0, "scope"

    invoke-static {p1, v0}, Lcom/google/inject/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-virtual {p0}, Lcom/google/inject/internal/AbstractBindingBuilder;->checkNotScoped()V

    .line 95
    invoke-virtual {p0}, Lcom/google/inject/internal/AbstractBindingBuilder;->getBinding()Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    invoke-static {p1}, Lcom/google/inject/internal/Scoping;->forInstance(Lcom/google/inject/Scope;)Lcom/google/inject/internal/Scoping;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/inject/internal/BindingImpl;->withScoping(Lcom/google/inject/internal/Scoping;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/inject/internal/AbstractBindingBuilder;->setBinding(Lcom/google/inject/internal/BindingImpl;)Lcom/google/inject/internal/BindingImpl;

    .line 96
    return-void
.end method

.method public in(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    const-string v0, "scopeAnnotation"

    invoke-static {p1, v0}, Lcom/google/inject/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-virtual {p0}, Lcom/google/inject/internal/AbstractBindingBuilder;->checkNotScoped()V

    .line 89
    invoke-virtual {p0}, Lcom/google/inject/internal/AbstractBindingBuilder;->getBinding()Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    invoke-static {p1}, Lcom/google/inject/internal/Scoping;->forAnnotation(Ljava/lang/Class;)Lcom/google/inject/internal/Scoping;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/inject/internal/BindingImpl;->withScoping(Lcom/google/inject/internal/Scoping;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/inject/internal/AbstractBindingBuilder;->setBinding(Lcom/google/inject/internal/BindingImpl;)Lcom/google/inject/internal/BindingImpl;

    .line 90
    return-void
.end method

.method protected setBinding(Lcom/google/inject/internal/BindingImpl;)Lcom/google/inject/internal/BindingImpl;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/BindingImpl",
            "<TT;>;)",
            "Lcom/google/inject/internal/BindingImpl",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 65
    iput-object p1, p0, Lcom/google/inject/internal/AbstractBindingBuilder;->binding:Lcom/google/inject/internal/BindingImpl;

    .line 66
    iget-object v0, p0, Lcom/google/inject/internal/AbstractBindingBuilder;->elements:Ljava/util/List;

    iget v1, p0, Lcom/google/inject/internal/AbstractBindingBuilder;->position:I

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-object p1
.end method
