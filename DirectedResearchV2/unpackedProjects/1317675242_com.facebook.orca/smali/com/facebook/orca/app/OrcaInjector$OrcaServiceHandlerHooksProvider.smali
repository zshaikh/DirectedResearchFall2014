.class Lcom/facebook/orca/app/OrcaInjector$OrcaServiceHandlerHooksProvider;
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
        "Lcom/facebook/orca/server/OrcaServiceHandlerHook;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 2010
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$OrcaServiceHandlerHooksProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 2010
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$OrcaServiceHandlerHooksProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/server/OrcaServiceHandlerHook;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2014
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaInjector$OrcaServiceHandlerHooksProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v1, Lcom/facebook/orca/app/OrcaServiceHandlerHookForApp;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaInjector$OrcaServiceHandlerHooksProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v2, Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    invoke-virtual {p0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->a()Lcom/facebook/orca/database/AddressBookPeriodicRunner$Hook;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2010
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$OrcaServiceHandlerHooksProvider;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
