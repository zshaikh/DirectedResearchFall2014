.class public Lcom/acmeaom/android/a/j/a;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method private static a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 39
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    .line 40
    :catch_0
    move-exception v1

    .line 41
    invoke-static {v1}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 43
    :catch_1
    move-exception v1

    .line 44
    invoke-static {v1}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 89
    const-class v0, Ljava/util/ArrayList;

    const-class v1, Lcom/acmeaom/android/a/a/b/o;

    invoke-static {p0, v0, v1}, Lcom/acmeaom/android/a/j/a;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 90
    const-class v1, Ljava/util/HashMap;

    const-class v2, Lcom/acmeaom/android/a/a/b/k;

    invoke-static {v0, v1, v2}, Lcom/acmeaom/android/a/j/a;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 91
    const-class v1, Ljava/lang/Float;

    const-class v2, Lcom/acmeaom/android/a/a/b/aa;

    invoke-static {v0, v1, v2}, Lcom/acmeaom/android/a/j/a;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 92
    const-class v1, Ljava/lang/Integer;

    const-class v2, Lcom/acmeaom/android/a/a/b/aa;

    invoke-static {v0, v1, v2}, Lcom/acmeaom/android/a/j/a;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 93
    const-class v1, Ljava/lang/Long;

    const-class v2, Lcom/acmeaom/android/a/a/b/aa;

    invoke-static {v0, v1, v2}, Lcom/acmeaom/android/a/j/a;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 94
    const-class v1, Ljava/lang/Double;

    const-class v2, Lcom/acmeaom/android/a/a/b/aa;

    invoke-static {v0, v1, v2}, Lcom/acmeaom/android/a/j/a;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 95
    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 62
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 63
    check-cast p0, Ljava/util/Map;

    invoke-static {p0, p1, p2}, Lcom/acmeaom/android/a/j/a;->a(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object p0

    .line 70
    :cond_0
    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object p0

    .line 84
    :cond_1
    return-object p0

    .line 64
    :cond_2
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 65
    check-cast p0, Ljava/util/Collection;

    invoke-static {p0, p1, p2}, Lcom/acmeaom/android/a/j/a;->a(Ljava/util/Collection;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object p0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 75
    :catch_1
    move-exception v0

    .line 76
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 77
    :catch_2
    move-exception v0

    .line 78
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 79
    :catch_3
    move-exception v0

    .line 80
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Ljava/util/Collection;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Collection;
    .locals 3

    .prologue
    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/acmeaom/android/a/j/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 29
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 30
    invoke-static {v2, p1, p2}, Lcom/acmeaom/android/a/j/a;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 33
    :cond_0
    return-object v0
.end method

.method private static a(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Map;
    .locals 4

    .prologue
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/acmeaom/android/a/j/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 19
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 20
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/acmeaom/android/a/j/a;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 23
    :cond_0
    return-object v0
.end method
