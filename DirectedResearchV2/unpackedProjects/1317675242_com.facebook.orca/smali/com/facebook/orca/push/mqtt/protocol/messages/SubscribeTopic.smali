.class public Lcom/facebook/orca/push/mqtt/protocol/messages/SubscribeTopic;
.super Ljava/lang/Object;
.source "SubscribeTopic.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/SubscribeTopic;->a:Ljava/lang/String;

    .line 16
    iput p2, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/SubscribeTopic;->b:I

    .line 17
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/SubscribeTopic;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/SubscribeTopic;->b:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/SubscribeTopic;->a:Ljava/lang/String;

    return-object v0
.end method
