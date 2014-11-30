.class public Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeaderBuilder;
.super Ljava/lang/Object;
.source "ConnectVariableHeaderBuilder.java"


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:I

.field private f:Z

.field private g:Z

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeaderBuilder;->a:I

    return v0
.end method

.method public a(I)Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeaderBuilder;
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeaderBuilder;->a:I

    .line 38
    return-object p0
.end method

.method public a(Z)Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeaderBuilder;
    .locals 0

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeaderBuilder;->b:Z

    .line 58
    return-object p0
.end method

.method public b(I)Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeaderBuilder;
    .locals 0

    .prologue
    .line 137
    iput p1, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeaderBuilder;->e:I

    .line 138
    return-object p0
.end method

.method public b(Z)Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeaderBuilder;
    .locals 0

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeaderBuilder;->c:Z

    .line 78
    return-object p0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeaderBuilder;->b:Z

    return v0
.end method

.method public c(I)Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeaderBuilder;
    .locals 0

    .prologue
    .line 177
    iput p1, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeaderBuilder;->h:I

    .line 178
    return-object p0
.end method

.method public c(Z)Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeaderBuilder;
    .locals 0

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeaderBuilder;->f:Z

    .line 98
    return-object p0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeaderBuilder;->c:Z

    return v0
.end method

.method public d(Z)Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeaderBuilder;
    .locals 0

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeaderBuilder;->d:Z

    .line 118
    return-object p0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeaderBuilder;->f:Z

    return v0
.end method

.method public e(Z)Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeaderBuilder;
    .locals 0

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeaderBuilder;->g:Z

    .line 158
    return-object p0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeaderBuilder;->d:Z

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeaderBuilder;->e:I

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeaderBuilder;->g:Z

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeaderBuilder;->h:I

    return v0
.end method

.method public i()Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeader;
    .locals 1

    .prologue
    .line 187
    new-instance v0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeader;

    invoke-direct {v0, p0}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeader;-><init>(Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeaderBuilder;)V

    return-object v0
.end method
