.class Lcom/facebook/orca/app/OrcaInjector$OrcaAppTypeProvider;
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
        "Lcom/facebook/orca/app/OrcaAppType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 2050
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$OrcaAppTypeProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 2050
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$OrcaAppTypeProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/app/OrcaAppType;
    .locals 7

    .prologue
    .line 2055
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaInjector$OrcaAppTypeProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-static {v0}, Lcom/facebook/orca/app/OrcaInjector;->c(Lcom/facebook/orca/app/OrcaInjector;)Lcom/facebook/orca/app/OrcaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/app/OrcaApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2056
    const-string v1, "com.facebook.orca"

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 2058
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 2059
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 2060
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/common/util/SecureHashUtil;->b([B)Ljava/lang/String;

    move-result-object v3

    .line 2061
    const-string v4, "OrcaGuiceModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sig: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2062
    sget-object v4, Lcom/facebook/orca/app/OrcaAppType;->DEV:Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {v4}, Lcom/facebook/orca/app/OrcaAppType;->getSignature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2063
    sget-object v0, Lcom/facebook/orca/app/OrcaAppType;->DEV:Lcom/facebook/orca/app/OrcaAppType;

    .line 2071
    :goto_1
    return-object v0

    .line 2064
    :cond_0
    sget-object v4, Lcom/facebook/orca/app/OrcaAppType;->IN_HOUSE:Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {v4}, Lcom/facebook/orca/app/OrcaAppType;->getSignature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2065
    sget-object v0, Lcom/facebook/orca/app/OrcaAppType;->IN_HOUSE:Lcom/facebook/orca/app/OrcaAppType;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2059
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2068
    :catch_0
    move-exception v0

    .line 2071
    :cond_2
    sget-object v0, Lcom/facebook/orca/app/OrcaAppType;->PROD:Lcom/facebook/orca/app/OrcaAppType;

    goto :goto_1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2050
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$OrcaAppTypeProvider;->a()Lcom/facebook/orca/app/OrcaAppType;

    move-result-object v0

    return-object v0
.end method
