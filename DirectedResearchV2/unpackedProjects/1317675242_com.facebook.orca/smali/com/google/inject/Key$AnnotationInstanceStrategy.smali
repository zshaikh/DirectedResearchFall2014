.class Lcom/google/inject/Key$AnnotationInstanceStrategy;
.super Ljava/lang/Object;
.source "Key.java"

# interfaces
.implements Lcom/google/inject/Key$AnnotationStrategy;


# instance fields
.field final annotation:Ljava/lang/annotation/Annotation;


# direct methods
.method constructor <init>(Ljava/lang/annotation/Annotation;)V
    .locals 1

    .prologue
    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    const-string v0, "annotation"

    invoke-static {p1, v0}, Lcom/google/inject/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/annotation/Annotation;

    iput-object v0, p0, Lcom/google/inject/Key$AnnotationInstanceStrategy;->annotation:Ljava/lang/annotation/Annotation;

    .line 403
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 422
    instance-of v0, p1, Lcom/google/inject/Key$AnnotationInstanceStrategy;

    if-nez v0, :cond_0

    .line 423
    const/4 v0, 0x0

    .line 427
    :goto_0
    return v0

    .line 426
    :cond_0
    check-cast p1, Lcom/google/inject/Key$AnnotationInstanceStrategy;

    .line 427
    iget-object v0, p0, Lcom/google/inject/Key$AnnotationInstanceStrategy;->annotation:Ljava/lang/annotation/Annotation;

    iget-object v1, p1, Lcom/google/inject/Key$AnnotationInstanceStrategy;->annotation:Ljava/lang/annotation/Annotation;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAnnotation()Ljava/lang/annotation/Annotation;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/google/inject/Key$AnnotationInstanceStrategy;->annotation:Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method public getAnnotationType()Ljava/lang/Class;
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
    .line 418
    iget-object v0, p0, Lcom/google/inject/Key$AnnotationInstanceStrategy;->annotation:Ljava/lang/annotation/Annotation;

    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public hasAttributes()Z
    .locals 1

    .prologue
    .line 406
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/google/inject/Key$AnnotationInstanceStrategy;->annotation:Ljava/lang/annotation/Annotation;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/google/inject/Key$AnnotationInstanceStrategy;->annotation:Ljava/lang/annotation/Annotation;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withoutAttributes()Lcom/google/inject/Key$AnnotationStrategy;
    .locals 3

    .prologue
    .line 410
    new-instance v0, Lcom/google/inject/Key$AnnotationTypeStrategy;

    invoke-virtual {p0}, Lcom/google/inject/Key$AnnotationInstanceStrategy;->getAnnotationType()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/google/inject/Key$AnnotationInstanceStrategy;->annotation:Ljava/lang/annotation/Annotation;

    invoke-direct {v0, v1, v2}, Lcom/google/inject/Key$AnnotationTypeStrategy;-><init>(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)V

    return-object v0
.end method
