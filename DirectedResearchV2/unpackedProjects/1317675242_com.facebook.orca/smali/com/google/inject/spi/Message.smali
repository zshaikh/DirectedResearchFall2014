.class public final Lcom/google/inject/spi/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Lcom/google/inject/spi/Element;
.implements Ljava/io/Serializable;


# instance fields
.field private final cause:Ljava/lang/Throwable;

.field private final message:Ljava/lang/String;

.field private final sources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 57
    invoke-static {p1}, Lcom/google/inject/internal/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/inject/internal/ImmutableList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/google/inject/spi/Message;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 61
    invoke-static {}, Lcom/google/inject/internal/ImmutableList;->of()Lcom/google/inject/internal/ImmutableList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/inject/spi/Message;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {p1}, Lcom/google/inject/internal/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/inject/internal/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/spi/Message;->sources:Ljava/util/List;

    .line 52
    const-string v0, "message"

    invoke-static {p2, v0}, Lcom/google/inject/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/inject/spi/Message;->message:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/google/inject/spi/Message;->cause:Ljava/lang/Throwable;

    .line 54
    return-void
.end method


# virtual methods
.method public acceptVisitor(Lcom/google/inject/spi/ElementVisitor;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/spi/ElementVisitor",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 84
    invoke-interface {p1, p0}, Lcom/google/inject/spi/ElementVisitor;->visit(Lcom/google/inject/spi/Message;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public applyTo(Lcom/google/inject/Binder;)V
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/google/inject/spi/Message;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/inject/Binder;->withSource(Ljava/lang/Object;)Lcom/google/inject/Binder;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/inject/Binder;->addError(Lcom/google/inject/spi/Message;)V

    .line 116
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 106
    instance-of v0, p1, Lcom/google/inject/spi/Message;

    if-nez v0, :cond_0

    move v0, v2

    .line 110
    :goto_0
    return v0

    .line 109
    :cond_0
    check-cast p1, Lcom/google/inject/spi/Message;

    .line 110
    iget-object v0, p0, Lcom/google/inject/spi/Message;->message:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/inject/spi/Message;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/inject/spi/Message;->cause:Ljava/lang/Throwable;

    iget-object v1, p1, Lcom/google/inject/spi/Message;->cause:Ljava/lang/Throwable;

    invoke-static {v0, v1}, Lcom/google/inject/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/inject/spi/Message;->sources:Ljava/util/List;

    iget-object v1, p1, Lcom/google/inject/spi/Message;->sources:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/inject/spi/Message;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/inject/spi/Message;->message:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getSource()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/inject/spi/Message;->getSource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/inject/spi/Message;->sources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/inject/internal/SourceProvider;->UNKNOWN_SOURCE:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/inject/spi/Message;->sources:Ljava/util/List;

    iget-object v1, p0, Lcom/google/inject/spi/Message;->sources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/internal/Errors;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/inject/spi/Message;->sources:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/inject/spi/Message;->message:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/inject/spi/Message;->message:Ljava/lang/String;

    return-object v0
.end method
