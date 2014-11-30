.class Lcom/google/inject/matcher/Matchers$AnnotatedWith;
.super Lcom/google/inject/matcher/AbstractMatcher;
.source "Matchers.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/inject/matcher/AbstractMatcher",
        "<",
        "Ljava/lang/reflect/AnnotatedElement;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final annotation:Ljava/lang/annotation/Annotation;


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 164
    instance-of v0, p1, Lcom/google/inject/matcher/Matchers$AnnotatedWith;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/inject/matcher/Matchers$AnnotatedWith;

    iget-object v0, p1, Lcom/google/inject/matcher/Matchers$AnnotatedWith;->annotation:Ljava/lang/annotation/Annotation;

    iget-object v1, p0, Lcom/google/inject/matcher/Matchers$AnnotatedWith;->annotation:Ljava/lang/annotation/Annotation;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/inject/matcher/Matchers$AnnotatedWith;->annotation:Ljava/lang/annotation/Annotation;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    return v0
.end method

.method public bridge synthetic matches(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 149
    check-cast p1, Ljava/lang/reflect/AnnotatedElement;

    invoke-virtual {p0, p1}, Lcom/google/inject/matcher/Matchers$AnnotatedWith;->matches(Ljava/lang/reflect/AnnotatedElement;)Z

    move-result v0

    return v0
.end method

.method public matches(Ljava/lang/reflect/AnnotatedElement;)Z
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/inject/matcher/Matchers$AnnotatedWith;->annotation:Ljava/lang/annotation/Annotation;

    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/reflect/AnnotatedElement;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/inject/matcher/Matchers$AnnotatedWith;->annotation:Ljava/lang/annotation/Annotation;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "annotatedWith("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/inject/matcher/Matchers$AnnotatedWith;->annotation:Ljava/lang/annotation/Annotation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
