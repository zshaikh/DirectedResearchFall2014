.class Lcom/facebook/orca/app/OrcaInjector$PushManagerProvider;
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
        "Lcom/facebook/orca/push/PushManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 1684
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$PushManagerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 1684
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$PushManagerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/push/PushManager;
    .locals 7

    .prologue
    .line 1688
    new-instance v0, Lcom/facebook/orca/push/PushManager;

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaInjector$PushManagerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v2, Lcom/facebook/orca/config/OrcaConfig;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/config/OrcaConfig;

    iget-object v2, p0, Lcom/facebook/orca/app/OrcaInjector$PushManagerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v3, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v2, v3}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    iget-object v3, p0, Lcom/facebook/orca/app/OrcaInjector$PushManagerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v4, Lcom/facebook/orca/push/mqtt/MqttRegistrar;

    invoke-virtual {v3, v4}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/push/mqtt/MqttRegistrar;

    iget-object v4, p0, Lcom/facebook/orca/app/OrcaInjector$PushManagerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v5, Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-class v6, Lcom/facebook/orca/annotations/FromApplication;

    invoke-virtual {v4, v5, v6}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Provider;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/orca/app/OrcaInjector$PushManagerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v6, Lcom/facebook/orca/auth/AuthenticationManager;

    invoke-virtual {v5, v6}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/orca/auth/AuthenticationManager;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/push/PushManager;-><init>(Lcom/facebook/orca/config/OrcaConfig;Lcom/facebook/orca/push/c2dm/C2DMRegistrar;Lcom/facebook/orca/push/mqtt/MqttRegistrar;Lcom/google/inject/Provider;Lcom/facebook/orca/auth/AuthenticationManager;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1684
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$PushManagerProvider;->a()Lcom/facebook/orca/push/PushManager;

    move-result-object v0

    return-object v0
.end method
