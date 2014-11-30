.class public Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeaderBuilder;
.super Ljava/lang/Object;
.source "FixedHeaderBuilder.java"


# instance fields
.field private a:I

.field private b:Z

.field private c:I

.field private d:Z

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeaderBuilder;->e:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeaderBuilder;->a:I

    return v0
.end method

.method public a(I)Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeaderBuilder;
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeaderBuilder;->a:I

    .line 24
    return-object p0
.end method

.method public a(Z)Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeaderBuilder;
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeaderBuilder;->b:Z

    .line 33
    return-object p0
.end method

.method public b(I)Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeaderBuilder;
    .locals 0

    .prologue
    .line 41
    iput p1, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeaderBuilder;->c:I

    .line 42
    return-object p0
.end method

.method public b(Z)Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeaderBuilder;
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeaderBuilder;->d:Z

    .line 51
    return-object p0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeaderBuilder;->b:Z

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeaderBuilder;->c:I

    return v0
.end method

.method public c(I)Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeaderBuilder;
    .locals 0

    .prologue
    .line 59
    iput p1, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeaderBuilder;->e:I

    .line 60
    return-object p0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeaderBuilder;->d:Z

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeaderBuilder;->e:I

    return v0
.end method

.method public f()Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;

    invoke-direct {v0, p0}, Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;-><init>(Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeaderBuilder;)V

    return-object v0
.end method
