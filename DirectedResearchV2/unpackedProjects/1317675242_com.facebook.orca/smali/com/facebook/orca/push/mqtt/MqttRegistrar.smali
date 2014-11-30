.class public Lcom/facebook/orca/push/mqtt/MqttRegistrar;
.super Ljava/lang/Object;
.source "MqttRegistrar.java"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation runtime Lcom/facebook/orca/annotations/FromApplication;
        .end annotation
    .end param

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/facebook/orca/push/mqtt/MqttRegistrar;->a:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 24
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttRegistrar;->a:Landroid/content/Context;

    const-class v2, Lcom/facebook/orca/push/mqtt/MqttPushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    const-string v1, "Orca.START"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttRegistrar;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 27
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttRegistrar;->a:Landroid/content/Context;

    const-class v2, Lcom/facebook/orca/push/mqtt/MqttPushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    const-string v1, "Orca.STOP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttRegistrar;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 34
    return-void
.end method
