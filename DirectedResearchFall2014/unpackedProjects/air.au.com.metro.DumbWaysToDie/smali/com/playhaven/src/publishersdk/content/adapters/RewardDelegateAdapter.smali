.class public Lcom/playhaven/src/publishersdk/content/adapters/RewardDelegateAdapter;
.super Ljava/lang/Object;
.source "RewardDelegateAdapter.java"

# interfaces
.implements Lv2/com/playhaven/listeners/PHRewardListener;


# instance fields
.field private delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$RewardDelegate;


# direct methods
.method public constructor <init>(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$RewardDelegate;)V
    .locals 0
    .parameter "delegate"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/playhaven/src/publishersdk/content/adapters/RewardDelegateAdapter;->delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$RewardDelegate;

    .line 18
    return-void
.end method


# virtual methods
.method public onUnlockedReward(Lv2/com/playhaven/requests/content/PHContentRequest;Lv2/com/playhaven/model/PHReward;)V
    .locals 2
    .parameter "request"
    .parameter "reward"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/adapters/RewardDelegateAdapter;->delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$RewardDelegate;

    check-cast p1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;

    .end local p1
    new-instance v1, Lcom/playhaven/src/publishersdk/content/PHReward;

    invoke-direct {v1, p2}, Lcom/playhaven/src/publishersdk/content/PHReward;-><init>(Lv2/com/playhaven/model/PHReward;)V

    invoke-interface {v0, p1, v1}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$RewardDelegate;->unlockedReward(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Lcom/playhaven/src/publishersdk/content/PHReward;)V

    .line 23
    return-void
.end method
