.class public Lcom/facebook/orca/push/mqtt/protocol/MqttParameters;
.super Ljava/lang/Object;
.source "MqttParameters.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Z

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:S


# direct methods
.method public constructor <init>(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/facebook/orca/push/mqtt/protocol/MqttParameters;->a:Ljava/lang/String;

    .line 29
    iput p2, p0, Lcom/facebook/orca/push/mqtt/protocol/MqttParameters;->b:I

    .line 30
    iput-boolean p3, p0, Lcom/facebook/orca/push/mqtt/protocol/MqttParameters;->c:Z

    .line 31
    iput-object p4, p0, Lcom/facebook/orca/push/mqtt/protocol/MqttParameters;->d:Ljava/lang/String;

    .line 32
    iput-object p5, p0, Lcom/facebook/orca/push/mqtt/protocol/MqttParameters;->e:Ljava/lang/String;

    .line 33
    iput-object p6, p0, Lcom/facebook/orca/push/mqtt/protocol/MqttParameters;->f:Ljava/lang/String;

    .line 34
    iput-short p7, p0, Lcom/facebook/orca/push/mqtt/protocol/MqttParameters;->g:S

    .line 35
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/MqttParameters;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/facebook/orca/push/mqtt/protocol/MqttParameters;->b:I

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/facebook/orca/push/mqtt/protocol/MqttParameters;->c:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public e()S
    .locals 1

    .prologue
    .line 54
    iget-short v0, p0, Lcom/facebook/orca/push/mqtt/protocol/MqttParameters;->g:S

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/MqttParameters;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/MqttParameters;->e:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/MqttParameters;->f:Ljava/lang/String;

    return-object v0
.end method
