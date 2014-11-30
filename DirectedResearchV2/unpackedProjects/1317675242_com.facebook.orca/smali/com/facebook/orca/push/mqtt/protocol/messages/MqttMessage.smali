.class public Lcom/facebook/orca/push/mqtt/protocol/messages/MqttMessage;
.super Ljava/lang/Object;
.source "MqttMessage.java"


# instance fields
.field private final a:Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/MqttMessage;->a:Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;

    .line 19
    iput-object p2, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/MqttMessage;->b:Ljava/lang/Object;

    .line 20
    iput-object p3, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/MqttMessage;->c:Ljava/lang/Object;

    .line 21
    return-void
.end method


# virtual methods
.method public c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/MqttMessage;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/MqttMessage;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/MqttMessage;->a:Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;->a()I

    move-result v0

    return v0
.end method

.method public f()Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/MqttMessage;->a:Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;

    return-object v0
.end method
