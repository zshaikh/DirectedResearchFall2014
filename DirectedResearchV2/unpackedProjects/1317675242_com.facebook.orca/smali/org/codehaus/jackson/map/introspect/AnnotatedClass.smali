.class public final Lorg/codehaus/jackson/map/introspect/AnnotatedClass;
.super Lorg/codehaus/jackson/map/introspect/Annotated;
.source "AnnotatedClass.java"


# static fields
.field private static final n:[Lorg/codehaus/jackson/map/introspect/AnnotationMap;


# instance fields
.field protected final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected final b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field protected final c:Lorg/codehaus/jackson/map/AnnotationIntrospector;

.field protected final d:Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;

.field protected final e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected f:Lorg/codehaus/jackson/map/introspect/AnnotationMap;

.field protected g:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

.field protected h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;",
            ">;"
        }
    .end annotation
.end field

.field protected i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation
.end field

.field protected j:Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;

.field protected k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedField;",
            ">;"
        }
    .end annotation
.end field

.field protected l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation
.end field

.field protected m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedField;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    sput-object v0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->n:[Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Ljava/util/List;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;",
            "Lorg/codehaus/jackson/map/AnnotationIntrospector;",
            "Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;",
            ")V"
        }
    .end annotation

    .prologue
    .line 122
    invoke-direct {p0}, Lorg/codehaus/jackson/map/introspect/Annotated;-><init>()V

    .line 123
    iput-object p1, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a:Ljava/lang/Class;

    .line 124
    iput-object p2, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->b:Ljava/util/Collection;

    .line 125
    iput-object p3, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->c:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    .line 126
    iput-object p4, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->d:Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;

    .line 127
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->d:Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->e:Ljava/lang/Class;

    .line 129
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->d:Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;->b(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Class;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/introspect/AnnotatedClass;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/AnnotationIntrospector;",
            "Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;",
            ")",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedClass;"
        }
    .end annotation

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/codehaus/jackson/map/util/ClassUtil;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 140
    new-instance v1, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-direct {v1, p0, v0, p1, p2}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;-><init>(Ljava/lang/Class;Ljava/util/List;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)V

    .line 141
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->l()V

    .line 142
    return-object v1
.end method

