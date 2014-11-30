.class public Lorg/codehaus/jackson/map/deser/CreatorContainer;
.super Ljava/lang/Object;
.source "CreatorContainer.java"


# instance fields
.field final a:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

.field final b:Z

.field protected c:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field d:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

.field e:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

.field f:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

.field g:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

.field h:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

.field i:[Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

.field j:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

.field k:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

.field l:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

.field m:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

.field n:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

.field o:[Lorg/codehaus/jackson/map/deser/SettableBeanProperty;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Z)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->i:[Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 32
    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->o:[Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 36
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->a:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 37
    iput-boolean p2, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->b:Z

    .line 39
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->c:Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method protected a(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;Ljava/lang/String;)Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;
    .locals 3

    .prologue
    .line 154
    if-eqz p2, :cond_0

    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Conflicting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " constructors: already had "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", encountered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    iget-boolean v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->b:Z

    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->f()Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/map/util/ClassUtil;->a(Ljava/lang/reflect/Member;)V

    .line 160
    :cond_1
    return-object p1
.end method

.method protected a(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 3

    .prologue
    .line 166
    if-eqz p2, :cond_0

    .line 167
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Conflicting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " factory methods: already had "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", encountered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    iget-boolean v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->b:Z

    if-eqz v0, :cond_1

    .line 170
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->f()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/map/util/ClassUtil;->a(Ljava/lang/reflect/Member;)V

    .line 172
    :cond_1
    return-object p1
.end method

.method public a(Ljava/lang/reflect/Constructor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 48
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->c:Ljava/lang/reflect/Constructor;

    .line 49
    return-void
.end method

.method public a(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;)V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->j:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    const-string v1, "String"

    invoke-virtual {p0, p1, v0, v1}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;Ljava/lang/String;)Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->j:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    .line 53
    return-void
.end method

.method public a(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;[Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V
    .locals 6

    .prologue
    .line 67
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->n:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    const-string v1, "property-based"

    invoke-virtual {p0, p1, v0, v1}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;Ljava/lang/String;)Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->n:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    .line 69
    array-length v0, p2

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 70
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 71
    const/4 v0, 0x0

    array-length v2, p2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 72
    aget-object v0, p2, v3

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->b()Ljava/lang/String;

    move-result-object v4

    .line 73
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 74
    if-eqz v0, :cond_0

    .line 75
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Duplicate creator property \""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\" (index "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " vs "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 79
    :cond_1
    iput-object p2, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->o:[Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 80
    return-void
.end method

.method public a(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->d:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    const-string v1, "String"

    invoke-virtual {p0, p1, v0, v1}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->d:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 84
    return-void
.end method

.method public a(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;[Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->h:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    const-string v1, "property-based"

    invoke-virtual {p0, p1, v0, v1}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->h:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 99
    iput-object p2, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->i:[Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 100
    return-void
.end method

.method public b()Lorg/codehaus/jackson/map/deser/Creator$StringBased;
    .locals 4

    .prologue
    .line 112
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->j:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->d:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    if-nez v0, :cond_0

    .line 113
    const/4 v0, 0x0

    .line 115
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/deser/Creator$StringBased;

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->a:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->b()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->j:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->d:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-direct {v0, v1, v2, v3}, Lorg/codehaus/jackson/map/deser/Creator$StringBased;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V

    goto :goto_0
.end method

.method public b(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;)V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->k:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    const-string v1, "int"

    invoke-virtual {p0, p1, v0, v1}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;Ljava/lang/String;)Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->k:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    .line 56
    return-void
.end method

.method public b(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->e:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    const-string v1, "int"

    invoke-virtual {p0, p1, v0, v1}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->e:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 87
    return-void
.end method

.method public c()Lorg/codehaus/jackson/map/deser/Creator$NumberBased;
    .locals 6

    .prologue
    .line 120
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->k:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->e:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->l:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->f:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    if-nez v0, :cond_0

    .line 122
    const/4 v0, 0x0

    .line 124
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/deser/Creator$NumberBased;

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->a:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->b()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->k:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->e:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->l:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    iget-object v5, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->f:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/deser/Creator$NumberBased;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V

    goto :goto_0
.end method

.method public c(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;)V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->l:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    const-string v1, "long"

    invoke-virtual {p0, p1, v0, v1}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;Ljava/lang/String;)Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->l:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    .line 59
    return-void
.end method

.method public c(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->f:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    const-string v1, "long"

    invoke-virtual {p0, p1, v0, v1}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->f:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 90
    return-void
.end method

.method public d()Lorg/codehaus/jackson/map/deser/Creator$Delegating;
    .locals 4

    .prologue
    .line 130
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->m:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->g:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    if-nez v0, :cond_0

    .line 131
    const/4 v0, 0x0

    .line 133
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/deser/Creator$Delegating;

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->a:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->m:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->g:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-direct {v0, v1, v2, v3}, Lorg/codehaus/jackson/map/deser/Creator$Delegating;-><init>(Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V

    goto :goto_0
.end method

.method public d(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;)V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->m:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    const-string v1, "long"

    invoke-virtual {p0, p1, v0, v1}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;Ljava/lang/String;)Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->m:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    .line 63
    return-void
.end method

.method public d(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->g:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    const-string v1, "long"

    invoke-virtual {p0, p1, v0, v1}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->g:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 94
    return-void
.end method

.method public e()Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;
    .locals 5

    .prologue
    .line 138
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->n:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->h:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    if-nez v0, :cond_0

    .line 139
    const/4 v0, 0x0

    .line 141
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->n:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->o:[Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->h:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/CreatorContainer;->i:[Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;-><init>(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;[Lorg/codehaus/jackson/map/deser/SettableBeanProperty;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;[Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V

    goto :goto_0
.end method
