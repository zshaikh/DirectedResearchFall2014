.class Lcom/facebook/orca/app/OrcaInjector$SingleMethodRunnerProvider;
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
        "Lcom/facebook/orca/protocol/base/SingleMethodRunner;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 1600
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$SingleMethodRunnerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 1600
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$SingleMethodRunnerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/protocol/base/SingleMethodRunner;
    .locals 8

    .prologue
    .line 1604
    new-instance v0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaInjector$SingleMethodRunnerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v2, Lcom/facebook/orca/config/OrcaHttpConfig;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/config/OrcaHttpConfig;

    iget-object v2, p0, Lcom/facebook/orca/app/OrcaInjector$SingleMethodRunnerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v3, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    invoke-virtual {v2, v3}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    iget-object v3, p0, Lcom/facebook/orca/app/OrcaInjector$SingleMethodRunnerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v4, Lcom/facebook/orca/users/User;

    const-class v5, Lcom/facebook/orca/annotations/MeUser;

    invoke-virtual {v3, v4, v5}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Provider;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/orca/app/OrcaInjector$SingleMethodRunnerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v5, Lcom/facebook/orca/auth/FacebookCredentials;

    invoke-virtual {v4, v5}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;)Lcom/google/inject/Provider;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/orca/app/OrcaInjector$SingleMethodRunnerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v6, Ljava/lang/Boolean;

    const-class v7, Lcom/facebook/orca/annotations/PhpProfiling;

    invoke-virtual {v5, v6, v7}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-object v6, p0, Lcom/facebook/orca/app/OrcaInjector$SingleMethodRunnerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v7, Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {v6, v7}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/orca/app/OrcaAppType;

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;-><init>(Lcom/facebook/orca/config/OrcaHttpConfig;Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;Lcom/google/inject/Provider;Lcom/google/inject/Provider;ZLcom/facebook/orca/app/OrcaAppType;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1600
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$SingleMethodRunnerProvider;->a()Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    move-result-object v0

    return-object v0
.end method
