.class public final Lcom/vungle/sdk/be;
.super Lcom/vungle/sdk/aq;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/vungle/sdk/aq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final e:[Ljava/lang/reflect/Field;

.field private final f:Ljava/lang/ClassLoader;

.field private final g:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final h:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final i:[Ljava/lang/String;

.field private final j:[Lcom/vungle/sdk/aq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/vungle/sdk/aq",
            "<*>;"
        }
    .end annotation
.end field

.field private final k:[Lcom/vungle/sdk/aq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/vungle/sdk/aq",
            "<*>;"
        }
    .end annotation
.end field

.field private l:Lcom/vungle/sdk/aq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/sdk/aq",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Class;[Ljava/lang/reflect/Field;Ljava/lang/reflect/Constructor;ILjava/lang/Class;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;I",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vungle/sdk/aq;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 60
    iput-object p6, p0, Lcom/vungle/sdk/be;->g:Ljava/lang/reflect/Constructor;

    .line 61
    iput-object p5, p0, Lcom/vungle/sdk/be;->e:[Ljava/lang/reflect/Field;

    .line 62
    iput-object p8, p0, Lcom/vungle/sdk/be;->h:Ljava/lang/Class;

    .line 63
    iput-object p9, p0, Lcom/vungle/sdk/be;->i:[Ljava/lang/String;

    .line 64
    new-array v0, p7, [Lcom/vungle/sdk/aq;

    iput-object v0, p0, Lcom/vungle/sdk/be;->k:[Lcom/vungle/sdk/aq;

    .line 65
    array-length v0, p5

    new-array v0, v0, [Lcom/vungle/sdk/aq;

    iput-object v0, p0, Lcom/vungle/sdk/be;->j:[Lcom/vungle/sdk/aq;

    .line 66
    invoke-virtual {p4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/sdk/be;->f:Ljava/lang/ClassLoader;

    .line 67
    return-void
.end method

.method public static a(Ljava/lang/Class;Z)Lcom/vungle/sdk/aq;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;Z)",
            "Lcom/vungle/sdk/aq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    const-class v13, Ljavax/inject/Inject;

    .line 145
    const-class v0, Ljavax/inject/Singleton;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v3

    .line 146
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 149
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    .line 150
    :goto_0
    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_3

    .line 151
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    move v6, v10

    :goto_1
    if-ge v6, v2, :cond_2

    aget-object v7, v1, v6

    .line 152
    const-class v8, Ljavax/inject/Inject;

    invoke-virtual {v7, v13}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 153
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_0

    .line 156
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t inject private field: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    invoke-virtual {v7, v12}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 159
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v9

    invoke-static {v8, v9, v7}, Lcom/vungle/sdk/at;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 150
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 168
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Constructor;

    array-length v1, v0

    move v2, v10

    move-object v6, v11

    :goto_2
    if-ge v2, v1, :cond_6

    aget-object v7, v0, v2

    .line 169
    const-class v8, Ljavax/inject/Inject;

    invoke-virtual {v7, v13}, Ljava/lang/reflect/Constructor;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 170
    if-eqz v6, :cond_4

    .line 173
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Too many injectable constructors on "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move-object v6, v7

    .line 168
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 177
    :cond_6
    if-nez v6, :cond_7

    .line 178
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 180
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v6, v0

    .line 191
    :cond_7
    :goto_3
    if-eqz v6, :cond_b

    .line 192
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_9

    .line 193
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t inject private constructor: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_8
    if-eqz p1, :cond_7

    .line 184
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No injectable members on "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Do you want to add an injectable constructor?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_9
    invoke-static {p0}, Lcom/vungle/sdk/at;->a(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-virtual {v6, v12}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 198
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 199
    array-length v2, v1

    .line 200
    if-eqz v2, :cond_a

    .line 201
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v7

    move v8, v10

    .line 202
    :goto_4
    array-length v9, v1

    if-ge v8, v9, :cond_a

    .line 203
    aget-object v9, v1, v8

    aget-object v10, v7, v8

    invoke-static {v9, v10, v6}, Lcom/vungle/sdk/at;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_a
    move-object v1, v0

    move v7, v2

    .line 215
    :goto_5
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 216
    if-eqz v0, :cond_d

    .line 217
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vungle/sdk/at;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    move-object v8, v11

    .line 224
    :goto_6
    invoke-static {p0}, Lcom/vungle/sdk/at;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 225
    new-instance v0, Lcom/vungle/sdk/be;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/reflect/Field;

    invoke-interface {v5, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/reflect/Field;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v4, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    move-object v4, p0

    invoke-direct/range {v0 .. v9}, Lcom/vungle/sdk/be;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Class;[Ljava/lang/reflect/Field;Ljava/lang/reflect/Constructor;ILjava/lang/Class;[Ljava/lang/String;)V

    return-object v0

    .line 209
    :cond_b
    if-eqz v3, :cond_e

    .line 210
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No injectable constructor on @Singleton "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_c
    invoke-static {v0}, Lcom/vungle/sdk/at;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    move-object v8, v0

    goto :goto_6

    .line 182
    :catch_0
    move-exception v0

    goto/16 :goto_3

    :cond_e
    move-object v1, v11

    move v7, v10

    goto :goto_5
.end method


# virtual methods
.method public final a(Lcom/vungle/sdk/av;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 71
    move v0, v6

    move v1, v6

    .line 72
    :goto_0
    iget-object v2, p0, Lcom/vungle/sdk/be;->e:[Ljava/lang/reflect/Field;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 73
    iget-object v2, p0, Lcom/vungle/sdk/be;->j:[Lcom/vungle/sdk/aq;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/vungle/sdk/be;->j:[Lcom/vungle/sdk/aq;

    iget-object v3, p0, Lcom/vungle/sdk/be;->i:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/vungle/sdk/be;->e:[Ljava/lang/reflect/Field;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/vungle/sdk/be;->f:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v3, v4, v5}, Lcom/vungle/sdk/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Lcom/vungle/sdk/aq;

    move-result-object v3

    aput-object v3, v2, v0

    .line 76
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/vungle/sdk/be;->g:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_3

    move v0, v6

    .line 79
    :goto_1
    iget-object v2, p0, Lcom/vungle/sdk/be;->k:[Lcom/vungle/sdk/aq;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 80
    iget-object v2, p0, Lcom/vungle/sdk/be;->k:[Lcom/vungle/sdk/aq;

    aget-object v2, v2, v0

    if-nez v2, :cond_2

    .line 81
    iget-object v2, p0, Lcom/vungle/sdk/be;->k:[Lcom/vungle/sdk/aq;

    iget-object v3, p0, Lcom/vungle/sdk/be;->i:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/vungle/sdk/be;->g:Ljava/lang/reflect/Constructor;

    iget-object v5, p0, Lcom/vungle/sdk/be;->f:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v3, v4, v5}, Lcom/vungle/sdk/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Lcom/vungle/sdk/aq;

    move-result-object v3

    aput-object v3, v2, v0

    .line 83
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 86
    iget-object v1, p0, Lcom/vungle/sdk/be;->h:Ljava/lang/Class;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/vungle/sdk/be;->l:Lcom/vungle/sdk/aq;

    if-nez v1, :cond_4

    .line 87
    iget-object v1, p0, Lcom/vungle/sdk/be;->i:[Ljava/lang/String;

    aget-object v0, v1, v0

    iget-object v1, p0, Lcom/vungle/sdk/be;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/sdk/be;->f:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0, v1, v2, v6}, Lcom/vungle/sdk/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Z)Lcom/vungle/sdk/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/sdk/be;->l:Lcom/vungle/sdk/aq;

    .line 90
    :cond_4
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 119
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/vungle/sdk/be;->e:[Ljava/lang/reflect/Field;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/vungle/sdk/be;->e:[Ljava/lang/reflect/Field;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/vungle/sdk/be;->j:[Lcom/vungle/sdk/aq;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/vungle/sdk/aq;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/vungle/sdk/be;->l:Lcom/vungle/sdk/aq;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/vungle/sdk/be;->l:Lcom/vungle/sdk/aq;

    invoke-virtual {v0, p1}, Lcom/vungle/sdk/aq;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_1
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final a(Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/vungle/sdk/aq",
            "<*>;>;",
            "Ljava/util/Set",
            "<",
            "Lcom/vungle/sdk/aq",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/vungle/sdk/be;->k:[Lcom/vungle/sdk/aq;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/vungle/sdk/be;->k:[Lcom/vungle/sdk/aq;

    invoke-static {p1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/vungle/sdk/be;->j:[Lcom/vungle/sdk/aq;

    invoke-static {p2, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 135
    iget-object v0, p0, Lcom/vungle/sdk/be;->l:Lcom/vungle/sdk/aq;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/vungle/sdk/be;->l:Lcom/vungle/sdk/aq;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_1
    return-void
.end method

.method public final get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/vungle/sdk/be;->g:Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/vungle/sdk/be;->k:[Lcom/vungle/sdk/aq;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 97
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/vungle/sdk/be;->k:[Lcom/vungle/sdk/aq;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 98
    iget-object v2, p0, Lcom/vungle/sdk/be;->k:[Lcom/vungle/sdk/aq;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/vungle/sdk/aq;->get()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 97
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/vungle/sdk/be;->g:Ljava/lang/reflect/Constructor;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 113
    invoke-virtual {p0, v0}, Lcom/vungle/sdk/be;->a(Ljava/lang/Object;)V

    .line 114
    return-object v0

    .line 103
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 105
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/RuntimeException;

    move-object v0, p0

    :goto_1
    throw v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 108
    :catch_1
    move-exception v0

    .line 109
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 110
    :catch_2
    move-exception v0

    .line 111
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/vungle/sdk/be;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vungle/sdk/be;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vungle/sdk/be;->c:Ljava/lang/String;

    goto :goto_0
.end method
