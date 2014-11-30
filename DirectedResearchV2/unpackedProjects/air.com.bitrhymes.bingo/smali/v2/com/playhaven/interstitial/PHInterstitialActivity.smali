.class public Lv2/com/playhaven/interstitial/PHInterstitialActivity;
.super Landroid/app/Activity;
.source "PHInterstitialActivity.java"

# interfaces
.implements Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;
.implements Lv2/com/playhaven/interstitial/requestbridge/base/ContentDisplayer;
.implements Lv2/com/playhaven/views/interstitial/PHContentView$Listener;


# static fields
.field public static final BROADCAST_INTENT:Ljava/lang/String; = "PHInterstitialActivityBroadcast"

.field private static final SUB_INTERSTITIAL_SUFFIX:Ljava/lang/String; = "SubInterstitial"

.field private static config:Lv2/com/playhaven/configuration/PHConfiguration;


# instance fields
.field public content:Lv2/com/playhaven/model/PHContent;

.field private contentView:Lv2/com/playhaven/views/interstitial/PHContentView;

.field private customCloseStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private isBackBtnCancelable:Z

.field private isTouchCancelable:Z

.field private jsBridge:Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->customCloseStates:Ljava/util/HashMap;

    return-void
.end method

.method private contentHasFrame()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    .line 555
    iget-object v2, p0, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->content:Lv2/com/playhaven/model/PHContent;

    if-nez v2, :cond_0

    move v2, v6

    .line 563
    :goto_0
    return v2

    .line 558
    :cond_0
    invoke-virtual {p0}, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    .line 560
    .local v1, "orientation":I
    iget-object v2, p0, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->content:Lv2/com/playhaven/model/PHContent;

    invoke-virtual {v2, v1}, Lv2/com/playhaven/model/PHContent;->getFrame(I)Landroid/graphics/RectF;

    move-result-object v0

    .line 563
    .local v0, "contentFrame":Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-double v2, v2

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-double v2, v2

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v6

    goto :goto_0
.end method

