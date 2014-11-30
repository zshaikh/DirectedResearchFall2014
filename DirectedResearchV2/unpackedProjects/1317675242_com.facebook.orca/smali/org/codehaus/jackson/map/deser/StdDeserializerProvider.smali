.class public Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;
.super Lorg/codehaus/jackson/map/DeserializerProvider;
.source "StdDeserializerProvider.java"


# static fields
.field static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/KeyDeserializer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final c:Ljava/util/HashMap;
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

.field protected d:Lorg/codehaus/jackson/map/DeserializerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializers;->a()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->a:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->h:Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;-><init>(Lorg/codehaus/jackson/map/DeserializerFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/map/DeserializerFactory;)V
    .locals 4

    .prologue
    .line 86
    invoke-direct {p0}, Lorg/codehaus/jackson/map/DeserializerProvider;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x40

    const/high16 v2, 0x3f400000

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->c:Ljava/util/HashMap;

    .line 87
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->d:Lorg/codehaus/jackson/map/DeserializerFactory;

    .line 88
    return-void
.end method


# virtual methods
.method public a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
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
    .line 126
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->a(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    .line 127
    if-eqz v1, :cond_1

    .line 129
    instance-of v2, v1, Lorg/codehaus/jackson/map/ContextualDeserializer;

    if-eqz v2, :cond_0

    .line 130
    move-object v0, v1

    check-cast v0, Lorg/codehaus/jackson/map/ContextualDeserializer;

    move-object p0, v0

    invoke-interface {p0, p1, p3}, Lorg/codehaus/jackson/map/ContextualDeserializer;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    .line 149
    :cond_0
    :goto_0
    return-object v1

    .line 136
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->d(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    .line 137
    if-nez v1, :cond_3

    .line 142
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->b(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    move-object p0, v1

    .line 145
    :goto_1
    instance-of v1, p0, Lorg/codehaus/jackson/map/ContextualDeserializer;

    if-eqz v1, :cond_2

    .line 146
    check-cast p0, Lorg/codehaus/jackson/map/ContextualDeserializer;

    invoke-interface {p0, p1, p3}, Lorg/codehaus/jackson/map/ContextualDeserializer;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, p0

    goto :goto_0

    :cond_3
    move-object p0, v1

    goto :goto_1
.end method

.method protected a(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/map/JsonDeserializer;

    return-object p0
.end method

.method protected a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/ResolvableDeserializer;)V
    .locals 0

    .prologue
    .line 404
    invoke-interface {p2, p1, p0}, Lorg/codehaus/jackson/map/ResolvableDeserializer;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;)V

    .line 405
    return-void
.end method

.method public b(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
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
    .line 157
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->d:Lorg/codehaus/jackson/map/DeserializerFactory;

    invoke-virtual {v1, p1, p2, p3}, Lorg/codehaus/jackson/map/DeserializerFactory;->b(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeDeserializer;

    move-result-object v1

    .line 159
    if-eqz v1, :cond_0

    .line 160
    new-instance v2, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider$WrappedDeserializer;

    invoke-direct {v2, v1, v0}, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider$WrappedDeserializer;-><init>(Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;)V

    move-object v0, v2

    .line 162
    :cond_0
    return-object v0
.end method

.method protected b(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 419
    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->h()Ljava/lang/Class;

    move-result-object v0

    .line 420
    invoke-static {v0}, Lorg/codehaus/jackson/map/util/ClassUtil;->d(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    new-instance v0, Lorg/codehaus/jackson/map/JsonMappingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not find a Value deserializer for abstract type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/JsonMappingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not find a Value deserializer for type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/KeyDeserializer;
    .locals 4

    .prologue
    .line 171
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->d:Lorg/codehaus/jackson/map/DeserializerFactory;

    invoke-virtual {v1, p1, p2, p3}, Lorg/codehaus/jackson/map/DeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/KeyDeserializer;

    move-result-object v2

    .line 172
    if-nez v2, :cond_4

    .line 174
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->h()Ljava/lang/Class;

    move-result-object v1

    .line 175
    const-class v3, Ljava/lang/String;

    if-eq v1, v3, :cond_0

    const-class v3, Ljava/lang/Object;

    if-ne v1, v3, :cond_2

    .line 176
    :cond_0
    const/4 v1, 0x0

    .line 201
    :cond_1
    :goto_0
    return-object v1

    .line 179
    :cond_2
    sget-object v1, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/map/KeyDeserializer;

    .line 180
    if-nez v1, :cond_1

    .line 184
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->m()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 185
    invoke-static {p1, p2}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializers;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/KeyDeserializer;

    move-result-object v1

    goto :goto_0

    .line 188
    :cond_3
    invoke-static {p1, p2}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializers;->b(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/KeyDeserializer;

    move-result-object v1

    .line 189
    if-nez v1, :cond_1

    .line 192
    if-nez v2, :cond_4

    .line 194
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->c(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/KeyDeserializer;

    move-result-object v1

    goto :goto_0

    .line 198
    :cond_4
    instance-of v1, v2, Lorg/codehaus/jackson/map/ContextualKeyDeserializer;

    if-eqz v1, :cond_5

    .line 199
    move-object v0, v2

    check-cast v0, Lorg/codehaus/jackson/map/ContextualKeyDeserializer;

    move-object p0, v0

    invoke-interface {p0, p1, p3}, Lorg/codehaus/jackson/map/ContextualKeyDeserializer;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/KeyDeserializer;

    move-result-object v1

    goto :goto_0

    :cond_5
    move-object v1, v2

    goto :goto_0
.end method

.method protected c(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/KeyDeserializer;
    .locals 3

    .prologue
    .line 429
    new-instance v0, Lorg/codehaus/jackson/map/JsonMappingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not find a (Map) Key deserializer for type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected d(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
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
    .line 271
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->c:Ljava/util/HashMap;

    monitor-enter v1

    .line 273
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->a(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 274
    if-eqz v0, :cond_0

    .line 275
    monitor-exit v1

    .line 291
    :goto_0
    return-object v0

    .line 277
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 279
    if-lez v2, :cond_1

    .line 280
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/JsonDeserializer;

    .line 281
    if-eqz v0, :cond_1

    .line 282
    monitor-exit v1

    goto :goto_0

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 287
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->e(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 290
    if-nez v2, :cond_2

    :try_start_2
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->c:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 291
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->c:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    :cond_2
    monitor-exit v1

    goto :goto_0

    .line 290
    :catchall_1
    move-exception v0

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->c:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 291
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->c:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    :cond_3
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method protected e(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
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
    const/4 v6, 0x0

    .line 307
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->f(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 314
    if-nez v2, :cond_0

    move-object v1, v6

    .line 355
    :goto_0
    return-object v1

    .line 308
    :catch_0
    move-exception v1

    .line 312
    new-instance v2, Lorg/codehaus/jackson/map/JsonMappingException;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v6, v1}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    throw v2

    .line 321
    :cond_0
    instance-of v1, v2, Lorg/codehaus/jackson/map/ResolvableDeserializer;

    .line 322
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lorg/codehaus/jackson/map/deser/BeanDeserializer;

    if-ne v3, v4, :cond_4

    const/4 v3, 0x1

    .line 323
    :goto_1
    if-nez v3, :cond_1

    .line 325
    sget-object v4, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->USE_ANNOTATIONS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p1, v4}, Lorg/codehaus/jackson/map/DeserializationConfig;->a(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 326
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->a()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v4

    .line 328
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, v4, v6}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a(Ljava/lang/Class;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v5

    .line 329
    invoke-virtual {v4, v5}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v4

    .line 330
    if-eqz v4, :cond_1

    .line 331
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 347
    :cond_1
    if-eqz v1, :cond_2

    .line 348
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    move-object v0, v2

    check-cast v0, Lorg/codehaus/jackson/map/ResolvableDeserializer;

    move-object v1, v0

    invoke-virtual {p0, p1, v1}, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/ResolvableDeserializer;)V

    .line 350
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    :cond_2
    if-eqz v3, :cond_3

    .line 353
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move-object v1, v2

    .line 355
    goto :goto_0

    .line 322
    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected f(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
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
    .line 366
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->d:Lorg/codehaus/jackson/map/DeserializerFactory;

    invoke-virtual {v0, p1, p0, p2, p3}, Lorg/codehaus/jackson/map/DeserializerFactory;->b(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 398
    :goto_0
    return-object v0

    .line 369
    :cond_0
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 370
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->d:Lorg/codehaus/jackson/map/DeserializerFactory;

    check-cast p2, Lorg/codehaus/jackson/map/type/ArrayType;

    invoke-virtual {v0, p1, p0, p2, p3}, Lorg/codehaus/jackson/map/DeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/type/ArrayType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    goto :goto_0

    .line 374
    :cond_1
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 375
    check-cast p2, Lorg/codehaus/jackson/map/type/MapLikeType;

    .line 376
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/type/MapLikeType;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 377
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->d:Lorg/codehaus/jackson/map/DeserializerFactory;

    check-cast p2, Lorg/codehaus/jackson/map/type/MapType;

    invoke-virtual {v0, p1, p0, p2, p3}, Lorg/codehaus/jackson/map/DeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/type/MapType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    goto :goto_0

    .line 380
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->d:Lorg/codehaus/jackson/map/DeserializerFactory;

    invoke-virtual {v0, p1, p0, p2, p3}, Lorg/codehaus/jackson/map/DeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/type/MapLikeType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    goto :goto_0

    .line 383
    :cond_3
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->q()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 384
    check-cast p2, Lorg/codehaus/jackson/map/type/CollectionLikeType;

    .line 385
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/type/CollectionLikeType;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 386
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->d:Lorg/codehaus/jackson/map/DeserializerFactory;

    check-cast p2, Lorg/codehaus/jackson/map/type/CollectionType;

    invoke-virtual {v0, p1, p0, p2, p3}, Lorg/codehaus/jackson/map/DeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/type/CollectionType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    goto :goto_0

    .line 389
    :cond_4
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->d:Lorg/codehaus/jackson/map/DeserializerFactory;

    invoke-virtual {v0, p1, p0, p2, p3}, Lorg/codehaus/jackson/map/DeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/type/CollectionLikeType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    goto :goto_0

    .line 395
    :cond_5
    const-class v0, Lorg/codehaus/jackson/JsonNode;

    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->h()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 396
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->d:Lorg/codehaus/jackson/map/DeserializerFactory;

    invoke-virtual {v0, p1, p0, p2, p3}, Lorg/codehaus/jackson/map/DeserializerFactory;->c(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    goto :goto_0

    .line 398
    :cond_6
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->d:Lorg/codehaus/jackson/map/DeserializerFactory;

    invoke-virtual {v0, p1, p0, p2, p3}, Lorg/codehaus/jackson/map/DeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    goto :goto_0
.end method