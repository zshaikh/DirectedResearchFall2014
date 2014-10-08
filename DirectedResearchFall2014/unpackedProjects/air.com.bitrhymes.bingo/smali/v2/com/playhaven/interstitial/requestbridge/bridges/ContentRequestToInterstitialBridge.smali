.class public Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;
.super Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;
.source "ContentRequestToInterstitialBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$1;,
        Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEventArgument;,
        Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEvent;
    }
.end annotation


# instance fields
.field private contentRequest:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lv2/com/playhaven/requests/content/PHContentRequest;",
            ">;"
        }
    .end annotation
.end field

.field private content_listener:Lv2/com/playhaven/listeners/PHContentRequestListener;

.field private interstitialActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lv2/com/playhaven/interstitial/PHInterstitialActivity;",
            ">;"
        }
    .end annotation
.end field

.field private purchase_listener:Lv2/com/playhaven/listeners/PHPurchaseListener;

.field private reward_listener:Lv2/com/playhaven/listeners/PHRewardListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;-><init>(Ljava/lang/String;)V

    .line 87
    return-void
.end method


# virtual methods
.method public attachContentListener(Lv2/com/playhaven/listeners/PHContentRequestListener;)V
    .locals 0
    .param p1, "listener"    # Lv2/com/playhaven/listeners/PHContentRequestListener;

    .prologue
    .line 109
    iput-object p1, p0, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;->content_listener:Lv2/com/playhaven/listeners/PHContentRequestListener;

    .line 111
    return-void
.end method

.method public attachPurchaseListener(Lv2/com/playhaven/listeners/PHPurchaseListener;)V
    .locals 0
    .param p1, "listener"    # Lv2/com/playhaven/listeners/PHPurchaseListener;

    .prologue
    .line 105
    iput-object p1, p0, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;->purchase_listener:Lv2/com/playhaven/listeners/PHPurchaseListener;

    .line 106
    return-void
.end method

.method public attachRewardListener(Lv2/com/playhaven/listeners/PHRewardListener;)V
    .locals 0
    .param p1, "listener"    # Lv2/com/playhaven/listeners/PHRewardListener;

    .prologue
    .line 101
    iput-object p1, p0, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;->reward_listener:Lv2/com/playhaven/listeners/PHRewardListener;

    .line 102
    return-void
.end method

.method public cleanup()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;->content_listener:Lv2/com/playhaven/listeners/PHContentRequestListener;

    .line 159
    iput-object v0, p0, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;->reward_listener:Lv2/com/playhaven/listeners/PHRewardListener;

    .line 160
    iput-object v0, p0, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;->purchase_listener:Lv2/com/playhaven/listeners/PHPurchaseListener;

    .line 161
    return-void
.end method

.method public getDisplayerIntentFilter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    const-string v0, "v2.com.playhaven.interstitial.ContentDisplayerEvent"

    return-object v0
.end method

.method public getRequesterIntentFilter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    const-string v0, "v2.com.playhaven.interstitial.ContentRequesterEvent"

    return-object v0
.end method

.method public onDisplayerAttached(Lv2/com/playhaven/interstitial/requestbridge/base/ContentDisplayer;)V
    .locals 1
    .param p1, "displayer"    # Lv2/com/playhaven/interstitial/requestbridge/base/ContentDisplayer;

    .prologue
    .line 97
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Lv2/com/playhaven/interstitial/PHInterstitialActivity;

    .end local p1    # "displayer":Lv2/com/playhaven/interstitial/requestbridge/base/ContentDisplayer;
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;->interstitialActivity:Ljava/lang/ref/WeakReference;

    .line 98
    return-void
.end method

