.class public Lcom/facebook/orca/push/mqtt/protocol/messages/PublishVariableHeader;
.super Ljava/lang/Object;
.source "PublishVariableHeader.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/PublishVariableHeader;->a:Ljava/lang/String;

    .line 17
    iput p2, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/PublishVariableHeader;->b:I

    .line 18
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/PublishVariableHeader;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/PublishVariableHeader;->b:I

    return v0
.end method
