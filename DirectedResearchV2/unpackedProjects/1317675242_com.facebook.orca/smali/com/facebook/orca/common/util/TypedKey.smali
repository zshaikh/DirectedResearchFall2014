.class public abstract Lcom/facebook/orca/common/util/TypedKey;
.super Ljava/lang/Object;
.source "TypedKey.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/facebook/orca/common/util/TypedKey;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/facebook/orca/common/util/TypedKey;->a:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/facebook/orca/common/util/TypedKey;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/facebook/orca/common/util/TypedKey;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/facebook/orca/common/util/TypedKey;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/facebook/orca/common/util/TypedKey;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected abstract b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public b(Lcom/facebook/orca/common/util/TypedKey;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/facebook/orca/common/util/TypedKey;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/facebook/orca/common/util/TypedKey;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 36
    iget-object v0, p0, Lcom/facebook/orca/common/util/TypedKey;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/facebook/orca/common/util/TypedKey;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/facebook/orca/common/util/TypedKey;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/facebook/orca/common/util/TypedKey;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/facebook/orca/common/util/TypedKey;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/facebook/orca/common/util/TypedKey;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/util/TypedKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 12
    check-cast p1, Lcom/facebook/orca/common/util/TypedKey;

    invoke-virtual {p0, p1}, Lcom/facebook/orca/common/util/TypedKey;->c(Lcom/facebook/orca/common/util/TypedKey;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    if-ne p0, p1, :cond_0

    move v0, v3

    .line 48
    :goto_0
    return v0

    .line 42
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    .line 44
    :cond_2
    check-cast p1, Lcom/facebook/orca/common/util/TypedKey;

    .line 46
    iget-object v0, p0, Lcom/facebook/orca/common/util/TypedKey;->a:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/orca/common/util/TypedKey;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/facebook/orca/common/util/TypedKey;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    iget-object v0, p1, Lcom/facebook/orca/common/util/TypedKey;->a:Ljava/lang/String;

    if-nez v0, :cond_3

    :cond_5
    move v0, v3

    .line 48
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/facebook/orca/common/util/TypedKey;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/common/util/TypedKey;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/orca/common/util/TypedKey;->a:Ljava/lang/String;

    return-object v0
.end method