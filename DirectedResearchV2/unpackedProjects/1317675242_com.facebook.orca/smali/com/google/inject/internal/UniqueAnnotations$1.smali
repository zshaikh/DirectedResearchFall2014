.class final Lcom/google/inject/internal/UniqueAnnotations$1;
.super Ljava/lang/Object;
.source "UniqueAnnotations.java"

# interfaces
.implements Lcom/google/inject/internal/UniqueAnnotations$Internal;


# instance fields
.field final synthetic val$value:I


# virtual methods
.method public annotationType()Ljava/lang/Class;
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
    .line 48
    const-class v0, Lcom/google/inject/internal/UniqueAnnotations$Internal;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 56
    instance-of v0, p1, Lcom/google/inject/internal/UniqueAnnotations$Internal;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/inject/internal/UniqueAnnotations$Internal;

    invoke-interface {p1}, Lcom/google/inject/internal/UniqueAnnotations$Internal;->value()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/inject/internal/UniqueAnnotations$1;->value()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 61
    const-string v0, "value"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7f

    iget v1, p0, Lcom/google/inject/internal/UniqueAnnotations$1;->val$value:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/google/inject/internal/UniqueAnnotations$Internal;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/inject/internal/UniqueAnnotations$1;->val$value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/google/inject/internal/UniqueAnnotations$1;->val$value:I

    return v0
.end method
