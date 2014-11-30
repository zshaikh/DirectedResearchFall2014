.class final Lcom/google/inject/internal/Scoping$2;
.super Lcom/google/inject/internal/Scoping;
.source "Scoping.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/inject/internal/Scoping;-><init>(Lcom/google/inject/internal/Scoping$1;)V

    return-void
.end method


# virtual methods
.method public acceptVisitor(Lcom/google/inject/spi/BindingScopingVisitor;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/spi/BindingScopingVisitor",
            "<TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 59
    const-class v0, Lcom/google/inject/Singleton;

    invoke-interface {p1, v0}, Lcom/google/inject/spi/BindingScopingVisitor;->visitScopeAnnotation(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public applyTo(Lcom/google/inject/binder/ScopedBindingBuilder;)V
    .locals 1

    .prologue
    .line 71
    const-class v0, Lcom/google/inject/Singleton;

    invoke-interface {p1, v0}, Lcom/google/inject/binder/ScopedBindingBuilder;->in(Ljava/lang/Class;)V

    .line 72
    return-void
.end method

.method public getScopeAnnotation()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    const-class v0, Lcom/google/inject/Singleton;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-class v0, Lcom/google/inject/Singleton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
