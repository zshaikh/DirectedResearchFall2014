.class Lcom/facebook/orca/app/OrcaInjector$AuthenticatedActivityHelperProvider;
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
        "Lcom/facebook/orca/activity/AuthenticatedActivityHelper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 550
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$AuthenticatedActivityHelperProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 550
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$AuthenticatedActivityHelperProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/activity/AuthenticatedActivityHelper;
    .locals 7

    .prologue
    .line 554
    new-instance v0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaInjector$AuthenticatedActivityHelperProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-static {v1}, Lcom/facebook/orca/app/OrcaInjector;->b(Lcom/facebook/orca/app/OrcaInjector;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/app/OrcaInjector$AuthenticatedActivityHelperProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v3, Lcom/facebook/orca/auth/AuthenticationManager;

    invoke-virtual {v2, v3}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/auth/AuthenticationManager;

    iget-object v3, p0, Lcom/facebook/orca/app/OrcaInjector$AuthenticatedActivityHelperProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v4, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

    invoke-virtual {v3, v4}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

    iget-object v4, p0, Lcom/facebook/orca/app/OrcaInjector$AuthenticatedActivityHelperProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v5, Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-virtual {v4, v5}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    iget-object v5, p0, Lcom/facebook/orca/app/OrcaInjector$AuthenticatedActivityHelperProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v6, Lcom/facebook/orca/app/OrcaDataManager;

    invoke-virtual {v5, v6}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/orca/app/OrcaDataManager;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;-><init>(Landroid/app/Activity;Lcom/facebook/orca/auth/AuthenticationManager;Lcom/facebook/orca/activity/AuthenticatingActivityHelper;Lcom/facebook/orca/app/OrcaActivityBroadcaster;Lcom/facebook/orca/app/OrcaDataManager;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 550
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$AuthenticatedActivityHelperProvider;->a()Lcom/facebook/orca/activity/AuthenticatedActivityHelper;

    move-result-object v0

    return-object v0
.end method
