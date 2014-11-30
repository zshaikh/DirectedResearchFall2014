.class Lcom/facebook/orca/app/OrcaInjector$OrcaConfigProvider;
.super Ljava/lang/Object;
.source "OrcaInjector.java"

# interfaces
.implements Lcom/google/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/inject/Provider",
        "<",
        "Lcom/facebook/orca/config/OrcaConfig;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;

.field private final b:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Lcom/facebook/orca/config/OrcaConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 4

    .prologue
    .line 856
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$OrcaConfigProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 858
    :try_start_0
    invoke-static {}, Lcom/facebook/orca/app/OrcaInjector;->b()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/pm/PackageInfo;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/app/OrcaInjector$OrcaConfigProvider;->b:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 862
    return-void

    .line 859
    :catch_0
    move-exception v0

    .line 860
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public a()Lcom/facebook/orca/config/OrcaConfig;
    .locals 5

    .prologue
    .line 867
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaInjector$OrcaConfigProvider;->b:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/orca/app/OrcaInjector$OrcaConfigProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v4, Landroid/content/pm/PackageInfo;

    invoke-virtual {v3, v4}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/config/OrcaConfig;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    return-object p0

    .line 868
    :catch_0
    move-exception v0

    .line 869
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 870
    :catch_1
    move-exception v0

    .line 871
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 872
    :catch_2
    move-exception v0

    .line 873
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 852
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$OrcaConfigProvider;->a()Lcom/facebook/orca/config/OrcaConfig;

    move-result-object v0

    return-object v0
.end method
