.class public Lcom/playhaven/extensions/android/PlayHavenExtensionContext;
.super Lcom/adobe/fre/FREContext;
.source "PlayHavenExtensionContext.java"

# interfaces
.implements Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;
.implements Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$FailureDelegate;
.implements Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PurchaseDelegate;
.implements Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$RewardDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHInitFunction;,
        Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHIsAndroidFunction;,
        Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHMoveNotificationFunction;,
        Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHPreloadContentRequestFunction;,
        Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHRefreshNotificationFunction;,
        Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHRemoveNotificationFunction;,
        Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHReportVGPPurchaseResolutionFunction;,
        Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHSendContentRequestFunction;,
        Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHSendGameOpenRequestFunction;,
        Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHSendMetaDataRequestFunction;,
        Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHSetBaseUrlFunction;,
        Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHSetOptOutStatusFunction;,
        Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHShowNotificationFunction;,
        Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHTrackIAPResolutionFunction;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$playhaven$src$publishersdk$content$PHPublisherContentRequest$PHDismissType:[I = null

.field private static final TAG:Ljava/lang/String; = "[PHExtension]"


# instance fields
.field notifyView:Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;

.field public phSecret:Ljava/lang/String;

.field public phToken:Ljava/lang/String;

.field preloadMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;",
            ">;"
        }
    .end annotation
.end field

.field purchaseMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/playhaven/src/publishersdk/content/PHPurchase;",
            ">;"
        }
    .end annotation
.end field

