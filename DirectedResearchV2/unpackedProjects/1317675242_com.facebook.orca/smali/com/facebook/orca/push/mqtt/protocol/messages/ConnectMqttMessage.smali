.class public Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectMqttMessage;
.super Lcom/facebook/orca/push/mqtt/protocol/messages/MqttMessage;
.source "ConnectMqttMessage.java"


# direct methods
.method public constructor <init>(Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeader;Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayload;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/push/mqtt/protocol/messages/MqttMessage;-><init>(Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeader;
    .locals 0

    .prologue
    .line 20
    invoke-super {p0}, Lcom/facebook/orca/push/mqtt/protocol/messages/MqttMessage;->d()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeader;

    return-object p0
.end method

.method public b()Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayload;
    .locals 0

    .prologue
    .line 25
    invoke-super {p0}, Lcom/facebook/orca/push/mqtt/protocol/messages/MqttMessage;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayload;

    return-object p0
.end method

.method public bridge synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectMqttMessage;->b()Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectMqttMessage;->a()Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeader;

    move-result-object v0

    return-object v0
.end method
