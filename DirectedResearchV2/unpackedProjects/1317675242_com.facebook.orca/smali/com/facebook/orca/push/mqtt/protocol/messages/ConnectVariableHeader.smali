.class public Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeader;
.super Ljava/lang/Object;
.source "ConnectVariableHeader.java"


# instance fields
.field private final a:I

.field private final b:Z

.field private final c:Z

.field private final d:Z

.field private final e:I

.field private final f:Z

.field private final g:Z

.field private final h:I


# direct methods
.method constructor <init>(Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeaderBuilder;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeaderBuilder;->a()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeader;->a:I

    .line 23
    invoke-virtual {p1}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeaderBuilder;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeader;->b:Z

    .line 24
    invoke-virtual {p1}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeaderBuilder;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeader;->c:Z

    .line 25
    invoke-virtual {p1}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeaderBuilder;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeader;->d:Z

    .line 26
    invoke-virtual {p1}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeaderBuilder;->f()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeader;->e:I

    .line 27
    invoke-virtual {p1}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeaderBuilder;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeader;->f:Z

    .line 28
    invoke-virtual {p1}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeaderBuilder;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeader;->g:Z

    .line 29
    invoke-virtual {p1}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeaderBuilder;->h()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeader;->h:I

    .line 30
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeader;->a:I

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeader;->b:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeader;->c:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeader;->f:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeader;->d:Z

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeader;->e:I

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeader;->g:Z

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeader;->h:I

    return v0
.end method
