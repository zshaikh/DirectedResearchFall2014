.class final Lcom/google/inject/internal/Scoping$1;
.super Lcom/google/inject/internal/Scoping;
.source "Scoping.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 39
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
    .line 41
    invoke-interface {p1}, Lcom/google/inject/spi/BindingScopingVisitor;->visitNoScoping()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public applyTo(Lcom/google/inject/binder/ScopedBindingBuilder;)V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public getScopeInstance()Lcom/google/inject/Scope;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/google/inject/Scopes;->NO_SCOPE:Lcom/google/inject/Scope;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/google/inject/Scopes;->NO_SCOPE:Lcom/google/inject/Scope;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
