.class public Lv2/com/playhaven/requests/content/PHContentRequest;
.super Lv2/com/playhaven/requests/base/PHAPIRequest;
.source "PHContentRequest.java"

# interfaces
.implements Lv2/com/playhaven/interstitial/requestbridge/base/ContentRequester;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv2/com/playhaven/requests/content/PHContentRequest$1;,
        Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;,
        Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;
    }
.end annotation


# static fields
.field private static PREVIOUS_AD_RANGE:I

.field private static mLastDismissed:Ljava/lang/Long;


# instance fields
.field private activityContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private applicationContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private bridge:Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;

.field private close_button_down:Landroid/graphics/Bitmap;

.field private close_button_up:Landroid/graphics/Bitmap;

.field private config:Lv2/com/playhaven/configuration/PHConfiguration;

.field private content:Lv2/com/playhaven/model/PHContent;

.field public contentTag:Ljava/lang/String;

.field private content_listener:Lv2/com/playhaven/listeners/PHContentRequestListener;

.field private currentContentState:Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

.field public placement:Ljava/lang/String;

.field private purchase_listener:Lv2/com/playhaven/listeners/PHPurchaseListener;

.field private reward_listener:Lv2/com/playhaven/listeners/PHRewardListener;

.field private shouldPrecache:Z

.field private targetState:Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/16 v0, 0x7d0

    sput v0, Lv2/com/playhaven/requests/content/PHContentRequest;->PREVIOUS_AD_RANGE:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "placement"

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-direct {p0}, Lv2/com/playhaven/requests/base/PHAPIRequest;-><init>()V

    .line 104
    iput-object v0, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->content_listener:Lv2/com/playhaven/listeners/PHContentRequestListener;

    .line 139
    iput-object v0, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->reward_listener:Lv2/com/playhaven/listeners/PHRewardListener;

    .line 160
    iput-object v0, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->purchase_listener:Lv2/com/playhaven/listeners/PHPurchaseListener;

    .line 111
    iput-object p1, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->placement:Ljava/lang/String;

    .line 113
    sget-object v0, Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;->Initialized:Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

    invoke-virtual {p0, v0}, Lv2/com/playhaven/requests/content/PHContentRequest;->setCurrentContentState(Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;)V

    .line 115
    new-instance v0, Lv2/com/playhaven/configuration/PHConfiguration;

    invoke-direct {v0}, Lv2/com/playhaven/configuration/PHConfiguration;-><init>()V

    iput-object v0, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->config:Lv2/com/playhaven/configuration/PHConfiguration;

    .line 119
    invoke-direct {p0}, Lv2/com/playhaven/requests/content/PHContentRequest;->createBridge()V

    .line 120
    return-void
.end method

.method public constructor <init>(Lv2/com/playhaven/listeners/PHContentRequestListener;Ljava/lang/String;)V
    .locals 0
    .parameter "listener"
    .parameter "placement"

    .prologue
    .line 123
    invoke-direct {p0, p2}, Lv2/com/playhaven/requests/content/PHContentRequest;-><init>(Ljava/lang/String;)V

    .line 124
    iput-object p1, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->content_listener:Lv2/com/playhaven/listeners/PHContentRequestListener;

    .line 125
    return-void
.end method

