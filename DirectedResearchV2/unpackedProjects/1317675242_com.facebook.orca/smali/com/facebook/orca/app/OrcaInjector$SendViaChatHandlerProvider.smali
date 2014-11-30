.class Lcom/facebook/orca/app/OrcaInjector$SendViaChatHandlerProvider;
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
        "Lcom/facebook/orca/protocol/methods/SendViaChatHandler;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 1571
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$SendViaChatHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 1571
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$SendViaChatHandlerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/protocol/methods/SendViaChatHandler;
    .locals 5

    .prologue
    .line 1575
    new-instance v2, Lcom/facebook/orca/protocol/methods/SendViaChatHandler;

    iget-object v0, p0, Lcom/facebook/orca/app/OrcaInjector$SendViaChatHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v1, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaInjector$SendViaChatHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v3, Lcom/facebook/orca/push/common/PushDeserialization;

    invoke-virtual {v1, v3}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/push/common/PushDeserialization;

    iget-object v3, p0, Lcom/facebook/orca/app/OrcaInjector$SendViaChatHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v4, Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;

    invoke-virtual {v3, v4}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;

    invoke-direct {v2, v0, v1, p0}, Lcom/facebook/orca/protocol/methods/SendViaChatHandler;-><init>(Lcom/facebook/orca/push/mqtt/MqttConnectionManager;Lcom/facebook/orca/push/common/PushDeserialization;Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;)V

    return-object v2
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1571
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$SendViaChatHandlerProvider;->a()Lcom/facebook/orca/protocol/methods/SendViaChatHandler;

    move-result-object v0

    return-object v0
.end method
