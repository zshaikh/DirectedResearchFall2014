.class Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$1;
.super Landroid/content/BroadcastReceiver;
.source "PHPublisherContentRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;


# direct methods
.method constructor <init>(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$1;->this$0:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;

    .line 537
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 541
    const-string v9, "com.playhaven.md"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 542
    .local v4, "md":Landroid/os/Bundle;
    if-nez v4, :cond_1

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 544
    :cond_1
    sget-object v9, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->Event:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    invoke-virtual {v9}, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 545
    .local v3, "eventStr":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 547
    invoke-static {v3}, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;->valueOf(Ljava/lang/String;)Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

    move-result-object v2

    .line 549
    .local v2, "event":Lcom/playhaven/src/publishersdk/content/PHContentView$Event;
    sget-object v9, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->Tag:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    invoke-virtual {v9}, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 551
    .local v7, "tag":Ljava/lang/String;
    if-eqz v7, :cond_0

    iget-object v9, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$1;->this$0:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;

    iget-object v9, v9, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->contentTag:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 554
    sget-object v9, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;->DidShow:Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

    if-ne v2, v9, :cond_2

    .line 555
    sget-object v9, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->Content:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    invoke-virtual {v9}, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/playhaven/src/publishersdk/content/PHContent;

    .line 557
    .local v0, "content":Lcom/playhaven/src/publishersdk/content/PHContent;
    iget-object v9, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$1;->this$0:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;

    # getter for: Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content_listener:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;
    invoke-static {v9}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->access$1(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;)Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 558
    iget-object v9, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$1;->this$0:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;

    # getter for: Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content_listener:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;
    invoke-static {v9}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->access$1(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;)Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;

    move-result-object v9

    iget-object v10, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$1;->this$0:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;

    invoke-interface {v9, v10, v0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;->didDisplayContent(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Lcom/playhaven/src/publishersdk/content/PHContent;)V

    goto :goto_0

    .line 560
    .end local v0    # "content":Lcom/playhaven/src/publishersdk/content/PHContent;
    :cond_2
    sget-object v9, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;->DidDismiss:Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

    if-ne v2, v9, :cond_3

    .line 563
    sget-object v9, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->CloseType:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    invoke-virtual {v9}, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->getKey()Ljava/lang/String;

    move-result-object v9

    .line 562
    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 561
    invoke-static {v9}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;->valueOf(Ljava/lang/String;)Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;

    move-result-object v8

    .line 566
    .local v8, "type":Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;
    iget-object v9, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$1;->this$0:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;

    # getter for: Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content_listener:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;
    invoke-static {v9}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->access$1(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;)Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 567
    iget-object v9, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$1;->this$0:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;

    # getter for: Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content_listener:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;
    invoke-static {v9}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->access$1(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;)Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;

    move-result-object v9

    iget-object v10, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$1;->this$0:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;

    invoke-interface {v9, v10, v8}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;->didDismissContent(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;)V

    goto :goto_0

    .line 569
    .end local v8    # "type":Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;
    :cond_3
    sget-object v9, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;->DidFail:Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

    if-ne v2, v9, :cond_4

    .line 570
    sget-object v9, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->Error:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    invoke-virtual {v9}, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 572
    .local v1, "error":Ljava/lang/String;
    iget-object v9, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$1;->this$0:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;

    # getter for: Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->failure_listener:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$FailureDelegate;
    invoke-static {v9}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->access$2(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;)Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$FailureDelegate;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 573
    iget-object v9, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$1;->this$0:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;

    # getter for: Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->failure_listener:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$FailureDelegate;
    invoke-static {v9}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->access$2(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;)Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$FailureDelegate;

    move-result-object v9

    iget-object v10, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$1;->this$0:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;

    invoke-interface {v9, v10, v1}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$FailureDelegate;->didFail(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 575
    .end local v1    # "error":Ljava/lang/String;
    :cond_4
    sget-object v9, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;->DidUnlockReward:Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

    if-ne v2, v9, :cond_5

    .line 576
    sget-object v9, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->Reward:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    invoke-virtual {v9}, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/playhaven/src/publishersdk/content/PHReward;

    .line 578
    .local v6, "reward":Lcom/playhaven/src/publishersdk/content/PHReward;
    iget-object v9, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$1;->this$0:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;

    # getter for: Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->reward_listener:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$RewardDelegate;
    invoke-static {v9}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->access$3(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;)Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$RewardDelegate;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 579
    iget-object v9, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$1;->this$0:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;

    # getter for: Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->reward_listener:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$RewardDelegate;
    invoke-static {v9}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->access$3(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;)Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$RewardDelegate;

    move-result-object v9

    iget-object v10, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$1;->this$0:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;

    invoke-interface {v9, v10, v6}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$RewardDelegate;->unlockedReward(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Lcom/playhaven/src/publishersdk/content/PHReward;)V

    goto/16 :goto_0

    .line 581
    .end local v6    # "reward":Lcom/playhaven/src/publishersdk/content/PHReward;
    :cond_5
    sget-object v9, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;->DidMakePurchase:Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

    if-ne v2, v9, :cond_0

    .line 582
    sget-object v9, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->Purchase:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    invoke-virtual {v9}, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/playhaven/src/publishersdk/content/PHPurchase;

    .line 584
    .local v5, "purchase":Lcom/playhaven/src/publishersdk/content/PHPurchase;
    iget-object v9, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$1;->this$0:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;

    # getter for: Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->purchase_listener:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PurchaseDelegate;
    invoke-static {v9}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->access$4(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;)Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PurchaseDelegate;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 585
    iget-object v9, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$1;->this$0:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;

    # getter for: Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->purchase_listener:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PurchaseDelegate;
    invoke-static {v9}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->access$4(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;)Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PurchaseDelegate;

    move-result-object v9

    iget-object v10, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$1;->this$0:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;

    invoke-interface {v9, v10, v5}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PurchaseDelegate;->shouldMakePurchase(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Lcom/playhaven/src/publishersdk/content/PHPurchase;)V

    goto/16 :goto_0
.end method
