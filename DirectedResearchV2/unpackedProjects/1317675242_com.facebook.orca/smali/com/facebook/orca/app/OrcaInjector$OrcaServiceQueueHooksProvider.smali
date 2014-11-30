.class Lcom/facebook/orca/app/OrcaInjector$OrcaServiceQueueHooksProvider;
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
        "Lcom/facebook/orca/server/OrcaServiceQueueHook;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 2020
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$OrcaServiceQueueHooksProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 2020
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$OrcaServiceQueueHooksProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/server/OrcaServiceQueueHook;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2024
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaInjector$OrcaServiceQueueHooksProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v1, Lcom/facebook/orca/server/BackgroundRefreshRunner;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;

    invoke-virtual {p0}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->a()Lcom/facebook/orca/server/BackgroundRefreshRunner$QueueHook;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2020
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$OrcaServiceQueueHooksProvider;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
