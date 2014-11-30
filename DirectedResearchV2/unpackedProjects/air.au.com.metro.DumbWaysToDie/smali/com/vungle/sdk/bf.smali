.class public final Lcom/vungle/sdk/bf;
.super Lcom/vungle/sdk/bb;
.source "vungle"


# instance fields
.field private final a:Ljava/lang/ClassLoader;

.field private final b:[Ljava/lang/reflect/Field;

.field private c:[Lcom/vungle/sdk/aq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/vungle/sdk/aq",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/ClassLoader;[Ljava/lang/reflect/Field;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/vungle/sdk/bb;-><init>()V

    .line 37
    iput-object p2, p0, Lcom/vungle/sdk/bf;->b:[Ljava/lang/reflect/Field;

    .line 38
    iput-object p1, p0, Lcom/vungle/sdk/bf;->a:Ljava/lang/ClassLoader;

    .line 39
    return-void
.end method

.method public static a(Ljava/lang/Class;)Lcom/vungle/sdk/bb;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/vungle/sdk/bb;"
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 63
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const-class v5, Ljavax/inject/Inject;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 64
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 65
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No static injections: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_2
    new-instance v1, Lcom/vungle/sdk/bf;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/reflect/Field;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/reflect/Field;

    invoke-direct {v1, v2, p0}, Lcom/vungle/sdk/bf;-><init>(Ljava/lang/ClassLoader;[Ljava/lang/reflect/Field;)V

    return-object v1
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 52
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/vungle/sdk/bf;->b:[Ljava/lang/reflect/Field;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/vungle/sdk/bf;->b:[Ljava/lang/reflect/Field;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vungle/sdk/bf;->c:[Lcom/vungle/sdk/aq;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/vungle/sdk/aq;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 57
    :cond_0
    return-void
.end method

.method public final a(Lcom/vungle/sdk/av;)V
    .locals 5

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vungle/sdk/bf;->b:[Ljava/lang/reflect/Field;

    array-length v0, v0

    new-array v0, v0, [Lcom/vungle/sdk/aq;

    iput-object v0, p0, Lcom/vungle/sdk/bf;->c:[Lcom/vungle/sdk/aq;

    .line 43
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/vungle/sdk/bf;->b:[Ljava/lang/reflect/Field;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/vungle/sdk/bf;->b:[Ljava/lang/reflect/Field;

    aget-object v1, v1, v0

    .line 45
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/vungle/sdk/at;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 46
    iget-object v3, p0, Lcom/vungle/sdk/bf;->c:[Lcom/vungle/sdk/aq;

    iget-object v4, p0, Lcom/vungle/sdk/bf;->a:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v2, v1, v4}, Lcom/vungle/sdk/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Lcom/vungle/sdk/aq;

    move-result-object v1

    aput-object v1, v3, v0

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_0
    return-void
.end method
