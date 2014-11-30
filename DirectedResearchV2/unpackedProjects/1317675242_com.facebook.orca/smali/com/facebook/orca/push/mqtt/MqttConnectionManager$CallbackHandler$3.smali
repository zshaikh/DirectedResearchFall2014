.class Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler$3;
.super Ljava/lang/Object;
.source "MqttConnectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;


# direct methods
.method constructor <init>(Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler$3;->c:Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;

    iput-object p2, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 353
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler$3;->c:Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-static {v0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->a(Lcom/facebook/orca/push/mqtt/MqttConnectionManager;)Lcom/facebook/orca/push/mqtt/protocol/MqttClient;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler$3;->c:Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;

    invoke-static {v1}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;->a(Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;)Lcom/facebook/orca/push/mqtt/protocol/MqttClient;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 354
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler$3;->c:Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler$3;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler$3;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :cond_0
    return-void
.end method