.method private fitInterstitialWindowToContent()V
    .locals 8

    .prologue
    const/16 v7, 0x800

    const/high16 v6, 0x4f000000

    const/4 v5, 0x0

    const/high16 v4, -0x40800000

    const/16 v3, 0x400

    .line 570
    invoke-virtual {p0}, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    .line 574
    .local v1, "orientation":I
    iget-object v2, p0, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->content:Lv2/com/playhaven/model/PHContent;

    invoke-virtual {v2, v1}, Lv2/com/playhaven/model/PHContent;->getFrame(I)Landroid/graphics/RectF;

    move-result-object v0

    .line 577
    .local v0, "contentFrame":Landroid/graphics/RectF;
    iget v2, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v6

    if-nez v2, :cond_0

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v2, v6

    if-nez v2, :cond_0

    .line 578
    iput v4, v0, Landroid/graphics/RectF;->right:F

    .line 579
    iput v4, v0, Landroid/graphics/RectF;->bottom:F

    .line 580
    iput v5, v0, Landroid/graphics/RectF;->top:F

    .line 581
    iput v5, v0, Landroid/graphics/RectF;->left:F

    .line 583
    invoke-virtual {p0}, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 584
    invoke-virtual {p0}, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/Window;->clearFlags(I)V

    .line 591
    :goto_0
    invoke-virtual {p0}, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 592
    return-void

    .line 587
    :cond_0
    invoke-virtual {p0}, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 588
    invoke-virtual {p0}, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method private initCache()V
    .locals 2

    .prologue
    .line 101
    sget-object v0, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->config:Lv2/com/playhaven/configuration/PHConfiguration;

    invoke-virtual {v0, p0}, Lv2/com/playhaven/configuration/PHConfiguration;->getShouldPrecache(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 103
    :cond_0
    const-class v0, Lv2/com/playhaven/cache/PHCache;

    monitor-enter v0

    .line 105
    :try_start_0
    invoke-static {p0}, Lv2/com/playhaven/cache/PHCache;->installCache(Landroid/content/Context;)V

    .line 107
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyContentRequestOfClose(Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;)V
    .locals 4
    .param p1, "type"    # Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;

    .prologue
    .line 137
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 140
    .local v0, "args":Landroid/os/Bundle;
    sget-object v3, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEventArgument;->CloseType:Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEventArgument;

    invoke-virtual {v3}, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEventArgument;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "close_type_key":Ljava/lang/String;
    invoke-virtual {p1}, Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    sget-object v3, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEvent;->Dismissed:Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEvent;

    invoke-virtual {v3}, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEvent;->toString()Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "event":Ljava/lang/String;
    iget-object v3, p0, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->tag:Ljava/lang/String;

    invoke-static {v3, v2, v0, p0}, Lv2/com/playhaven/interstitial/requestbridge/BridgeManager;->sendMessageFromDisplayer(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 150
    return-void
.end method

.method private notifyContentRequestOfFailure(Lv2/com/playhaven/interstitial/PHContentEnums$Error;)V
    .locals 4
    .param p1, "error"    # Lv2/com/playhaven/interstitial/PHContentEnums$Error;

    .prologue
    .line 157
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 160
    .local v0, "args":Landroid/os/Bundle;
    sget-object v3, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEventArgument;->Error:Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEventArgument;

    invoke-virtual {v3}, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEventArgument;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "error_key":Ljava/lang/String;
    invoke-virtual {p1}, Lv2/com/playhaven/interstitial/PHContentEnums$Error;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    sget-object v3, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEvent;->Failed:Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEvent;

    invoke-virtual {v3}, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEvent;->toString()Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "event":Ljava/lang/String;
    iget-object v3, p0, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->tag:Ljava/lang/String;

    invoke-static {v3, v2, v0, p0}, Lv2/com/playhaven/interstitial/requestbridge/BridgeManager;->sendMessageFromDisplayer(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 170
    return-void
.end method

.method private setupWebviewJSBridge()V
    .locals 3

    .prologue
    .line 287
    new-instance v0, Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;

    invoke-direct {v0, p0}, Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;-><init>(Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;)V

    iput-object v0, p0, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->jsBridge:Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;

    .line 289
    iget-object v0, p0, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->jsBridge:Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;

    const-string v1, "ph://dismiss"

    new-instance v2, Lv2/com/playhaven/interstitial/jsbridge/handlers/DismissHandler;

    invoke-direct {v2}, Lv2/com/playhaven/interstitial/jsbridge/handlers/DismissHandler;-><init>()V

    invoke-virtual {v0, v1, v2}, Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;->addRoute(Ljava/lang/String;Lv2/com/playhaven/interstitial/jsbridge/handlers/AbstractHandler;)V

    .line 290
    iget-object v0, p0, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->jsBridge:Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;

    const-string v1, "ph://launch"

    new-instance v2, Lv2/com/playhaven/interstitial/jsbridge/handlers/LaunchHandler;

    invoke-direct {v2}, Lv2/com/playhaven/interstitial/jsbridge/handlers/LaunchHandler;-><init>()V

    invoke-virtual {v0, v1, v2}, Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;->addRoute(Ljava/lang/String;Lv2/com/playhaven/interstitial/jsbridge/handlers/AbstractHandler;)V

    .line 291
    iget-object v0, p0, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->jsBridge:Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;

    const-string v1, "ph://loadContext"

    new-instance v2, Lv2/com/playhaven/interstitial/jsbridge/handlers/LoadContextHandler;

    invoke-direct {v2}, Lv2/com/playhaven/interstitial/jsbridge/handlers/LoadContextHandler;-><init>()V

    invoke-virtual {v0, v1, v2}, Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;->addRoute(Ljava/lang/String;Lv2/com/playhaven/interstitial/jsbridge/handlers/AbstractHandler;)V

    .line 292
    iget-object v0, p0, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->jsBridge:Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;

    const-string v1, "ph://reward"

    new-instance v2, Lv2/com/playhaven/interstitial/jsbridge/handlers/RewardHandler;

    invoke-direct {v2}, Lv2/com/playhaven/interstitial/jsbridge/handlers/RewardHandler;-><init>()V

    invoke-virtual {v0, v1, v2}, Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;->addRoute(Ljava/lang/String;Lv2/com/playhaven/interstitial/jsbridge/handlers/AbstractHandler;)V

    .line 293
    iget-object v0, p0, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->jsBridge:Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;

    const-string v1, "ph://purchase"

    new-instance v2, Lv2/com/playhaven/interstitial/jsbridge/handlers/PurchaseHandler;

    invoke-direct {v2}, Lv2/com/playhaven/interstitial/jsbridge/handlers/PurchaseHandler;-><init>()V

    invoke-virtual {v0, v1, v2}, Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;->addRoute(Ljava/lang/String;Lv2/com/playhaven/interstitial/jsbridge/handlers/AbstractHandler;)V

    .line 294
    iget-object v0, p0, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->jsBridge:Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;

    const-string v1, "ph://subcontent"

    new-instance v2, Lv2/com/playhaven/interstitial/jsbridge/handlers/SubrequestHandler;

    invoke-direct {v2}, Lv2/com/playhaven/interstitial/jsbridge/handlers/SubrequestHandler;-><init>()V

    invoke-virtual {v0, v1, v2}, Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;->addRoute(Ljava/lang/String;Lv2/com/playhaven/interstitial/jsbridge/handlers/AbstractHandler;)V

    .line 295
    iget-object v0, p0, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->jsBridge:Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;

    const-string v1, "ph://closeButton"

    new-instance v2, Lv2/com/playhaven/interstitial/jsbridge/handlers/CloseButtonHandler;

    invoke-direct {v2}, Lv2/com/playhaven/interstitial/jsbridge/handlers/CloseButtonHandler;-><init>()V

    invoke-virtual {v0, v1, v2}, Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;->addRoute(Ljava/lang/String;Lv2/com/playhaven/interstitial/jsbridge/handlers/AbstractHandler;)V

    .line 296
    return-void
.end method


# virtual methods
.method public disableClosable()V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->contentView:Lv2/com/playhaven/views/interstitial/PHContentView;

    invoke-virtual {v0}, Lv2/com/playhaven/views/interstitial/PHContentView;->hideCloseButton()V

    .line 415
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 504
    invoke-static {}, Lv2/com/playhaven/requests/content/PHContentRequest;->updateLastDismissedAdTime()V

    .line 506
    iget-object v0, p0, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->contentView:Lv2/com/playhaven/views/interstitial/PHContentView;

    invoke-virtual {v0}, Lv2/com/playhaven/views/interstitial/PHContentView;->close()V

    .line 510
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 511
    return-void
.end method

.method public enableClosable()V
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->contentView:Lv2/com/playhaven/views/interstitial/PHContentView;

    invoke-virtual {v0}, Lv2/com/playhaven/views/interstitial/PHContentView;->showCloseButton()V

    .line 410
    return-void
.end method

.method public getContent()Lv2/com/playhaven/model/PHContent;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->content:Lv2/com/playhaven/model/PHContent;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 484
    invoke-virtual {p0}, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 449
    invoke-virtual {p0}, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsBackBtnCancelable()Z
    .locals 1

    .prologue
    .line 537
    iget-boolean v0, p0, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->isBackBtnCancelable:Z

    return v0
.end method

.method public getIsTouchCancelable()Z
    .locals 1

    .prologue
    .line 533
    iget-boolean v0, p0, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->isTouchCancelable:Z

    return v0
.end method

.method public getRootView()Lv2/com/playhaven/views/interstitial/PHContentView;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->contentView:Lv2/com/playhaven/views/interstitial/PHContentView;

    return-object v0
.end method

.method public getSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 444
    sget-object v0, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->config:Lv2/com/playhaven/configuration/PHConfiguration;

    invoke-virtual {v0, p0}, Lv2/com/playhaven/configuration/PHConfiguration;->getSecret(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public isClosable()Z
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->contentView:Lv2/com/playhaven/views/interstitial/PHContentView;

    invoke-virtual {v0}, Lv2/com/playhaven/views/interstitial/PHContentView;->closeButtonIsShowing()Z

    move-result v0

    return v0
.end method

.method public launchNestedContentDisplayer(Lv2/com/playhaven/model/PHContent;)V
    .locals 4
    .param p1, "content"    # Lv2/com/playhaven/model/PHContent;

    .prologue
    .line 428
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 432
    .local v0, "random":Ljava/util/Random;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SubInterstitial"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 436
    .local v1, "subcontent_tag":Ljava/lang/String;
    iget-object v2, p0, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->tag:Ljava/lang/String;

    invoke-static {v2, v1}, Lv2/com/playhaven/interstitial/requestbridge/BridgeManager;->transferBridge(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const/4 v2, 0x0

    invoke-static {p1, p0, v2, v1}, Lv2/com/playhaven/requests/content/PHContentRequest;->displayInterstitialActivity(Lv2/com/playhaven/model/PHContent;Landroid/app/Activity;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 440
    return-void
.end method

.method public launchSubRequest(Lv2/com/playhaven/requests/content/PHSubContentRequest;)V
    .locals 0
    .param p1, "request"    # Lv2/com/playhaven/requests/content/PHSubContentRequest;

    .prologue
    .line 474
    invoke-virtual {p1, p0}, Lv2/com/playhaven/requests/content/PHSubContentRequest;->send(Landroid/content/Context;)V

    .line 475
    return-void
.end method

.method public launchURL(Ljava/lang/String;Lv2/com/playhaven/utils/PHURLOpener$Listener;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Lv2/com/playhaven/utils/PHURLOpener$Listener;

    .prologue
    .line 464
    new-instance v0, Lv2/com/playhaven/utils/PHURLOpener;

    invoke-direct {v0, p0, p2}, Lv2/com/playhaven/utils/PHURLOpener;-><init>(Landroid/content/Context;Lv2/com/playhaven/utils/PHURLOpener$Listener;)V

    .line 467
    .local v0, "opener":Lv2/com/playhaven/utils/PHURLOpener;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lv2/com/playhaven/utils/PHURLOpener;->setShouldOpenFinalURL(Z)V

    .line 469
    invoke-virtual {v0, p1}, Lv2/com/playhaven/utils/PHURLOpener;->open(Ljava/lang/String;)V

    .line 470
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    .prologue
    .line 307
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 310
    invoke-direct {p0}, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->contentHasFrame()Z

    move-result v1

    if-nez v1, :cond_0

    .line 313
    sget-object v1, Lv2/com/playhaven/interstitial/PHContentEnums$Error;->NoBoundingBox:Lv2/com/playhaven/interstitial/PHContentEnums$Error;

    invoke-direct {p0, v1}, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->notifyContentRequestOfFailure(Lv2/com/playhaven/interstitial/PHContentEnums$Error;)V

    .line 323
    :goto_0
    return-void

    .line 319
    :cond_0
    invoke-virtual {p0}, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 320
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 321
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PHInterstitialActivity - onAttachedToWindow()"

    sget-object v2, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;->critical:Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    invoke-static {v0, v1, v2}, Lv2/com/playhaven/requests/crashreport/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;)Lv2/com/playhaven/requests/crashreport/PHCrashReport;

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->getIsBackBtnCancelable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const-string v0, "The interstitial unit was dismissed by the user using back button"

    invoke-static {v0}, Lv2/com/playhaven/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 121
    sget-object v0, Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;->CloseButton:Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;

    invoke-direct {p0, v0}, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->notifyContentRequestOfClose(Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;)V

    .line 123
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 127
    :cond_0
    return-void
.end method

.method public onClose(Lv2/com/playhaven/views/interstitial/PHContentView;)V
    .locals 1
    .param p1, "contentView"    # Lv2/com/playhaven/views/interstitial/PHContentView;

    .prologue
    .line 600
    invoke-virtual {p0}, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->dismiss()V

    .line 604
    sget-object v0, Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;->CloseButton:Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;

    invoke-direct {p0, v0}, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->notifyContentRequestOfClose(Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;)V

    .line 605
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 329
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 331
    new-instance v1, Lv2/com/playhaven/configuration/PHConfiguration;

    invoke-direct {v1}, Lv2/com/playhaven/configuration/PHConfiguration;-><init>()V

    sput-object v1, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->config:Lv2/com/playhaven/configuration/PHConfiguration;

    .line 335
    invoke-virtual {p0}, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;->Content:Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;

    invoke-virtual {v2}, Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lv2/com/playhaven/model/PHContent;

    iput-object v1, p0, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->content:Lv2/com/playhaven/model/PHContent;

    .line 338
    iget-object v1, p0, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->content:Lv2/com/playhaven/model/PHContent;

    invoke-virtual {v1}, Lv2/com/playhaven/model/PHContent;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    invoke-virtual {p0}, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->dismiss()V

    .line 342
    :cond_0
    invoke-virtual {p0}, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;->Tag:Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;

    invoke-virtual {v2}, Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->tag:Ljava/lang/String;

    .line 346
    iget-object v1, p0, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->tag:Ljava/lang/String;

    invoke-static {v1, p0}, Lv2/com/playhaven/interstitial/requestbridge/BridgeManager;->attachDisplayer(Ljava/lang/String;Lv2/com/playhaven/interstitial/requestbridge/base/ContentDisplayer;)V

    .line 348
    invoke-virtual {p0}, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;->CustomCloseBtn:Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;

    invoke-virtual {v2}, Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 349
    invoke-virtual {p0}, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;->CustomCloseBtn:Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;

    invoke-virtual {v2}, Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iput-object v1, p0, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->customCloseStates:Ljava/util/HashMap;

    .line 353
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->setCancelable(ZZ)V

    .line 356
    invoke-virtual {p0}, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 358
    invoke-direct {p0}, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->setupWebviewJSBridge()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :goto_0
    return-void

    .line 360
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 361
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;->critical:Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    invoke-static {v0, v1}, Lv2/com/playhaven/requests/crashreport/PHCrashReport;->reportCrash(Ljava/lang/Exception;Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;)Lv2/com/playhaven/requests/crashreport/PHCrashReport;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 273
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 277
    iget-object v0, p0, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->tag:Ljava/lang/String;

    invoke-static {v0}, Lv2/com/playhaven/interstitial/requestbridge/BridgeManager;->closeBridge(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->contentView:Lv2/com/playhaven/views/interstitial/PHContentView;

    invoke-virtual {v0}, Lv2/com/playhaven/views/interstitial/PHContentView;->cleanup()V

    .line 281
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 175
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 181
    invoke-virtual {p0}, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    :goto_0
    return-void

    .line 183
    :cond_0
    const-string v0, "The interstitial activity was backgrounded and dismissed itself"

    invoke-static {v0}, Lv2/com/playhaven/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 191
    sget-object v0, Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;->ApplicationBackgrounded:Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;

    invoke-direct {p0, v0}, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->notifyContentRequestOfClose(Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;)V

    .line 194
    invoke-virtual {p0}, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->dismiss()V

    goto :goto_0
.end method

.method public onPurchaseResolved(Lv2/com/playhaven/model/PHPurchase;)V
    .locals 5
    .param p1, "resolvedPurchase"    # Lv2/com/playhaven/model/PHPurchase;

    .prologue
    .line 259
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 261
    .local v1, "response":Lorg/json/JSONObject;
    const-string v2, "resolution"

    iget-object v3, p1, Lv2/com/playhaven/model/PHPurchase;->resolution:Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;

    invoke-virtual {v3}, Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    iget-object v2, p0, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->jsBridge:Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;

    iget-object v3, p1, Lv2/com/playhaven/model/PHPurchase;->callback:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;->sendMessageToWebview(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    .end local v1    # "response":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 266
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "PHInterstitialActivity - BroadcastReceiver - onReceive"

    sget-object v3, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;->critical:Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    invoke-static {v0, v2, v3}, Lv2/com/playhaven/requests/crashreport/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;)Lv2/com/playhaven/requests/crashreport/PHCrashReport;

    goto :goto_0
.end method

.method public onStart()V
    .locals 14

    .prologue
    .line 203
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 206
    invoke-direct {p0}, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->initCache()V

    .line 211
    const/4 v6, 0x0

    .line 212
    .local v6, "active":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v7, 0x0

    .line 214
    .local v7, "inactive":Landroid/graphics/drawable/BitmapDrawable;
    :try_start_0
    sget-object v0, Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;->Up:Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;

    invoke-virtual {v0}, Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;->name()Ljava/lang/String;

    move-result-object v9

    .line 215
    .local v9, "active_key":Ljava/lang/String;
    sget-object v0, Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;->Up:Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;

    invoke-virtual {v0}, Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;->name()Ljava/lang/String;

    move-result-object v13

    .line 217
    .local v13, "inactive_key":Ljava/lang/String;
    iget-object v0, p0, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->customCloseStates:Ljava/util/HashMap;

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v0, p0, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->customCloseStates:Ljava/util/HashMap;

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {v8, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .end local v6    # "active":Landroid/graphics/drawable/BitmapDrawable;
    .local v8, "active":Landroid/graphics/drawable/BitmapDrawable;
    move-object v6, v8

    .line 220
    .end local v8    # "active":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v6    # "active":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    iget-object v0, p0, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->customCloseStates:Ljava/util/HashMap;

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 221
    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v0, p0, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->customCloseStates:Ljava/util/HashMap;

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {v12, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .end local v7    # "inactive":Landroid/graphics/drawable/BitmapDrawable;
    .local v12, "inactive":Landroid/graphics/drawable/BitmapDrawable;
    move-object v7, v12

    .line 224
    .end local v12    # "inactive":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v7    # "inactive":Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    new-instance v0, Lv2/com/playhaven/views/interstitial/PHContentView;

    iget-object v3, p0, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->content:Lv2/com/playhaven/model/PHContent;

    iget-object v5, p0, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->jsBridge:Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;

    move-object v1, p0

    move-object v2, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v7}, Lv2/com/playhaven/views/interstitial/PHContentView;-><init>(Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;Landroid/content/Context;Lv2/com/playhaven/model/PHContent;Lv2/com/playhaven/views/interstitial/PHContentView$Listener;Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V

    iput-object v0, p0, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->contentView:Lv2/com/playhaven/views/interstitial/PHContentView;

    .line 232
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-direct {v11, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 237
    .local v11, "fullscreenLayout":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->contentView:Lv2/com/playhaven/views/interstitial/PHContentView;

    invoke-virtual {p0, v0, v11}, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    invoke-direct {p0}, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->fitInterstitialWindowToContent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .end local v9    # "active_key":Ljava/lang/String;
    .end local v11    # "fullscreenLayout":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v13    # "inactive_key":Ljava/lang/String;
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v0

    move-object v10, v0

    .line 242
    .local v10, "e":Ljava/lang/Exception;
    const-string v0, "PHInterstitialActivity - onStart()"

    sget-object v1, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;->critical:Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    invoke-static {v10, v0, v1}, Lv2/com/playhaven/requests/crashreport/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;)Lv2/com/playhaven/requests/crashreport/PHCrashReport;

    goto :goto_0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 249
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 250
    return-void
.end method

.method public onTagChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "new_tag"    # Ljava/lang/String;

    .prologue
    .line 492
    const-string v0, "SubInterstitial"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    :goto_0
    return-void

    .line 497
    :cond_0
    iput-object p1, p0, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->tag:Ljava/lang/String;

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 375
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 377
    invoke-virtual {p0}, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->getIsTouchCancelable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 381
    sget-object v1, Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;->CloseButton:Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;

    invoke-direct {p0, v1}, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->notifyContentRequestOfClose(Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;)V

    .line 383
    invoke-virtual {p0}, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :cond_0
    const/4 v1, 0x1

    .line 392
    :goto_0
    return v1

    .line 389
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 390
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PHInterstitialActivity - onTouchEvent()"

    sget-object v2, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;->critical:Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    invoke-static {v0, v1, v2}, Lv2/com/playhaven/requests/crashreport/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;)Lv2/com/playhaven/requests/crashreport/PHCrashReport;

    .line 392
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public openURL(Ljava/lang/String;Lv2/com/playhaven/utils/PHURLOpener$Listener;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Lv2/com/playhaven/utils/PHURLOpener$Listener;

    .prologue
    .line 454
    new-instance v0, Lv2/com/playhaven/utils/PHURLOpener;

    invoke-direct {v0, p0, p2}, Lv2/com/playhaven/utils/PHURLOpener;-><init>(Landroid/content/Context;Lv2/com/playhaven/utils/PHURLOpener$Listener;)V

    .line 457
    .local v0, "opener":Lv2/com/playhaven/utils/PHURLOpener;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lv2/com/playhaven/utils/PHURLOpener;->setShouldOpenFinalURL(Z)V

    .line 459
    invoke-virtual {v0, p1}, Lv2/com/playhaven/utils/PHURLOpener;->open(Ljava/lang/String;)V

    .line 460
    return-void
.end method

.method public sendEventToRequester(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "message"    # Landroid/os/Bundle;

    .prologue
    .line 479
    iget-object v0, p0, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->tag:Ljava/lang/String;

    invoke-static {v0, p1, p2, p0}, Lv2/com/playhaven/interstitial/requestbridge/BridgeManager;->sendMessageFromDisplayer(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 480
    return-void
.end method

.method public setCancelable(ZZ)V
    .locals 0
    .param p1, "touchCancel"    # Z
    .param p2, "backCancel"    # Z

    .prologue
    .line 524
    iput-boolean p1, p0, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->isTouchCancelable:Z

    .line 525
    iput-boolean p2, p0, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->isBackBtnCancelable:Z

    .line 526
    return-void
.end method

.method public setContent(Lv2/com/playhaven/model/PHContent;)V
    .locals 0
    .param p1, "content"    # Lv2/com/playhaven/model/PHContent;

    .prologue
    .line 545
    if-eqz p1, :cond_0

    .line 546
    iput-object p1, p0, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->content:Lv2/com/playhaven/model/PHContent;

    .line 548
    :cond_0
    return-void
.end method

.method public setIsBackBtnCancelable(Z)Z
    .locals 0
    .param p1, "backCancel"    # Z

    .prologue
    .line 529
    iput-boolean p1, p0, Lv2/com/playhaven/interstitial/PHInterstitialActivity;->isBackBtnCancelable:Z

    return p1
.end method
