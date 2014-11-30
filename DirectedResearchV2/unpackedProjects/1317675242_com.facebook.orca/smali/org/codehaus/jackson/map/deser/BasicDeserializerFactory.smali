.class public abstract Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;
.super Lorg/codehaus/jackson/map/DeserializerFactory;
.source "BasicDeserializerFactory.java"


# static fields
.field static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Map;",
            ">;>;"
        }
    .end annotation
.end field

.field static final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Collection;",
            ">;>;"
        }
    .end annotation
.end field

.field protected static final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected f:Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    invoke-static {}, Lorg/codehaus/jackson/map/deser/StdDeserializers;->a()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->b:Ljava/util/HashMap;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->c:Ljava/util/HashMap;

    .line 47
    sget-object v0, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->c:Ljava/util/HashMap;

    const-class v1, Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->c:Ljava/util/HashMap;

    const-class v1, Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->c:Ljava/util/HashMap;

    const-class v1, Ljava/util/SortedMap;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/TreeMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->c:Ljava/util/HashMap;

    const-string v1, "java.util.NavigableMap"

    const-class v2, Ljava/util/TreeMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :try_start_0
    const-string v0, "java.util.ConcurrentNavigableMap"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 59
    const-string v1, "java.util.ConcurrentSkipListMap"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 62
    sget-object v2, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->d:Ljava/util/HashMap;

    .line 75
    sget-object v0, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->d:Ljava/util/HashMap;

    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->d:Ljava/util/HashMap;

    const-class v1, Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->d:Ljava/util/HashMap;

    const-class v1, Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->d:Ljava/util/HashMap;

    const-class v1, Ljava/util/SortedSet;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/TreeSet;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->d:Ljava/util/HashMap;

    const-class v1, Ljava/util/Queue;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/LinkedList;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->d:Ljava/util/HashMap;

    const-string v1, "java.util.Deque"

    const-class v2, Ljava/util/LinkedList;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->d:Ljava/util/HashMap;

    const-string v1, "java.util.NavigableSet"

    const-class v2, Ljava/util/TreeSet;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-static {}, Lorg/codehaus/jackson/map/deser/ArrayDeserializers;->a()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->e:Ljava/util/HashMap;

    return-void

    .line 63
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Lorg/codehaus/jackson/map/DeserializerFactory;-><init>()V

    .line 100
    sget-object v0, Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;->a:Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->f:Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;

    .line 108
    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Class;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codehaus/jackson/JsonNode;",
            ">;",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation
.end method