.field private serverBaseUrl:Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$com$playhaven$src$publishersdk$content$PHPublisherContentRequest$PHDismissType()[I
    .locals 3

    .prologue
    .line 35
    sget-object v0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->$SWITCH_TABLE$com$playhaven$src$publishersdk$content$PHPublisherContentRequest$PHDismissType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;->values()[Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;->ApplicationTriggered:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;

    invoke-virtual {v1}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;->CloseButtonTriggered:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;

    invoke-virtual {v1}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;->ContentUnitTriggered:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;

    invoke-virtual {v1}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;->NoContentTriggered:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;

    invoke-virtual {v1}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->$SWITCH_TABLE$com$playhaven$src$publishersdk$content$PHPublisherContentRequest$PHDismissType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/playhaven/extensions/android/PlayHavenExtensionContext;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->setBaseURL(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/playhaven/extensions/android/PlayHavenExtensionContext;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 519
    invoke-direct {p0, p1, p2}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->dispatchFlashEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private dispatchFlashEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "level"    # Ljava/lang/String;

    .prologue
    .line 521
    const-string v0, "[PHExtension]"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dispatch flash "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-virtual {p0, p1, p2}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    return-void
.end method

.method private setBaseURL(Ljava/lang/String;)V
    .locals 2
    .param p1, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->serverBaseUrl:Ljava/lang/String;

    .line 91
    new-instance v0, Lv2/com/playhaven/configuration/PHConfiguration;

    invoke-direct {v0}, Lv2/com/playhaven/configuration/PHConfiguration;-><init>()V

    invoke-virtual {p0}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lv2/com/playhaven/configuration/PHConfiguration;->setAPIUrl(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    return-void
.end method


# virtual methods
.method public contentDidFail(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "request"    # Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 511
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->placement:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "[ERR]0[ERR]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 512
    .local v0, "level":Ljava/lang/String;
    const-string v1, "CONTENT_FAILED"

    invoke-direct {p0, v1, v0}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->dispatchFlashEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    return-void
.end method

.method public didDismissContent(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;)V
    .locals 3
    .param p1, "request"    # Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;
    .param p2, "type"    # Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;

    .prologue
    .line 478
    const-string v0, "unknown"

    .line 479
    .local v0, "level":Ljava/lang/String;
    invoke-static {}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->$SWITCH_TABLE$com$playhaven$src$publishersdk$content$PHPublisherContentRequest$PHDismissType()[I

    move-result-object v1

    invoke-virtual {p2}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 493
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 495
    iget-object v2, p1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->placement:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "[[TYPE]]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 497
    const-string v1, "DID_DISMISS_CONTENT"

    invoke-direct {p0, v1, v0}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->dispatchFlashEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    return-void

    .line 482
    :pswitch_0
    const-string v0, "PHPublisherContentUnitTriggeredDismiss"

    .line 483
    goto :goto_0

    .line 485
    :pswitch_1
    const-string v0, "PHPublisherNativeCloseButtonTriggeredDismiss"

    .line 486
    goto :goto_0

    .line 488
    :pswitch_2
    const-string v0, "PHPublisherApplicationBackgroundTriggeredDismiss"

    .line 489
    goto :goto_0

    .line 491
    :pswitch_3
    const-string v0, "PHPublisherNoContentTriggeredDismiss"

    goto :goto_0

    .line 479
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public didDisplayContent(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Lcom/playhaven/src/publishersdk/content/PHContent;)V
    .locals 2
    .param p1, "request"    # Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;
    .param p2, "content"    # Lcom/playhaven/src/publishersdk/content/PHContent;

    .prologue
    .line 470
    const-string v0, "DID_DISPLAY_CONTENT"

    iget-object v1, p1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->placement:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->dispatchFlashEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    return-void
.end method

.method public didFail(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Ljava/lang/String;)V
    .locals 3
    .param p1, "request"    # Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;
    .param p2, "error"    # Ljava/lang/String;

    .prologue
    .line 504
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->placement:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "[ERR]0[ERR]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, "level":Ljava/lang/String;
    const-string v1, "CONTENT_FAILED"

    invoke-direct {p0, v1, v0}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->dispatchFlashEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 530
    return-void
.end method

.method public ffiInitPlayHaven(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "secret"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->phToken:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->phSecret:Ljava/lang/String;

    .line 77
    sput-object p1, Lcom/playhaven/src/common/PHConfig;->token:Ljava/lang/String;

    .line 78
    sput-object p2, Lcom/playhaven/src/common/PHConfig;->secret:Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->serverBaseUrl:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->preloadMap:Ljava/util/HashMap;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->purchaseMap:Ljava/util/HashMap;

    .line 85
    return-void
.end method

.method public ffiMoveNotification(FF)Z
    .locals 1
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F

    .prologue
    .line 376
    const/4 v0, 0x0

    return v0
.end method

.method public ffiPreloadContentRequest(Ljava/lang/String;)V
    .locals 2
    .param p1, "placementId"    # Ljava/lang/String;

    .prologue
    .line 142
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;

    invoke-virtual {p0}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 143
    .local v0, "request":Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;
    iget-object v1, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->preloadMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-virtual {v0, p0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->setOnContentListener(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;)V

    .line 146
    invoke-virtual {v0, p0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->setOnFailureListener(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$FailureDelegate;)V

    .line 147
    invoke-virtual {v0, p0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->setOnRewardListener(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$RewardDelegate;)V

    .line 148
    invoke-virtual {v0, p0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->setOnPurchaseListener(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PurchaseDelegate;)V

    .line 149
    invoke-virtual {v0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->preload()V

    .line 150
    return-void
.end method

.method public ffiRefreshNotification(Z)Z
    .locals 1
    .param p1, "isTestMode"    # Z

    .prologue
    .line 363
    iget-object v0, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->notifyView:Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;

    if-nez v0, :cond_0

    .line 365
    const/4 v0, 0x0

    .line 369
    :goto_0
    return v0

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->notifyView:Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;

    invoke-virtual {v0}, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->refresh()V

    .line 369
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public ffiRemoveNotification()Z
    .locals 6

    .prologue
    .line 330
    const/4 v2, 0x0

    .line 331
    .local v2, "res":Z
    iget-object v5, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->notifyView:Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;

    if-eqz v5, :cond_2

    .line 335
    :try_start_0
    iget-object v5, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->notifyView:Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;

    invoke-virtual {v5}, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 336
    .local v4, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 337
    .local v1, "outerVg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 338
    .local v3, "superVg":Landroid/view/ViewGroup;
    iget-object v5, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->notifyView:Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 339
    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    .line 341
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 343
    :cond_0
    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    .line 345
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 347
    :cond_1
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->notifyView:Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    const/4 v2, 0x1

    .line 357
    .end local v1    # "outerVg":Landroid/view/ViewGroup;
    .end local v3    # "superVg":Landroid/view/ViewGroup;
    .end local v4    # "vg":Landroid/view/ViewGroup;
    :cond_2
    :goto_0
    return v2

    .line 349
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 351
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 352
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public ffiReportVGPPurchaseResolution(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "receipt"    # Ljava/lang/String;
    .param p2, "strResolution"    # Ljava/lang/String;

    .prologue
    const-string v6, "VGP_PURCHASE_REPORT_FAILED"

    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, "purchase":Lcom/playhaven/src/publishersdk/content/PHPurchase;
    iget-object v4, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->purchaseMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 190
    iget-object v4, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->purchaseMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "purchase":Lcom/playhaven/src/publishersdk/content/PHPurchase;
    check-cast v0, Lcom/playhaven/src/publishersdk/content/PHPurchase;

    .line 193
    .restart local v0    # "purchase":Lcom/playhaven/src/publishersdk/content/PHPurchase;
    :cond_0
    if-nez v0, :cond_1

    .line 197
    const-string v4, "VGP_PURCHASE_REPORT_FAILED"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "[ERR]404[ERR] Purchase receipt no longer available."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v6, v4}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->dispatchFlashEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :goto_0
    return-void

    .line 201
    :cond_1
    sget-object v3, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;->Error:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    .line 202
    .local v3, "resolution":Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;
    const-string v4, "buy"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 204
    sget-object v3, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;->Buy:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    .line 220
    :goto_1
    invoke-virtual {p0}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/playhaven/src/publishersdk/content/PHPurchase;->reportResolution(Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;Landroid/app/Activity;)V

    .line 221
    new-instance v2, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;

    invoke-virtual {p0}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;-><init>(Landroid/content/Context;Lcom/playhaven/src/publishersdk/content/PHPurchase;)V

    .line 223
    .local v2, "request":Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "purchaseReceiptId":Ljava/lang/String;
    new-instance v4, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$2;

    invoke-direct {v4, p0, v1}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$2;-><init>(Lcom/playhaven/extensions/android/PlayHavenExtensionContext;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->setDelegate(Lcom/playhaven/src/common/PHAPIRequest$Delegate;)V

    .line 244
    invoke-virtual {v2}, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->send()V

    goto :goto_0

    .line 206
    .end local v1    # "purchaseReceiptId":Ljava/lang/String;
    .end local v2    # "request":Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;
    :cond_2
    const-string v4, "cancel"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 208
    sget-object v3, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;->Cancel:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    .line 209
    goto :goto_1

    .line 210
    :cond_3
    const-string v4, "error"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 212
    sget-object v3, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;->Error:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    .line 213
    goto :goto_1

    .line 216
    :cond_4
    const-string v4, "VGP_PURCHASE_REPORT_FAILED"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "[ERR]404[ERR] Invalid resolution "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v6, v4}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->dispatchFlashEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public ffiSendContentRequest(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "placementId"    # Ljava/lang/String;
    .param p2, "showImmediately"    # Z

    .prologue
    const-string v3, "[PHExtension]"

    .line 118
    const/4 v0, 0x0

    .line 120
    .local v0, "request":Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;
    iget-object v1, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->preloadMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->preloadMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "request":Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;
    check-cast v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;

    .line 123
    .restart local v0    # "request":Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;
    const-string v1, "[PHExtension]"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Located preloaded content request for placement id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v1, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->preloadMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :goto_0
    const-string v1, "[PHExtension]"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending content request on placement id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {v0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->send()V

    .line 137
    return-void

    .line 128
    :cond_0
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;

    .end local v0    # "request":Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;
    invoke-virtual {p0}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 129
    .restart local v0    # "request":Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;
    invoke-virtual {v0, p0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->setOnContentListener(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;)V

    .line 130
    invoke-virtual {v0, p0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->setOnFailureListener(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$FailureDelegate;)V

    .line 131
    invoke-virtual {v0, p0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->setOnRewardListener(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$RewardDelegate;)V

    .line 132
    invoke-virtual {v0, p0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->setOnPurchaseListener(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PurchaseDelegate;)V

    goto :goto_0
.end method

.method public ffiSendGameOpenRequest()V
    .locals 2

    .prologue
    .line 103
    new-instance v0, Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;

    invoke-virtual {p0}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;-><init>(Landroid/content/Context;)V

    .line 104
    .local v0, "request":Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;
    invoke-virtual {v0}, Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;->send()V

    .line 105
    return-void
.end method

.method public ffiSendMetaDataRequest(Ljava/lang/String;)V
    .locals 5
    .param p1, "placementId"    # Ljava/lang/String;

    .prologue
    .line 155
    const-string v2, "[PHExtension]"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ffiSendMetaDatRequest on"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v1, Lcom/playhaven/src/publishersdk/metadata/PHPublisherMetadataRequest;

    invoke-virtual {p0}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/playhaven/src/publishersdk/metadata/PHPublisherMetadataRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 158
    .local v1, "request":Lcom/playhaven/src/publishersdk/metadata/PHPublisherMetadataRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "outPlacementId":Ljava/lang/String;
    new-instance v2, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$1;

    invoke-direct {v2, p0, v0}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$1;-><init>(Lcom/playhaven/extensions/android/PlayHavenExtensionContext;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/playhaven/src/publishersdk/metadata/PHPublisherMetadataRequest;->setDelegate(Lcom/playhaven/src/common/PHAPIRequest$Delegate;)V

    .line 181
    invoke-virtual {v1}, Lcom/playhaven/src/publishersdk/metadata/PHPublisherMetadataRequest;->send()V

    .line 182
    return-void
.end method

.method public ffiSetOptOutStatus(Z)V
    .locals 2
    .param p1, "shouldOptOut"    # Z

    .prologue
    .line 111
    const-string v0, "[PHExtension]"

    const-string v1, "Opt Out not supported Android: ignored"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void
.end method

.method public ffiShowNotification(Ljava/lang/String;DD)V
    .locals 8
    .param p1, "placementId"    # Ljava/lang/String;
    .param p2, "centerX"    # D
    .param p4, "centerY"    # D

    .prologue
    const/4 v7, -0x1

    const/4 v6, -0x2

    .line 300
    iget-object v5, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->notifyView:Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;

    if-eqz v5, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->ffiRemoveNotification()Z

    .line 305
    :cond_0
    invoke-virtual {p0}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 306
    .local v0, "activity":Landroid/app/Activity;
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 307
    .local v2, "innerParams":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 309
    .local v1, "innerLayout":Landroid/widget/RelativeLayout;
    new-instance v5, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;

    invoke-virtual {p0}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6, p1}, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->notifyView:Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;

    .line 310
    iget-object v5, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->notifyView:Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 312
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 313
    .local v3, "outerLayout":Landroid/widget/RelativeLayout;
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 316
    .local v4, "outerParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0x9

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 317
    const/16 v5, 0xa

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 319
    invoke-static {p2, p3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 320
    invoke-static {p4, p5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 323
    invoke-virtual {v3, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    invoke-virtual {v0, v3, v4}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    return-void
.end method

.method public ffiTrackIAPResolution(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "productId"    # Ljava/lang/String;
    .param p2, "quantity"    # I
    .param p3, "strResolution"    # Ljava/lang/String;
    .param p4, "receipt"    # Ljava/lang/String;

    .prologue
    .line 252
    sget-object v2, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;->Error:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    .line 253
    .local v2, "resolution":Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;
    const-string v3, "buy"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 255
    sget-object v2, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;->Buy:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    .line 271
    :goto_0
    new-instance v1, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;

    invoke-virtual {p0}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3, p1, p2, v2}, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;)V

    .line 273
    .local v1, "request":Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;
    move-object v0, p1

    .line 275
    .local v0, "eProductId":Ljava/lang/String;
    new-instance v3, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$3;

    invoke-direct {v3, p0, v0}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$3;-><init>(Lcom/playhaven/extensions/android/PlayHavenExtensionContext;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->setDelegate(Lcom/playhaven/src/common/PHAPIRequest$Delegate;)V

    .line 293
    invoke-virtual {v1}, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->send()V

    .line 295
    .end local v0    # "eProductId":Ljava/lang/String;
    .end local v1    # "request":Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;
    :goto_1
    return-void

    .line 257
    :cond_0
    const-string v3, "cancel"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 259
    sget-object v2, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;->Cancel:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    .line 260
    goto :goto_0

    .line 261
    :cond_1
    const-string v3, "error"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 263
    sget-object v2, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;->Error:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    .line 264
    goto :goto_0

    .line 267
    :cond_2
    const-string v3, "TRACK_IAP_FAILED"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "[ERR]404[ERR] Invalid resolution "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->dispatchFlashEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 535
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 536
    .local v0, "functionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "ffiInitPlayHaven"

    new-instance v2, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHInitFunction;

    invoke-direct {v2, p0, v3}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHInitFunction;-><init>(Lcom/playhaven/extensions/android/PlayHavenExtensionContext;Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHInitFunction;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    const-string v1, "ffiSendGameOpenRequest"

    new-instance v2, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHSendGameOpenRequestFunction;

    invoke-direct {v2, p0, v3}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHSendGameOpenRequestFunction;-><init>(Lcom/playhaven/extensions/android/PlayHavenExtensionContext;Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHSendGameOpenRequestFunction;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    const-string v1, "ffiSetOptOutStatus"

    new-instance v2, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHSetOptOutStatusFunction;

    invoke-direct {v2, p0, v3}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHSetOptOutStatusFunction;-><init>(Lcom/playhaven/extensions/android/PlayHavenExtensionContext;Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHSetOptOutStatusFunction;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    const-string v1, "ffiSendContentRequest"

    new-instance v2, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHSendContentRequestFunction;

    invoke-direct {v2, p0, v3}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHSendContentRequestFunction;-><init>(Lcom/playhaven/extensions/android/PlayHavenExtensionContext;Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHSendContentRequestFunction;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    const-string v1, "ffiShowNotification"

    new-instance v2, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHShowNotificationFunction;

    invoke-direct {v2, p0, v3}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHShowNotificationFunction;-><init>(Lcom/playhaven/extensions/android/PlayHavenExtensionContext;Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHShowNotificationFunction;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    const-string v1, "ffiRemoveNotification"

    new-instance v2, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHRemoveNotificationFunction;

    invoke-direct {v2, p0, v3}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHRemoveNotificationFunction;-><init>(Lcom/playhaven/extensions/android/PlayHavenExtensionContext;Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHRemoveNotificationFunction;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    const-string v1, "ffiRefreshNotification"

    new-instance v2, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHRefreshNotificationFunction;

    invoke-direct {v2, p0, v3}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHRefreshNotificationFunction;-><init>(Lcom/playhaven/extensions/android/PlayHavenExtensionContext;Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHRefreshNotificationFunction;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    const-string v1, "ffiMoveNotification"

    new-instance v2, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHMoveNotificationFunction;

    invoke-direct {v2, p0, v3}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHMoveNotificationFunction;-><init>(Lcom/playhaven/extensions/android/PlayHavenExtensionContext;Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHMoveNotificationFunction;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    const-string v1, "ffiPreloadContentRequest"

    new-instance v2, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHPreloadContentRequestFunction;

    invoke-direct {v2, p0, v3}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHPreloadContentRequestFunction;-><init>(Lcom/playhaven/extensions/android/PlayHavenExtensionContext;Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHPreloadContentRequestFunction;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    const-string v1, "ffiSendMetaDataRequest"

    new-instance v2, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHSendMetaDataRequestFunction;

    invoke-direct {v2, p0, v3}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHSendMetaDataRequestFunction;-><init>(Lcom/playhaven/extensions/android/PlayHavenExtensionContext;Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHSendMetaDataRequestFunction;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    const-string v1, "ffiIsAndroid"

    new-instance v2, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHIsAndroidFunction;

    invoke-direct {v2, p0, v3}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHIsAndroidFunction;-><init>(Lcom/playhaven/extensions/android/PlayHavenExtensionContext;Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHIsAndroidFunction;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    const-string v1, "ffiReportVGPPurchaseResolution"

    new-instance v2, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHReportVGPPurchaseResolutionFunction;

    invoke-direct {v2, p0, v3}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHReportVGPPurchaseResolutionFunction;-><init>(Lcom/playhaven/extensions/android/PlayHavenExtensionContext;Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHReportVGPPurchaseResolutionFunction;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    const-string v1, "ffiTrackIAPResolution"

    new-instance v2, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHTrackIAPResolutionFunction;

    invoke-direct {v2, p0, v3}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHTrackIAPResolutionFunction;-><init>(Lcom/playhaven/extensions/android/PlayHavenExtensionContext;Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHTrackIAPResolutionFunction;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    const-string v1, "ffiSetBaseUrl"

    new-instance v2, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHSetBaseUrlFunction;

    invoke-direct {v2, p0, v3}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHSetBaseUrlFunction;-><init>(Lcom/playhaven/extensions/android/PlayHavenExtensionContext;Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHSetBaseUrlFunction;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    return-object v0
.end method

.method public isAndroid()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public requestFailed(Lcom/playhaven/src/common/PHAPIRequest;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "request"    # Lcom/playhaven/src/common/PHAPIRequest;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 449
    return-void
.end method

.method public requestSucceeded(Lcom/playhaven/src/common/PHAPIRequest;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "request"    # Lcom/playhaven/src/common/PHAPIRequest;
    .param p2, "responseData"    # Lorg/json/JSONObject;

    .prologue
    .line 442
    return-void
.end method

.method public shouldMakePurchase(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Lcom/playhaven/src/publishersdk/content/PHPurchase;)V
    .locals 5
    .param p1, "request"    # Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;
    .param p2, "purchase"    # Lcom/playhaven/src/publishersdk/content/PHPurchase;

    .prologue
    .line 387
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 388
    .local v1, "jsonLevel":Lorg/json/JSONObject;
    const-string v2, "{}"

    .line 392
    .local v2, "levelString":Ljava/lang/String;
    :try_start_0
    const-string v3, "productId"

    iget-object v4, p2, Lcom/playhaven/src/publishersdk/content/PHPurchase;->product:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 393
    const-string v3, "quantity"

    iget v4, p2, Lcom/playhaven/src/publishersdk/content/PHPurchase;->quantity:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 394
    const-string v3, "receipt"

    iget-object v4, p2, Lcom/playhaven/src/publishersdk/content/PHPurchase;->receipt:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 395
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 404
    iget-object v3, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->purchaseMap:Ljava/util/HashMap;

    iget-object v4, p2, Lcom/playhaven/src/publishersdk/content/PHPurchase;->receipt:Ljava/lang/String;

    invoke-virtual {v3, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    const-string v3, "VGP_PURCHASE_REQUESTED"

    invoke-direct {p0, v3, v2}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->dispatchFlashEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :goto_0
    return-void

    .line 397
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 399
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->placement:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "[ERR]0[ERR]Purchaseequest parsing failure"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 400
    const-string v3, "VGP_PURCHASE_REQUEST_INVALID"

    invoke-direct {p0, v3, v2}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->dispatchFlashEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unlockedReward(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Lcom/playhaven/src/publishersdk/content/PHReward;)V
    .locals 5
    .param p1, "request"    # Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;
    .param p2, "reward"    # Lcom/playhaven/src/publishersdk/content/PHReward;

    .prologue
    .line 417
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 418
    .local v1, "jsonLevel":Lorg/json/JSONObject;
    const-string v2, "{}"

    .line 421
    .local v2, "levelString":Ljava/lang/String;
    :try_start_0
    const-string v3, "name"

    iget-object v4, p2, Lcom/playhaven/src/publishersdk/content/PHReward;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 422
    const-string v3, "quantity"

    iget v4, p2, Lcom/playhaven/src/publishersdk/content/PHReward;->quantity:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 423
    const-string v3, "receipt"

    iget-object v4, p2, Lcom/playhaven/src/publishersdk/content/PHReward;->receipt:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 424
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 433
    const-string v3, "REWARD_UNLOCKED"

    invoke-direct {p0, v3, v2}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->dispatchFlashEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :goto_0
    return-void

    .line 426
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 428
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->placement:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "[ERR]0[ERR]Response parsing failure"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 429
    const-string v3, "REWARD_FAILED"

    invoke-direct {p0, v3, v2}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->dispatchFlashEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public willDisplayContent(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Lcom/playhaven/src/publishersdk/content/PHContent;)V
    .locals 2
    .param p1, "request"    # Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;
    .param p2, "content"    # Lcom/playhaven/src/publishersdk/content/PHContent;

    .prologue
    .line 462
    const-string v0, "WILL_DISPLAY_CONTENT"

    iget-object v1, p1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->placement:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->dispatchFlashEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    return-void
.end method

.method public willGetContent(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;)V
    .locals 2
    .param p1, "request"    # Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;

    .prologue
    .line 454
    const-string v0, "WILL_GET_CONTENT"

    iget-object v1, p1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->placement:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->dispatchFlashEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    return-void
.end method
