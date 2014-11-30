.class final Lcom/google/inject/spi/Elements$2;
.super Ljava/lang/Object;
.source "Elements.java"

# interfaces
.implements Lcom/google/inject/Module;


# instance fields
.field final synthetic val$elements:Ljava/lang/Iterable;


# virtual methods
.method public configure(Lcom/google/inject/Binder;)V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/inject/spi/Elements$2;->val$elements:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/inject/spi/Element;

    .line 113
    invoke-interface {p0, p1}, Lcom/google/inject/spi/Element;->applyTo(Lcom/google/inject/Binder;)V

    goto :goto_0

    .line 115
    :cond_0
    return-void
.end method
