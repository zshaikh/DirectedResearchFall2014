.class final Lcom/google/inject/util/Modules$2;
.super Ljava/lang/Object;
.source "Modules.java"

# interfaces
.implements Lcom/google/inject/Module;


# instance fields
.field final synthetic val$modulesSet:Ljava/util/Set;


# virtual methods
.method public configure(Lcom/google/inject/Binder;)V
    .locals 3

    .prologue
    .line 103
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-interface {p1, v0}, Lcom/google/inject/Binder;->skipSources([Ljava/lang/Class;)Lcom/google/inject/Binder;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/google/inject/util/Modules$2;->val$modulesSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/inject/Module;

    .line 105
    invoke-interface {v0, p0}, Lcom/google/inject/Binder;->install(Lcom/google/inject/Module;)V

    goto :goto_0

    .line 107
    :cond_0
    return-void
.end method
