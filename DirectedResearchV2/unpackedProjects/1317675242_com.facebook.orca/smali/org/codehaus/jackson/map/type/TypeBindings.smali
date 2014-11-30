.class public Lorg/codehaus/jackson/map/type/TypeBindings;
.super Ljava/lang/Object;
.source "TypeBindings.java"


# static fields
.field public static final a:Lorg/codehaus/jackson/type/JavaType;

.field private static final g:[Lorg/codehaus/jackson/type/JavaType;


# instance fields
.field protected final b:Lorg/codehaus/jackson/map/type/TypeFactory;

.field protected final c:Lorg/codehaus/jackson/type/JavaType;

.field protected final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ">;"
        }
    .end annotation
.end field

.field protected f:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lorg/codehaus/jackson/map/type/TypeBindings;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/codehaus/jackson/type/JavaType;

    sput-object v0, Lorg/codehaus/jackson/map/type/TypeBindings;->g:[Lorg/codehaus/jackson/type/JavaType;

    .line 20
    new-instance v0, Lorg/codehaus/jackson/map/type/SimpleType;

    const-class v1, Ljava/lang/Object;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/codehaus/jackson/map/type/TypeBindings;->a:Lorg/codehaus/jackson/type/JavaType;

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/map/type/TypeFactory;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/type/TypeFactory;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, v0, p2, v0}, Lorg/codehaus/jackson/map/type/TypeBindings;-><init>(Lorg/codehaus/jackson/map/type/TypeFactory;Lorg/codehaus/jackson/map/type/TypeBindings;Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;)V

    .line 69
    return-void
.end method

.method private constructor <init>(Lorg/codehaus/jackson/map/type/TypeFactory;Lorg/codehaus/jackson/map/type/TypeBindings;Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/type/TypeFactory;",
            "Lorg/codehaus/jackson/map/type/TypeBindings;",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->b:Lorg/codehaus/jackson/map/type/TypeFactory;

    .line 94
    iput-object p2, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->h:Lorg/codehaus/jackson/map/type/TypeBindings;

    .line 95
    iput-object p3, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->d:Ljava/lang/Class;

    .line 96
    iput-object p4, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->c:Lorg/codehaus/jackson/type/JavaType;

    .line 97
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/map/type/TypeFactory;Lorg/codehaus/jackson/type/JavaType;)V
    .locals 2

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->h()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/codehaus/jackson/map/type/TypeBindings;-><init>(Lorg/codehaus/jackson/map/type/TypeFactory;Lorg/codehaus/jackson/map/type/TypeBindings;Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;)V

    .line 74
    return-void
.end method


