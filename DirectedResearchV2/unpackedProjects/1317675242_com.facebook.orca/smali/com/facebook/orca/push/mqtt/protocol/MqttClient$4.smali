.class Lcom/facebook/orca/push/mqtt/protocol/MqttClient$4;
.super Ljava/lang/Object;
.source "MqttClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/orca/push/mqtt/protocol/MqttClient;


# direct methods
.method constructor <init>(Lcom/facebook/orca/push/mqtt/protocol/MqttClient;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/facebook/orca/push/mqtt/protocol/MqttClient$4;->a:Lcom/facebook/orca/push/mqtt/protocol/MqttClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/MqttClient$4;->a:Lcom/facebook/orca/push/mqtt/protocol/MqttClient;

    invoke-static {v0}, Lcom/facebook/orca/push/mqtt/protocol/MqttClient;->b(Lcom/facebook/orca/push/mqtt/protocol/MqttClient;)V

    .line 134
    return-void
.end method
