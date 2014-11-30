.class public Lcom/pocketchange/android/content/ResourceIdentifierResolverFactory;
.super Lcom/pocketchange/android/util/SingletonFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pocketchange/android/util/SingletonFactory",
        "<",
        "Lcom/pocketchange/android/content/ResourceIdentifierResolver;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/pocketchange/android/content/ResourceIdentifierResolverFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/pocketchange/android/content/ResourceIdentifierResolverFactory;

    invoke-direct {v0}, Lcom/pocketchange/android/content/ResourceIdentifierResolverFactory;-><init>()V

    sput-object v0, Lcom/pocketchange/android/content/ResourceIdentifierResolverFactory;->a:Lcom/pocketchange/android/content/ResourceIdentifierResolverFactory;

    .line 14
    sget-object v0, Lcom/pocketchange/android/content/ResourceIdentifierResolverFactory;->a:Lcom/pocketchange/android/content/ResourceIdentifierResolverFactory;

    invoke-direct {v0}, Lcom/pocketchange/android/content/ResourceIdentifierResolverFactory;->a()V

    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 18
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/pocketchange/android/util/SingletonFactory;-><init>([Ljava/lang/Class;)V

    .line 19
    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    .line 23
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.pocketchange.android.content.ResourceIdentifierResolverFactoryInitializer"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 24
    const-string v1, "initialize"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/pocketchange/android/content/ResourceIdentifierResolverFactory;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 25
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :cond_0
    :goto_0
    return-void

    .line 26
    :catch_0
    move-exception v0

    .line 27
    const-class v1, Lcom/pocketchange/android/content/StaticResourceIdentifierResolver;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pocketchange/android/content/ResourceIdentifierResolverFactory;->setImplClass(Ljava/lang/String;)V

    .line 28
    instance-of v1, v0, Ljava/lang/ClassNotFoundException;

    if-nez v1, :cond_0

    .line 29
    const-string v1, "ResourceIdentifierResolverFactory"

    const-string v2, "Error initializing factory"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getFactory()Lcom/pocketchange/android/content/ResourceIdentifierResolverFactory;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/pocketchange/android/content/ResourceIdentifierResolverFactory;->a:Lcom/pocketchange/android/content/ResourceIdentifierResolverFactory;

    return-object v0
.end method

.method public static getResolver(Landroid/content/Context;)Lcom/pocketchange/android/content/ResourceIdentifierResolver;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    sget-object v0, Lcom/pocketchange/android/content/ResourceIdentifierResolverFactory;->a:Lcom/pocketchange/android/content/ResourceIdentifierResolverFactory;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/pocketchange/android/content/ResourceIdentifierResolverFactory;->getInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "context":Landroid/content/Context;
    check-cast p0, Lcom/pocketchange/android/content/ResourceIdentifierResolver;

    return-object p0
.end method