.method private continueToNextContentState(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 405
    sget-object v0, Lv2/com/playhaven/requests/content/PHContentRequest$1;->$SwitchMap$v2$com$playhaven$requests$content$PHContentRequest$PHRequestState:[I

    iget-object v1, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->currentContentState:Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

    invoke-virtual {v1}, Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 415
    :goto_0
    return-void

    .line 407
    :pswitch_0
    invoke-direct {p0, p1}, Lv2/com/playhaven/requests/content/PHContentRequest;->loadContent(Landroid/content/Context;)V

    goto :goto_0

    .line 410
    :pswitch_1
    invoke-direct {p0, p1}, Lv2/com/playhaven/requests/content/PHContentRequest;->showContentActivityIfReady(Landroid/app/Activity;)V

    goto :goto_0

    .line 405
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private createBridge()V
    .locals 2

    .prologue
    .line 332
    invoke-direct {p0}, Lv2/com/playhaven/requests/content/PHContentRequest;->generateContentActivityTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->contentTag:Ljava/lang/String;

    .line 335
    new-instance v0, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;

    iget-object v1, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->contentTag:Ljava/lang/String;

    invoke-direct {v0, v1}, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->bridge:Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;

    .line 338
    iget-object v0, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->bridge:Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;

    iget-object v1, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->content_listener:Lv2/com/playhaven/listeners/PHContentRequestListener;

    invoke-virtual {v0, v1}, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;->attachContentListener(Lv2/com/playhaven/listeners/PHContentRequestListener;)V

    .line 339
    iget-object v0, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->bridge:Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;

    iget-object v1, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->reward_listener:Lv2/com/playhaven/listeners/PHRewardListener;

    invoke-virtual {v0, v1}, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;->attachRewardListener(Lv2/com/playhaven/listeners/PHRewardListener;)V

    .line 340
    iget-object v0, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->bridge:Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;

    iget-object v1, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->purchase_listener:Lv2/com/playhaven/listeners/PHPurchaseListener;

    invoke-virtual {v0, v1}, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;->attachPurchaseListener(Lv2/com/playhaven/listeners/PHPurchaseListener;)V

    .line 341
    return-void
.end method

.method public static didDismissContentWithin(Ljava/lang/Long;)Z
    .locals 7
    .parameter "range"

    .prologue
    const/4 v6, 0x0

    .line 176
    sget-object v0, Lv2/com/playhaven/requests/content/PHContentRequest;->mLastDismissed:Ljava/lang/Long;

    if-nez v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lv2/com/playhaven/requests/content/PHContentRequest;->mLastDismissed:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v6

    goto :goto_0
.end method

.method public static didJustShowAd()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 184
    sget-object v0, Lv2/com/playhaven/requests/content/PHContentRequest;->mLastDismissed:Ljava/lang/Long;

    if-nez v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lv2/com/playhaven/requests/content/PHContentRequest;->mLastDismissed:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget v4, Lv2/com/playhaven/requests/content/PHContentRequest;->PREVIOUS_AD_RANGE:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v6

    goto :goto_0
.end method

.method public static displayInterstitialActivity(Lv2/com/playhaven/model/PHContent;Landroid/app/Activity;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 3
    .parameter "content"
    .parameter "context"
    .parameter
    .parameter "tag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv2/com/playhaven/model/PHContent;",
            "Landroid/app/Activity;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 305
    .local p2, customCloseImages:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    if-eqz p1, :cond_1

    .line 307
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/playhaven/src/publishersdk/content/PHContentView;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 310
    .local v0, contentViewIntent:Landroid/content/Intent;
    sget-object v1, Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;->Content:Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;

    invoke-virtual {v1}, Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 313
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 314
    sget-object v1, Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;->CustomCloseBtn:Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;

    invoke-virtual {v1}, Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 318
    :cond_0
    sget-object v1, Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;->Tag:Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;

    invoke-virtual {v1}, Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added all relevant arguments now starting activity through context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 325
    .end local v0           #contentViewIntent:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private generateContentActivityTag()Ljava/lang/String;
    .locals 5

    .prologue
    .line 394
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 396
    .local v0, random:Ljava/util/Random;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PHInterstitialActivity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ~ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private loadContent(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 290
    sget-object v0, Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;->Preloading:Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

    invoke-virtual {p0, v0}, Lv2/com/playhaven/requests/content/PHContentRequest;->setCurrentContentState(Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;)V

    .line 291
    invoke-super {p0, p1}, Lv2/com/playhaven/requests/base/PHAPIRequest;->send(Landroid/content/Context;)V

    .line 295
    iget-object v0, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->content_listener:Lv2/com/playhaven/listeners/PHContentRequestListener;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->content_listener:Lv2/com/playhaven/listeners/PHContentRequestListener;

    invoke-interface {v0, p0}, Lv2/com/playhaven/listeners/PHContentRequestListener;->onSentContentRequest(Lv2/com/playhaven/requests/content/PHContentRequest;)V

    .line 298
    :cond_0
    return-void
.end method

.method private showContentActivityIfReady(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 351
    iget-object v1, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->targetState:Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

    sget-object v2, Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;->DisplayingContent:Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->targetState:Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

    sget-object v2, Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;->Done:Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

    if-ne v1, v2, :cond_3

    .line 353
    :cond_0
    const-string v1, "Attempting to show content interstitial"

    invoke-static {v1}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 356
    iget-object v1, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->content_listener:Lv2/com/playhaven/listeners/PHContentRequestListener;

    if-eqz v1, :cond_1

    .line 357
    iget-object v1, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->content_listener:Lv2/com/playhaven/listeners/PHContentRequestListener;

    iget-object v2, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->content:Lv2/com/playhaven/model/PHContent;

    invoke-interface {v1, p0, v2}, Lv2/com/playhaven/listeners/PHContentRequestListener;->onWillDisplayContent(Lv2/com/playhaven/requests/content/PHContentRequest;Lv2/com/playhaven/model/PHContent;)V

    .line 360
    :cond_1
    sget-object v1, Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;->DisplayingContent:Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

    invoke-virtual {p0, v1}, Lv2/com/playhaven/requests/content/PHContentRequest;->setCurrentContentState(Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;)V

    .line 363
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 367
    .local v0, customClose:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    iget-object v1, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->close_button_down:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->close_button_up:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 369
    sget-object v1, Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;->Up:Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;

    invoke-virtual {v1}, Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->close_button_up:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v1, Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;->Down:Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;

    invoke-virtual {v1}, Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->close_button_down:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    :cond_2
    iget-object v1, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->contentTag:Ljava/lang/String;

    iget-object v2, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->bridge:Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;

    invoke-static {v1, v2}, Lv2/com/playhaven/interstitial/requestbridge/BridgeManager;->openBridge(Ljava/lang/String;Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;)V

    .line 378
    iget-object v1, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->contentTag:Ljava/lang/String;

    invoke-static {v1, p0}, Lv2/com/playhaven/interstitial/requestbridge/BridgeManager;->attachRequester(Ljava/lang/String;Lv2/com/playhaven/interstitial/requestbridge/base/ContentRequester;)V

    .line 381
    iget-object v1, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->content:Lv2/com/playhaven/model/PHContent;

    iget-object v2, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->contentTag:Ljava/lang/String;

    invoke-static {v1, p1, v0, v2}, Lv2/com/playhaven/requests/content/PHContentRequest;->displayInterstitialActivity(Lv2/com/playhaven/model/PHContent;Landroid/app/Activity;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 384
    .end local v0           #customClose:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    :cond_3
    return-void
.end method

.method public static updateLastDismissedAdTime()V
    .locals 2

    .prologue
    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lv2/com/playhaven/requests/content/PHContentRequest;->mLastDismissed:Ljava/lang/Long;

    .line 190
    return-void
.end method


# virtual methods
.method public baseURL(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 203
    const-string v0, "/v3/publisher/content/"

    invoke-super {p0, p1, v0}, Lv2/com/playhaven/requests/base/PHAPIRequest;->createAPIURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 447
    sget-object v0, Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;->Done:Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

    invoke-virtual {p0, v0}, Lv2/com/playhaven/requests/content/PHContentRequest;->setCurrentContentState(Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;)V

    .line 449
    invoke-super {p0}, Lv2/com/playhaven/requests/base/PHAPIRequest;->finish()V

    .line 450
    return-void
.end method

.method public getAdditionalParams(Landroid/content/Context;)Ljava/util/Hashtable;
    .locals 5
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 457
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 459
    .local v1, table:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "placement_id"

    iget-object v3, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->placement:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->placement:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    const-string v2, "preload"

    iget-object v3, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->targetState:Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

    sget-object v4, Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;->Preloaded:Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

    if-ne v3, v4, :cond_1

    const-string v3, "1"

    :goto_1
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    invoke-static {p1}, Lv2/com/playhaven/requests/open/PHSession;->getInstance(Landroid/content/Context;)Lv2/com/playhaven/requests/open/PHSession;

    move-result-object v0

    .line 465
    .local v0, session:Lv2/com/playhaven/requests/open/PHSession;
    const-string v2, "stime"

    invoke-virtual {v0}, Lv2/com/playhaven/requests/open/PHSession;->getSessionTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    return-object v1

    .line 459
    .end local v0           #session:Lv2/com/playhaven/requests/open/PHSession;
    :cond_0
    const-string v3, ""

    goto :goto_0

    .line 461
    :cond_1
    const-string v3, "0"

    goto :goto_1
.end method

.method public getContent()Lv2/com/playhaven/model/PHContent;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->content:Lv2/com/playhaven/model/PHContent;

    return-object v0
.end method

.method public getContentListener()Lv2/com/playhaven/listeners/PHContentRequestListener;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->content_listener:Lv2/com/playhaven/listeners/PHContentRequestListener;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->applicationContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/Context;

    return-object p0
.end method

.method public getCurrentState()Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->currentContentState:Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

    return-object v0
.end method

.method public getPurchaseListener()Lv2/com/playhaven/listeners/PHPurchaseListener;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->purchase_listener:Lv2/com/playhaven/listeners/PHPurchaseListener;

    return-object v0
.end method

.method public getRewardListener()Lv2/com/playhaven/listeners/PHRewardListener;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->reward_listener:Lv2/com/playhaven/listeners/PHRewardListener;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->contentTag:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetState()Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->targetState:Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

    return-object v0
.end method

.method public handleRequestFailure(Lv2/com/playhaven/model/PHError;)V
    .locals 4
    .parameter "error"

    .prologue
    .line 472
    iget-object v0, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->content_listener:Lv2/com/playhaven/listeners/PHContentRequestListener;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->content_listener:Lv2/com/playhaven/listeners/PHContentRequestListener;

    new-instance v1, Lv2/com/playhaven/model/PHError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get interstitial because: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lv2/com/playhaven/model/PHError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lv2/com/playhaven/model/PHError;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1}, Lv2/com/playhaven/listeners/PHContentRequestListener;->onFailedToDisplayContent(Lv2/com/playhaven/requests/content/PHContentRequest;Lv2/com/playhaven/model/PHError;)V

    .line 474
    :cond_0
    return-void
.end method

.method public handleRequestSuccess(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 479
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "undefined"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 482
    :cond_0
    iget-object v0, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->content_listener:Lv2/com/playhaven/listeners/PHContentRequestListener;

    if-eqz v0, :cond_1

    .line 483
    iget-object v0, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->content_listener:Lv2/com/playhaven/listeners/PHContentRequestListener;

    invoke-interface {v0, p0}, Lv2/com/playhaven/listeners/PHContentRequestListener;->onNoContent(Lv2/com/playhaven/requests/content/PHContentRequest;)V

    .line 525
    :cond_1
    :goto_0
    return-void

    .line 488
    :cond_2
    new-instance v0, Lv2/com/playhaven/model/PHContent;

    invoke-direct {v0, p1}, Lv2/com/playhaven/model/PHContent;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->content:Lv2/com/playhaven/model/PHContent;

    .line 491
    iget-object v0, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->content:Lv2/com/playhaven/model/PHContent;

    iget-object v0, v0, Lv2/com/playhaven/model/PHContent;->url:Landroid/net/Uri;

    if-nez v0, :cond_3

    .line 492
    sget-object v0, Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;->Done:Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

    invoke-virtual {p0, v0}, Lv2/com/playhaven/requests/content/PHContentRequest;->setCurrentContentState(Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;)V

    goto :goto_0

    .line 497
    :cond_3
    sget-object v0, Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;->Preloaded:Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

    invoke-virtual {p0, v0}, Lv2/com/playhaven/requests/content/PHContentRequest;->setCurrentContentState(Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;)V

    .line 519
    iget-object v0, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->content_listener:Lv2/com/playhaven/listeners/PHContentRequestListener;

    if-eqz v0, :cond_4

    .line 520
    iget-object v0, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->content_listener:Lv2/com/playhaven/listeners/PHContentRequestListener;

    iget-object v1, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->content:Lv2/com/playhaven/model/PHContent;

    invoke-interface {v0, p0, v1}, Lv2/com/playhaven/listeners/PHContentRequestListener;->onReceivedContent(Lv2/com/playhaven/requests/content/PHContentRequest;Lv2/com/playhaven/model/PHContent;)V

    .line 523
    :cond_4
    iget-object v0, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->activityContext:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->activityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 524
    iget-object v0, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->activityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {p0, v0}, Lv2/com/playhaven/requests/content/PHContentRequest;->continueToNextContentState(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onTagChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "new_tag"

    .prologue
    .line 252
    iput-object p1, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->contentTag:Ljava/lang/String;

    .line 253
    return-void
.end method

.method public preload(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 266
    if-nez p1, :cond_0

    .line 284
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->config:Lv2/com/playhaven/configuration/PHConfiguration;

    invoke-virtual {v0, p1}, Lv2/com/playhaven/configuration/PHConfiguration;->getShouldPrecache(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->shouldPrecache:Z

    .line 272
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->applicationContext:Ljava/lang/ref/WeakReference;

    .line 274
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->activityContext:Ljava/lang/ref/WeakReference;

    .line 276
    iget-boolean v0, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->shouldPrecache:Z

    if-eqz v0, :cond_1

    .line 277
    const-class v0, Lv2/com/playhaven/cache/PHCache;

    monitor-enter v0

    .line 278
    :try_start_0
    invoke-static {p1}, Lv2/com/playhaven/cache/PHCache;->installCache(Landroid/content/Context;)V

    .line 279
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    :cond_1
    sget-object v0, Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;->Preloaded:Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

    iput-object v0, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->targetState:Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

    .line 283
    invoke-direct {p0, p1}, Lv2/com/playhaven/requests/content/PHContentRequest;->continueToNextContentState(Landroid/app/Activity;)V

    goto :goto_0

    .line 279
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public send(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 426
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    .line 429
    .local v1, activity:Landroid/app/Activity;
    iget-object v3, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->config:Lv2/com/playhaven/configuration/PHConfiguration;

    invoke-virtual {v3, v1}, Lv2/com/playhaven/configuration/PHConfiguration;->getShouldPrecache(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->shouldPrecache:Z

    .line 431
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->applicationContext:Ljava/lang/ref/WeakReference;

    .line 433
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->activityContext:Ljava/lang/ref/WeakReference;

    .line 436
    :try_start_0
    sget-object v3, Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;->DisplayingContent:Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

    iput-object v3, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->targetState:Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

    .line 438
    invoke-direct {p0, v1}, Lv2/com/playhaven/requests/content/PHContentRequest;->continueToNextContentState(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :goto_0
    return-void

    .line 440
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 441
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "PHContentRequest - send"

    sget-object v4, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;->critical:Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    invoke-static {v2, v3, v4}, Lv2/com/playhaven/requests/crashreport/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;)Lv2/com/playhaven/requests/crashreport/PHCrashReport;

    goto :goto_0
.end method

.method public setCloseButton(Landroid/graphics/Bitmap;Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;)V
    .locals 1
    .parameter "image"
    .parameter "state"

    .prologue
    .line 194
    sget-object v0, Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;->Up:Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;

    if-ne p2, v0, :cond_1

    .line 195
    iput-object p1, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->close_button_up:Landroid/graphics/Bitmap;

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    sget-object v0, Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;->Down:Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;

    if-ne p2, v0, :cond_0

    .line 197
    iput-object p1, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->close_button_down:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setCurrentContentState(Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 207
    if-nez p1, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v0, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->currentContentState:Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

    if-nez v0, :cond_2

    iput-object p1, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->currentContentState:Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

    .line 211
    :cond_2
    invoke-virtual {p1}, Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;->ordinal()I

    move-result v0

    iget-object v1, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->currentContentState:Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

    invoke-virtual {v1}, Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 212
    iput-object p1, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->currentContentState:Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

    goto :goto_0
.end method

.method public setCurrentState(Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 232
    iput-object p1, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->currentContentState:Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

    .line 233
    return-void
.end method

.method public setOnContentListener(Lv2/com/playhaven/listeners/PHContentRequestListener;)V
    .locals 1
    .parameter "content_listener"

    .prologue
    .line 133
    iput-object p1, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->content_listener:Lv2/com/playhaven/listeners/PHContentRequestListener;

    .line 135
    iget-object v0, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->bridge:Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->bridge:Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;

    invoke-virtual {v0, p1}, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;->attachContentListener(Lv2/com/playhaven/listeners/PHContentRequestListener;)V

    .line 137
    :cond_0
    return-void
.end method

.method public setOnPurchaseListener(Lv2/com/playhaven/listeners/PHPurchaseListener;)V
    .locals 1
    .parameter "purchase_listener"

    .prologue
    .line 154
    iput-object p1, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->purchase_listener:Lv2/com/playhaven/listeners/PHPurchaseListener;

    .line 156
    iget-object v0, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->bridge:Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->bridge:Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;

    invoke-virtual {v0, p1}, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;->attachPurchaseListener(Lv2/com/playhaven/listeners/PHPurchaseListener;)V

    .line 158
    :cond_0
    return-void
.end method

.method public setOnRewardListener(Lv2/com/playhaven/listeners/PHRewardListener;)V
    .locals 1
    .parameter "reward_listener"

    .prologue
    .line 147
    iput-object p1, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->reward_listener:Lv2/com/playhaven/listeners/PHRewardListener;

    .line 149
    iget-object v0, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->bridge:Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->bridge:Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;

    invoke-virtual {v0, p1}, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge;->attachRewardListener(Lv2/com/playhaven/listeners/PHRewardListener;)V

    .line 151
    :cond_0
    return-void
.end method

.method public setTargetState(Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 228
    iput-object p1, p0, Lv2/com/playhaven/requests/content/PHContentRequest;->targetState:Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

    .line 229
    return-void
.end method
