.class public Lcom/facebook/orca/app/OrcaInjector;
.super Ljava/lang/Object;
.source "OrcaInjector.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/orca/config/OrcaConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/facebook/orca/app/OrcaApplication;

.field private final c:Lcom/facebook/orca/app/ContextScope;

.field private d:Z

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/inject/Key;",
            "Lcom/google/inject/Provider;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/inject/Key;",
            "Lcom/google/inject/Provider;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/inject/Key;",
            "Lcom/google/inject/Key;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 188
    const-class v0, Lcom/facebook/orca/config/OrcaProductonConfig;

    sput-object v0, Lcom/facebook/orca/app/OrcaInjector;->a:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>(Lcom/facebook/orca/app/OrcaApplication;Lcom/facebook/orca/app/ContextScope;)V
    .locals 1

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    invoke-static {}, Lcom/google/inject/internal/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/app/OrcaInjector;->e:Ljava/util/Map;

    .line 196
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->o()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/app/OrcaInjector;->f:Ljava/util/Map;

    .line 197
    invoke-static {}, Lcom/google/inject/internal/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/app/OrcaInjector;->g:Ljava/util/Map;

    .line 200
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector;->b:Lcom/facebook/orca/app/OrcaApplication;

    .line 201
    iput-object p2, p0, Lcom/facebook/orca/app/OrcaInjector;->c:Lcom/facebook/orca/app/ContextScope;

    .line 202
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/app/OrcaInjector;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/facebook/orca/app/OrcaInjector;->d()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/facebook/orca/app/OrcaInjector;
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/app/OrcaApplication;

    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaApplication;->a()Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/inject/Key;Lcom/google/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;",
            "Lcom/google/inject/Provider",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 414
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaInjector;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    return-void
.end method

.method private a(Lcom/google/inject/Key;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 430
    invoke-static {p2}, Lcom/google/inject/util/Providers;->of(Ljava/lang/Object;)Lcom/google/inject/Provider;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Lcom/google/inject/Key;Lcom/google/inject/Provider;)V

    .line 431
    return-void
.end method

