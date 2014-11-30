.class public final Lorg/codehaus/jackson/map/introspect/AnnotationMap;
.super Ljava/lang/Object;
.source "AnnotationMap.java"

# interfaces
.implements Lorg/codehaus/jackson/map/util/Annotations;


# instance fields
.field protected a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 26
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/annotation/Annotation;

    move-object v0, p0

    goto :goto_0
.end method

.method public a(Ljava/lang/annotation/Annotation;)V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->a:Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 40
    :cond_0
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->c(Ljava/lang/annotation/Annotation;)V

    .line 42
    :cond_1
    return-void
.end method

.method public b(Ljava/lang/annotation/Annotation;)V
    .locals 0

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->c(Ljava/lang/annotation/Annotation;)V

    .line 49
    return-void
.end method

.method protected final c(Ljava/lang/annotation/Annotation;)V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->a:Ljava/util/HashMap;

    .line 71
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->a:Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 55
    const-string v0, "[null]"

    .line 57
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
