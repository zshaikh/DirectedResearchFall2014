.class final Lcom/google/inject/internal/Scoping$6;
.super Lcom/google/inject/internal/Scoping;
.source "Scoping.java"


# instance fields
.field final synthetic val$scope:Lcom/google/inject/Scope;


# direct methods
.method constructor <init>(Lcom/google/inject/Scope;)V
    .locals 1

    .prologue
    .line 140
    iput-object p1, p0, Lcom/google/inject/internal/Scoping$6;->val$scope:Lcom/google/inject/Scope;

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
    .line 142
    iget-object v0, p0, Lcom/google/inject/internal/Scoping$6;->val$scope:Lcom/google/inject/Scope;

    invoke-interface {p1, v0}, Lcom/google/inject/spi/BindingScopingVisitor;->visitScope(Lcom/google/inject/Scope;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public applyTo(Lcom/google/inject/binder/ScopedBindingBuilder;)V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/inject/internal/Scoping$6;->val$scope:Lcom/google/inject/Scope;

    invoke-interface {p1, v0}, Lcom/google/inject/binder/ScopedBindingBuilder;->in(Lcom/google/inject/Scope;)V

    .line 155
    return-void
.end method

.method public getScopeInstance()Lcom/google/inject/Scope;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/inject/internal/Scoping$6;->val$scope:Lcom/google/inject/Scope;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/inject/internal/Scoping$6;->val$scope:Lcom/google/inject/Scope;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
