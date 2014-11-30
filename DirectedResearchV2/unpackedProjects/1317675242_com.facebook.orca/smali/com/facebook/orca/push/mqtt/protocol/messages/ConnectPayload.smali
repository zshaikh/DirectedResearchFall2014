.class public Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayload;
.super Ljava/lang/Object;
.source "ConnectPayload.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayloadBuilder;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayloadBuilder;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayload;->a:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayloadBuilder;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayload;->b:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayloadBuilder;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayload;->c:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayloadBuilder;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayload;->d:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayloadBuilder;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayload;->e:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayload;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayload;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayload;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayload;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayload;->e:Ljava/lang/String;

    return-object v0
.end method