.method private a(I)[Lorg/codehaus/jackson/map/introspect/AnnotationMap;
    .locals 3

    .prologue
    .line 838
    if-nez p1, :cond_1

    .line 839
    sget-object v0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->n:[Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    .line 845
    :cond_0
    return-object v0

    .line 841
    :cond_1
    new-array v0, p1, [Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    .line 842
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 843
    invoke-direct {p0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->m()Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v2

    aput-object v2, v0, v1

    .line 842
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static b(Ljava/lang/Class;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/introspect/AnnotatedClass;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/AnnotationIntrospector;",
            "Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;",
            ")",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedClass;"
        }
    .end annotation

    .prologue
    .line 153
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 154
    new-instance v1, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-direct {v1, p0, v0, p1, p2}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;-><init>(Ljava/lang/Class;Ljava/util/List;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)V

    .line 155
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->l()V

    .line 156
    return-object v1
.end method

.method private b(Ljava/lang/reflect/Field;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 874
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 882
    :goto_0
    return v0

    .line 878
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    .line 879
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    .line 880
    goto :goto_0

    .line 882
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private m()Lorg/codehaus/jackson/map/introspect/AnnotationMap;
    .locals 1

    .prologue
    .line 834
    new-instance v0, Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/introspect/AnnotationMap;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

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
    .line 177
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->f:Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    if-nez v0, :cond_0

    .line 178
    const/4 v0, 0x0

    .line 180
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->f:Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/reflect/Constructor;Z)Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;Z)",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;"
        }
    .end annotation

    .prologue
    .line 786
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->c:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    if-nez v0, :cond_0

    .line 787
    new-instance v0, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    invoke-direct {p0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->m()Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    invoke-direct {p0, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a(I)[Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;-><init>(Ljava/lang/reflect/Constructor;Lorg/codehaus/jackson/map/introspect/AnnotationMap;[Lorg/codehaus/jackson/map/introspect/AnnotationMap;)V

    .line 789
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a([Ljava/lang/annotation/Annotation;)Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v1

    if-eqz p2, :cond_1

    const/4 v2, 0x0

    :goto_1
    invoke-direct {v0, p1, v1, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;-><init>(Ljava/lang/reflect/Constructor;Lorg/codehaus/jackson/map/introspect/AnnotationMap;[Lorg/codehaus/jackson/map/introspect/AnnotationMap;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a([[Ljava/lang/annotation/Annotation;)[Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v2

    goto :goto_1
.end method

.method protected a(Ljava/lang/reflect/Field;)Lorg/codehaus/jackson/map/introspect/AnnotatedField;
    .locals 2

    .prologue
    .line 804
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->c:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    if-nez v0, :cond_0

    .line 805
    new-instance v0, Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    invoke-direct {p0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->m()Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;-><init>(Ljava/lang/reflect/Field;Lorg/codehaus/jackson/map/introspect/AnnotationMap;)V

    .line 807
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a([Ljava/lang/annotation/Annotation;)Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;-><init>(Ljava/lang/reflect/Field;Lorg/codehaus/jackson/map/introspect/AnnotationMap;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;[Ljava/lang/Class;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;"
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->j:Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;->a(Ljava/lang/String;[Ljava/lang/Class;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/reflect/Method;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 778
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->c:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    if-nez v0, :cond_0

    .line 779
    new-instance v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-direct {p0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->m()Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v1

    invoke-direct {v0, p1, v1, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;-><init>(Ljava/lang/reflect/Method;Lorg/codehaus/jackson/map/introspect/AnnotationMap;[Lorg/codehaus/jackson/map/introspect/AnnotationMap;)V

    .line 781
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a([Ljava/lang/annotation/Annotation;)Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v1

    invoke-direct {v0, p1, v1, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;-><init>(Ljava/lang/reflect/Method;Lorg/codehaus/jackson/map/introspect/AnnotationMap;[Lorg/codehaus/jackson/map/introspect/AnnotationMap;)V

    goto :goto_0
.end method

.method protected a([Ljava/lang/annotation/Annotation;)Lorg/codehaus/jackson/map/introspect/AnnotationMap;
    .locals 5

    .prologue
    .line 822
    new-instance v0, Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/introspect/AnnotationMap;-><init>()V

    .line 823
    if-eqz p1, :cond_1

    .line 824
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 825
    iget-object v4, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->c:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v4, v3}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Ljava/lang/annotation/Annotation;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 826
    invoke-virtual {v0, v3}, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->b(Ljava/lang/annotation/Annotation;)V

    .line 824
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 830
    :cond_1
    return-object v0
.end method

.method protected a(Ljava/lang/Class;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedField;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 746
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    move v3, v9

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 750
    invoke-direct {p0, v4}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->b(Ljava/lang/reflect/Field;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 746
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 753
    :cond_1
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    .line 755
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    .line 756
    if-eqz v0, :cond_0

    .line 757
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v4

    array-length v5, v4

    move v6, v9

    :goto_1
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    .line 758
    iget-object v8, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->c:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v8, v7}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Ljava/lang/annotation/Annotation;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 759
    invoke-virtual {v0, v7}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->a(Ljava/lang/annotation/Annotation;)V

    .line 757
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 764
    :cond_3
    return-void
.end method

.method protected a(Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/MethodFilter;Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/introspect/MethodFilter;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 597
    if-eqz p4, :cond_0

    .line 598
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a(Lorg/codehaus/jackson/map/introspect/MethodFilter;Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;)V

    .line 601
    :cond_0
    if-nez p1, :cond_2

    .line 636
    :cond_1
    return-void

    .line 605
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    move v2, v6

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 606
    invoke-virtual {p0, v3, p2}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a(Ljava/lang/reflect/Method;Lorg/codehaus/jackson/map/introspect/MethodFilter;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 605
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 609
    :cond_4
    invoke-virtual {p3, v3}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;->b(Ljava/lang/reflect/Method;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v4

    .line 610
    if-nez v4, :cond_5

    .line 611
    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a(Ljava/lang/reflect/Method;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v4

    .line 612
    invoke-virtual {p3, v4}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V

    .line 614
    invoke-virtual {p5, v3}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;->a(Ljava/lang/reflect/Method;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v3

    .line 615
    if-eqz v3, :cond_3

    .line 616
    invoke-virtual {v3}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->f()Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {p0, v3, v4, v6}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a(Ljava/lang/reflect/Method;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Z)V

    goto :goto_1

    .line 622
    :cond_5
    invoke-virtual {p0, v3, v4}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a(Ljava/lang/reflect/Method;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V

    .line 631
    invoke-virtual {v4}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->d()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isInterface()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isInterface()Z

    move-result v5

    if-nez v5, :cond_3

    .line 632
    invoke-virtual {v4, v3}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->a(Ljava/lang/reflect/Method;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v3

    invoke-virtual {p3, v3}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V

    goto :goto_1
.end method

.method protected a(Ljava/lang/reflect/Constructor;Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;",
            "Z)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 898
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    array-length v1, v0

    move v2, v7

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 899
    iget-object v4, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->c:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v4, v3}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Ljava/lang/annotation/Annotation;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 900
    invoke-virtual {p2, v3}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->a(Ljava/lang/annotation/Annotation;)V

    .line 898
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 903
    :cond_1
    if-eqz p3, :cond_3

    .line 904
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 905
    array-length v1, v0

    move v2, v7

    :goto_1
    if-ge v2, v1, :cond_3

    .line 906
    aget-object v3, v0, v2

    array-length v4, v3

    move v5, v7

    :goto_2
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 907
    invoke-virtual {p2, v2, v6}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->a(ILjava/lang/annotation/Annotation;)V

    .line 906
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 905
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 911
    :cond_3
    return-void
.end method

.method protected a(Ljava/lang/reflect/Method;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V
    .locals 5

    .prologue
    .line 941
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 942
    iget-object v4, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->c:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v4, v3}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Ljava/lang/annotation/Annotation;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 943
    invoke-virtual {p2, v3}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->b(Ljava/lang/annotation/Annotation;)V

    .line 941
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 946
    :cond_1
    return-void
.end method

.method protected a(Ljava/lang/reflect/Method;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Z)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 920
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    array-length v1, v0

    move v2, v7

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 921
    iget-object v4, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->c:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v4, v3}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Ljava/lang/annotation/Annotation;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 922
    invoke-virtual {p2, v3}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->a(Ljava/lang/annotation/Annotation;)V

    .line 920
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 925
    :cond_1
    if-eqz p3, :cond_3

    .line 926
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 927
    array-length v1, v0

    move v2, v7

    :goto_1
    if-ge v2, v1, :cond_3

    .line 928
    aget-object v3, v0, v2

    array-length v4, v3

    move v5, v7

    :goto_2
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 929
    invoke-virtual {p2, v2, v6}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->a(ILjava/lang/annotation/Annotation;)V

    .line 928
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 927
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 933
    :cond_3
    return-void
.end method

.method protected a(Ljava/util/Map;Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedField;",
            ">;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 710
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 711
    if-eqz v0, :cond_2

    .line 716
    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a(Ljava/util/Map;Ljava/lang/Class;)V

    .line 717
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 719
    invoke-direct {p0, v3}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->b(Ljava/lang/reflect/Field;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 717
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 727
    :cond_0
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a(Ljava/lang/reflect/Field;)Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    move-result-object v3

    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 730
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->d:Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;

    if-eqz v0, :cond_2

    .line 731
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->d:Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;

    invoke-interface {v0, p2}, Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;->b(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 732
    if-eqz v0, :cond_2

    .line 733
    invoke-virtual {p0, v0, p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 737
    :cond_2
    return-void
.end method

.method protected a(Lorg/codehaus/jackson/map/introspect/AnnotationMap;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/AnnotationMap;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 328
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->d:Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->d:Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;

    invoke-interface {v0, p2}, Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;->b(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a(Lorg/codehaus/jackson/map/introspect/AnnotationMap;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 331
    :cond_0
    return-void
.end method

.method protected a(Lorg/codehaus/jackson/map/introspect/AnnotationMap;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/AnnotationMap;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 336
    if-nez p3, :cond_1

    .line 359
    :cond_0
    return-void

    .line 340
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    array-length v1, v0

    move v2, v6

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 341
    iget-object v4, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->c:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v4, v3}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Ljava/lang/annotation/Annotation;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 342
    invoke-virtual {p1, v3}, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->a(Ljava/lang/annotation/Annotation;)V

    .line 340
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 352
    :cond_3
    invoke-static {p3, p2}, Lorg/codehaus/jackson/map/util/ClassUtil;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 353
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    array-length v2, v0

    move v3, v6

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    .line 354
    iget-object v5, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->c:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v5, v4}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Ljava/lang/annotation/Annotation;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 355
    invoke-virtual {p1, v4}, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->a(Ljava/lang/annotation/Annotation;)V

    .line 353
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method protected a(Lorg/codehaus/jackson/map/introspect/MethodFilter;Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/MethodFilter;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 641
    invoke-virtual {p3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 642
    invoke-virtual {p0, v3, p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a(Ljava/lang/reflect/Method;Lorg/codehaus/jackson/map/introspect/MethodFilter;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 641
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 645
    :cond_0
    invoke-virtual {p2, v3}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;->b(Ljava/lang/reflect/Method;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v4

    .line 650
    if-eqz v4, :cond_1

    .line 651
    invoke-virtual {p0, v3, v4}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a(Ljava/lang/reflect/Method;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V

    goto :goto_1

    .line 657
    :cond_1
    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a(Ljava/lang/reflect/Method;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v3

    invoke-virtual {p4, v3}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V

    goto :goto_1

    .line 660
    :cond_2
    return-void
.end method

.method public a(Lorg/codehaus/jackson/map/introspect/MethodFilter;Z)V
    .locals 7

    .prologue
    .line 535
    new-instance v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->j:Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;

    .line 536
    new-instance v5, Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;

    invoke-direct {v5}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;-><init>()V

    .line 538
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a:Ljava/lang/Class;

    iget-object v3, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->j:Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;

    iget-object v4, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->e:Ljava/lang/Class;

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a(Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/MethodFilter;Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;)V

    .line 541
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 542
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->d:Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move-object v4, v0

    .line 543
    :goto_1
    iget-object v3, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->j:Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a(Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/MethodFilter;Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;)V

    goto :goto_0

    .line 542
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->d:Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;

    invoke-interface {v0, v1}, Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;->b(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    move-object v4, v0

    goto :goto_1

    .line 546
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->d:Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;

    if-eqz v0, :cond_2

    .line 547
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->d:Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;

    const-class v1, Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;->b(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 548
    if-eqz v0, :cond_2

    .line 549
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->j:Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;

    invoke-virtual {p0, p1, v1, v0, v5}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a(Lorg/codehaus/jackson/map/introspect/MethodFilter;Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;)V

    .line 559
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->c:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    if-eqz v0, :cond_6

    .line 560
    invoke-virtual {v5}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 561
    invoke-virtual {v5}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 562
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 563
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 565
    :try_start_0
    const-class v2, Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->i()[Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 566
    if-eqz v2, :cond_3

    .line 567
    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a(Ljava/lang/reflect/Method;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v2

    .line 568
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->f()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a(Ljava/lang/reflect/Method;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Z)V

    .line 569
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->j:Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 571
    :catch_0
    move-exception v0

    goto :goto_2

    .line 579
    :cond_4
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->j:Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 580
    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 581
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 582
    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->c:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 583
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 584
    if-eqz p2, :cond_5

    .line 585
    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->l:Ljava/util/List;

    invoke-static {v2, v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders;->a(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->l:Ljava/util/List;

    goto :goto_3

    .line 590
    :cond_6
    return-void
.end method

.method public a(Z)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 380
    iput-object v6, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->h:Ljava/util/List;

    .line 381
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    array-length v1, v0

    move v2, v5

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 382
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    packed-switch v4, :pswitch_data_0

    .line 387
    if-eqz p1, :cond_1

    .line 388
    iget-object v4, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->h:Ljava/util/List;

    if-nez v4, :cond_0

    .line 389
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->h:Ljava/util/List;

    .line 391
    :cond_0
    iget-object v4, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->h:Ljava/util/List;

    invoke-virtual {p0, v3, v5}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a(Ljava/lang/reflect/Constructor;Z)Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 384
    :pswitch_0
    invoke-virtual {p0, v3, v7}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a(Ljava/lang/reflect/Constructor;Z)Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    move-result-object v3

    iput-object v3, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->g:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    goto :goto_1

    .line 396
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->e:Ljava/lang/Class;

    if-eqz v0, :cond_4

    .line 397
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->g:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->h:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 398
    :cond_3
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->e:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->c(Ljava/lang/Class;)V

    .line 407
    :cond_4
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->c:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    if-eqz v0, :cond_6

    .line 408
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->g:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    if-eqz v0, :cond_5

    .line 409
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->c:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->g:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 410
    iput-object v6, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->g:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    .line 413
    :cond_5
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->h:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 415
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_6

    .line 416
    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->c:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 417
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v1

    goto :goto_2

    .line 423
    :cond_6
    iput-object v6, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->i:Ljava/util/List;

    .line 425
    if-eqz p1, :cond_c

    .line 429
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    move v2, v5

    :goto_3
    if-ge v2, v1, :cond_a

    aget-object v3, v0, v2

    .line 430
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_8

    .line 429
    :cond_7
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 433
    :cond_8
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    .line 435
    if-lt v4, v7, :cond_7

    .line 438
    iget-object v4, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->i:Ljava/util/List;

    if-nez v4, :cond_9

    .line 439
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->i:Ljava/util/List;

    .line 441
    :cond_9
    iget-object v4, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->i:Ljava/util/List;

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->b(Ljava/lang/reflect/Method;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 444
    :cond_a
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->e:Ljava/lang/Class;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->i:Ljava/util/List;

    if-eqz v0, :cond_b

    .line 445
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->e:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->d(Ljava/lang/Class;)V

    .line 448
    :cond_b
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->c:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    if-eqz v0, :cond_c

    .line 449
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->i:Ljava/util/List;

    if-eqz v0, :cond_c

    .line 451
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_5
    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_c

    .line 452
    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->c:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 453
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v1

    goto :goto_5

    .line 459
    :cond_c
    return-void

    :cond_d
    move v0, v1

    goto :goto_5

    :cond_e
    move v0, v1

    goto/16 :goto_2

    .line 382
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected a(Ljava/lang/reflect/Method;Lorg/codehaus/jackson/map/introspect/MethodFilter;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 856
    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lorg/codehaus/jackson/map/introspect/MethodFilter;->a(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 866
    :goto_0
    return v0

    .line 863
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->isSynthetic()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->isBridge()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    .line 864
    goto :goto_0

    .line 866
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected a([[Ljava/lang/annotation/Annotation;)[Lorg/codehaus/jackson/map/introspect/AnnotationMap;
    .locals 4

    .prologue
    .line 812
    array-length v0, p1

    .line 813
    new-array v1, v0, [Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    .line 814
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 815
    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a([Ljava/lang/annotation/Annotation;)Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v3

    aput-object v3, v1, v2

    .line 814
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 817
    :cond_0
    return-object v1
.end method

.method public b()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a:Ljava/lang/Class;

    return-object v0
.end method

.method protected b(Ljava/lang/reflect/Method;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 3

    .prologue
    .line 795
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->c:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    if-nez v0, :cond_0

    .line 796
    new-instance v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-direct {p0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->m()Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    invoke-direct {p0, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a(I)[Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;-><init>(Ljava/lang/reflect/Method;Lorg/codehaus/jackson/map/introspect/AnnotationMap;[Lorg/codehaus/jackson/map/introspect/AnnotationMap;)V

    .line 798
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a([Ljava/lang/annotation/Annotation;)Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a([[Ljava/lang/annotation/Annotation;)[Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;-><init>(Ljava/lang/reflect/Method;Lorg/codehaus/jackson/map/introspect/AnnotationMap;[Lorg/codehaus/jackson/map/introspect/AnnotationMap;)V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 4

    .prologue
    .line 677
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 678
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a:Ljava/lang/Class;

    invoke-virtual {p0, v1, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a(Ljava/util/Map;Ljava/lang/Class;)V

    .line 683
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->c:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    if-eqz v0, :cond_1

    .line 684
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 685
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 686
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    .line 687
    iget-object v3, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->c:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v3, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 688
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 689
    if-eqz p1, :cond_0

    .line 690
    iget-object v3, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->m:Ljava/util/List;

    invoke-static {v3, v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders;->a(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->m:Ljava/util/List;

    goto :goto_0

    .line 695
    :cond_1
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 696
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->k:Ljava/util/List;

    .line 701
    :goto_1
    return-void

    .line 698
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->k:Ljava/util/List;

    .line 699
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->k:Ljava/util/List;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a:Ljava/lang/Class;

    return-object v0
.end method

.method protected c(Ljava/lang/Class;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 463
    const/4 v0, 0x0

    .line 464
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->h:Ljava/util/List;

    if-nez v1, :cond_0

    move v1, v9

    .line 465
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    array-length v3, v2

    move v4, v9

    :goto_1
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    .line 466
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    packed-switch v6, :pswitch_data_0

    .line 473
    if-nez v0, :cond_2

    .line 474
    new-array v6, v1, [Lorg/codehaus/jackson/map/introspect/MemberKey;

    move v7, v9

    .line 475
    :goto_2
    if-ge v7, v1, :cond_3

    .line 476
    new-instance v8, Lorg/codehaus/jackson/map/introspect/MemberKey;

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->h:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->f()Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-direct {v8, v0}, Lorg/codehaus/jackson/map/introspect/MemberKey;-><init>(Ljava/lang/reflect/Constructor;)V

    aput-object v8, v6, v7

    .line 475
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_2

    .line 464
    :cond_0
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    .line 468
    :pswitch_0
    iget-object v6, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->g:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    if-eqz v6, :cond_1

    .line 469
    iget-object v6, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->g:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    invoke-virtual {p0, v5, v6, v9}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a(Ljava/lang/reflect/Constructor;Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;Z)V

    .line 465
    :cond_1
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move-object v6, v0

    .line 479
    :cond_3
    new-instance v0, Lorg/codehaus/jackson/map/introspect/MemberKey;

    invoke-direct {v0, v5}, Lorg/codehaus/jackson/map/introspect/MemberKey;-><init>(Ljava/lang/reflect/Constructor;)V

    move v7, v9

    .line 481
    :goto_4
    if-ge v7, v1, :cond_6

    .line 482
    aget-object v8, v6, v7

    invoke-virtual {v0, v8}, Lorg/codehaus/jackson/map/introspect/MemberKey;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 481
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 485
    :cond_4
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->h:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    const/4 v7, 0x1

    invoke-virtual {p0, v5, v0, v7}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a(Ljava/lang/reflect/Constructor;Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;Z)V

    move-object v0, v6

    .line 486
    goto :goto_3

    .line 490
    :cond_5
    return-void

    :cond_6
    move-object v0, v6

    goto :goto_3

    .line 466
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public d()Lorg/codehaus/jackson/map/util/Annotations;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->f:Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    return-object v0
.end method

.method protected d(Ljava/lang/Class;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 494
    const/4 v0, 0x0

    .line 495
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 497
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    move v4, v9

    :goto_0
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    .line 498
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 497
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 501
    :cond_1
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    if-eqz v6, :cond_0

    .line 504
    if-nez v0, :cond_2

    .line 505
    new-array v6, v1, [Lorg/codehaus/jackson/map/introspect/MemberKey;

    move v7, v9

    .line 506
    :goto_2
    if-ge v7, v1, :cond_3

    .line 507
    new-instance v8, Lorg/codehaus/jackson/map/introspect/MemberKey;

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->i:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->f()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-direct {v8, v0}, Lorg/codehaus/jackson/map/introspect/MemberKey;-><init>(Ljava/lang/reflect/Method;)V

    aput-object v8, v6, v7

    .line 506
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_2

    :cond_2
    move-object v6, v0

    .line 510
    :cond_3
    new-instance v0, Lorg/codehaus/jackson/map/introspect/MemberKey;

    invoke-direct {v0, v5}, Lorg/codehaus/jackson/map/introspect/MemberKey;-><init>(Ljava/lang/reflect/Method;)V

    move v7, v9

    .line 511
    :goto_3
    if-ge v7, v1, :cond_6

    .line 512
    aget-object v8, v6, v7

    invoke-virtual {v0, v8}, Lorg/codehaus/jackson/map/introspect/MemberKey;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 511
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 515
    :cond_4
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->i:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    const/4 v7, 0x1

    invoke-virtual {p0, v5, v0, v7}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a(Ljava/lang/reflect/Method;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Z)V

    move-object v0, v6

    .line 516
    goto :goto_1

    .line 519
    :cond_5
    return-void

    :cond_6
    move-object v0, v6

    goto :goto_1
.end method

.method public e()Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->g:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->h:Ljava/util/List;

    if-nez v0, :cond_0

    .line 211
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 213
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->h:Ljava/util/List;

    goto :goto_0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->i:Ljava/util/List;

    if-nez v0, :cond_0

    .line 219
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 221
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->i:Ljava/util/List;

    goto :goto_0
.end method

.method public h()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->j:Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;

    return-object v0
.end method

.method public i()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->l:Ljava/util/List;

    if-nez v0, :cond_0

    .line 232
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 235
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->l:Ljava/util/List;

    goto :goto_0
.end method

.method public j()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->k:Ljava/util/List;

    if-nez v0, :cond_0

    .line 255
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 258
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->k:Ljava/util/List;

    goto :goto_0
.end method

.method public k()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->m:Ljava/util/List;

    if-nez v0, :cond_0

    .line 264
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 267
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->m:Ljava/util/List;

    goto :goto_0
.end method

.method protected l()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 288
    new-instance v0, Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/introspect/AnnotationMap;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->f:Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    .line 290
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->e:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->f:Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a:Ljava/lang/Class;

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->e:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a(Lorg/codehaus/jackson/map/introspect/AnnotationMap;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 294
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    array-length v1, v0

    move v2, v6

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 295
    iget-object v4, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->c:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v4, v3}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Ljava/lang/annotation/Annotation;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 296
    iget-object v4, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->f:Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-virtual {v4, v3}, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->a(Ljava/lang/annotation/Annotation;)V

    .line 294
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 301
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 303
    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->f:Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-virtual {p0, v2, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a(Lorg/codehaus/jackson/map/introspect/AnnotationMap;Ljava/lang/Class;)V

    .line 304
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    array-length v2, v0

    move v3, v6

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 305
    iget-object v5, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->c:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v5, v4}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Ljava/lang/annotation/Annotation;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 306
    iget-object v5, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->f:Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-virtual {v5, v4}, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->a(Ljava/lang/annotation/Annotation;)V

    .line 304
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 319
    :cond_5
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->f:Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    const-class v1, Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a(Lorg/codehaus/jackson/map/introspect/AnnotationMap;Ljava/lang/Class;)V

    .line 320
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[AnnotedClass "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method