# virtual methods
.method public a()Lorg/codehaus/jackson/map/type/TypeBindings;
    .locals 4

    .prologue
    .line 85
    new-instance v0, Lorg/codehaus/jackson/map/type/TypeBindings;

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->b:Lorg/codehaus/jackson/map/type/TypeFactory;

    iget-object v2, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->d:Ljava/lang/Class;

    iget-object v3, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->c:Lorg/codehaus/jackson/type/JavaType;

    invoke-direct {v0, v1, p0, v2, v3}, Lorg/codehaus/jackson/map/type/TypeBindings;-><init>(Lorg/codehaus/jackson/map/type/TypeFactory;Lorg/codehaus/jackson/map/type/TypeBindings;Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lorg/codehaus/jackson/type/JavaType;
    .locals 4

    .prologue
    .line 137
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->e:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/type/TypeBindings;->c()V

    .line 140
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/type/JavaType;

    .line 141
    if-eqz v0, :cond_1

    .line 164
    :goto_0
    return-object v0

    .line 144
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->f:Ljava/util/HashSet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->f:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    sget-object v0, Lorg/codehaus/jackson/map/type/TypeBindings;->a:Lorg/codehaus/jackson/type/JavaType;

    goto :goto_0

    .line 148
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->h:Lorg/codehaus/jackson/map/type/TypeBindings;

    if-eqz v0, :cond_3

    .line 149
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->h:Lorg/codehaus/jackson/map/type/TypeBindings;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/type/TypeBindings;->a(Ljava/lang/String;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    goto :goto_0

    .line 158
    :cond_3
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->d:Ljava/lang/Class;

    if-eqz v0, :cond_4

    .line 159
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->d:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_4

    .line 163
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->d:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 164
    sget-object v0, Lorg/codehaus/jackson/map/type/TypeBindings;->a:Lorg/codehaus/jackson/type/JavaType;

    goto :goto_0

    .line 181
    :cond_4
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->d:Ljava/lang/Class;

    if-eqz v0, :cond_5

    .line 182
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->d:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 188
    :goto_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Type variable \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' can not be resolved (with context of class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 183
    :cond_5
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->c:Lorg/codehaus/jackson/type/JavaType;

    if-eqz v0, :cond_6

    .line 184
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->c:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 186
    :cond_6
    const-string v0, "UNKNOWN"

    goto :goto_1
.end method

.method public a(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->b:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p1, p0}, Lorg/codehaus/jackson/map/type/TypeFactory;->b(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;)V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->e:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 197
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->e:Ljava/util/Map;

    .line 199
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->f:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->f:Ljava/util/HashSet;

    .line 248
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->f:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 249
    return-void
.end method

.method protected b(Ljava/lang/reflect/Type;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 253
    if-nez p1, :cond_1

    .line 315
    :cond_0
    return-void

    .line 256
    :cond_1
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_6

    .line 257
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 258
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 259
    if-eqz v1, :cond_5

    array-length v0, v1

    if-lez v0, :cond_5

    .line 260
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 261
    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    .line 262
    array-length v3, v2

    array-length v4, v1

    if-eq v3, v4, :cond_2

    .line 263
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Strange parametrized type (in class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "): number of type arguments != number of type parameters ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " vs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 265
    :cond_2
    array-length v0, v1

    move v3, v8

    :goto_0
    if-ge v3, v0, :cond_5

    .line 266
    aget-object v4, v2, v3

    .line 267
    invoke-interface {v4}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v4

    .line 268
    iget-object v5, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->e:Ljava/util/Map;

    if-nez v5, :cond_4

    .line 269
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v5, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->e:Ljava/util/Map;

    .line 277
    :cond_3
    invoke-virtual {p0, v4}, Lorg/codehaus/jackson/map/type/TypeBindings;->b(Ljava/lang/String;)V

    .line 279
    iget-object v5, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->e:Ljava/util/Map;

    iget-object v6, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->b:Lorg/codehaus/jackson/map/type/TypeFactory;

    aget-object v7, v1, v3

    invoke-virtual {v6, v7, p0}, Lorg/codehaus/jackson/map/type/TypeFactory;->b(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 274
    :cond_4
    iget-object v5, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->e:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    .line 282
    :cond_5
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 311
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/map/type/TypeBindings;->b(Ljava/lang/reflect/Type;)V

    .line 312
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v1, v0

    move v2, v8

    :goto_3
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 313
    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/map/type/TypeBindings;->b(Ljava/lang/reflect/Type;)V

    .line 312
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 283
    :cond_6
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 284
    check-cast p1, Ljava/lang/Class;

    .line 288
    invoke-virtual {p1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    .line 289
    if-eqz v0, :cond_a

    array-length v1, v0

    if-lez v1, :cond_a

    .line 290
    array-length v1, v0

    move v2, v8

    :goto_4
    if-ge v2, v1, :cond_a

    aget-object v3, v0, v2

    .line 291
    invoke-interface {v3}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v4

    .line 292
    invoke-interface {v3}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    aget-object v3, v3, v8

    .line 293
    if-eqz v3, :cond_8

    .line 294
    iget-object v5, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->e:Ljava/util/Map;

    if-nez v5, :cond_9

    .line 295
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v5, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->e:Ljava/util/Map;

    .line 299
    :cond_7
    invoke-virtual {p0, v4}, Lorg/codehaus/jackson/map/type/TypeBindings;->b(Ljava/lang/String;)V

    .line 300
    iget-object v5, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->e:Ljava/util/Map;

    iget-object v6, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->b:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v6, v3, p0}, Lorg/codehaus/jackson/map/type/TypeFactory;->b(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v3

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    :cond_8
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 297
    :cond_9
    iget-object v5, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->e:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_5

    :cond_a
    move-object v0, p1

    .line 304
    goto :goto_2
.end method

.method public b()[Lorg/codehaus/jackson/type/JavaType;
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->e:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/type/TypeBindings;->c()V

    .line 207
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 208
    sget-object v0, Lorg/codehaus/jackson/map/type/TypeBindings;->g:[Lorg/codehaus/jackson/type/JavaType;

    .line 210
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lorg/codehaus/jackson/type/JavaType;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/codehaus/jackson/type/JavaType;

    move-object v0, p0

    goto :goto_0
.end method

.method protected c()V
    .locals 5

    .prologue
    .line 221
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->d:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/type/TypeBindings;->b(Ljava/lang/reflect/Type;)V

    .line 224
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->c:Lorg/codehaus/jackson/type/JavaType;

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->c:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->f()I

    move-result v0

    .line 226
    if-lez v0, :cond_1

    .line 227
    iget-object v1, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->e:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 228
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->e:Ljava/util/Map;

    .line 230
    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 231
    iget-object v2, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->c:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v2, v1}, Lorg/codehaus/jackson/type/JavaType;->b(I)Ljava/lang/String;

    move-result-object v2

    .line 232
    iget-object v3, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->c:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v3, v1}, Lorg/codehaus/jackson/type/JavaType;->a(I)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v3

    .line 233
    iget-object v4, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->e:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 239
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->e:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 240
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->e:Ljava/util/Map;

    .line 242
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 320
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->e:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 321
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/type/TypeBindings;->c()V

    .line 323
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[TypeBindings for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 324
    iget-object v1, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->c:Lorg/codehaus/jackson/type/JavaType;

    if-eqz v1, :cond_1

    .line 325
    iget-object v1, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->c:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v1}, Lorg/codehaus/jackson/type/JavaType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    :goto_0
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->e:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 327
    :cond_1
    iget-object v1, p0, Lorg/codehaus/jackson/map/type/TypeBindings;->d:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
