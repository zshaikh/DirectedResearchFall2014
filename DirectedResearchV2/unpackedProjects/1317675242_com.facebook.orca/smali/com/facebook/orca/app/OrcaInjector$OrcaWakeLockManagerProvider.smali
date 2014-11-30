.class Lcom/facebook/orca/app/OrcaInjector$OrcaWakeLockManagerProvider;
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
        "Lcom/facebook/orca/common/OrcaWakeLockManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 746
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$OrcaWakeLockManagerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 746
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$OrcaWakeLockManagerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/common/OrcaWakeLockManager;
    .locals 3

    .prologue
    .line 750
    new-instance v0, Lcom/facebook/orca/common/OrcaWakeLockManager;

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaInjector$OrcaWakeLockManagerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-static {v1}, Lcom/facebook/orca/app/OrcaInjector;->c(Lcom/facebook/orca/app/OrcaInjector;)Lcom/facebook/orca/app/OrcaApplication;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Lcom/facebook/orca/app/OrcaApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    invoke-direct {v0, p0}, Lcom/facebook/orca/common/OrcaWakeLockManager;-><init>(Landroid/os/PowerManager;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 746
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$OrcaWakeLockManagerProvider;->a()Lcom/facebook/orca/common/OrcaWakeLockManager;

    move-result-object v0

    return-object v0
.end method
