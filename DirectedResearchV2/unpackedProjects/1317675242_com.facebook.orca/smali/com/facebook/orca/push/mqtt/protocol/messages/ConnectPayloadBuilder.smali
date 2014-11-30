.class public Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayloadBuilder;
.super Ljava/lang/Object;
.source "ConnectPayloadBuilder.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayloadBuilder;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayloadBuilder;->a:Ljava/lang/String;

    .line 35
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayloadBuilder;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayloadBuilder;
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayloadBuilder;->b:Ljava/lang/String;

    .line 55
    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayloadBuilder;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayloadBuilder;
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayloadBuilder;->c:Ljava/lang/String;

    .line 75
    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayloadBuilder;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayloadBuilder;
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayloadBuilder;->d:Ljava/lang/String;

    .line 95
    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayloadBuilder;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayloadBuilder;
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayloadBuilder;->e:Ljava/lang/String;

    .line 115
    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayloadBuilder;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayload;
    .locals 1

    .prologue
    .line 124
    new-instance v0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayload;

    invoke-direct {v0, p0}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayload;-><init>(Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayloadBuilder;)V

    return-object v0
.end method
