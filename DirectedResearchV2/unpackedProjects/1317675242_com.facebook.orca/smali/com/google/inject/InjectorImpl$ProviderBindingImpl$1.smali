.class final Lcom/google/inject/InjectorImpl$ProviderBindingImpl$1;
.super Ljava/lang/Object;
.source "InjectorImpl.java"

# interfaces
.implements Lcom/google/inject/internal/InternalFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/inject/internal/InternalFactory",
        "<",
        "Lcom/google/inject/Provider",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$provider:Lcom/google/inject/Provider;


# direct methods
.method constructor <init>(Lcom/google/inject/Provider;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/google/inject/InjectorImpl$ProviderBindingImpl$1;->val$provider:Lcom/google/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/spi/Dependency;)Lcom/google/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/Errors;",
            "Lcom/google/inject/internal/InternalContext;",
            "Lcom/google/inject/spi/Dependency;",
            ")",
            "Lcom/google/inject/Provider",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/inject/InjectorImpl$ProviderBindingImpl$1;->val$provider:Lcom/google/inject/Provider;

    return-object v0
.end method

.method public bridge synthetic get(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/spi/Dependency;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/inject/InjectorImpl$ProviderBindingImpl$1;->get(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/spi/Dependency;)Lcom/google/inject/Provider;

    move-result-object v0

    return-object v0
.end method
