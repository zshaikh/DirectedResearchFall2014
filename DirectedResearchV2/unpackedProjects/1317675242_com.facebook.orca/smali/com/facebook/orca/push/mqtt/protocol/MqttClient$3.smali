.class Lcom/facebook/orca/push/mqtt/protocol/MqttClient$3;
.super Ljava/lang/Object;
.source "MqttClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:[B

.field final synthetic c:I

.field final synthetic d:Z

.field final synthetic e:I

.field final synthetic f:Lcom/facebook/orca/push/mqtt/protocol/MqttClient;


# direct methods
.method constructor <init>(Lcom/facebook/orca/push/mqtt/protocol/MqttClient;Ljava/lang/String;[BIZI)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/facebook/orca/push/mqtt/protocol/MqttClient$3;->f:Lcom/facebook/orca/push/mqtt/protocol/MqttClient;

    iput-object p2, p0, Lcom/facebook/orca/push/mqtt/protocol/MqttClient$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/orca/push/mqtt/protocol/MqttClient$3;->b:[B

    iput p4, p0, Lcom/facebook/orca/push/mqtt/protocol/MqttClient$3;->c:I

    iput-boolean p5, p0, Lcom/facebook/orca/push/mqtt/protocol/MqttClient$3;->d:Z

    iput p6, p0, Lcom/facebook/orca/push/mqtt/protocol/MqttClient$3;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 121
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/MqttClient$3;->f:Lcom/facebook/orca/push/mqtt/protocol/MqttClient;

    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/protocol/MqttClient$3;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/orca/push/mqtt/protocol/MqttClient$3;->b:[B

    iget v3, p0, Lcom/facebook/orca/push/mqtt/protocol/MqttClient$3;->c:I

    iget-boolean v4, p0, Lcom/facebook/orca/push/mqtt/protocol/MqttClient$3;->d:Z

    iget v5, p0, Lcom/facebook/orca/push/mqtt/protocol/MqttClient$3;->e:I

    invoke-static/range {v0 .. v5}, Lcom/facebook/orca/push/mqtt/protocol/MqttClient;->a(Lcom/facebook/orca/push/mqtt/protocol/MqttClient;Ljava/lang/String;[BIZI)V

    .line 122
    return-void
.end method