.method protected abstract a(Ljava/lang/Class;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation
.end method

.method public a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/type/ArrayType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/DeserializerProvider;",
            "Lorg/codehaus/jackson/map/type/ArrayType;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 171
    invoke-virtual {p3}, Lorg/codehaus/jackson/map/type/ArrayType;->e()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v9

    .line 174
    invoke-virtual {v9}, Lorg/codehaus/jackson/type/JavaType;->r()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/codehaus/jackson/map/JsonDeserializer;

    .line 175
    if-nez v7, :cond_3

    .line 177
    sget-object v1, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->e:Ljava/util/HashMap;

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/codehaus/jackson/map/JsonDeserializer;

    move-object v8, v0

    .line 178
    if-eqz v8, :cond_2

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v7, v6

    .line 183
    invoke-virtual/range {v1 .. v7}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->a(Lorg/codehaus/jackson/map/type/ArrayType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    .line 184
    if-eqz v1, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    move-object v1, v8

    .line 187
    goto :goto_0

    .line 190
    :cond_2
    invoke-virtual {v9}, Lorg/codehaus/jackson/type/JavaType;->o()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 191
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Internal error: primitive type ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") passed, no array deserializer found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 195
    :cond_3
    invoke-virtual {v9}, Lorg/codehaus/jackson/type/JavaType;->s()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/map/TypeDeserializer;

    .line 197
    if-nez v1, :cond_5

    .line 198
    invoke-virtual {p0, p1, v9, p4}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->b(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeDeserializer;

    move-result-object v1

    move-object v6, v1

    :goto_1
    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    .line 201
    invoke-virtual/range {v1 .. v7}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->a(Lorg/codehaus/jackson/map/type/ArrayType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    .line 202
    if-nez v1, :cond_0

    .line 206
    if-nez v7, :cond_4

    .line 208
    invoke-virtual {p2, p1, v9, p4}, Lorg/codehaus/jackson/map/DeserializerProvider;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    .line 210
    :goto_2
    new-instance v2, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;

    invoke-direct {v2, p3, v1, v6}, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;-><init>(Lorg/codehaus/jackson/map/type/ArrayType;Lorg/codehaus/jackson/map/JsonDeserializer;Lorg/codehaus/jackson/map/TypeDeserializer;)V

    move-object v1, v2

    goto :goto_0

    :cond_4
    move-object v1, v7

    goto :goto_2

    :cond_5
    move-object v6, v1

    goto :goto_1
.end method

.method public a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/type/CollectionLikeType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/DeserializerProvider;",
            "Lorg/codehaus/jackson/map/type/CollectionLikeType;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 295
    invoke-virtual {p0, p1, p3}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/type/CollectionLikeType;

    .line 297
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/type/CollectionLikeType;->h()Ljava/lang/Class;

    move-result-object v1

    .line 298
    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/DeserializationConfig;->a(Ljava/lang/Class;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v4

    check-cast v4, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 300
    invoke-virtual {v4}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->e()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p4}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    .line 301
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 317
    :goto_0
    return-object v0

    .line 305
    :cond_0
    invoke-virtual {v4}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->e()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v0, v2}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/map/type/CollectionLikeType;

    .line 307
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/type/CollectionLikeType;->e()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    .line 309
    invoke-virtual {v2}, Lorg/codehaus/jackson/type/JavaType;->r()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/codehaus/jackson/map/JsonDeserializer;

    .line 312
    invoke-virtual {v2}, Lorg/codehaus/jackson/type/JavaType;->s()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/TypeDeserializer;

    .line 314
    if-nez v0, :cond_1

    .line 315
    invoke-virtual {p0, p1, v2, p4}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->b(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeDeserializer;

    move-result-object v0

    move-object v6, v0

    :goto_1
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    .line 317
    invoke-virtual/range {v0 .. v7}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->a(Lorg/codehaus/jackson/map/type/CollectionLikeType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v6, v0

    goto :goto_1
.end method

.method public a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/type/CollectionType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/DeserializerProvider;",
            "Lorg/codehaus/jackson/map/type/CollectionType;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 219
    invoke-virtual {p0, p1, p3}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/type/CollectionType;

    .line 221
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/type/CollectionType;->h()Ljava/lang/Class;

    move-result-object v8

    .line 222
    invoke-virtual {p1, v8}, Lorg/codehaus/jackson/map/DeserializationConfig;->a(Ljava/lang/Class;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v4

    check-cast v4, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 224
    invoke-virtual {v4}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->e()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p4}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    .line 225
    if-eqz v1, :cond_1

    move-object v0, v1

    .line 285
    :cond_0
    :goto_0
    return-object v0

    .line 229
    :cond_1
    invoke-virtual {v4}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->e()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v0, v2}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/map/type/CollectionType;

    .line 231
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/type/CollectionType;->e()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v9

    .line 233
    invoke-virtual {v9}, Lorg/codehaus/jackson/type/JavaType;->r()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/codehaus/jackson/map/JsonDeserializer;

    .line 236
    invoke-virtual {v9}, Lorg/codehaus/jackson/type/JavaType;->s()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/TypeDeserializer;

    .line 238
    if-nez v0, :cond_8

    .line 239
    invoke-virtual {p0, p1, v9, p4}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->b(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeDeserializer;

    move-result-object v0

    move-object v6, v0

    :goto_1
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    .line 243
    invoke-virtual/range {v0 .. v7}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->a(Lorg/codehaus/jackson/map/type/CollectionType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 245
    if-nez v0, :cond_0

    .line 249
    if-nez v7, :cond_7

    .line 251
    const-class v0, Ljava/util/EnumSet;

    invoke-virtual {v0, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 252
    new-instance v0, Lorg/codehaus/jackson/map/deser/EnumSetDeserializer;

    invoke-virtual {v9}, Lorg/codehaus/jackson/type/JavaType;->h()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->a(Ljava/lang/Class;Lorg/codehaus/jackson/map/DeserializationConfig;)Lorg/codehaus/jackson/map/deser/EnumResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/map/deser/EnumSetDeserializer;-><init>(Lorg/codehaus/jackson/map/deser/EnumResolver;)V

    goto :goto_0

    .line 256
    :cond_2
    invoke-virtual {p2, p1, v9, p4}, Lorg/codehaus/jackson/map/DeserializerProvider;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 268
    :goto_2
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/type/CollectionType;->n()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/type/CollectionType;->i()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 270
    :cond_3
    sget-object v2, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->d:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    .line 271
    if-nez p0, :cond_4

    .line 272
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not find a deserializer for non-concrete Collection type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move-object v2, p0

    .line 277
    :goto_3
    sget-object v3, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p1, v3}, Lorg/codehaus/jackson/map/DeserializationConfig;->a(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v3

    .line 279
    invoke-static {v2, v3}, Lorg/codehaus/jackson/map/util/ClassUtil;->b(Ljava/lang/Class;Z)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 281
    invoke-virtual {v9}, Lorg/codehaus/jackson/type/JavaType;->h()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    if-ne v3, v4, :cond_5

    .line 283
    new-instance v3, Lorg/codehaus/jackson/map/deser/impl/StringCollectionDeserializer;

    invoke-direct {v3, v1, v0, v2}, Lorg/codehaus/jackson/map/deser/impl/StringCollectionDeserializer;-><init>(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/JsonDeserializer;Ljava/lang/reflect/Constructor;)V

    move-object v0, v3

    goto/16 :goto_0

    .line 285
    :cond_5
    new-instance v3, Lorg/codehaus/jackson/map/deser/CollectionDeserializer;

    invoke-direct {v3, v1, v0, v6, v2}, Lorg/codehaus/jackson/map/deser/CollectionDeserializer;-><init>(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/JsonDeserializer;Lorg/codehaus/jackson/map/TypeDeserializer;Ljava/lang/reflect/Constructor;)V

    move-object v0, v3

    goto/16 :goto_0

    :cond_6
    move-object v2, v8

    goto :goto_3

    :cond_7
    move-object v0, v7

    goto :goto_2

    :cond_8
    move-object v6, v0

    goto/16 :goto_1
.end method

.method public a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/type/MapLikeType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/DeserializerProvider;",
            "Lorg/codehaus/jackson/map/type/MapLikeType;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 426
    invoke-virtual {p0, p1, p3}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/type/MapLikeType;

    .line 427
    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->b(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v4

    check-cast v4, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 429
    invoke-virtual {v4}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->e()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p4}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    .line 430
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 453
    :goto_0
    return-object v0

    .line 434
    :cond_0
    invoke-virtual {v4}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->e()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v0, v2}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/map/type/MapLikeType;

    .line 435
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/type/MapLikeType;->d()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    .line 436
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/type/MapLikeType;->e()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v3

    .line 440
    invoke-virtual {v3}, Lorg/codehaus/jackson/type/JavaType;->r()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/codehaus/jackson/map/JsonDeserializer;

    .line 443
    invoke-virtual {v2}, Lorg/codehaus/jackson/type/JavaType;->r()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/KeyDeserializer;

    .line 444
    if-nez v0, :cond_2

    .line 445
    invoke-virtual {p2, p1, v2, p4}, Lorg/codehaus/jackson/map/DeserializerProvider;->c(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/KeyDeserializer;

    move-result-object v0

    move-object v6, v0

    .line 448
    :goto_1
    invoke-virtual {v3}, Lorg/codehaus/jackson/type/JavaType;->s()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/TypeDeserializer;

    .line 450
    if-nez v0, :cond_1

    .line 451
    invoke-virtual {p0, p1, v3, p4}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->b(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeDeserializer;

    move-result-object v0

    move-object v7, v0

    :goto_2
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    .line 453
    invoke-virtual/range {v0 .. v8}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->a(Lorg/codehaus/jackson/map/type/MapLikeType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/KeyDeserializer;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v7, v0

    goto :goto_2

    :cond_2
    move-object v6, v0

    goto :goto_1
.end method

.method public a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/type/MapType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/DeserializerProvider;",
            "Lorg/codehaus/jackson/map/type/MapType;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 327
    invoke-virtual {p0, p1, p3}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/type/MapType;

    .line 329
    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->b(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v4

    check-cast v4, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 331
    invoke-virtual {v4}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->e()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p4}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    .line 332
    if-eqz v1, :cond_1

    move-object v0, v1

    .line 416
    :cond_0
    :goto_0
    return-object v0

    .line 336
    :cond_1
    invoke-virtual {v4}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->e()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v0, v2}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/map/type/MapType;

    .line 337
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/type/MapType;->d()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v9

    .line 338
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/type/MapType;->e()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v10

    .line 342
    invoke-virtual {v10}, Lorg/codehaus/jackson/type/JavaType;->r()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/codehaus/jackson/map/JsonDeserializer;

    .line 345
    invoke-virtual {v9}, Lorg/codehaus/jackson/type/JavaType;->r()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/KeyDeserializer;

    .line 346
    if-nez v0, :cond_b

    .line 347
    invoke-virtual {p2, p1, v9, p4}, Lorg/codehaus/jackson/map/DeserializerProvider;->c(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/KeyDeserializer;

    move-result-object v0

    move-object v6, v0

    .line 350
    :goto_1
    invoke-virtual {v10}, Lorg/codehaus/jackson/type/JavaType;->s()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/TypeDeserializer;

    .line 352
    if-nez v0, :cond_a

    .line 353
    invoke-virtual {p0, p1, v10, p4}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->b(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeDeserializer;

    move-result-object v0

    move-object v7, v0

    :goto_2
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    .line 357
    invoke-virtual/range {v0 .. v8}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->a(Lorg/codehaus/jackson/map/type/MapType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/KeyDeserializer;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 360
    if-nez v0, :cond_0

    .line 364
    if-nez v8, :cond_9

    .line 366
    invoke-virtual {p2, p1, v10, p4}, Lorg/codehaus/jackson/map/DeserializerProvider;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    move-object v5, v0

    .line 371
    :goto_3
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/type/MapType;->h()Ljava/lang/Class;

    move-result-object v0

    .line 372
    const-class v2, Ljava/util/EnumMap;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 373
    invoke-virtual {v9}, Lorg/codehaus/jackson/type/JavaType;->h()Ljava/lang/Class;

    move-result-object v0

    .line 374
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-nez v1, :cond_3

    .line 375
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not construct EnumMap; generic (key) type not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_3
    new-instance v1, Lorg/codehaus/jackson/map/deser/EnumMapDeserializer;

    invoke-virtual {p0, v0, p1}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->a(Ljava/lang/Class;Lorg/codehaus/jackson/map/DeserializationConfig;)Lorg/codehaus/jackson/map/deser/EnumResolver;

    move-result-object v0

    invoke-direct {v1, v0, v5}, Lorg/codehaus/jackson/map/deser/EnumMapDeserializer;-><init>(Lorg/codehaus/jackson/map/deser/EnumResolver;Lorg/codehaus/jackson/map/JsonDeserializer;)V

    move-object v0, v1

    goto :goto_0

    .line 391
    :cond_4
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/type/MapType;->n()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/type/MapType;->i()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 393
    :cond_5
    sget-object v2, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 394
    if-nez v0, :cond_6

    .line 395
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not find a deserializer for non-concrete Map type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_6
    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/map/type/MapType;->e(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/type/MapType;

    .line 400
    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->b(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    move-object v8, v1

    move-object v1, v0

    .line 404
    :goto_4
    sget-object v0, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->a(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    .line 407
    invoke-virtual {v8}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->f()Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 408
    if-eqz v2, :cond_7

    .line 409
    if-eqz v0, :cond_7

    .line 410
    invoke-static {v2}, Lorg/codehaus/jackson/map/util/ClassUtil;->a(Ljava/lang/reflect/Member;)V

    .line 413
    :cond_7
    new-instance v0, Lorg/codehaus/jackson/map/deser/MapDeserializer;

    move-object v3, v6

    move-object v4, v5

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/deser/MapDeserializer;-><init>(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/reflect/Constructor;Lorg/codehaus/jackson/map/KeyDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;Lorg/codehaus/jackson/map/TypeDeserializer;)V

    .line 414
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->a()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v1

    invoke-virtual {v8}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->e()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->b(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/MapDeserializer;->a([Ljava/lang/String;)V

    .line 415
    invoke-virtual {p0, p1, v8}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Lorg/codehaus/jackson/map/deser/CreatorContainer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/MapDeserializer;->a(Lorg/codehaus/jackson/map/deser/CreatorContainer;)V

    goto/16 :goto_0

    :cond_8
    move-object v8, v4

    goto :goto_4

    :cond_9
    move-object v5, v8

    goto/16 :goto_3

    :cond_a
    move-object v7, v0

    goto/16 :goto_2

    :cond_b
    move-object v6, v0

    goto/16 :goto_1
.end method

.method protected a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 665
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->a()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->b(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    .line 666
    if-eqz v0, :cond_0

    .line 667
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;Ljava/lang/Object;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 669
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;Ljava/lang/Object;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 677
    instance-of v0, p4, Lorg/codehaus/jackson/map/JsonDeserializer;

    if-eqz v0, :cond_0

    .line 678
    check-cast p4, Lorg/codehaus/jackson/map/JsonDeserializer;

    .line 680
    instance-of v0, p4, Lorg/codehaus/jackson/map/ContextualDeserializer;

    if-eqz v0, :cond_4

    .line 681
    check-cast p4, Lorg/codehaus/jackson/map/ContextualDeserializer;

    invoke-interface {p4, p1, p3}, Lorg/codehaus/jackson/map/ContextualDeserializer;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 700
    :goto_0
    return-object v0

    .line 688
    :cond_0
    instance-of v0, p4, Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 689
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnnotationIntrospector returned deserializer definition of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; expected type JsonDeserializer or Class<JsonDeserializer> instead"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 691
    :cond_1
    check-cast p4, Ljava/lang/Class;

    .line 692
    const-class v0, Lorg/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 693
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnnotationIntrospector returned Class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; expected Class<JsonDeserializer>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 695
    :cond_2
    invoke-virtual {p1, p2, p4}, Lorg/codehaus/jackson/map/DeserializationConfig;->a(Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object p0

    .line 697
    instance-of v0, p0, Lorg/codehaus/jackson/map/ContextualDeserializer;

    if-eqz v0, :cond_3

    .line 698
    check-cast p0, Lorg/codehaus/jackson/map/ContextualDeserializer;

    invoke-interface {p0, p1, p3}, Lorg/codehaus/jackson/map/ContextualDeserializer;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, p0

    goto :goto_0

    :cond_4
    move-object v0, p4

    goto :goto_0
.end method

.method protected abstract a(Lorg/codehaus/jackson/map/type/ArrayType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/type/ArrayType;",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/DeserializerProvider;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Lorg/codehaus/jackson/map/TypeDeserializer;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;)",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation
.end method

.method protected abstract a(Lorg/codehaus/jackson/map/type/CollectionLikeType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/type/CollectionLikeType;",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/DeserializerProvider;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Lorg/codehaus/jackson/map/TypeDeserializer;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;)",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation
.end method

.method protected abstract a(Lorg/codehaus/jackson/map/type/CollectionType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/type/CollectionType;",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/DeserializerProvider;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Lorg/codehaus/jackson/map/TypeDeserializer;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;)",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation
.end method

.method protected abstract a(Lorg/codehaus/jackson/map/type/MapLikeType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/KeyDeserializer;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/type/MapLikeType;",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/DeserializerProvider;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Lorg/codehaus/jackson/map/KeyDeserializer;",
            "Lorg/codehaus/jackson/map/TypeDeserializer;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;)",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation
.end method

.method protected abstract a(Lorg/codehaus/jackson/map/type/MapType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/KeyDeserializer;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/type/MapType;",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/DeserializerProvider;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Lorg/codehaus/jackson/map/KeyDeserializer;",
            "Lorg/codehaus/jackson/map/TypeDeserializer;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;)",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation
.end method

.method public a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeDeserializer;
    .locals 3

    .prologue
    .line 607
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->a()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    .line 608
    invoke-virtual {v0, p1, p3, p2}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v1

    .line 611
    if-nez v1, :cond_0

    .line 612
    invoke-virtual {p0, p1, p2, p4}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->b(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeDeserializer;

    move-result-object v0

    .line 616
    :goto_0
    return-object v0

    .line 615
    :cond_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->l()Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    move-result-object v2

    invoke-virtual {v2, p3, p1, v0}, Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/AnnotationIntrospector;)Ljava/util/Collection;

    move-result-object v0

    .line 616
    invoke-interface {v1, p1, p2, v0, p4}, Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Ljava/util/Collection;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeDeserializer;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Lorg/codehaus/jackson/map/deser/CreatorContainer;
    .locals 16

    .prologue
    .line 867
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->a()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v10

    .line 868
    sget-object v3, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/DeserializationConfig;->a(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v3

    .line 869
    new-instance v11, Lorg/codehaus/jackson/map/deser/CreatorContainer;

    move-object v0, v11

    move-object/from16 v1, p2

    move v2, v3

    invoke-direct {v0, v1, v2}, Lorg/codehaus/jackson/map/deser/CreatorContainer;-><init>(Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Z)V

    .line 871
    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->g()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    move-object v9, v0

    .line 872
    invoke-virtual {v9}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->g()I

    move-result v13

    .line 873
    const/4 v3, 0x1

    if-lt v13, v3, :cond_0

    invoke-virtual {v10, v9}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->e(Lorg/codehaus/jackson/map/introspect/Annotated;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 877
    new-array v14, v13, [Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 878
    const/4 v3, 0x0

    .line 879
    const/4 v4, 0x0

    move v7, v4

    :goto_1
    if-ge v7, v13, :cond_4

    .line 880
    invoke-virtual {v9, v7}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->a(I)Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object v8

    .line 881
    if-nez v8, :cond_2

    const/4 v4, 0x0

    move-object v6, v4

    .line 883
    :goto_2
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 884
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parameter #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " of constructor "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has no property name annotation: must have for @JsonCreator for a Map type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 881
    :cond_2
    invoke-virtual {v10, v8}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    goto :goto_2

    .line 886
    :cond_3
    add-int/lit8 v15, v3, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    .line 887
    invoke-virtual/range {v3 .. v8}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;ILorg/codehaus/jackson/map/introspect/AnnotatedParameter;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v3

    aput-object v3, v14, v7

    .line 879
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    move v3, v15

    goto :goto_1

    .line 889
    :cond_4
    invoke-virtual {v11, v9, v14}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;[Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V

    goto :goto_0

    .line 893
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->h()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_6
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-object v9, v0

    .line 894
    invoke-virtual {v9}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->g()I

    move-result v13

    .line 895
    const/4 v3, 0x1

    if-lt v13, v3, :cond_6

    invoke-virtual {v10, v9}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->e(Lorg/codehaus/jackson/map/introspect/Annotated;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 899
    new-array v14, v13, [Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 900
    const/4 v3, 0x0

    .line 901
    const/4 v4, 0x0

    move v7, v4

    :goto_4
    if-ge v7, v13, :cond_a

    .line 902
    invoke-virtual {v9, v7}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->a(I)Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object v8

    .line 903
    if-nez v8, :cond_8

    const/4 v4, 0x0

    move-object v6, v4

    .line 905
    :goto_5
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_9

    .line 906
    :cond_7
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parameter #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " of factory method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has no property name annotation: must have for @JsonCreator for a Map type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 903
    :cond_8
    invoke-virtual {v10, v8}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    goto :goto_5

    .line 908
    :cond_9
    add-int/lit8 v15, v3, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    .line 909
    invoke-virtual/range {v3 .. v8}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;ILorg/codehaus/jackson/map/introspect/AnnotatedParameter;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v3

    aput-object v3, v14, v7

    .line 901
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    move v3, v15

    goto :goto_4

    .line 911
    :cond_a
    invoke-virtual {v11, v9, v14}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;[Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V

    goto :goto_3

    .line 913
    :cond_b
    return-object v11
.end method

.method protected a(Ljava/lang/Class;Lorg/codehaus/jackson/map/DeserializationConfig;)Lorg/codehaus/jackson/map/deser/EnumResolver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            ")",
            "Lorg/codehaus/jackson/map/deser/EnumResolver",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 848
    sget-object v0, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->READ_ENUMS_USING_TO_STRING:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->a(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 849
    invoke-static {p1}, Lorg/codehaus/jackson/map/deser/EnumResolver;->b(Ljava/lang/Class;)Lorg/codehaus/jackson/map/deser/EnumResolver;

    move-result-object v0

    .line 851
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/DeserializationConfig;->a()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/codehaus/jackson/map/deser/EnumResolver;->b(Ljava/lang/Class;Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/deser/EnumResolver;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;ILorg/codehaus/jackson/map/introspect/AnnotatedParameter;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 8

    .prologue
    .line 926
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->m()Lorg/codehaus/jackson/map/type/TypeFactory;

    move-result-object v0

    invoke-virtual {p5}, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->f()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->d()Lorg/codehaus/jackson/map/type/TypeBindings;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/map/type/TypeFactory;->a(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v3

    .line 927
    new-instance v5, Lorg/codehaus/jackson/map/BeanProperty$Std;

    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->c()Lorg/codehaus/jackson/map/util/Annotations;

    move-result-object v0

    invoke-direct {v5, p3, v3, v0, p5}, Lorg/codehaus/jackson/map/BeanProperty$Std;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/util/Annotations;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    .line 928
    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 929
    if-eq v0, v3, :cond_1

    .line 930
    invoke-virtual {v5, v0}, Lorg/codehaus/jackson/map/BeanProperty$Std;->a(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/BeanProperty$Std;

    move-result-object v1

    .line 933
    :goto_0
    invoke-virtual {p0, p1, p5, v1}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v7

    .line 935
    invoke-virtual {p0, p1, p5, v0, p3}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    .line 936
    invoke-virtual {p0, p1, v2, v1}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->b(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeDeserializer;

    move-result-object v3

    .line 937
    new-instance v0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$CreatorProperty;

    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->c()Lorg/codehaus/jackson/map/util/Annotations;

    move-result-object v4

    move-object v1, p3

    move-object v5, p5

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$CreatorProperty;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/util/Annotations;Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;I)V

    .line 939
    if-eqz v7, :cond_0

    .line 940
    invoke-virtual {v0, v7}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->a(Lorg/codehaus/jackson/map/JsonDeserializer;)V

    .line 942
    :cond_0
    return-object v0

    :cond_1
    move-object v1, v5

    goto :goto_0
.end method

.method protected a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lorg/codehaus/jackson/type/JavaType;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/codehaus/jackson/type/JavaType;",
            ">(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 728
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->a()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v2

    .line 729
    invoke-virtual {v2, p2, p3, p4}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 730
    if-eqz v1, :cond_5

    .line 732
    :try_start_0
    invoke-virtual {p3, v1}, Lorg/codehaus/jackson/type/JavaType;->d(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 739
    :goto_0
    invoke-virtual {v1}, Lorg/codehaus/jackson/type/JavaType;->b()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 740
    invoke-virtual {v1}, Lorg/codehaus/jackson/type/JavaType;->d()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v3

    invoke-virtual {v2, p2, v3, p4}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->b(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 741
    if-eqz v3, :cond_1

    .line 743
    instance-of v4, v1, Lorg/codehaus/jackson/map/type/MapType;

    if-nez v4, :cond_0

    .line 744
    new-instance v2, Lorg/codehaus/jackson/map/JsonMappingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal key-type annotation: type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is not a Map type"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 733
    :catch_0
    move-exception v2

    .line 734
    new-instance v3, Lorg/codehaus/jackson/map/JsonMappingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to narrow type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with concrete-type annotation (value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "), method \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/Annotated;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\': "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v7, v2}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    throw v3

    .line 747
    :cond_0
    :try_start_1
    move-object v0, v1

    check-cast v0, Lorg/codehaus/jackson/map/type/MapType;

    move-object p0, v0

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/map/type/MapType;->c(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 752
    :cond_1
    invoke-virtual {v1}, Lorg/codehaus/jackson/type/JavaType;->d()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v3

    .line 757
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/codehaus/jackson/type/JavaType;->r()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 758
    invoke-virtual {v2, p2}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->c(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v4

    .line 759
    if-eqz v4, :cond_2

    const-class v5, Lorg/codehaus/jackson/map/KeyDeserializer$None;

    if-eq v4, v5, :cond_2

    .line 760
    invoke-virtual {p1, p2, v4}, Lorg/codehaus/jackson/map/DeserializationConfig;->b(Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lorg/codehaus/jackson/map/KeyDeserializer;

    move-result-object v4

    .line 761
    invoke-virtual {v3, v4}, Lorg/codehaus/jackson/type/JavaType;->e(Ljava/lang/Object;)V

    .line 766
    :cond_2
    invoke-virtual {v1}, Lorg/codehaus/jackson/type/JavaType;->e()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v3

    invoke-virtual {v2, p2, v3, p4}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->c(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 767
    if-eqz v3, :cond_3

    .line 769
    :try_start_2
    invoke-virtual {v1, v3}, Lorg/codehaus/jackson/type/JavaType;->b(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    .line 775
    :cond_3
    invoke-virtual {v1}, Lorg/codehaus/jackson/type/JavaType;->e()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v3

    .line 776
    invoke-virtual {v3}, Lorg/codehaus/jackson/type/JavaType;->r()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    .line 777
    invoke-virtual {v2, p2}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->d(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v2

    .line 778
    if-eqz v2, :cond_4

    const-class v3, Lorg/codehaus/jackson/map/JsonDeserializer$None;

    if-eq v2, v3, :cond_4

    .line 779
    invoke-virtual {p1, p2, v2}, Lorg/codehaus/jackson/map/DeserializationConfig;->a(Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v2

    .line 780
    invoke-virtual {v1}, Lorg/codehaus/jackson/type/JavaType;->e()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/codehaus/jackson/type/JavaType;->e(Ljava/lang/Object;)V

    .line 784
    :cond_4
    return-object v1

    .line 748
    :catch_1
    move-exception v2

    .line 749
    new-instance v4, Lorg/codehaus/jackson/map/JsonMappingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to narrow key type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " with key-type annotation ("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1, v7, v2}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    throw v4

    .line 770
    :catch_2
    move-exception v2

    .line 771
    new-instance v4, Lorg/codehaus/jackson/map/JsonMappingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to narrow content type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " with content-type annotation ("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1, v7, v2}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    throw v4

    :cond_5
    move-object v1, p3

    goto/16 :goto_0
.end method

.method protected a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/type/JavaType;
    .locals 4

    .prologue
    .line 802
    invoke-virtual {p3}, Lorg/codehaus/jackson/type/JavaType;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 803
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->a()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    .line 804
    invoke-virtual {p3}, Lorg/codehaus/jackson/type/JavaType;->d()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    .line 805
    if-eqz v1, :cond_0

    .line 806
    invoke-virtual {v0, p4}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->c(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v2

    .line 807
    if-eqz v2, :cond_0

    const-class v3, Lorg/codehaus/jackson/map/KeyDeserializer$None;

    if-eq v2, v3, :cond_0

    .line 808
    invoke-virtual {p1, p4, v2}, Lorg/codehaus/jackson/map/DeserializationConfig;->b(Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lorg/codehaus/jackson/map/KeyDeserializer;

    move-result-object v2

    .line 809
    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/type/JavaType;->e(Ljava/lang/Object;)V

    .line 813
    :cond_0
    invoke-virtual {v0, p4}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->d(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    .line 814
    if-eqz v0, :cond_1

    const-class v1, Lorg/codehaus/jackson/map/JsonDeserializer$None;

    if-eq v0, v1, :cond_1

    .line 815
    invoke-virtual {p1, p4, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->a(Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 816
    invoke-virtual {p3}, Lorg/codehaus/jackson/type/JavaType;->e()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/type/JavaType;->e(Ljava/lang/Object;)V

    .line 823
    :cond_1
    instance-of v0, p4, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    if-eqz v0, :cond_4

    .line 824
    invoke-virtual {p0, p1, p3, p4, p5}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->b(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeDeserializer;

    move-result-object v0

    .line 826
    if-eqz v0, :cond_4

    .line 827
    invoke-virtual {p3, v0}, Lorg/codehaus/jackson/type/JavaType;->c(Ljava/lang/Object;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 833
    :goto_0
    instance-of v1, p4, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    if-eqz v1, :cond_3

    .line 834
    invoke-virtual {p0, p1, v0, p4, p5}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeDeserializer;

    move-result-object v1

    .line 839
    :goto_1
    if-eqz v1, :cond_2

    .line 840
    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/type/JavaType;->d(Ljava/lang/Object;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 842
    :cond_2
    return-object v0

    .line 837
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->b(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeDeserializer;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object v0, p3

    goto :goto_0
.end method

.method protected abstract a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;
.end method

.method public b(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/DeserializerProvider;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 468
    invoke-virtual {p1, p3}, Lorg/codehaus/jackson/map/DeserializationConfig;->b(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 469
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->e()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p4}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    .line 470
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 495
    :goto_0
    return-object v0

    .line 473
    :cond_0
    invoke-virtual {p3}, Lorg/codehaus/jackson/type/JavaType;->h()Ljava/lang/Class;

    move-result-object v1

    .line 475
    invoke-virtual {p0, v1, p1, v0, p4}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->a(Ljava/lang/Class;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v2

    .line 476
    if-eqz v2, :cond_1

    move-object v0, v2

    .line 477
    goto :goto_0

    .line 481
    :cond_1
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 482
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->a()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->e(Lorg/codehaus/jackson/map/introspect/Annotated;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 483
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->g()I

    move-result v2

    .line 484
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 485
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->c()Ljava/lang/Class;

    move-result-object v2

    .line 487
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 488
    invoke-static {p1, v1, v0}, Lorg/codehaus/jackson/map/deser/EnumDeserializer;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    goto :goto_0

    .line 491
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsuitable method ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ") decorated with @JsonCreator (for Enum type "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 495
    :cond_4
    new-instance v0, Lorg/codehaus/jackson/map/deser/EnumDeserializer;

    invoke-virtual {p0, v1, p1}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->a(Ljava/lang/Class;Lorg/codehaus/jackson/map/DeserializationConfig;)Lorg/codehaus/jackson/map/deser/EnumResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/map/deser/EnumDeserializer;-><init>(Lorg/codehaus/jackson/map/deser/EnumResolver;)V

    goto :goto_0
.end method

.method public b(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeDeserializer;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 562
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->h()Ljava/lang/Class;

    move-result-object v0

    .line 563
    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->a(Ljava/lang/Class;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 564
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->e()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    .line 565
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->a()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v1

    .line 566
    invoke-virtual {v1, p1, v0, p2}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v2

    .line 572
    if-nez v2, :cond_0

    .line 573
    invoke-virtual {p1, p2}, Lorg/codehaus/jackson/map/DeserializationConfig;->c(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 574
    if-nez v0, :cond_1

    move-object v0, v3

    .line 580
    :goto_0
    return-object v0

    .line 578
    :cond_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->l()Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    move-result-object v3

    invoke-virtual {v3, v0, p1, v1}, Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/AnnotationIntrospector;)Ljava/util/Collection;

    move-result-object v0

    move-object v1, v2

    .line 580
    :goto_1
    invoke-interface {v1, p1, p2, v0, p3}, Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Ljava/util/Collection;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeDeserializer;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v1, v0

    move-object v0, v3

    goto :goto_1
.end method

.method public b(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeDeserializer;
    .locals 4

    .prologue
    .line 635
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->a()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    .line 636
    invoke-virtual {v0, p1, p3, p2}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->b(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v1

    .line 637
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->e()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    .line 639
    if-nez v1, :cond_0

    .line 640
    invoke-virtual {p0, p1, v2, p4}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->b(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeDeserializer;

    move-result-object v0

    .line 644
    :goto_0
    return-object v0

    .line 643
    :cond_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->l()Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    move-result-object v3

    invoke-virtual {v3, p3, p1, v0}, Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/AnnotationIntrospector;)Ljava/util/Collection;

    move-result-object v0

    .line 644
    invoke-interface {v1, p1, v2, v0, p4}, Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Ljava/util/Collection;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeDeserializer;

    move-result-object v0

    goto :goto_0
.end method

.method public c(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/DeserializerProvider;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 504
    invoke-virtual {p3}, Lorg/codehaus/jackson/type/JavaType;->h()Ljava/lang/Class;

    move-result-object v0

    .line 506
    invoke-virtual {p0, v0, p1, p4}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->a(Ljava/lang/Class;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    .line 507
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 510
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lorg/codehaus/jackson/map/deser/JsonNodeDeserializer;->a(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    goto :goto_0
.end method

.method protected d(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/DeserializerProvider;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 525
    sget-object v0, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/JsonDeserializer;

    .line 526
    if-eqz v0, :cond_1

    .line 555
    :cond_0
    :goto_0
    return-object v0

    .line 529
    :cond_1
    invoke-virtual {p3}, Lorg/codehaus/jackson/type/JavaType;->h()Ljava/lang/Class;

    move-result-object v0

    .line 531
    const-class v1, Ljava/lang/Class;

    if-ne v0, v1, :cond_2

    .line 532
    new-instance v0, Lorg/codehaus/jackson/map/deser/StdDeserializer$ClassDeserializer;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/deser/StdDeserializer$ClassDeserializer;-><init>()V

    goto :goto_0

    .line 536
    :cond_2
    const-class v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 538
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->m()Lorg/codehaus/jackson/map/type/TypeFactory;

    move-result-object v0

    .line 539
    const-class v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p3, v1}, Lorg/codehaus/jackson/map/type/TypeFactory;->b(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Class;)[Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 541
    if-eqz v0, :cond_3

    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_4

    .line 542
    :cond_3
    invoke-static {}, Lorg/codehaus/jackson/map/type/TypeFactory;->b()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 547
    :goto_1
    new-instance v1, Lorg/codehaus/jackson/map/deser/StdDeserializer$AtomicReferenceDeserializer;

    invoke-direct {v1, v0, p4}, Lorg/codehaus/jackson/map/deser/StdDeserializer$AtomicReferenceDeserializer;-><init>(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)V

    move-object v0, v1

    .line 548
    goto :goto_0

    .line 544
    :cond_4
    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_1

    .line 551
    :cond_5
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->f:Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;

    invoke-virtual {v0, p3, p1, p2}, Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;->a(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 552
    if-nez v0, :cond_0

    .line 555
    const/4 v0, 0x0

    goto :goto_0
.end method
