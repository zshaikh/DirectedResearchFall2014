.class Lcom/google/inject/matcher/AbstractMatcher$AndMatcher;
.super Lcom/google/inject/matcher/AbstractMatcher;
.source "AbstractMatcher.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/inject/matcher/AbstractMatcher",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/inject/matcher/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/matcher/Matcher",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/inject/matcher/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/matcher/Matcher",
            "<-TT;>;"
        }
    .end annotation
.end field


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 49
    instance-of v1, p1, Lcom/google/inject/matcher/AbstractMatcher$AndMatcher;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/inject/matcher/AbstractMatcher$AndMatcher;

    move-object v1, v0

    iget-object v1, v1, Lcom/google/inject/matcher/AbstractMatcher$AndMatcher;->a:Lcom/google/inject/matcher/Matcher;

    iget-object v2, p0, Lcom/google/inject/matcher/AbstractMatcher$AndMatcher;->a:Lcom/google/inject/matcher/Matcher;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/inject/matcher/AbstractMatcher$AndMatcher;

    iget-object v1, p1, Lcom/google/inject/matcher/AbstractMatcher$AndMatcher;->b:Lcom/google/inject/matcher/Matcher;

    iget-object v2, p0, Lcom/google/inject/matcher/AbstractMatcher$AndMatcher;->b:Lcom/google/inject/matcher/Matcher;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/inject/matcher/AbstractMatcher$AndMatcher;->a:Lcom/google/inject/matcher/Matcher;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/inject/matcher/AbstractMatcher$AndMatcher;->b:Lcom/google/inject/matcher/Matcher;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x29

    return v0
.end method

.method public matches(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/inject/matcher/AbstractMatcher$AndMatcher;->a:Lcom/google/inject/matcher/Matcher;

    invoke-interface {v0, p1}, Lcom/google/inject/matcher/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/inject/matcher/AbstractMatcher$AndMatcher;->b:Lcom/google/inject/matcher/Matcher;

    invoke-interface {v0, p1}, Lcom/google/inject/matcher/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "and("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/inject/matcher/AbstractMatcher$AndMatcher;->a:Lcom/google/inject/matcher/Matcher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/inject/matcher/AbstractMatcher$AndMatcher;->b:Lcom/google/inject/matcher/Matcher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
