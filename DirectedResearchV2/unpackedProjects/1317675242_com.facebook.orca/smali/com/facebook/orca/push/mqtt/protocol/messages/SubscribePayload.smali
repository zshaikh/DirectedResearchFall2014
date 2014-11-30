.class public Lcom/facebook/orca/push/mqtt/protocol/messages/SubscribePayload;
.super Ljava/lang/Object;
.source "SubscribePayload.java"


# instance fields
.field private final a:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/push/mqtt/protocol/messages/SubscribeTopic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/push/mqtt/protocol/messages/SubscribeTopic;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/SubscribePayload;->a:Lcom/google/common/collect/ImmutableList;

    .line 21
    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/push/mqtt/protocol/messages/SubscribeTopic;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/messages/SubscribePayload;->a:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method
