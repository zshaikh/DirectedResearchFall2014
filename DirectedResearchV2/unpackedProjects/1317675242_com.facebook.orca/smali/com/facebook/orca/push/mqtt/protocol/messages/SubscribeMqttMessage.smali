.class public Lcom/facebook/orca/push/mqtt/protocol/messages/SubscribeMqttMessage;
.super Lcom/facebook/orca/push/mqtt/protocol/messages/MqttMessage;
.source "SubscribeMqttMessage.java"


# direct methods
.method public constructor <init>(Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;Lcom/facebook/orca/push/mqtt/protocol/messages/MessageIdVariableHeader;Lcom/facebook/orca/push/mqtt/protocol/messages/SubscribePayload;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/push/mqtt/protocol/messages/MqttMessage;-><init>(Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/push/mqtt/protocol/messages/MessageIdVariableHeader;
    .locals 0

    .prologue
    .line 20
    invoke-super {p0}, Lcom/facebook/orca/push/mqtt/protocol/messages/MqttMessage;->d()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/push/mqtt/protocol/messages/MessageIdVariableHeader;

    return-object p0
.end method

.method public b()Lcom/facebook/orca/push/mqtt/protocol/messages/SubscribePayload;
    .locals 0

    .prologue
    .line 25
    invoke-super {p0}, Lcom/facebook/orca/push/mqtt/protocol/messages/MqttMessage;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/push/mqtt/protocol/messages/SubscribePayload;

    return-object p0
.end method

.method public bridge synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/facebook/orca/push/mqtt/protocol/messages/SubscribeMqttMessage;->b()Lcom/facebook/orca/push/mqtt/protocol/messages/SubscribePayload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/facebook/orca/push/mqtt/protocol/messages/SubscribeMqttMessage;->a()Lcom/facebook/orca/push/mqtt/protocol/messages/MessageIdVariableHeader;

    move-result-object v0

    return-object v0
.end method
