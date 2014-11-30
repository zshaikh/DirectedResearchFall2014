.class public Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;
.super Ljava/lang/Object;
.source "FixedHeader.java"


# instance fields
.field private final a:I

.field private final b:Z

.field private final c:I

.field private final d:Z

.field private final e:I


# direct methods
.method constructor <init>(Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeaderBuilder;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeaderBuilder;->a()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;->a:I

    .line 20
    invoke-virtual {p1}, Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeaderBuilder;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;->b:Z

    .line 21
    invoke-virtual {p1}, Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeaderBuilder;->c()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;->c:I

    .line 22
    invoke-virtual {p1}, Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeaderBuilder;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;->d:Z

    .line 23
    invoke-virtual {p1}, Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeaderBuilder;->e()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;->e:I

    .line 24
    return-void
.end method

.method public static newBuilder()Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeaderBuilder;
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeaderBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeaderBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;->a:I

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;->b:Z

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;->c:I

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;->d:Z

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;->e:I

    return v0
.end method
