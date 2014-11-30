.class Lcom/facebook/orca/app/OrcaInjector$PresenceManagerProvider;
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
        "Lcom/facebook/orca/push/PresenceManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 1673
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$PresenceManagerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 1673
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$PresenceManagerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/push/PresenceManager;
    .locals 4

    .prologue
    .line 1677
    new-instance v1, Lcom/facebook/orca/push/PresenceManager;

    iget-object v0, p0, Lcom/facebook/orca/app/OrcaInjector$PresenceManagerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v2, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    iget-object v2, p0, Lcom/facebook/orca/app/OrcaInjector$PresenceManagerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v3, Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-virtual {v2, v3}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-direct {v1, v0, p0}, Lcom/facebook/orca/push/PresenceManager;-><init>(Lcom/facebook/orca/push/mqtt/MqttConnectionManager;Lcom/facebook/orca/app/OrcaActivityBroadcaster;)V

    return-object v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1673
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$PresenceManagerProvider;->a()Lcom/facebook/orca/push/PresenceManager;

    move-result-object v0

    return-object v0
.end method
