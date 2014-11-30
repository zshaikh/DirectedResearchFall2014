.class public Lcom/pocketchange/android/util/MethodCacheByName;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/reflect/Method;


# instance fields
.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    :try_start_0
    const-class v0, Lcom/pocketchange/android/util/MethodCacheByName;

    const-string v1, "a"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/pocketchange/android/util/MethodCacheByName;->a:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return-void

    .line 15
    :catch_0
    move-exception v0

    .line 16
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/pocketchange/android/util/MethodCacheByName;->c:Ljava/util/Map;

    .line 23
    iput-object p1, p0, Lcom/pocketchange/android/util/MethodCacheByName;->b:Ljava/lang/Class;

    .line 24
    return-void
.end method

.method private static final a()V
    .locals 0

    .prologue
    .line 10
    return-void
.end method


# virtual methods
.method protected cacheMethod(Ljava/lang/String;Ljava/lang/reflect/Method;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/pocketchange/android/util/MethodCacheByName;->c:Ljava/util/Map;

    if-nez p2, :cond_0

    sget-object v1, Lcom/pocketchange/android/util/MethodCacheByName;->a:Ljava/lang/reflect/Method;

    :goto_0
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void

    :cond_0
    move-object v1, p2

    .line 63
    goto :goto_0
.end method

.method public getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/pocketchange/android/util/MethodCacheByName;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0, p1}, Lcom/pocketchange/android/util/MethodCacheByName;->getMethodFromCache(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 44
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    iget-object v1, p0, Lcom/pocketchange/android/util/MethodCacheByName;->b:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 33
    array-length v2, v1

    const/4 v3, 0x0

    move v6, v3

    move-object v3, v0

    move v0, v6

    :goto_1
    if-ge v0, v2, :cond_3

    aget-object v4, v1, v0

    .line 34
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 36
    if-eqz v3, :cond_1

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pocketchange/android/util/MethodCacheByName;->b:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] contains multiple public methods matching name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v3, v4

    .line 33
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 42
    :cond_3
    invoke-virtual {p0, p1, v3}, Lcom/pocketchange/android/util/MethodCacheByName;->cacheMethod(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    move-object v0, v3

    goto :goto_0
.end method

.method public getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 49
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/pocketchange/android/util/MethodCacheByName;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0, p1}, Lcom/pocketchange/android/util/MethodCacheByName;->getMethodFromCache(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    .line 53
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/pocketchange/android/util/MethodCacheByName;->b:Ljava/lang/Class;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 57
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/pocketchange/android/util/MethodCacheByName;->cacheMethod(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected getMethodFromCache(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/pocketchange/android/util/MethodCacheByName;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/pocketchange/android/util/MethodCacheByName;
    check-cast p0, Ljava/lang/reflect/Method;

    .line 68
    sget-object v0, Lcom/pocketchange/android/util/MethodCacheByName;->a:Ljava/lang/reflect/Method;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method
