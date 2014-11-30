.class public Lorg/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;
.super Lorg/codehaus/jackson/map/jsontype/impl/TypeIdResolverBase;
.source "TypeNameIdResolver.java"


# instance fields
.field protected final a:Lorg/codehaus/jackson/map/MapperConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/MapperConfig",
            "<*>;"
        }
    .end annotation
.end field

.field protected final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/type/JavaType;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/MapperConfig;->m()Lorg/codehaus/jackson/map/type/TypeFactory;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/codehaus/jackson/map/jsontype/impl/TypeIdResolverBase;-><init>(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/type/TypeFactory;)V

    .line 33
    iput-object p1, p0, Lorg/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;->a:Lorg/codehaus/jackson/map/MapperConfig;

    .line 34
    iput-object p3, p0, Lorg/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;->b:Ljava/util/HashMap;

    .line 35
    iput-object p4, p0, Lorg/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;->e:Ljava/util/HashMap;

    .line 36
    return-void
.end method

.method protected static a(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 148
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 149
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 150
    if-gez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/type/JavaType;Ljava/util/Collection;ZZ)Lorg/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Ljava/util/Collection",
            "<",
            "Lorg/codehaus/jackson/map/jsontype/NamedType;",
            ">;ZZ)",
            "Lorg/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 43
    if-ne p3, p4, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 47
    :cond_0
    if-eqz p3, :cond_7

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v1, v0

    .line 50
    :goto_0
    if-eqz p4, :cond_1

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v2, v0

    .line 53
    :cond_1
    if-eqz p2, :cond_6

    .line 54
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/jsontype/NamedType;

    .line 58
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/jsontype/NamedType;->a()Ljava/lang/Class;

    move-result-object v4

    .line 59
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/jsontype/NamedType;->c()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/jsontype/NamedType;->b()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 60
    :goto_2
    if-eqz p3, :cond_3

    .line 61
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_3
    if-eqz p4, :cond_2

    .line 68
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/type/JavaType;

    .line 69
    if-eqz v0, :cond_4

    .line 70
    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->h()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 74
    :cond_4
    invoke-virtual {p0, v4}, Lorg/codehaus/jackson/map/MapperConfig;->c(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 59
    :cond_5
    invoke-static {v4}, Lorg/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_2

    .line 78
    :cond_6
    new-instance v0, Lorg/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;-><init>(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/type/JavaType;Ljava/util/HashMap;Ljava/util/HashMap;)V

    return-object v0

    :cond_7
    move-object v1, v2

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/type/JavaType;

    .line 123
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string v1, "; id-to-type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;->e:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
