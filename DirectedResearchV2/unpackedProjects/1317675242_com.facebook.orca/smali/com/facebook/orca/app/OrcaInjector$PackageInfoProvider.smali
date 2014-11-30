.class Lcom/facebook/orca/app/OrcaInjector$PackageInfoProvider;
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
        "Landroid/content/pm/PackageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 2038
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$PackageInfoProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 2038
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$PackageInfoProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/pm/PackageInfo;
    .locals 2

    .prologue
    .line 2043
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaInjector$PackageInfoProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v1, Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManager;

    const-string v0, "com.facebook.orca"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 2044
    :catch_0
    move-exception v0

    .line 2045
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2038
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$PackageInfoProvider;->a()Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method