.method public onDisplayerSentMessage(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "message"    # Landroid/os/Bundle;

    .prologue
    .line 172
    iget-object v7, p0, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;->contentRequest:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;->contentRequest:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1

    .line 238
    .end local p0    # "this":Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;
    :cond_0
    :goto_0
    return-void

    .line 174
    .restart local p0    # "this":Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;
    :cond_1
    invoke-static {p1}, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEvent;->valueOf(Ljava/lang/String;)Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEvent;

    move-result-object v4

    .line 176
    .local v4, "parsedEvent":Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEvent;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ContentRequestToInterstitial bridge handling: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEvent;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lv2/com/playhaven/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 178
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ContentListener: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;->content_listener:Lv2/com/playhaven/listeners/PHContentRequestListener;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lv2/com/playhaven/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 179
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RewardListener: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;->reward_listener:Lv2/com/playhaven/listeners/PHRewardListener;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lv2/com/playhaven/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 180
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PurchaseListener: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;->purchase_listener:Lv2/com/playhaven/listeners/PHPurchaseListener;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lv2/com/playhaven/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 182
    sget-object v7, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$1;->$SwitchMap$v2$com$playhaven$interstitial$requestbridge$bridges$ContentRequestToInterstitialBridge$InterstitialEvent:[I

    invoke-virtual {v4}, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEvent;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 186
    :pswitch_0
    sget-object v7, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEventArgument;->Content:Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEventArgument;

    invoke-virtual {v7}, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEventArgument;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lv2/com/playhaven/model/PHContent;

    .line 188
    .local v0, "content":Lv2/com/playhaven/model/PHContent;
    iget-object v7, p0, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;->content_listener:Lv2/com/playhaven/listeners/PHContentRequestListener;

    if-eqz v7, :cond_0

    if-eqz v0, :cond_0

    .line 189
    iget-object v7, p0, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;->content_listener:Lv2/com/playhaven/listeners/PHContentRequestListener;

    iget-object v8, p0, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;->contentRequest:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;
    check-cast p0, Lv2/com/playhaven/requests/content/PHContentRequest;

    invoke-interface {v7, p0, v0}, Lv2/com/playhaven/listeners/PHContentRequestListener;->onDisplayedContent(Lv2/com/playhaven/requests/content/PHContentRequest;Lv2/com/playhaven/model/PHContent;)V

    goto/16 :goto_0

    .line 195
    .end local v0    # "content":Lv2/com/playhaven/model/PHContent;
    .restart local p0    # "this":Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;
    :pswitch_1
    sget-object v7, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEventArgument;->CloseType:Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEventArgument;

    invoke-virtual {v7}, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEventArgument;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "dismissTypeStr":Ljava/lang/String;
    iget-object v7, p0, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;->content_listener:Lv2/com/playhaven/listeners/PHContentRequestListener;

    if-eqz v7, :cond_0

    if-eqz v2, :cond_0

    .line 201
    invoke-static {v2}, Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;->valueOf(Ljava/lang/String;)Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;

    move-result-object v1

    .line 203
    .local v1, "dismissType":Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;
    iget-object v7, p0, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;->content_listener:Lv2/com/playhaven/listeners/PHContentRequestListener;

    iget-object v8, p0, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;->contentRequest:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;
    check-cast p0, Lv2/com/playhaven/requests/content/PHContentRequest;

    invoke-interface {v7, p0, v1}, Lv2/com/playhaven/listeners/PHContentRequestListener;->onDismissedContent(Lv2/com/playhaven/requests/content/PHContentRequest;Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;)V

    goto/16 :goto_0

    .line 211
    .end local v1    # "dismissType":Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;
    .end local v2    # "dismissTypeStr":Ljava/lang/String;
    .restart local p0    # "this":Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;
    :pswitch_2
    sget-object v7, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEventArgument;->Error:Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEventArgument;

    invoke-virtual {v7}, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEventArgument;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 213
    .local v3, "error":Ljava/lang/String;
    iget-object v7, p0, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;->content_listener:Lv2/com/playhaven/listeners/PHContentRequestListener;

    if-eqz v7, :cond_0

    if-eqz v3, :cond_0

    .line 214
    iget-object v7, p0, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;->content_listener:Lv2/com/playhaven/listeners/PHContentRequestListener;

    iget-object v8, p0, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;->contentRequest:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;
    check-cast p0, Lv2/com/playhaven/requests/content/PHContentRequest;

    new-instance v8, Lv2/com/playhaven/model/PHError;

    invoke-direct {v8, v3}, Lv2/com/playhaven/model/PHError;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, p0, v8}, Lv2/com/playhaven/listeners/PHContentRequestListener;->onFailedToDisplayContent(Lv2/com/playhaven/requests/content/PHContentRequest;Lv2/com/playhaven/model/PHError;)V

    goto/16 :goto_0

    .line 222
    .end local v3    # "error":Ljava/lang/String;
    .restart local p0    # "this":Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;
    :pswitch_3
    sget-object v7, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEventArgument;->Reward:Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEventArgument;

    invoke-virtual {v7}, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEventArgument;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lv2/com/playhaven/model/PHReward;

    .line 224
    .local v6, "reward":Lv2/com/playhaven/model/PHReward;
    iget-object v7, p0, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;->reward_listener:Lv2/com/playhaven/listeners/PHRewardListener;

    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    .line 225
    iget-object v7, p0, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;->reward_listener:Lv2/com/playhaven/listeners/PHRewardListener;

    iget-object v8, p0, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;->contentRequest:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;
    check-cast p0, Lv2/com/playhaven/requests/content/PHContentRequest;

    invoke-interface {v7, p0, v6}, Lv2/com/playhaven/listeners/PHRewardListener;->onUnlockedReward(Lv2/com/playhaven/requests/content/PHContentRequest;Lv2/com/playhaven/model/PHReward;)V

    goto/16 :goto_0

    .line 231
    .end local v6    # "reward":Lv2/com/playhaven/model/PHReward;
    .restart local p0    # "this":Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;
    :pswitch_4
    sget-object v7, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEventArgument;->Purchase:Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEventArgument;

    invoke-virtual {v7}, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEventArgument;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lv2/com/playhaven/model/PHPurchase;

    .line 233
    .local v5, "purchase":Lv2/com/playhaven/model/PHPurchase;
    iget-object v7, p0, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;->purchase_listener:Lv2/com/playhaven/listeners/PHPurchaseListener;

    if-eqz v7, :cond_0

    if-eqz v5, :cond_0

    .line 234
    iget-object v7, p0, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;->purchase_listener:Lv2/com/playhaven/listeners/PHPurchaseListener;

    iget-object v8, p0, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;->contentRequest:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;
    check-cast p0, Lv2/com/playhaven/requests/content/PHContentRequest;

    invoke-interface {v7, p0, v5}, Lv2/com/playhaven/listeners/PHPurchaseListener;->onMadePurchase(Lv2/com/playhaven/requests/content/PHContentRequest;Lv2/com/playhaven/model/PHPurchase;)V

    goto/16 :goto_0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onRequesterAttached(Lv2/com/playhaven/interstitial/requestbridge/base/ContentRequester;)V
    .locals 1
    .param p1, "requester"    # Lv2/com/playhaven/interstitial/requestbridge/base/ContentRequester;

    .prologue
    .line 92
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Lv2/com/playhaven/requests/content/PHContentRequest;

    .end local p1    # "requester":Lv2/com/playhaven/interstitial/requestbridge/base/ContentRequester;
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;->contentRequest:Ljava/lang/ref/WeakReference;

    .line 93
    return-void
.end method

.method public onRequesterSentMessage(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "messageData"    # Landroid/os/Bundle;

    .prologue
    .line 124
    if-nez p1, :cond_1

    .line 144
    .end local p0    # "this":Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;
    :cond_0
    :goto_0
    return-void

    .line 126
    .restart local p0    # "this":Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;
    :cond_1
    iget-object v3, p0, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;->interstitialActivity:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;->interstitialActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 128
    invoke-static {p1}, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEvent;->valueOf(Ljava/lang/String;)Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEvent;

    move-result-object v0

    .line 132
    .local v0, "eventParsed":Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEvent;
    sget-object v3, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEvent;->PurchaseResolved:Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEvent;

    if-ne v0, v3, :cond_0

    .line 134
    sget-object v3, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEventArgument;->Purchase:Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEventArgument;

    invoke-virtual {v3}, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEventArgument;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "purchase_key":Ljava/lang/String;
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lv2/com/playhaven/model/PHPurchase;

    .line 138
    .local v1, "purchase":Lv2/com/playhaven/model/PHPurchase;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Displayer received purchase resolution: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lv2/com/playhaven/model/PHPurchase;->resolution:Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lv2/com/playhaven/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 140
    iget-object v3, p0, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;->interstitialActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;
    check-cast p0, Lv2/com/playhaven/interstitial/PHInterstitialActivity;

    invoke-virtual {p0, v1}, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->onPurchaseResolved(Lv2/com/playhaven/model/PHPurchase;)V

    goto :goto_0
.end method