.method private a(Ljava/lang/Class;Lcom/google/inject/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/inject/Provider",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 410
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaInjector;->e:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/inject/Key;->get(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    return-void
.end method

.method private a(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 426
    invoke-static {p2}, Lcom/google/inject/util/Providers;->of(Ljava/lang/Object;)Lcom/google/inject/Provider;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 427
    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/app/OrcaInjector;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/facebook/orca/app/OrcaInjector;->c()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 186
    sget-object v0, Lcom/facebook/orca/app/OrcaInjector;->a:Ljava/lang/Class;

    return-object v0
.end method

.method private b(Lcom/google/inject/Key;Lcom/google/inject/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;",
            "Lcom/google/inject/Provider",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 422
    new-instance v0, Lcom/facebook/orca/app/OrcaInjector$SingletonProvider;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/facebook/orca/app/OrcaInjector$SingletonProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/google/inject/Provider;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Lcom/google/inject/Key;Lcom/google/inject/Provider;)V

    .line 423
    return-void
.end method

.method private b(Ljava/lang/Class;Lcom/google/inject/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/inject/Provider",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 418
    new-instance v0, Lcom/facebook/orca/app/OrcaInjector$SingletonProvider;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/facebook/orca/app/OrcaInjector$SingletonProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/google/inject/Provider;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 419
    return-void
.end method

.method private c()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaInjector;->c:Lcom/facebook/orca/app/ContextScope;

    invoke-virtual {v0}, Lcom/facebook/orca/app/ContextScope;->a()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic c(Lcom/facebook/orca/app/OrcaInjector;)Lcom/facebook/orca/app/OrcaApplication;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaInjector;->b:Lcom/facebook/orca/app/OrcaApplication;

    return-object v0
.end method

.method private c(Lcom/google/inject/Key;)Lcom/google/inject/Provider;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Lcom/google/inject/Provider",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 479
    invoke-virtual {p1}, Lcom/google/inject/Key;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/inject/Key;->getAnnotationType()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v5

    .line 512
    :goto_0
    return-object v0

    .line 482
    :cond_1
    invoke-virtual {p1}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/TypeLiteral;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 483
    instance-of v1, v0, Ljava/lang/reflect/GenericArrayType;

    if-nez v1, :cond_2

    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v1, :cond_2

    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-nez v1, :cond_2

    instance-of v0, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_3

    :cond_2
    move-object v0, v5

    .line 487
    goto :goto_0

    .line 490
    :cond_3
    invoke-virtual {p1}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 492
    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 493
    if-eqz v1, :cond_4

    .line 494
    const-string v2, "OrcaInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Created just-in-time provider for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    new-instance v0, Lcom/facebook/orca/app/OrcaInjector$4;

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/app/OrcaInjector$4;-><init>(Lcom/facebook/orca/app/OrcaInjector;Ljava/lang/reflect/Constructor;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 511
    :catch_0
    move-exception v0

    move-object v0, v5

    .line 512
    goto :goto_0

    :cond_4
    move-object v0, v5

    .line 510
    goto :goto_0
.end method

.method private c(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 434
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaInjector;->g:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/inject/Key;->get(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v1

    invoke-static {p2}, Lcom/google/inject/Key;->get(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    return-void
.end method

.method private d()Landroid/content/Context;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaInjector;->c:Lcom/facebook/orca/app/ContextScope;

    invoke-virtual {v0}, Lcom/facebook/orca/app/ContextScope;->a()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/inject/Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 446
    invoke-virtual {p0, p1}, Lcom/facebook/orca/app/OrcaInjector;->b(Lcom/google/inject/Key;)Lcom/google/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 438
    invoke-virtual {p0, p1}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;)Lcom/google/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 442
    invoke-static {p1, p2}, Lcom/google/inject/Key;->get(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/OrcaInjector;->b(Lcom/google/inject/Key;)Lcom/google/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 209
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaInjector;->c:Lcom/facebook/orca/app/ContextScope;

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaInjector;->b:Lcom/facebook/orca/app/OrcaApplication;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/ContextScope;->a(Landroid/content/Context;)V

    .line 211
    const-class v0, Lorg/apache/http/client/CookieStore;

    const-class v1, Lcom/facebook/orca/common/http/OrcaCookieStore;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 212
    const-class v0, Lorg/apache/http/client/HttpClient;

    const-class v1, Lcom/facebook/orca/common/http/OrcaHttpClient;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 213
    const-class v0, Lcom/facebook/orca/protocol/base/BatchRunner;

    const-class v1, Lcom/facebook/orca/protocol/base/RealBatchRunner;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 215
    const-class v0, Lcom/facebook/orca/app/ContextScope;

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaInjector;->c:Lcom/facebook/orca/app/ContextScope;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 216
    const-class v0, Ljava/lang/Boolean;

    const-class v1, Lcom/facebook/orca/annotations/PhpProfiling;

    invoke-static {v0, v1}, Lcom/google/inject/Key;->get(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Lcom/google/inject/Key;Ljava/lang/Object;)V

    .line 217
    const-class v0, Ljava/lang/Boolean;

    const-class v1, Lcom/facebook/orca/annotations/DisableSmsConfirmationFlow;

    invoke-static {v0, v1}, Lcom/google/inject/Key;->get(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Lcom/google/inject/Key;Ljava/lang/Object;)V

    .line 218
    const-class v0, Ljava/lang/Boolean;

    const-class v1, Lcom/facebook/orca/annotations/DisableBackgroundOperations;

    invoke-static {v0, v1}, Lcom/google/inject/Key;->get(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    iget-boolean v1, p0, Lcom/facebook/orca/app/OrcaInjector;->d:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Lcom/google/inject/Key;Ljava/lang/Object;)V

    .line 219
    const-class v0, Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaInjector;->b:Lcom/facebook/orca/app/OrcaApplication;

    invoke-virtual {v1}, Lcom/facebook/orca/app/OrcaApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 220
    const-class v0, Ljava/util/Random;

    const-class v1, Lcom/facebook/orca/annotations/InsecureRandom;

    invoke-static {v0, v1}, Lcom/google/inject/Key;->get(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Lcom/google/inject/Key;Ljava/lang/Object;)V

    .line 222
    const-class v0, Lcom/facebook/orca/app/OrcaDataManager;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$OrcaDataManagerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$OrcaDataManagerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 223
    const-class v0, Lcom/facebook/orca/auth/AuthenticationManager;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$AuthenticationManagerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$AuthenticationManagerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 224
    const-class v0, Lcom/facebook/orca/cache/AppConfigCache;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$AppConfigCacheProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$AppConfigCacheProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 225
    const-class v0, Lcom/facebook/orca/cache/DataCache;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$DataCacheProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$DataCacheProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 226
    const-class v0, Lcom/facebook/orca/cache/SendMessageManager;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$SendMessageManagerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$SendMessageManagerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 227
    const-class v0, Lcom/facebook/orca/cache/ThreadDisplayCache;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$ThreadDisplayCacheProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$ThreadDisplayCacheProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 228
    const-class v0, Lcom/facebook/orca/cache/ThreadsCache;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$ThreadsCacheProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$ThreadsCacheProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 229
    const-class v0, Lcom/facebook/orca/common/OrcaWakeLockManager;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$OrcaWakeLockManagerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$OrcaWakeLockManagerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 230
    const-class v0, Lcom/facebook/orca/common/http/OrcaCookieStore;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$OrcaCookieStoreProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$OrcaCookieStoreProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 231
    const-class v0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$OrcaHttpRequestProcessorProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$OrcaHttpRequestProcessorProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 232
    const-class v0, Lcom/facebook/orca/push/c2dm/C2DMReceiver$WakeLockHolder;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$C2DMReceiverWakeLockHolderProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$C2DMReceiverWakeLockHolderProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 233
    const-class v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$OrcaSharedPreferencesProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$OrcaSharedPreferencesProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 234
    const-class v0, Lcom/facebook/orca/prefs/UiCounters;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$UiCountersProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$UiCountersProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 235
    const-class v0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$KeyedAsyncTaskExecutorProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$KeyedAsyncTaskExecutorProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 236
    const-class v0, Lcom/facebook/orca/notify/OrcaNotificationManager;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$OrcaNotificationManagerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$OrcaNotificationManagerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 237
    const-class v0, Lcom/facebook/orca/images/ImageCache;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$ImageCacheProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$ImageCacheProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 238
    const-class v0, Lcom/facebook/orca/images/FetchImageCoordinator;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$FetchImageCoordinatorProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$FetchImageCoordinatorProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 239
    const-class v0, Lcom/facebook/orca/location/LocationCache;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$LocationCacheProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$LocationCacheProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 240
    const-class v0, Lcom/facebook/orca/database/ThreadsDbOpenHelper;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$ThreadsDbOpenHelperProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$ThreadsDbOpenHelperProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 241
    const-class v0, Lcom/facebook/orca/prefs/PrefsDbOpenHelper;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$PrefsDbOpenHelperProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$PrefsDbOpenHelperProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 242
    const-class v0, Lcom/facebook/orca/database/DbCache;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$DbCacheProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$DbCacheProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 243
    const-class v0, Lcom/facebook/orca/database/ThreadsDatabaseSupplier;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$ThreadsDatabaseSupplierProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$ThreadsDatabaseSupplierProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 244
    const-class v0, Lcom/facebook/orca/database/UsersDatabaseSupplier;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$UsersDatabaseSupplierProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$UsersDatabaseSupplierProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 245
    const-class v0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$AddressBookPeriodicRunnerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$AddressBookPeriodicRunnerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 246
    const-class v0, Lcom/facebook/orca/server/BackgroundRefreshRunner;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$BackgroundRefreshRunnerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$BackgroundRefreshRunnerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 247
    const-class v0, Lcom/facebook/orca/push/PushManager;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$PushManagerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$PushManagerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 248
    const-class v0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$MqttConnectionManagerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$MqttConnectionManagerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 249
    const-class v0, Lcom/facebook/orca/push/mqtt/PushHandler;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$PushHandlerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$PushHandlerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 250
    const-class v0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$C2DMRegistrarProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$C2DMRegistrarProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 251
    const-class v0, Lcom/facebook/orca/push/PresenceManager;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$PresenceManagerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$PresenceManagerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 252
    const-class v0, Lcom/facebook/orca/debug/OrcaLogImpl;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$OrcaLogImplProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$OrcaLogImplProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 253
    const-class v0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$GlobalNotificationPrefsSynchronizerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$GlobalNotificationPrefsSynchronizerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 254
    const-class v0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$ThreadNotificationPrefsSynchronizerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$ThreadNotificationPrefsSynchronizerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 255
    const-class v0, Lcom/facebook/orca/photos/tiles/DefaultTiles;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$DefaultTilesProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$DefaultTilesProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 256
    const-class v0, Lcom/facebook/orca/common/util/OfflineThreadingIdGenerator;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$OfflineThreadingIdGeneratorProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$OfflineThreadingIdGeneratorProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 257
    const-class v0, Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$UniqueIdForDeviceGeneratorProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$UniqueIdForDeviceGeneratorProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 258
    const-class v0, Lcom/facebook/orca/net/OrcaNetworkManager;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$OrcaNetworkManagerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$OrcaNetworkManagerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 259
    const-class v0, Lcom/facebook/orca/contacts/picker/ContactPickerPickingLogic;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$ContactPickerPickingLogicProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$ContactPickerPickingLogicProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 260
    const-class v0, Lcom/facebook/orca/common/http/OrcaHttpClient;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$OrcaHttpClientProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$OrcaHttpClientProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 261
    const-class v0, Landroid/database/sqlite/SQLiteDatabase;

    const-class v1, Lcom/facebook/orca/annotations/ThreadsDb;

    invoke-static {v0, v1}, Lcom/google/inject/Key;->get(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$ThreadsDatabaseProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$ThreadsDatabaseProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->b(Lcom/google/inject/Key;Lcom/google/inject/Provider;)V

    .line 262
    const-class v0, Landroid/database/sqlite/SQLiteDatabase;

    const-class v1, Lcom/facebook/orca/annotations/UsersDb;

    invoke-static {v0, v1}, Lcom/google/inject/Key;->get(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$UsersDatabaseProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$UsersDatabaseProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->b(Lcom/google/inject/Key;Lcom/google/inject/Provider;)V

    .line 263
    new-instance v0, Lcom/facebook/orca/app/OrcaInjector$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/app/OrcaInjector$1;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    invoke-static {v0}, Lcom/google/inject/Key;->get(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Key;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$OrcaServiceHooksProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$OrcaServiceHooksProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->b(Lcom/google/inject/Key;Lcom/google/inject/Provider;)V

    .line 264
    const-class v0, Lcom/facebook/orca/app/OrcaAppType;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$OrcaAppTypeProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$OrcaAppTypeProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 265
    const-class v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$PhoneNumberUtilProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$PhoneNumberUtilProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 266
    const-class v0, Lcom/facebook/orca/common/names/NameSplitter;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$NameSplitterProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$NameSplitterProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 268
    const-class v0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$AuthenticatedActivityHelperProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$AuthenticatedActivityHelperProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 269
    const-class v0, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$AuthenticatingActivityHelperProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$AuthenticatingActivityHelperProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 270
    const-class v0, Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$OrcaActivityBroadcasterProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$OrcaActivityBroadcasterProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 271
    const-class v0, Lcom/facebook/orca/app/OrcaServiceHandlerHookForApp;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$OrcaServiceHandlerHookForAppProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$OrcaServiceHandlerHookForAppProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 272
    const-class v0, Lcom/facebook/orca/attachments/AttachmentDataFactory;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$AttachmentDataFactoryProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$AttachmentDataFactoryProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 273
    const-class v0, Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$MediaAttachmentFactoryProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$MediaAttachmentFactoryProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 274
    const-class v0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeListAdapter;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$CountryCodeListAdapterProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$CountryCodeListAdapterProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 275
    const-class v0, Lcom/facebook/orca/cache/CacheServiceHandler;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$CacheServiceHandlerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$CacheServiceHandlerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 276
    const-class v0, Lcom/facebook/orca/cache/PendingSendMessage$Factory;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$PendingSendMessageFactoryProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$PendingSendMessageFactoryProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 277
    const-class v0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$ErrorDialogBuilderProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$ErrorDialogBuilderProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 278
    const-class v0, Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$ErrorMessageGeneratorProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$ErrorMessageGeneratorProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 279
    const-class v0, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$MessageRenderingUtilProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$MessageRenderingUtilProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 280
    const-class v0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$AnchorableToastProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$AnchorableToastProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 281
    const-class v0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$ThreadNameViewComputerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$ThreadNameViewComputerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 282
    const-class v0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler$MyNameLookupBuilder;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$DbInsertFriendUsersHandlerMyNameLookupBuilder;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$DbInsertFriendUsersHandlerMyNameLookupBuilder;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 283
    const-class v0, Lcom/facebook/orca/member/MemberActivity$CommandListAdapter;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$MemberActivityCommandListAdapterProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$MemberActivityCommandListAdapterProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 284
    const-class v0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$ThreadNameViewComputerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$ThreadNameViewComputerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 285
    const-class v0, Lcom/facebook/orca/common/util/FileSizeUtil;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$FileSizeUtilProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$FileSizeUtilProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 286
    sget-object v0, Lcom/facebook/orca/app/OrcaInjector;->a:Ljava/lang/Class;

    const-class v1, Lcom/facebook/orca/config/OrcaProductonConfig;

    if-ne v0, v1, :cond_0

    .line 288
    const-class v0, Lcom/facebook/orca/config/OrcaConfig;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$OrcaProductionConfigProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$OrcaProductionConfigProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 293
    :goto_0
    const-class v0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$ContactPickerIdentityChooserActivityMyAdapterProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$ContactPickerIdentityChooserActivityMyAdapterProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 294
    const-class v0, Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$ContactPickerNewListFilterProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$ContactPickerNewListFilterProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 295
    const-class v0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$ContactPickerViewListAdapterProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$ContactPickerViewListAdapterProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 296
    const-class v0, Lcom/facebook/orca/database/DbFetchThreadHandler;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$DbFetchThreadHandlerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$DbFetchThreadHandlerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 297
    const-class v0, Lcom/facebook/orca/database/DbFetchThreadUsersHandler;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$DbFetchThreadUsersHandlerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$DbFetchThreadUsersHandlerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 298
    const-class v0, Lcom/facebook/orca/database/DbFetchThreadsHandler;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$DbFetchThreadsHandlerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$DbFetchThreadsHandlerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 299
    const-class v0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$DbInsertFriendUsersHandlerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$DbInsertFriendUsersHandlerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 300
    const-class v0, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$DbInsertThreadUsersHandlerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$DbInsertThreadUsersHandlerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 301
    const-class v0, Lcom/facebook/orca/database/DbInsertThreadsHandler;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$DbInsertThreadsHandlerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$DbInsertThreadsHandlerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 302
    const-class v0, Lcom/facebook/orca/database/DbServiceHandler;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$DbServiceHandlerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$DbServiceHandlerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 303
    const-class v0, Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$DbThreadsPropertyUtilProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$DbThreadsPropertyUtilProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 304
    const-class v0, Lcom/facebook/orca/database/DbUsersPropertyUtil;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$DbUsersPropertyUtilProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$DbUsersPropertyUtilProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 305
    const-class v0, Lcom/facebook/orca/database/UsersDbOpenHelper;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$UsersDbOpenHelperProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$UsersDbOpenHelperProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 306
    const-class v0, Lcom/facebook/orca/debug/ErrorReportSender;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$ErrorReportSenderProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$ErrorReportSenderProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 307
    const-class v0, Lcom/facebook/orca/debug/MemoryUsageDumper;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$MemoryUsageDumperProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$MemoryUsageDumperProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 308
    const-class v0, Lcom/facebook/orca/images/FetchImageDeferrable;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$FetchImageDeferrableProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$FetchImageDeferrableProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 309
    const-class v0, Lcom/facebook/orca/images/FetchImageTask;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$FetchImageTaskProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$FetchImageTaskProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 310
    const-class v0, Lcom/facebook/orca/images/ImageScalingUtil;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$ImageScalingUtilProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$ImageScalingUtilProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 311
    const-class v0, Lcom/facebook/orca/images/ImageSearchHandler;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$ImageSearchHandlerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$ImageSearchHandlerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 312
    const-class v0, Lcom/facebook/orca/images/ImageSearchListAdapter;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$ImageSearchListAdapterProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$ImageSearchListAdapterProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 313
    const-class v0, Lcom/facebook/orca/location/LocationAsyncTask;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$LocationAsyncTaskProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$LocationAsyncTaskProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 314
    const-class v0, Lcom/facebook/orca/location/LocationServiceHandler;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$LocationServiceHandlerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$LocationServiceHandlerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 315
    const-class v0, Lcom/facebook/orca/member/DeleteThreadCommand;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$DeleteThreadCommandProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$DeleteThreadCommandProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 316
    const-class v0, Lcom/facebook/orca/member/EmailMemberCommand;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$EmailMemberCommandProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$EmailMemberCommandProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 317
    const-class v0, Lcom/facebook/orca/member/LeaveThreadCommand;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$LeaveThreadCommandProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$LeaveThreadCommandProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 318
    const-class v0, Lcom/facebook/orca/member/MemberActivity;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$MemberActivityProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$MemberActivityProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 319
    const-class v0, Lcom/facebook/orca/member/MemberCommands;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$MemberCommandsProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$MemberCommandsProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 320
    const-class v0, Lcom/facebook/orca/member/RemoveMemberCommand;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$RemoveMemberCommandProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$RemoveMemberCommandProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 321
    const-class v0, Lcom/facebook/orca/notify/NotificationSettingsUtil;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$NotificationSettingsUtilProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$NotificationSettingsUtilProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 322
    const-class v0, Lcom/facebook/orca/photos/picking/OldPhotoCleaner;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$OldPhotoCleanerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$OldPhotoCleanerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 323
    const-class v0, Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$GraphicSizerFactoryProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$GraphicSizerFactoryProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 324
    const-class v0, Lcom/facebook/orca/photos/tiles/DefaultTilesCache;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$DefaultTilesCacheProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$DefaultTilesCacheProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 325
    const-class v0, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$UserTileViewLogicProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$UserTileViewLogicProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 326
    const-class v0, Lcom/facebook/orca/protocol/methods/AddMembersMethod;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$AddMembersMethodProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$AddMembersMethodProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 327
    const-class v0, Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$AuthenticateSsoMethodProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$AuthenticateSsoMethodProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 328
    const-class v0, Lcom/facebook/orca/protocol/methods/CreateThreadMethod;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$CreateThreadMethodProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$CreateThreadMethodProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 329
    const-class v0, Lcom/facebook/orca/protocol/methods/FetchAppConfigMethod;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$FetchAppConfigMethodProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$FetchAppConfigMethodProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 330
    const-class v0, Lcom/facebook/orca/protocol/methods/FetchMoreMessagesMethod;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$FetchMoreMessagesMethodProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$FetchMoreMessagesMethodProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 331
    const-class v0, Lcom/facebook/orca/protocol/methods/FetchMessageMethod;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$FetchMessageMethodProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$FetchMessageMethodProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 332
    const-class v0, Lcom/facebook/orca/protocol/methods/FetchMoreThreadsMethod;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$FetchMoreThreadsMethodProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$FetchMoreThreadsMethodProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 333
    const-class v0, Lcom/facebook/orca/protocol/methods/FetchThreadMethod;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$FetchThreadMethodProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$FetchThreadMethodProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 334
    const-class v0, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$FetchThreadsFqlHelperProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$FetchThreadsFqlHelperProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 335
    const-class v0, Lcom/facebook/orca/protocol/methods/FetchThreadsMethod;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$FetchThreadsMethodProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$FetchThreadsMethodProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 336
    const-class v0, Lcom/facebook/orca/protocol/methods/GetFriendsMethod;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$GetFriendsMethodProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$GetFriendsMethodProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 337
    const-class v0, Lcom/facebook/orca/protocol/methods/GetMeUserMethod;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$GetMeUserMethodProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$GetMeUserMethodProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 338
    const-class v0, Lcom/facebook/orca/protocol/methods/MessageDeserializer;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$MessageDeserializerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$MessageDeserializerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 339
    const-class v0, Lcom/facebook/orca/protocol/base/RealBatchRunner;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$RealBatchRunnerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$RealBatchRunnerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 340
    const-class v0, Lcom/facebook/orca/protocol/methods/RemoveMemberMethod;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$RemoveMemberMethodProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$RemoveMemberMethodProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 341
    const-class v0, Lcom/facebook/orca/protocol/methods/SendMessageMethod;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$SendMessageMethodProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$SendMessageMethodProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 342
    const-class v0, Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$SendMessageParameterHelperProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$SendMessageParameterHelperProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 343
    const-class v0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$SendViaChatHandlerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$SendViaChatHandlerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 344
    const-class v0, Lcom/facebook/orca/protocol/methods/SetThreadImageMethod;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$SetThreadImageMethodProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$SetThreadImageMethodProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 345
    const-class v0, Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$SimulatedBatchRunnerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$SimulatedBatchRunnerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 346
    const-class v0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$SingleMethodRunnerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$SingleMethodRunnerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 347
    const-class v0, Lcom/facebook/orca/protocol/methods/ThreadSummaryDeserializer;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$ThreadSummaryDeserializerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$ThreadSummaryDeserializerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 348
    const-class v0, Lcom/facebook/orca/protocol/methods/UploadShareMethod;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$UploadPhotoMethodProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$UploadPhotoMethodProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 349
    const-class v0, Lcom/facebook/orca/protocol/WebServiceHandler;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$WebServiceHandlerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$WebServiceHandlerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 350
    const-class v0, Lcom/facebook/orca/push/common/PushDeserialization;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$PushDeserializationProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$PushDeserializationProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 351
    const-class v0, Lcom/facebook/orca/push/mqtt/MqttRegistrar;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$MqttRegistrarProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$MqttRegistrarProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 352
    const-class v0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$MessageDecoderProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$MessageDecoderProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 353
    const-class v0, Lcom/facebook/orca/server/PreProcessingServiceHandler;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$PreProcessingServiceHandlerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$PreProcessingServiceHandlerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 354
    const-class v0, Lcom/facebook/orca/tabs/TabIndicatorViewFactory;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$TabIndicatorViewFactoryProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$TabIndicatorViewFactoryProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 355
    const-class v0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$ThreadChooserDialogProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$ThreadChooserDialogProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 356
    const-class v0, Lcom/facebook/orca/threadlist/ThreadListAdapter;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$ThreadListAdapterProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$ThreadListAdapterProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 357
    const-class v0, Lcom/facebook/orca/threads/ThreadDateUtil;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$ThreadDateUtilProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$ThreadDateUtilProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 358
    const-class v0, Lcom/facebook/orca/threads/ThreadSourceUtil;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$ThreadSourceUtilProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$ThreadSourceUtilProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 359
    const-class v0, Lcom/facebook/orca/threadview/MessageListAdapter;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$MessageListAdapterProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$MessageListAdapterProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 360
    const-class v0, Lcom/facebook/orca/threadview/ThreadMemberListAdapter;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$ThreadMemberListAdapterProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$ThreadMemberListAdapterProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 361
    const-class v0, Lcom/facebook/orca/users/AddressBookServiceHandler;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$AddressBookServiceHandlerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$AddressBookServiceHandlerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 362
    const-class v0, Lcom/facebook/orca/users/FacebookUserIterator;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$FacebookUserIteratorProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$FacebookUserIteratorProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 363
    const-class v0, Lcom/facebook/orca/users/MergeAddressBookHandler;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$MergeAddressBookHandlerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$MergeAddressBookHandlerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 364
    const-class v0, Lcom/facebook/orca/users/PhoneUserIterator;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$PhoneUserIteratorProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$PhoneUserIteratorProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 365
    const-class v0, Lcom/facebook/orca/users/UserSerialization;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$UserSerializationProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$UserSerializationProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 366
    new-instance v0, Lcom/facebook/orca/app/OrcaInjector$2;

    invoke-direct {v0, p0}, Lcom/facebook/orca/app/OrcaInjector$2;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    invoke-static {v0}, Lcom/google/inject/Key;->get(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Key;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$OrcaServiceHandlerHooksProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$OrcaServiceHandlerHooksProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Lcom/google/inject/Key;Lcom/google/inject/Provider;)V

    .line 367
    new-instance v0, Lcom/facebook/orca/app/OrcaInjector$3;

    invoke-direct {v0, p0}, Lcom/facebook/orca/app/OrcaInjector$3;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    invoke-static {v0}, Lcom/google/inject/Key;->get(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Key;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$OrcaServiceQueueHooksProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$OrcaServiceQueueHooksProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Lcom/google/inject/Key;Lcom/google/inject/Provider;)V

    .line 368
    const-class v0, Landroid/content/pm/PackageInfo;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$PackageInfoProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$PackageInfoProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 369
    const-class v0, Landroid/os/Handler;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$HandlerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$HandlerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 370
    const-class v0, Lcom/facebook/orca/ops/OrcaServiceOperation;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$OrcaServiceOperationProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$OrcaServiceOperationProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 371
    const-class v0, Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-class v1, Lcom/facebook/orca/annotations/FromApplication;

    invoke-static {v0, v1}, Lcom/google/inject/Key;->get(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$OrcaServiceOperationForAppProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$OrcaServiceOperationForAppProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Lcom/google/inject/Key;Lcom/google/inject/Provider;)V

    .line 372
    const-class v0, Landroid/support/v4/app/FragmentManager;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$FragmentManagerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$FragmentManagerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 373
    const-class v0, Lcom/facebook/orca/users/User;

    const-class v1, Lcom/facebook/orca/annotations/MeUser;

    invoke-static {v0, v1}, Lcom/google/inject/Key;->get(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$MeUserProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$MeUserProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Lcom/google/inject/Key;Lcom/google/inject/Provider;)V

    .line 374
    const-class v0, Lcom/facebook/orca/auth/FacebookCredentials;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$FacebookCredentialsProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$FacebookCredentialsProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 375
    const-class v0, Lcom/facebook/orca/config/OrcaHttpConfig;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$OrcaHttpConfigProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$OrcaHttpConfigProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 376
    const-class v0, Lcom/facebook/orca/config/OrcaMqttConfig;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$OrcaMqttConfigProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$OrcaMqttConfigProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 378
    const-class v0, Landroid/content/Context;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$ContextProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$ContextProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 379
    const-class v0, Landroid/content/res/Resources;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$ResourcesProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$ResourcesProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 380
    const-class v0, Landroid/content/ContentResolver;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$ContentResolverProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$ContentResolverProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 382
    const-class v0, Landroid/location/LocationManager;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$SystemServiceProvider;

    const-string v2, "location"

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$SystemServiceProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 383
    const-class v0, Landroid/view/WindowManager;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$SystemServiceProvider;

    const-string v2, "window"

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$SystemServiceProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 384
    const-class v0, Landroid/view/LayoutInflater;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$SystemServiceProvider;

    const-string v2, "layout_inflater"

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$SystemServiceProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 385
    const-class v0, Landroid/app/ActivityManager;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$SystemServiceProvider;

    const-string v2, "activity"

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$SystemServiceProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 386
    const-class v0, Landroid/os/PowerManager;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$SystemServiceProvider;

    const-string v2, "power"

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$SystemServiceProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 387
    const-class v0, Landroid/app/AlarmManager;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$SystemServiceProvider;

    const-string v2, "alarm"

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$SystemServiceProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 388
    const-class v0, Landroid/app/NotificationManager;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$SystemServiceProvider;

    const-string v2, "notification"

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$SystemServiceProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 389
    const-class v0, Landroid/app/KeyguardManager;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$SystemServiceProvider;

    const-string v2, "keyguard"

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$SystemServiceProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 390
    const-class v0, Landroid/app/SearchManager;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$SystemServiceProvider;

    const-string v2, "search"

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$SystemServiceProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 391
    const-class v0, Landroid/os/Vibrator;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$SystemServiceProvider;

    const-string v2, "vibrator"

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$SystemServiceProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 392
    const-class v0, Landroid/net/ConnectivityManager;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$SystemServiceProvider;

    const-string v2, "connectivity"

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$SystemServiceProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 393
    const-class v0, Landroid/net/wifi/WifiManager;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$SystemServiceProvider;

    const-string v2, "wifi"

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$SystemServiceProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 394
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$SystemServiceProvider;

    const-string v2, "input_method"

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$SystemServiceProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 395
    const-class v0, Landroid/hardware/SensorManager;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$SystemServiceProvider;

    const-string v2, "sensor"

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$SystemServiceProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 396
    const-class v0, Landroid/text/ClipboardManager;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$SystemServiceProvider;

    const-string v2, "clipboard"

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$SystemServiceProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 397
    const-class v0, Landroid/telephony/TelephonyManager;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$SystemServiceProvider;

    const-string v2, "phone"

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/app/OrcaInjector$SystemServiceProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    .line 400
    const-class v0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 401
    const-class v0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 402
    return-void

    .line 291
    :cond_0
    const-class v0, Lcom/facebook/orca/config/OrcaConfig;

    new-instance v1, Lcom/facebook/orca/app/OrcaInjector$OrcaConfigProvider;

    invoke-direct {v1, p0}, Lcom/facebook/orca/app/OrcaInjector$OrcaConfigProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Lcom/google/inject/Provider;)V

    goto/16 :goto_0
.end method

.method public b(Lcom/google/inject/Key;)Lcom/google/inject/Provider;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Lcom/google/inject/Provider",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 458
    move-object v1, p1

    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaInjector;->g:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaInjector;->g:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/Key;

    move-object v1, v0

    goto :goto_0

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaInjector;->e:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/Provider;

    .line 464
    if-nez v0, :cond_1

    .line 465
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaInjector;->f:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/Provider;

    .line 466
    if-nez v0, :cond_1

    .line 467
    invoke-direct {p0, v1}, Lcom/facebook/orca/app/OrcaInjector;->c(Lcom/google/inject/Key;)Lcom/google/inject/Provider;

    move-result-object v0

    .line 468
    iget-object v2, p0, Lcom/facebook/orca/app/OrcaInjector;->f:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    :cond_1
    if-nez v0, :cond_2

    .line 472
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No provider bound for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 475
    :cond_2
    return-object v0
.end method

.method public b(Ljava/lang/Class;)Lcom/google/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/inject/Provider",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 450
    invoke-static {p1}, Lcom/google/inject/Key;->get(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/OrcaInjector;->b(Lcom/google/inject/Key;)Lcom/google/inject/Provider;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/google/inject/Provider",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 454
    invoke-static {p1, p2}, Lcom/google/inject/Key;->get(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/OrcaInjector;->b(Lcom/google/inject/Key;)Lcom/google/inject/Provider;

    move-result-object v0

    return-object v0
.end method
