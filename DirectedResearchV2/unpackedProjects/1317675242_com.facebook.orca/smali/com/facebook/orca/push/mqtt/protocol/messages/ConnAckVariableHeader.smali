.class public Lcom/facebook/orca/push/mqtt/protocol/messages/ConnAckVariableHeader;
.super Ljava/lang/Object;
.source "ConnAckVariableHeader.java"


# instance fields
.field private final a:B


# direct methods
.method public constructor <init>(B)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-byte p1, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnAckVariableHeader;->a:B

    .line 21
    return-void
.end method


# virtual methods
.method public a()B
    .locals 1

    .prologue
    .line 29
    iget-byte v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnAckVariableHeader;->a:B

    return v0
.end method
