.class public Lcom/facebook/orca/push/mqtt/protocol/messages/UnsubAckMqttMessage;
.super Lcom/facebook/orca/push/mqtt/protocol/messages/MqttMessage;
.source "UnsubAckMqttMessage.java"


# virtual methods
.method public a()Lcom/facebook/orca/push/mqtt/protocol/messages/MessageIdVariableHeader;
    .locals 0

    .prologue
    .line 18
    invoke-super {p0}, Lcom/facebook/orca/push/mqtt/protocol/messages/MqttMessage;->d()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/push/mqtt/protocol/messages/MessageIdVariableHeader;

    return-object p0
.end method

.method public bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/facebook/orca/push/mqtt/protocol/messages/UnsubAckMqttMessage;->a()Lcom/facebook/orca/push/mqtt/protocol/messages/MessageIdVariableHeader;

    move-result-object v0

    return-object v0
.end method
