.class Lcom/facebook/orca/app/OrcaInjector$MqttConnectionManagerProvider;
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
        "Lcom/facebook/orca/push/mqtt/MqttConnectionManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 1729
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$MqttConnectionManagerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 1729
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$MqttConnectionManagerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/push/mqtt/MqttConnectionManager;
    .locals 8

    .prologue
    .line 1733
    new-instance v0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaInjector$MqttConnectionManagerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v2, Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;

    iget-object v2, p0, Lcom/facebook/orca/app/OrcaInjector$MqttConnectionManagerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v3, Lcom/facebook/orca/auth/AuthenticationManager;

    invoke-virtual {v2, v3}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/auth/AuthenticationManager;

    iget-object v3, p0, Lcom/facebook/orca/app/OrcaInjector$MqttConnectionManagerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v4, Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-virtual {v3, v4}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    iget-object v4, p0, Lcom/facebook/orca/app/OrcaInjector$MqttConnectionManagerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-static {v4}, Lcom/facebook/orca/app/OrcaInjector;->c(Lcom/facebook/orca/app/OrcaInjector;)Lcom/facebook/orca/app/OrcaApplication;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Lcom/facebook/orca/app/OrcaApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    iget-object v5, p0, Lcom/facebook/orca/app/OrcaInjector$MqttConnectionManagerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v6, Lcom/facebook/orca/config/OrcaMqttConfig;

    invoke-virtual {v5, v6}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/orca/config/OrcaMqttConfig;

    iget-object v6, p0, Lcom/facebook/orca/app/OrcaInjector$MqttConnectionManagerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v7, Lcom/facebook/orca/push/mqtt/protocol/MqttSsl;

    invoke-virtual {v6, v7}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/orca/push/mqtt/protocol/MqttSsl;

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;-><init>(Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;Lcom/facebook/orca/auth/AuthenticationManager;Lcom/facebook/orca/app/OrcaActivityBroadcaster;Landroid/net/ConnectivityManager;Lcom/facebook/orca/config/OrcaMqttConfig;Lcom/facebook/orca/push/mqtt/protocol/MqttSsl;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1729
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$MqttConnectionManagerProvider;->a()Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    move-result-object v0

    return-object v0
.end method
