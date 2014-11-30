.class Lcom/google/inject/ConstantFactory;
.super Ljava/lang/Object;
.source "ConstantFactory.java"

# interfaces
.implements Lcom/google/inject/internal/InternalFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/inject/internal/InternalFactory",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final initializable:Lcom/google/inject/Initializable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Initializable",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/inject/Initializable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Initializable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/inject/ConstantFactory;->initializable:Lcom/google/inject/Initializable;

    .line 35
    return-void
.end method


# virtual methods
.method public get(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/spi/Dependency;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/Errors;",
            "Lcom/google/inject/internal/InternalContext;",
            "Lcom/google/inject/spi/Dependency;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/inject/ConstantFactory;->initializable:Lcom/google/inject/Initializable;

    invoke-interface {v0, p1}, Lcom/google/inject/Initializable;->get(Lcom/google/inject/internal/Errors;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 43
    new-instance v0, Lcom/google/inject/internal/ToStringBuilder;

    const-class v1, Lcom/google/inject/ConstantFactory;

    invoke-direct {v0, v1}, Lcom/google/inject/internal/ToStringBuilder;-><init>(Ljava/lang/Class;)V

    const-string v1, "value"

    iget-object v2, p0, Lcom/google/inject/ConstantFactory;->initializable:Lcom/google/inject/Initializable;

    invoke-virtual {v0, v1, v2}, Lcom/google/inject/internal/ToStringBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/inject/internal/ToStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
