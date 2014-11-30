.class Lcom/facebook/orca/app/OrcaInjector$OrcaServiceHooksProvider;
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
        "Ljava/util/List",
        "<",
        "Lcom/facebook/orca/server/OrcaServiceHook;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 2030
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$OrcaServiceHooksProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 2030
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$OrcaServiceHooksProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/server/OrcaServiceHook;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2034
    new-instance v0, Lcom/facebook/orca/app/OrcaServiceHookForApp;

    invoke-direct {v0}, Lcom/facebook/orca/app/OrcaServiceHookForApp;-><init>()V

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2030
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$OrcaServiceHooksProvider;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
