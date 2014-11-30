.class public Lcom/playhaven/src/publishersdk/content/PHContentView;
.super Landroid/app/Activity;
.source "PHContentView.java"

# interfaces
.implements Lcom/playhaven/src/common/PHAPIRequest$Delegate;
.implements Lcom/playhaven/src/common/PHURLLoader$Delegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;,
        Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;,
        Lcom/playhaven/src/publishersdk/content/PHContentView$Event;,
        Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;,
        Lcom/playhaven/src/publishersdk/content/PHContentView$PHWebViewChrome;,
        Lcom/playhaven/src/publishersdk/content/PHContentView$PHWebViewClient;,
        Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;,
        Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;
    }
.end annotation


# static fields
.field public static final BROADCAST_EVENT:Ljava/lang/String; = ""

.field public static final BROADCAST_INTENT:Ljava/lang/String; = "com.playhaven.src.publishersdk.content.PHContentViewEvent"

.field public static final BROADCAST_METADATA:Ljava/lang/String; = "com.playhaven.md"

.field private static final CLOSE_BTN_TIMEOUT:I = 0xfa0

.field private static final JAVASCRIPT_CALLBACK_TEMPLATE:Ljava/lang/String; = "javascript:PlayHaven.nativeAPI.callback(\"%s\", %s, %s)"

.field private static final JAVASCRIPT_SET_PROTOCOL_TEMPLATE:Ljava/lang/String; = "javascript:window.PlayHavenDispatchProtocolVersion = %d"

.field public static final PURCHASE_CALLBACK_INTENT:Ljava/lang/String; = "com.playhaven.src.publishersdk.content.PHContentViewPurchaseCallback"


# instance fields
.field private final CLOSE_MARGIN:F

.field private closeBtn:Landroid/widget/ImageButton;

.field private closeBtnDelay:Landroid/os/Handler;

.field private closeBtnDelayRunnable:Ljava/lang/Runnable;

.field public content:Lcom/playhaven/src/publishersdk/content/PHContent;

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

.field private mRouter:Lcom/playhaven/src/publishersdk/content/PHRequestRouter;

.field private overlayView:Landroid/view/View;

.field private purchaseReceiver:Landroid/content/BroadcastReceiver;

.field private rootView:Landroid/widget/RelativeLayout;

.field public showsOverlayImmediately:Z

.field private tag:Ljava/lang/String;

.field private webview:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 98
    const/high16 v0, 0x41200000

    iput v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->CLOSE_MARGIN:F

    .line 218
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->customCloseStates:Ljava/util/HashMap;

    .line 64
    return-void
.end method

.method static synthetic access$0(Lcom/playhaven/src/publishersdk/content/PHContentView;Lcom/playhaven/src/publishersdk/content/PHContentView$Event;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 412
    invoke-direct {p0, p1, p2}, Lcom/playhaven/src/publishersdk/content/PHContentView;->broadcastEvent(Lcom/playhaven/src/publishersdk/content/PHContentView$Event;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1(Lcom/playhaven/src/publishersdk/content/PHContentView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 355
    invoke-direct {p0, p1}, Lcom/playhaven/src/publishersdk/content/PHContentView;->loadPrecachedIfExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/playhaven/src/publishersdk/content/PHContentView;)Lcom/playhaven/src/publishersdk/content/PHRequestRouter;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->mRouter:Lcom/playhaven/src/publishersdk/content/PHRequestRouter;

    return-object v0
.end method

.method static synthetic access$3(Lcom/playhaven/src/publishersdk/content/PHContentView;)V
    .locals 0

    .prologue
    .line 517
    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->buttonDismiss()V

    return-void
.end method

.method static synthetic access$4(Lcom/playhaven/src/publishersdk/content/PHContentView;)V
    .locals 0

    .prologue
    .line 585
    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->showCloseButton()V

    return-void
.end method

.method private broadcastEvent(Lcom/playhaven/src/publishersdk/content/PHContentView$Event;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "event"    # Lcom/playhaven/src/publishersdk/content/PHContentView$Event;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 413
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.playhaven.src.publishersdk.content.PHContentViewEvent"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 415
    .local v0, "intent":Landroid/content/Intent;
    if-nez p2, :cond_0

    .line 416
    new-instance p2, Landroid/os/Bundle;

    .end local p2    # "extras":Landroid/os/Bundle;
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 418
    .restart local p2    # "extras":Landroid/os/Bundle;
    :cond_0
    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->Tag:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    invoke-virtual {v1}, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->tag:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->Event:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    invoke-virtual {v1}, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string v1, "com.playhaven.md"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 424
    invoke-virtual {p0, v0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->sendBroadcast(Landroid/content/Intent;)V

    .line 425
    return-void
.end method

.method private broadcastStartedSubrequest(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Lorg/json/JSONObject;
    .param p2, "callback"    # Ljava/lang/String;

    .prologue
    .line 1234
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1236
    .local v0, "args":Landroid/os/Bundle;
    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->Context:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    invoke-virtual {v1}, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->Callback:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    invoke-virtual {v1}, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->Tag:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    invoke-virtual {v1}, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;->DidSendSubrequest:Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

    invoke-direct {p0, v1, v0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->broadcastEvent(Lcom/playhaven/src/publishersdk/content/PHContentView$Event;Landroid/os/Bundle;)V

    .line 1241
    return-void
.end method

.method private buttonDismiss()V
    .locals 3

    .prologue
    .line 518
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "User dismissed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 520
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 521
    .local v0, "args":Landroid/os/Bundle;
    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->CloseType:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    invoke-virtual {v1}, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;->CloseButtonTriggered:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;

    invoke-virtual {v2}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;->DidDismiss:Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

    invoke-direct {p0, v1, v0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->broadcastEvent(Lcom/playhaven/src/publishersdk/content/PHContentView$Event;Landroid/os/Bundle;)V

    .line 524
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 525
    return-void
.end method

.method private closeView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1049
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->webview:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1050
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1051
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1053
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 1059
    :cond_0
    invoke-static {p0}, Lcom/playhaven/src/common/PHURLLoader;->invalidateLoaders(Lcom/playhaven/src/common/PHURLLoader$Delegate;)V

    .line 1062
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 1063
    return-void
.end method

.method private getCloseBtn()Landroid/widget/ImageButton;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 462
    iget-object v5, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->closeBtn:Landroid/widget/ImageButton;

    if-nez v5, :cond_2

    .line 464
    new-instance v4, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 466
    .local v4, "states":Landroid/graphics/drawable/StateListDrawable;
    iget-object v5, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->customCloseStates:Ljava/util/HashMap;

    sget-object v6, Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;->Up:Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;

    invoke-virtual {v6}, Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->customCloseStates:Ljava/util/HashMap;

    sget-object v7, Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;->Up:Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;

    invoke-virtual {v7}, Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-direct {v6, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object v2, v6

    .line 467
    .local v2, "inactive":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    iget-object v5, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->customCloseStates:Ljava/util/HashMap;

    sget-object v6, Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;->Down:Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;

    invoke-virtual {v6}, Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->customCloseStates:Ljava/util/HashMap;

    sget-object v7, Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;->Down:Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;

    invoke-virtual {v7}, Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-direct {v6, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object v0, v6

    .line 469
    .local v0, "active":Landroid/graphics/drawable/BitmapDrawable;
    :goto_1
    if-nez v2, :cond_0

    .line 471
    invoke-static {}, Lcom/playhaven/resources/PHResourceManager;->sharedResourceManager()Lcom/playhaven/resources/PHResourceManager;

    move-result-object v5

    const-string v6, "close_inactive"

    invoke-virtual {v5, v6}, Lcom/playhaven/resources/PHResourceManager;->getResource(Ljava/lang/String;)Lcom/playhaven/resources/PHResource;

    move-result-object v3

    .line 470
    check-cast v3, Lcom/playhaven/resources/files/PHCloseImageResource;

    .line 472
    .local v3, "inactiveRes":Lcom/playhaven/resources/files/PHCloseImageResource;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "inactive":Landroid/graphics/drawable/BitmapDrawable;
    sget v5, Lcom/playhaven/src/common/PHConfig;->screen_density_type:I

    invoke-virtual {v3, v5}, Lcom/playhaven/resources/files/PHCloseImageResource;->loadImage(I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 475
    .end local v3    # "inactiveRes":Lcom/playhaven/resources/files/PHCloseImageResource;
    .restart local v2    # "inactive":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    if-nez v0, :cond_1

    .line 477
    invoke-static {}, Lcom/playhaven/resources/PHResourceManager;->sharedResourceManager()Lcom/playhaven/resources/PHResourceManager;

    move-result-object v5

    const-string v6, "close_active"

    invoke-virtual {v5, v6}, Lcom/playhaven/resources/PHResourceManager;->getResource(Ljava/lang/String;)Lcom/playhaven/resources/PHResource;

    move-result-object v1

    .line 476
    check-cast v1, Lcom/playhaven/resources/files/PHCloseActiveImageResource;

    .line 478
    .local v1, "active_res":Lcom/playhaven/resources/files/PHCloseActiveImageResource;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "active":Landroid/graphics/drawable/BitmapDrawable;
    sget v5, Lcom/playhaven/src/common/PHConfig;->screen_density_type:I

    invoke-virtual {v1, v5}, Lcom/playhaven/resources/files/PHCloseActiveImageResource;->loadImage(I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 481
    .end local v1    # "active_res":Lcom/playhaven/resources/files/PHCloseActiveImageResource;
    .restart local v0    # "active":Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    new-array v5, v10, [I

    sget-object v6, Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;->Down:Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;

    invoke-virtual {v6}, Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;->getAndroidState()I

    move-result v6

    aput v6, v5, v9

    invoke-virtual {v4, v5, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 483
    new-array v5, v10, [I

    sget-object v6, Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;->Up:Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;

    invoke-virtual {v6}, Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;->getAndroidState()I

    move-result v6

    aput v6, v5, v9

    invoke-virtual {v4, v5, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 486
    new-instance v5, Landroid/widget/ImageButton;

    invoke-direct {v5, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->closeBtn:Landroid/widget/ImageButton;

    .line 489
    iget-object v5, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->closeBtn:Landroid/widget/ImageButton;

    const-string v6, "closeButton"

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 490
    iget-object v5, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->closeBtn:Landroid/widget/ImageButton;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 496
    iget-object v5, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->closeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v5, v8}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 497
    iget-object v5, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->closeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v5, v4}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 501
    iget-object v5, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->closeBtn:Landroid/widget/ImageButton;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 503
    iget-object v5, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->closeBtn:Landroid/widget/ImageButton;

    new-instance v6, Lcom/playhaven/src/publishersdk/content/PHContentView$2;

    invoke-direct {v6, p0}, Lcom/playhaven/src/publishersdk/content/PHContentView$2;-><init>(Lcom/playhaven/src/publishersdk/content/PHContentView;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 514
    .end local v0    # "active":Landroid/graphics/drawable/BitmapDrawable;
    .end local v2    # "inactive":Landroid/graphics/drawable/BitmapDrawable;
    .end local v4    # "states":Landroid/graphics/drawable/StateListDrawable;
    :cond_2
    iget-object v5, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->closeBtn:Landroid/widget/ImageButton;

    return-object v5

    .restart local v4    # "states":Landroid/graphics/drawable/StateListDrawable;
    :cond_3
    move-object v2, v8

    .line 466
    goto/16 :goto_0

    .restart local v2    # "inactive":Landroid/graphics/drawable/BitmapDrawable;
    :cond_4
    move-object v0, v8

    .line 467
    goto/16 :goto_1
.end method

.method private getRequestContext()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 1215
    :try_start_0
    const-string v3, "context"

    invoke-static {v3}, Lcom/playhaven/src/publishersdk/content/PHRequestRouter;->getCurrentQueryVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1217
    .local v1, "contextStr":Ljava/lang/String;
    new-instance v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    .line 1218
    const-string v3, "undefined"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v1

    .line 1217
    :goto_0
    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1222
    .local v0, "context":Lorg/json/JSONObject;
    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1223
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_1

    move-object v3, v0

    .line 1230
    .end local v0    # "context":Lorg/json/JSONObject;
    .end local v1    # "contextStr":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 1220
    .restart local v1    # "contextStr":Ljava/lang/String;
    :cond_0
    const-string v3, "{}"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1226
    .end local v1    # "contextStr":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1227
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 1230
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private hasOrientationFrame()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    .line 982
    iget-object v2, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->content:Lcom/playhaven/src/publishersdk/content/PHContent;

    if-nez v2, :cond_0

    move v2, v6

    .line 990
    :goto_0
    return v2

    .line 985
    :cond_0
    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    .line 987
    .local v1, "orientation":I
    iget-object v2, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->content:Lcom/playhaven/src/publishersdk/content/PHContent;

    invoke-virtual {v2, v1}, Lcom/playhaven/src/publishersdk/content/PHContent;->getFrame(I)Landroid/graphics/RectF;

    move-result-object v0

    .line 990
    .local v0, "contentFrame":Landroid/graphics/RectF;
    iget v2, v0, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_1

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v2, v2

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v6

    goto :goto_0
.end method

.method private hideCloseButton()V
    .locals 2

    .prologue
    .line 593
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->closeBtnDelay:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->closeBtnDelay:Landroid/os/Handler;

    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->closeBtnDelayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->closeBtn:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 598
    return-void
.end method

.method private loadPrecachedIfExists(Ljava/lang/String;)Z
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 356
    const-string v3, "http://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v6

    .line 384
    :goto_0
    return v3

    .line 358
    :cond_0
    sget-boolean v3, Lcom/playhaven/src/common/PHConfig;->precache:Z

    if-nez v3, :cond_1

    move v3, v6

    goto :goto_0

    .line 360
    :cond_1
    invoke-static {}, Lcom/jakewharton/DiskLruCache;->getSharedDiskCache()Lcom/jakewharton/DiskLruCache;

    move-result-object v3

    if-nez v3, :cond_2

    move v3, v6

    goto :goto_0

    .line 362
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Loading precached version of \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 365
    :try_start_0
    invoke-static {}, Lcom/jakewharton/DiskLruCache;->getSharedDiskCache()Lcom/jakewharton/DiskLruCache;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/jakewharton/DiskLruCache;->get(Ljava/lang/String;)Lcom/jakewharton/DiskLruCache$Snapshot;

    move-result-object v2

    .line 368
    .local v2, "precached_snapshot":Lcom/jakewharton/DiskLruCache$Snapshot;
    if-nez v2, :cond_3

    move v3, v6

    goto :goto_0

    .line 370
    :cond_3
    sget-object v3, Lcom/playhaven/src/common/PHAPIRequest;->PRECACHE_FILE_KEY_INDEX:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/jakewharton/DiskLruCache$Snapshot;->getInputStreamFile(I)Ljava/io/File;

    move-result-object v1

    .line 372
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v2}, Lcom/jakewharton/DiskLruCache$Snapshot;->close()V

    .line 374
    if-nez v1, :cond_4

    move v3, v6

    goto :goto_0

    .line 376
    :cond_4
    iget-object v3, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->webview:Landroid/webkit/WebView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "file:///"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    const/4 v3, 0x1

    goto :goto_0

    .line 380
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "precached_snapshot":Lcom/jakewharton/DiskLruCache$Snapshot;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 381
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v3, v6

    .line 384
    goto :goto_0
.end method

.method private loadURLOrPrecached(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 389
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Loading template URL: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 390
    const/4 v1, 0x0

    .line 392
    .local v1, "hasPrecached":Z
    sget-boolean v2, Lcom/playhaven/src/common/PHConfig;->precache:Z

    if-eqz v2, :cond_0

    .line 393
    invoke-direct {p0, p1}, Lcom/playhaven/src/publishersdk/content/PHContentView;->loadPrecachedIfExists(Ljava/lang/String;)Z

    move-result v1

    .line 396
    :cond_0
    if-eqz v1, :cond_2

    .line 397
    iget-object v2, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->content:Lcom/playhaven/src/publishersdk/content/PHContent;

    iget-boolean v2, v2, Lcom/playhaven/src/publishersdk/content/PHContent;->preloaded:Z

    if-eqz v2, :cond_1

    .line 399
    iget-object v2, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->content:Lcom/playhaven/src/publishersdk/content/PHContent;

    iget-object v2, v2, Lcom/playhaven/src/publishersdk/content/PHContent;->context:Lorg/json/JSONObject;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->processResponse(Lorg/json/JSONObject;Z)V

    .line 410
    .end local v1    # "hasPrecached":Z
    :cond_1
    :goto_0
    return-void

    .line 403
    .restart local v1    # "hasPrecached":Z
    :cond_2
    iget-object v2, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->webview:Landroid/webkit/WebView;

    invoke-virtual {v2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 406
    .end local v1    # "hasPrecached":Z
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 407
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PHContentView - loadURLOrPrecache"

    sget-object v3, Lcom/playhaven/src/common/PHCrashReport$Urgency;->low:Lcom/playhaven/src/common/PHCrashReport$Urgency;

    invoke-static {v0, v2, v3}, Lcom/playhaven/src/common/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lcom/playhaven/src/common/PHCrashReport$Urgency;)Lcom/playhaven/src/common/PHCrashReport;

    goto :goto_0
.end method

.method private placeCloseButton()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x2

    const/high16 v5, 0x41200000

    .line 534
    const/4 v2, 0x0

    .line 535
    .local v2, "marginRight":F
    const/4 v3, 0x0

    .line 540
    .local v3, "marginTop":F
    invoke-static {v5}, Lcom/playhaven/src/utils/PHConversionUtils;->dipToPixels(F)F

    move-result v2

    .line 541
    invoke-static {v5}, Lcom/playhaven/src/utils/PHConversionUtils;->dipToPixels(F)F

    move-result v3

    .line 544
    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->getCloseBtn()Landroid/widget/ImageButton;

    move-result-object v0

    .line 545
    .local v0, "close":Landroid/widget/ImageButton;
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 549
    .local v4, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 552
    float-to-int v5, v3

    float-to-int v6, v2

    invoke-virtual {v4, v7, v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 553
    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 558
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 559
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 560
    .local v1, "detailParent":Landroid/view/ViewGroup;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 563
    .end local v1    # "detailParent":Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->getRootView()Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 564
    return-void
.end method

.method public static pushContent(Lcom/playhaven/src/publishersdk/content/PHContent;Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "content"    # Lcom/playhaven/src/publishersdk/content/PHContent;
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/playhaven/src/publishersdk/content/PHContent;",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 604
    .local p2, "customCloseImages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    if-eqz p1, :cond_1

    .line 605
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/playhaven/src/publishersdk/content/PHContentView;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 608
    .local v0, "contentViewIntent":Landroid/content/Intent;
    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;->Content:Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;

    invoke-virtual {v1}, Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 611
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 612
    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;->CustomCloseBtn:Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;

    invoke-virtual {v1}, Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 614
    :cond_0
    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;->Tag:Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;

    invoke-virtual {v1}, Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 616
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move-object v1, p3

    .line 621
    .end local v0    # "contentViewIntent":Landroid/content/Intent;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private registerPurchaseReceiver()V
    .locals 5

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 430
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHContentView$1;

    invoke-direct {v0, p0}, Lcom/playhaven/src/publishersdk/content/PHContentView$1;-><init>(Lcom/playhaven/src/publishersdk/content/PHContentView;)V

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->purchaseReceiver:Landroid/content/BroadcastReceiver;

    .line 452
    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->purchaseReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "com.playhaven.src.publishersdk.content.PHContentViewPurchaseCallback"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->tag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 454
    :cond_0
    return-void
.end method

.method private setWebViewCachingDisabled(Z)V
    .locals 4
    .param p1, "isDisabled"    # Z

    .prologue
    const/4 v3, 0x1

    .line 963
    if-eqz p1, :cond_0

    .line 964
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 975
    :goto_0
    return-void

    .line 967
    :cond_0
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 968
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget v1, Lcom/playhaven/src/common/PHConfig;->precache_size:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 969
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 970
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 971
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 972
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 973
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    goto :goto_0
.end method

.method public static setWebviewProtocolVersion(Landroid/webkit/WebView;)V
    .locals 5
    .param p0, "webview"    # Landroid/webkit/WebView;

    .prologue
    .line 1068
    if-nez p0, :cond_0

    .line 1078
    :goto_0
    return-void

    .line 1071
    :cond_0
    const-string v1, "javascript:window.PlayHavenDispatchProtocolVersion = %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1072
    sget v4, Lcom/playhaven/src/common/PHConfig;->protocol:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1070
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1075
    .local v0, "javascriptCommand":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting protocol: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 1077
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupWebview()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 939
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 941
    invoke-direct {p0, v3}, Lcom/playhaven/src/publishersdk/content/PHContentView;->setWebViewCachingDisabled(Z)V

    .line 945
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 946
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 947
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 948
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 949
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 951
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->webview:Landroid/webkit/WebView;

    new-instance v1, Lcom/playhaven/src/publishersdk/content/PHContentView$PHWebViewClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/playhaven/src/publishersdk/content/PHContentView$PHWebViewClient;-><init>(Lcom/playhaven/src/publishersdk/content/PHContentView;Lcom/playhaven/src/publishersdk/content/PHContentView$PHWebViewClient;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 952
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->webview:Landroid/webkit/WebView;

    new-instance v1, Lcom/playhaven/src/publishersdk/content/PHContentView$PHWebViewChrome;

    invoke-direct {v1, p0}, Lcom/playhaven/src/publishersdk/content/PHContentView$PHWebViewChrome;-><init>(Lcom/playhaven/src/publishersdk/content/PHContentView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 954
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 956
    return-void
.end method

.method private setupWebviewRoutes()V
    .locals 3

    .prologue
    .line 681
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->mRouter:Lcom/playhaven/src/publishersdk/content/PHRequestRouter;

    const-string v1, "ph://dismiss"

    new-instance v2, Lcom/playhaven/src/publishersdk/content/PHContentView$4;

    invoke-direct {v2, p0}, Lcom/playhaven/src/publishersdk/content/PHContentView$4;-><init>(Lcom/playhaven/src/publishersdk/content/PHContentView;)V

    invoke-virtual {v0, v1, v2}, Lcom/playhaven/src/publishersdk/content/PHRequestRouter;->addRoute(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 690
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->mRouter:Lcom/playhaven/src/publishersdk/content/PHRequestRouter;

    const-string v1, "ph://launch"

    new-instance v2, Lcom/playhaven/src/publishersdk/content/PHContentView$5;

    invoke-direct {v2, p0}, Lcom/playhaven/src/publishersdk/content/PHContentView$5;-><init>(Lcom/playhaven/src/publishersdk/content/PHContentView;)V

    invoke-virtual {v0, v1, v2}, Lcom/playhaven/src/publishersdk/content/PHRequestRouter;->addRoute(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 699
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->mRouter:Lcom/playhaven/src/publishersdk/content/PHRequestRouter;

    const-string v1, "ph://loadContext"

    new-instance v2, Lcom/playhaven/src/publishersdk/content/PHContentView$6;

    invoke-direct {v2, p0}, Lcom/playhaven/src/publishersdk/content/PHContentView$6;-><init>(Lcom/playhaven/src/publishersdk/content/PHContentView;)V

    invoke-virtual {v0, v1, v2}, Lcom/playhaven/src/publishersdk/content/PHRequestRouter;->addRoute(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 708
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->mRouter:Lcom/playhaven/src/publishersdk/content/PHRequestRouter;

    const-string v1, "ph://reward"

    new-instance v2, Lcom/playhaven/src/publishersdk/content/PHContentView$7;

    invoke-direct {v2, p0}, Lcom/playhaven/src/publishersdk/content/PHContentView$7;-><init>(Lcom/playhaven/src/publishersdk/content/PHContentView;)V

    invoke-virtual {v0, v1, v2}, Lcom/playhaven/src/publishersdk/content/PHRequestRouter;->addRoute(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 717
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->mRouter:Lcom/playhaven/src/publishersdk/content/PHRequestRouter;

    const-string v1, "ph://purchase"

    new-instance v2, Lcom/playhaven/src/publishersdk/content/PHContentView$8;

    invoke-direct {v2, p0}, Lcom/playhaven/src/publishersdk/content/PHContentView$8;-><init>(Lcom/playhaven/src/publishersdk/content/PHContentView;)V

    invoke-virtual {v0, v1, v2}, Lcom/playhaven/src/publishersdk/content/PHRequestRouter;->addRoute(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 726
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->mRouter:Lcom/playhaven/src/publishersdk/content/PHRequestRouter;

    const-string v1, "ph://subcontent"

    new-instance v2, Lcom/playhaven/src/publishersdk/content/PHContentView$9;

    invoke-direct {v2, p0}, Lcom/playhaven/src/publishersdk/content/PHContentView$9;-><init>(Lcom/playhaven/src/publishersdk/content/PHContentView;)V

    invoke-virtual {v0, v1, v2}, Lcom/playhaven/src/publishersdk/content/PHRequestRouter;->addRoute(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 735
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->mRouter:Lcom/playhaven/src/publishersdk/content/PHRequestRouter;

    const-string v1, "ph://closeButton"

    new-instance v2, Lcom/playhaven/src/publishersdk/content/PHContentView$10;

    invoke-direct {v2, p0}, Lcom/playhaven/src/publishersdk/content/PHContentView$10;-><init>(Lcom/playhaven/src/publishersdk/content/PHContentView;)V

    invoke-virtual {v0, v1, v2}, Lcom/playhaven/src/publishersdk/content/PHRequestRouter;->addRoute(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 743
    return-void
.end method

.method private showCloseAfterTimeout()V
    .locals 4

    .prologue
    .line 568
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->closeBtnDelay:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 569
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->closeBtnDelay:Landroid/os/Handler;

    .line 572
    :cond_0
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHContentView$3;

    invoke-direct {v0, p0}, Lcom/playhaven/src/publishersdk/content/PHContentView$3;-><init>(Lcom/playhaven/src/publishersdk/content/PHContentView;)V

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->closeBtnDelayRunnable:Ljava/lang/Runnable;

    .line 578
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->closeBtnDelay:Landroid/os/Handler;

    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->closeBtnDelayRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 579
    return-void
.end method

.method private showCloseButton()V
    .locals 2

    .prologue
    .line 588
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->closeBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->closeBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 590
    :cond_0
    return-void
.end method

.method private sizeToOrientation()V
    .locals 8

    .prologue
    const/16 v7, 0x800

    const/high16 v6, 0x4f000000

    const/4 v5, 0x0

    const/high16 v4, -0x40800000

    const/16 v3, 0x400

    .line 996
    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    .line 1000
    .local v1, "orientation":I
    iget-object v2, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->content:Lcom/playhaven/src/publishersdk/content/PHContent;

    invoke-virtual {v2, v1}, Lcom/playhaven/src/publishersdk/content/PHContent;->getFrame(I)Landroid/graphics/RectF;

    move-result-object v0

    .line 1002
    .local v0, "contentFrame":Landroid/graphics/RectF;
    iget v2, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v6

    if-nez v2, :cond_0

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v2, v6

    if-nez v2, :cond_0

    .line 1003
    iput v4, v0, Landroid/graphics/RectF;->right:F

    .line 1004
    iput v4, v0, Landroid/graphics/RectF;->bottom:F

    .line 1005
    iput v5, v0, Landroid/graphics/RectF;->top:F

    .line 1006
    iput v5, v0, Landroid/graphics/RectF;->left:F

    .line 1008
    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 1009
    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/Window;->clearFlags(I)V

    .line 1017
    :goto_0
    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 1018
    return-void

    .line 1011
    :cond_0
    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 1012
    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .prologue
    .line 1039
    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->closeView()V

    .line 1040
    return-void
.end method

.method public dismiss(Ljava/lang/String;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 1044
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 1046
    .local v0, "args":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    return-void
.end method

.method public getContent()Lcom/playhaven/src/publishersdk/content/PHContent;
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->content:Lcom/playhaven/src/publishersdk/content/PHContent;

    return-object v0
.end method

.method public getIsBackBtnCancelable()Z
    .locals 1

    .prologue
    .line 835
    iget-boolean v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->isBackBtnCancelable:Z

    return v0
.end method

.method public getIsTouchCancelable()Z
    .locals 1

    .prologue
    .line 831
    iget-boolean v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->isTouchCancelable:Z

    return v0
.end method

.method public getOverlayView()Landroid/view/View;
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->overlayView:Landroid/view/View;

    return-object v0
.end method

.method public getRootView()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public handleCloseButton()V
    .locals 6

    .prologue
    const-string v4, "hidden"

    .line 1360
    :try_start_0
    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->getRequestContext()Lorg/json/JSONObject;

    move-result-object v0

    .line 1361
    .local v0, "context":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 1382
    .end local v0    # "context":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 1363
    .restart local v0    # "context":Lorg/json/JSONObject;
    :cond_0
    iget-object v4, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->closeBtnDelay:Landroid/os/Handler;

    if-eqz v4, :cond_1

    .line 1364
    iget-object v4, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->closeBtnDelay:Landroid/os/Handler;

    iget-object v5, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->closeBtnDelayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1366
    :cond_1
    const-string v4, "hidden"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1369
    .local v3, "shouldHide":Ljava/lang/String;
    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1370
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 1371
    iget-object v4, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->closeBtn:Landroid/widget/ImageButton;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x8

    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1374
    :cond_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1375
    .local v2, "response":Lorg/json/JSONObject;
    const-string v4, "hidden"

    iget-object v5, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->closeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "false"

    :goto_2
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1377
    const-string v4, "callback"

    invoke-static {v4}, Lcom/playhaven/src/publishersdk/content/PHRequestRouter;->getCurrentQueryVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v2, v5}, Lcom/playhaven/src/publishersdk/content/PHContentView;->sendCallback(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1379
    .end local v0    # "context":Lorg/json/JSONObject;
    .end local v2    # "response":Lorg/json/JSONObject;
    .end local v3    # "shouldHide":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 1380
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "PHContentView - handleCloseButton"

    sget-object v5, Lcom/playhaven/src/common/PHCrashReport$Urgency;->critical:Lcom/playhaven/src/common/PHCrashReport$Urgency;

    invoke-static {v1, v4, v5}, Lcom/playhaven/src/common/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lcom/playhaven/src/common/PHCrashReport$Urgency;)Lcom/playhaven/src/common/PHCrashReport;

    goto :goto_0

    .line 1371
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "context":Lorg/json/JSONObject;
    .restart local v3    # "shouldHide":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 1375
    .restart local v2    # "response":Lorg/json/JSONObject;
    :cond_4
    :try_start_1
    const-string v5, "true"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public handleDismiss()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1262
    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->getRequestContext()Lorg/json/JSONObject;

    move-result-object v0

    .line 1264
    .local v0, "context":Lorg/json/JSONObject;
    new-instance v1, Lcom/playhaven/src/common/PHURLLoader;

    invoke-direct {v1, p0, p0}, Lcom/playhaven/src/common/PHURLLoader;-><init>(Landroid/content/Context;Lcom/playhaven/src/common/PHURLLoader$Delegate;)V

    .line 1266
    .local v1, "loader":Lcom/playhaven/src/common/PHURLLoader;
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/playhaven/src/common/PHURLLoader;->openFinalURL:Z

    .line 1267
    if-eqz v0, :cond_0

    .line 1268
    const-string v2, "ping"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1267
    :goto_0
    invoke-virtual {v1, v2}, Lcom/playhaven/src/common/PHURLLoader;->setTargetURL(Ljava/lang/String;)V

    .line 1271
    iput-object p0, v1, Lcom/playhaven/src/common/PHURLLoader;->delegate:Lcom/playhaven/src/common/PHURLLoader$Delegate;

    .line 1272
    invoke-virtual {v1, v4}, Lcom/playhaven/src/common/PHURLLoader;->setCallback(Ljava/lang/String;)V

    .line 1274
    invoke-virtual {v1}, Lcom/playhaven/src/common/PHURLLoader;->open()V

    .line 1276
    return-void

    :cond_0
    move-object v2, v4

    .line 1269
    goto :goto_0
.end method

.method public handleLaunch()V
    .locals 4

    .prologue
    .line 1385
    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->getRequestContext()Lorg/json/JSONObject;

    move-result-object v0

    .line 1386
    .local v0, "context":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 1394
    :goto_0
    return-void

    .line 1388
    :cond_0
    new-instance v1, Lcom/playhaven/src/common/PHURLLoader;

    invoke-direct {v1, p0, p0}, Lcom/playhaven/src/common/PHURLLoader;-><init>(Landroid/content/Context;Lcom/playhaven/src/common/PHURLLoader$Delegate;)V

    .line 1390
    .local v1, "loader":Lcom/playhaven/src/common/PHURLLoader;
    const-string v2, "url"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/playhaven/src/common/PHURLLoader;->setTargetURL(Ljava/lang/String;)V

    .line 1391
    const-string v2, "callback"

    invoke-static {v2}, Lcom/playhaven/src/publishersdk/content/PHRequestRouter;->getCurrentQueryVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/playhaven/src/common/PHURLLoader;->setCallback(Ljava/lang/String;)V

    .line 1393
    invoke-virtual {v1}, Lcom/playhaven/src/common/PHURLLoader;->open()V

    goto :goto_0
.end method

.method public handleLoadContext()V
    .locals 3

    .prologue
    .line 1399
    const-string v0, "callback"

    invoke-static {v0}, Lcom/playhaven/src/publishersdk/content/PHRequestRouter;->getCurrentQueryVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->content:Lcom/playhaven/src/publishersdk/content/PHContent;

    iget-object v1, v1, Lcom/playhaven/src/publishersdk/content/PHContent;->context:Lorg/json/JSONObject;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/playhaven/src/publishersdk/content/PHContentView;->sendCallback(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 1400
    return-void
.end method

.method public handlePurchases()V
    .locals 11

    .prologue
    const-string v8, "purchases"

    const-string v8, "callback"

    const-string v8, ""

    .line 1319
    :try_start_0
    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->getRequestContext()Lorg/json/JSONObject;

    move-result-object v1

    .line 1320
    .local v1, "context":Lorg/json/JSONObject;
    if-nez v1, :cond_0

    .line 1355
    .end local v1    # "context":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 1322
    .restart local v1    # "context":Lorg/json/JSONObject;
    :cond_0
    const-string v8, "purchases"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1323
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    move-object v7, v8

    .line 1327
    .local v7, "purchases":Lorg/json/JSONArray;
    :goto_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lt v4, v8, :cond_2

    .line 1350
    const-string v8, "callback"

    invoke-static {v8}, Lcom/playhaven/src/publishersdk/content/PHRequestRouter;->getCurrentQueryVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0, v8, v9, v10}, Lcom/playhaven/src/publishersdk/content/PHContentView;->sendCallback(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1352
    .end local v1    # "context":Lorg/json/JSONObject;
    .end local v4    # "i":I
    .end local v7    # "purchases":Lorg/json/JSONArray;
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 1353
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "PHContentView - handlePurchase"

    sget-object v9, Lcom/playhaven/src/common/PHCrashReport$Urgency;->critical:Lcom/playhaven/src/common/PHCrashReport$Urgency;

    invoke-static {v3, v8, v9}, Lcom/playhaven/src/common/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lcom/playhaven/src/common/PHCrashReport$Urgency;)Lcom/playhaven/src/common/PHCrashReport;

    goto :goto_0

    .line 1324
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "context":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    const-string v8, "purchases"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    move-object v7, v8

    goto :goto_1

    .line 1329
    .restart local v4    # "i":I
    .restart local v7    # "purchases":Lorg/json/JSONArray;
    :cond_2
    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 1331
    .local v6, "purchase":Lorg/json/JSONObject;
    invoke-virtual {p0, v6}, Lcom/playhaven/src/publishersdk/content/PHContentView;->validatePurchase(Lorg/json/JSONObject;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1333
    new-instance v5, Lcom/playhaven/src/publishersdk/content/PHPurchase;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "com.playhaven.src.publishersdk.content.PHContentViewPurchaseCallback"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->tag:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Lcom/playhaven/src/publishersdk/content/PHPurchase;-><init>(Ljava/lang/String;)V

    .line 1334
    .local v5, "p":Lcom/playhaven/src/publishersdk/content/PHPurchase;
    sget-object v8, Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;->ProductIDKey:Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;

    invoke-virtual {v8}, Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;->key()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/playhaven/src/publishersdk/content/PHPurchase;->product:Ljava/lang/String;

    .line 1335
    sget-object v8, Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;->NameKey:Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;

    invoke-virtual {v8}, Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;->key()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/playhaven/src/publishersdk/content/PHPurchase;->name:Ljava/lang/String;

    .line 1336
    sget-object v8, Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;->QuantityKey:Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;

    invoke-virtual {v8}, Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;->key()Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v5, Lcom/playhaven/src/publishersdk/content/PHPurchase;->quantity:I

    .line 1337
    sget-object v8, Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;->ReceiptKey:Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;

    invoke-virtual {v8}, Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;->key()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/playhaven/src/publishersdk/content/PHPurchase;->receipt:Ljava/lang/String;

    .line 1338
    const-string v8, "callback"

    invoke-static {v8}, Lcom/playhaven/src/publishersdk/content/PHRequestRouter;->getCurrentQueryVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/playhaven/src/publishersdk/content/PHPurchase;->callback:Ljava/lang/String;

    .line 1340
    sget-object v8, Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;->CookieKey:Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;

    invoke-virtual {v8}, Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;->key()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1341
    .local v2, "cookie":Ljava/lang/String;
    iget-object v8, v5, Lcom/playhaven/src/publishersdk/content/PHPurchase;->product:Ljava/lang/String;

    invoke-static {v8, v2}, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->setConversionCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1344
    .local v0, "args":Landroid/os/Bundle;
    sget-object v8, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->Purchase:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    invoke-virtual {v8}, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1345
    sget-object v8, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;->DidMakePurchase:Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

    invoke-direct {p0, v8, v0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->broadcastEvent(Lcom/playhaven/src/publishersdk/content/PHContentView$Event;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1327
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "cookie":Ljava/lang/String;
    .end local v5    # "p":Lcom/playhaven/src/publishersdk/content/PHPurchase;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2
.end method

.method public handleRewards()V
    .locals 10

    .prologue
    const-string v7, "rewards"

    const-string v7, ""

    .line 1281
    :try_start_0
    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->getRequestContext()Lorg/json/JSONObject;

    move-result-object v1

    .line 1282
    .local v1, "context":Lorg/json/JSONObject;
    if-nez v1, :cond_0

    .line 1314
    .end local v1    # "context":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 1284
    .restart local v1    # "context":Lorg/json/JSONObject;
    :cond_0
    const-string v7, "rewards"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1285
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    move-object v6, v7

    .line 1288
    .local v6, "rewards":Lorg/json/JSONArray;
    :goto_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lt v3, v7, :cond_2

    .line 1309
    const-string v7, "callback"

    invoke-static {v7}, Lcom/playhaven/src/publishersdk/content/PHRequestRouter;->getCurrentQueryVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0, v7, v8, v9}, Lcom/playhaven/src/publishersdk/content/PHContentView;->sendCallback(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1311
    .end local v1    # "context":Lorg/json/JSONObject;
    .end local v3    # "i":I
    .end local v6    # "rewards":Lorg/json/JSONArray;
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 1312
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "PHContentView - handleRewards"

    sget-object v8, Lcom/playhaven/src/common/PHCrashReport$Urgency;->low:Lcom/playhaven/src/common/PHCrashReport$Urgency;

    invoke-static {v2, v7, v8}, Lcom/playhaven/src/common/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lcom/playhaven/src/common/PHCrashReport$Urgency;)Lcom/playhaven/src/common/PHCrashReport;

    goto :goto_0

    .line 1286
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "context":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    const-string v7, "rewards"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    move-object v6, v7

    goto :goto_1

    .line 1290
    .restart local v3    # "i":I
    .restart local v6    # "rewards":Lorg/json/JSONArray;
    :cond_2
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 1292
    .local v5, "reward":Lorg/json/JSONObject;
    invoke-virtual {p0, v5}, Lcom/playhaven/src/publishersdk/content/PHContentView;->validateReward(Lorg/json/JSONObject;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1294
    new-instance v4, Lcom/playhaven/src/publishersdk/content/PHReward;

    invoke-direct {v4}, Lcom/playhaven/src/publishersdk/content/PHReward;-><init>()V

    .line 1296
    .local v4, "r":Lcom/playhaven/src/publishersdk/content/PHReward;
    sget-object v7, Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;->IDKey:Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;

    invoke-virtual {v7}, Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;->key()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/playhaven/src/publishersdk/content/PHReward;->name:Ljava/lang/String;

    .line 1297
    sget-object v7, Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;->QuantityKey:Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;

    invoke-virtual {v7}, Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;->key()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v4, Lcom/playhaven/src/publishersdk/content/PHReward;->quantity:I

    .line 1298
    sget-object v7, Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;->ReceiptKey:Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;

    invoke-virtual {v7}, Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;->key()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/playhaven/src/publishersdk/content/PHReward;->receipt:Ljava/lang/String;

    .line 1301
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1302
    .local v0, "args":Landroid/os/Bundle;
    sget-object v7, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->Reward:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    invoke-virtual {v7}, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1304
    sget-object v7, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;->DidUnlockReward:Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

    invoke-direct {p0, v7, v0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->broadcastEvent(Lcom/playhaven/src/publishersdk/content/PHContentView$Event;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1288
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v4    # "r":Lcom/playhaven/src/publishersdk/content/PHReward;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public handleSubrequest()V
    .locals 4

    .prologue
    .line 1245
    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->getRequestContext()Lorg/json/JSONObject;

    move-result-object v0

    .line 1246
    .local v0, "context":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 1258
    :goto_0
    return-void

    .line 1248
    :cond_0
    new-instance v1, Lcom/playhaven/src/publishersdk/content/PHPublisherSubContentRequest;

    invoke-direct {v1, p0, p0}, Lcom/playhaven/src/publishersdk/content/PHPublisherSubContentRequest;-><init>(Landroid/content/Context;Lcom/playhaven/src/common/PHAPIRequest$Delegate;)V

    .line 1250
    .local v1, "request":Lcom/playhaven/src/publishersdk/content/PHPublisherSubContentRequest;
    const-string v2, "url"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/playhaven/src/publishersdk/content/PHPublisherSubContentRequest;->setBaseURL(Ljava/lang/String;)V

    .line 1251
    const-string v2, "callback"

    invoke-static {v2}, Lcom/playhaven/src/publishersdk/content/PHRequestRouter;->getCurrentQueryVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/playhaven/src/publishersdk/content/PHPublisherSubContentRequest;->callback:Ljava/lang/String;

    .line 1252
    iput-object p0, v1, Lcom/playhaven/src/publishersdk/content/PHPublisherSubContentRequest;->source:Lcom/playhaven/src/publishersdk/content/PHContentView;

    .line 1254
    invoke-virtual {v1}, Lcom/playhaven/src/publishersdk/content/PHPublisherSubContentRequest;->send()V

    .line 1257
    iget-object v2, v1, Lcom/playhaven/src/publishersdk/content/PHPublisherSubContentRequest;->callback:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/playhaven/src/publishersdk/content/PHContentView;->broadcastStartedSubrequest(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected loadTemplate()V
    .locals 3

    .prologue
    .line 1022
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->webview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    .line 1025
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Template URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->content:Lcom/playhaven/src/publishersdk/content/PHContent;

    iget-object v2, v2, Lcom/playhaven/src/publishersdk/content/PHContent;->url:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 1026
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->content:Lcom/playhaven/src/publishersdk/content/PHContent;

    iget-object v1, v1, Lcom/playhaven/src/publishersdk/content/PHContent;->url:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/playhaven/src/publishersdk/content/PHContentView;->loadURLOrPrecached(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1033
    :goto_0
    return-void

    .line 1028
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1030
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public loaderFailed(Lcom/playhaven/src/common/PHURLLoader;)V
    .locals 7
    .param p1, "loader"    # Lcom/playhaven/src/common/PHURLLoader;

    .prologue
    const-string v6, "PHContentView - loaderFailed"

    .line 1452
    invoke-virtual {p1}, Lcom/playhaven/src/common/PHURLLoader;->getCallback()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1454
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1455
    .local v3, "response":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1457
    .local v2, "error":Lorg/json/JSONObject;
    const-string v4, "error"

    const-string v5, "1"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1458
    const-string v4, "url"

    invoke-virtual {p1}, Lcom/playhaven/src/common/PHURLLoader;->getTargetURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1460
    invoke-virtual {p1}, Lcom/playhaven/src/common/PHURLLoader;->getCallback()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3, v2}, Lcom/playhaven/src/publishersdk/content/PHContentView;->sendCallback(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1469
    .end local v2    # "error":Lorg/json/JSONObject;
    .end local v3    # "response":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1470
    .local v0, "args":Landroid/os/Bundle;
    sget-object v4, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->CloseType:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    invoke-virtual {v4}, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->getKey()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;->NoContentTriggered:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;

    invoke-virtual {v5}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    sget-object v4, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;->DidDismiss:Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

    invoke-direct {p0, v4, v0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->broadcastEvent(Lcom/playhaven/src/publishersdk/content/PHContentView$Event;Landroid/os/Bundle;)V

    .line 1473
    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->dismiss()V

    .line 1474
    return-void

    .line 1461
    .end local v0    # "args":Landroid/os/Bundle;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 1462
    .local v1, "e":Lorg/json/JSONException;
    const-string v4, "PHContentView - loaderFailed"

    sget-object v4, Lcom/playhaven/src/common/PHCrashReport$Urgency;->critical:Lcom/playhaven/src/common/PHCrashReport$Urgency;

    invoke-static {v1, v6, v4}, Lcom/playhaven/src/common/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lcom/playhaven/src/common/PHCrashReport$Urgency;)Lcom/playhaven/src/common/PHCrashReport;

    goto :goto_0

    .line 1463
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 1464
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "PHContentView - loaderFailed"

    sget-object v4, Lcom/playhaven/src/common/PHCrashReport$Urgency;->critical:Lcom/playhaven/src/common/PHCrashReport$Urgency;

    invoke-static {v1, v6, v4}, Lcom/playhaven/src/common/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lcom/playhaven/src/common/PHCrashReport$Urgency;)Lcom/playhaven/src/common/PHCrashReport;

    goto :goto_0
.end method

.method public loaderFinished(Lcom/playhaven/src/common/PHURLLoader;)V
    .locals 6
    .param p1, "loader"    # Lcom/playhaven/src/common/PHURLLoader;

    .prologue
    const-string v5, "PHContentView - loaderFinished"

    .line 1422
    invoke-virtual {p1}, Lcom/playhaven/src/common/PHURLLoader;->getCallback()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1424
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1425
    .local v2, "r":Lorg/json/JSONObject;
    const-string v3, "url"

    invoke-virtual {p1}, Lcom/playhaven/src/common/PHURLLoader;->getTargetURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1427
    invoke-virtual {p1}, Lcom/playhaven/src/common/PHURLLoader;->getCallback()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v4}, Lcom/playhaven/src/publishersdk/content/PHContentView;->sendCallback(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 1431
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1432
    .local v0, "args":Landroid/os/Bundle;
    sget-object v3, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->LaunchURL:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    invoke-virtual {v3}, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/playhaven/src/common/PHURLLoader;->getTargetURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    sget-object v3, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;->DidLaunchURL:Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

    invoke-direct {p0, v3, v0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->broadcastEvent(Lcom/playhaven/src/publishersdk/content/PHContentView$Event;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1442
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "r":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1443
    .restart local v0    # "args":Landroid/os/Bundle;
    sget-object v3, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->CloseType:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    invoke-virtual {v3}, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->getKey()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;->ContentUnitTriggered:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;

    invoke-virtual {v4}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    sget-object v3, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;->DidDismiss:Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

    invoke-direct {p0, v3, v0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->broadcastEvent(Lcom/playhaven/src/publishersdk/content/PHContentView$Event;Landroid/os/Bundle;)V

    .line 1447
    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->dismiss()V

    .line 1448
    return-void

    .line 1435
    .end local v0    # "args":Landroid/os/Bundle;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1436
    .local v1, "e":Lorg/json/JSONException;
    const-string v3, "PHContentView - loaderFinished"

    sget-object v3, Lcom/playhaven/src/common/PHCrashReport$Urgency;->critical:Lcom/playhaven/src/common/PHCrashReport$Urgency;

    invoke-static {v1, v5, v3}, Lcom/playhaven/src/common/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lcom/playhaven/src/common/PHCrashReport$Urgency;)Lcom/playhaven/src/common/PHCrashReport;

    goto :goto_0

    .line 1437
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 1438
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "PHContentView - loaderFinished"

    sget-object v3, Lcom/playhaven/src/common/PHCrashReport$Urgency;->critical:Lcom/playhaven/src/common/PHCrashReport$Urgency;

    invoke-static {v1, v5, v3}, Lcom/playhaven/src/common/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lcom/playhaven/src/common/PHCrashReport$Urgency;)Lcom/playhaven/src/common/PHCrashReport;

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .prologue
    .line 754
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 757
    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->hasOrientationFrame()Z

    move-result v1

    if-nez v1, :cond_0

    .line 758
    const-string v1, "The content you requested was not able to be shown because it is missing required orientation data."

    invoke-virtual {p0, v1}, Lcom/playhaven/src/publishersdk/content/PHContentView;->dismiss(Ljava/lang/String;)V

    .line 768
    :goto_0
    return-void

    .line 763
    :cond_0
    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 765
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 766
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PHContentView - onAttachedToWindow()"

    sget-object v2, Lcom/playhaven/src/common/PHCrashReport$Urgency;->critical:Lcom/playhaven/src/common/PHCrashReport$Urgency;

    invoke-static {v0, v1, v2}, Lcom/playhaven/src/common/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lcom/playhaven/src/common/PHCrashReport$Urgency;)Lcom/playhaven/src/common/PHCrashReport;

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 629
    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->getIsBackBtnCancelable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 630
    const-string v1, "The content unit was dismissed by the user using back button"

    invoke-static {v1}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 632
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 633
    .local v0, "args":Landroid/os/Bundle;
    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->CloseType:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    invoke-virtual {v1}, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;->CloseButtonTriggered:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;

    invoke-virtual {v2}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;->DidDismiss:Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

    invoke-direct {p0, v1, v0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->broadcastEvent(Lcom/playhaven/src/publishersdk/content/PHContentView$Event;Landroid/os/Bundle;)V

    .line 636
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 640
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 774
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 776
    new-instance v1, Lcom/playhaven/src/publishersdk/content/PHRequestRouter;

    invoke-direct {v1}, Lcom/playhaven/src/publishersdk/content/PHRequestRouter;-><init>()V

    iput-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->mRouter:Lcom/playhaven/src/publishersdk/content/PHRequestRouter;

    .line 780
    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;->Content:Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;

    invoke-virtual {v2}, Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/playhaven/src/publishersdk/content/PHContent;

    iput-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->content:Lcom/playhaven/src/publishersdk/content/PHContent;

    .line 783
    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;->Tag:Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;

    invoke-virtual {v2}, Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->tag:Ljava/lang/String;

    .line 785
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->tag:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 786
    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->registerPurchaseReceiver()V

    .line 788
    :cond_0
    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;->CustomCloseBtn:Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;

    invoke-virtual {v2}, Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 789
    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;->CustomCloseBtn:Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;

    invoke-virtual {v2}, Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iput-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->customCloseStates:Ljava/util/HashMap;

    .line 793
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/playhaven/src/publishersdk/content/PHContentView;->setCancelable(ZZ)V

    .line 795
    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 797
    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->setupWebviewRoutes()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 802
    :goto_0
    return-void

    .line 799
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 800
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/playhaven/src/common/PHCrashReport$Urgency;->critical:Lcom/playhaven/src/common/PHCrashReport$Urgency;

    invoke-static {v0, v1}, Lcom/playhaven/src/common/PHCrashReport;->reportCrash(Ljava/lang/Exception;Lcom/playhaven/src/common/PHCrashReport$Urgency;)Lcom/playhaven/src/common/PHCrashReport;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 664
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 665
    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->purchaseReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 667
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->webview:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 670
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->closeBtnDelay:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 675
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->closeBtnDelay:Landroid/os/Handler;

    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->closeBtnDelayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 677
    :cond_1
    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->hideCloseButton()V

    .line 678
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 644
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 646
    invoke-static {}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->dismissedContent()V

    .line 647
    return-void
.end method

.method public onStart()V
    .locals 8

    .prologue
    .line 880
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 883
    :try_start_0
    invoke-static {}, Lcom/jakewharton/DiskLruCache;->getSharedDiskCache()Lcom/jakewharton/DiskLruCache;

    move-result-object v1

    .line 884
    .local v1, "cache":Lcom/jakewharton/DiskLruCache;
    sget-boolean v4, Lcom/playhaven/src/common/PHConfig;->precache:Z

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/jakewharton/DiskLruCache;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 885
    invoke-virtual {v1}, Lcom/jakewharton/DiskLruCache;->open()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 892
    .end local v1    # "cache":Lcom/jakewharton/DiskLruCache;
    :cond_0
    :goto_0
    :try_start_1
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->rootView:Landroid/widget/RelativeLayout;

    .line 894
    iget-object v4, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->rootView:Landroid/widget/RelativeLayout;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 895
    const/4 v6, -0x1

    .line 896
    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 894
    invoke-virtual {p0, v4, v5}, Lcom/playhaven/src/publishersdk/content/PHContentView;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 898
    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->sizeToOrientation()V

    .line 900
    new-instance v4, Landroid/webkit/WebView;

    invoke-direct {v4, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->webview:Landroid/webkit/WebView;

    .line 902
    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->setupWebview()V

    .line 906
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 907
    const/4 v4, -0x1

    const/4 v5, -0x1

    .line 906
    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 910
    .local v3, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->webview:Landroid/webkit/WebView;

    invoke-virtual {v4, v3}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 911
    iget-object v4, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->rootView:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->webview:Landroid/webkit/WebView;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 913
    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->hasOrientationFrame()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 916
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 917
    .local v0, "args":Landroid/os/Bundle;
    sget-object v4, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->Content:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    invoke-virtual {v4}, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->getKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->content:Lcom/playhaven/src/publishersdk/content/PHContent;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 918
    sget-object v4, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;->DidShow:Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

    invoke-direct {p0, v4, v0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->broadcastEvent(Lcom/playhaven/src/publishersdk/content/PHContentView$Event;Landroid/os/Bundle;)V

    .line 920
    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->loadTemplate()V

    .line 924
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_1
    iget-object v4, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->webview:Landroid/webkit/WebView;

    invoke-static {v4}, Lcom/playhaven/src/publishersdk/content/PHContentView;->setWebviewProtocolVersion(Landroid/webkit/WebView;)V

    .line 927
    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->placeCloseButton()V

    .line 929
    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->showCloseAfterTimeout()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 935
    .end local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_1
    return-void

    .line 887
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 888
    .local v2, "e":Ljava/io/IOException;
    const-string v4, "PHContentView - onStart"

    sget-object v5, Lcom/playhaven/src/common/PHCrashReport$Urgency;->critical:Lcom/playhaven/src/common/PHCrashReport$Urgency;

    invoke-static {v2, v4, v5}, Lcom/playhaven/src/common/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lcom/playhaven/src/common/PHCrashReport$Urgency;)Lcom/playhaven/src/common/PHCrashReport;

    goto :goto_0

    .line 932
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 933
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "PHContentView - onStart()"

    sget-object v5, Lcom/playhaven/src/common/PHCrashReport$Urgency;->critical:Lcom/playhaven/src/common/PHCrashReport$Urgency;

    invoke-static {v2, v4, v5}, Lcom/playhaven/src/common/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lcom/playhaven/src/common/PHCrashReport$Urgency;)Lcom/playhaven/src/common/PHCrashReport;

    goto :goto_1
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 651
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 654
    :try_start_0
    sget-boolean v1, Lcom/playhaven/src/common/PHConfig;->precache:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/jakewharton/DiskLruCache;->getSharedDiskCache()Lcom/jakewharton/DiskLruCache;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 655
    invoke-static {}, Lcom/jakewharton/DiskLruCache;->getSharedDiskCache()Lcom/jakewharton/DiskLruCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jakewharton/DiskLruCache;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 660
    :cond_0
    :goto_0
    return-void

    .line 657
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 658
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "PHContentView - onStop"

    sget-object v2, Lcom/playhaven/src/common/PHCrashReport$Urgency;->critical:Lcom/playhaven/src/common/PHCrashReport$Urgency;

    invoke-static {v0, v1, v2}, Lcom/playhaven/src/common/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lcom/playhaven/src/common/PHCrashReport$Urgency;)Lcom/playhaven/src/common/PHCrashReport;

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 809
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 810
    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->getIsTouchCancelable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 811
    :cond_0
    const/4 v1, 0x1

    .line 816
    :goto_0
    return v1

    .line 813
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 814
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PHContentView - onTouchEvent()"

    sget-object v2, Lcom/playhaven/src/common/PHCrashReport$Urgency;->critical:Lcom/playhaven/src/common/PHCrashReport$Urgency;

    invoke-static {v0, v1, v2}, Lcom/playhaven/src/common/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lcom/playhaven/src/common/PHCrashReport$Urgency;)Lcom/playhaven/src/common/PHCrashReport;

    .line 816
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestFailed(Lcom/playhaven/src/common/PHAPIRequest;Ljava/lang/Exception;)V
    .locals 9
    .param p1, "request"    # Lcom/playhaven/src/common/PHAPIRequest;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    const-string v8, "PHContentView - requestFailed(request, responseData)"

    .line 1188
    if-nez p1, :cond_0

    .line 1200
    :goto_0
    return-void

    .line 1190
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1191
    .local v1, "error":Lorg/json/JSONObject;
    const-string v5, "error"

    const-string v6, "1"

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1192
    move-object v0, p1

    check-cast v0, Lcom/playhaven/src/publishersdk/content/PHPublisherSubContentRequest;

    move-object v4, v0

    .line 1194
    .local v4, "sub_request":Lcom/playhaven/src/publishersdk/content/PHPublisherSubContentRequest;
    iget-object v5, v4, Lcom/playhaven/src/publishersdk/content/PHPublisherSubContentRequest;->source:Lcom/playhaven/src/publishersdk/content/PHContentView;

    iget-object v6, v4, Lcom/playhaven/src/publishersdk/content/PHPublisherSubContentRequest;->callback:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v1}, Lcom/playhaven/src/publishersdk/content/PHContentView;->sendCallback(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1195
    .end local v1    # "error":Lorg/json/JSONObject;
    .end local v4    # "sub_request":Lcom/playhaven/src/publishersdk/content/PHPublisherSubContentRequest;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 1196
    .local v2, "ex":Lorg/json/JSONException;
    const-string v5, "PHContentView - requestFailed(request, responseData)"

    sget-object v5, Lcom/playhaven/src/common/PHCrashReport$Urgency;->low:Lcom/playhaven/src/common/PHCrashReport$Urgency;

    invoke-static {v2, v8, v5}, Lcom/playhaven/src/common/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lcom/playhaven/src/common/PHCrashReport$Urgency;)Lcom/playhaven/src/common/PHCrashReport;

    goto :goto_0

    .line 1197
    .end local v2    # "ex":Lorg/json/JSONException;
    :catch_1
    move-exception v5

    move-object v3, v5

    .line 1198
    .local v3, "exc":Ljava/lang/Exception;
    const-string v5, "PHContentView - requestFailed(request, responseData)"

    sget-object v5, Lcom/playhaven/src/common/PHCrashReport$Urgency;->critical:Lcom/playhaven/src/common/PHCrashReport$Urgency;

    invoke-static {v3, v8, v5}, Lcom/playhaven/src/common/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lcom/playhaven/src/common/PHCrashReport$Urgency;)Lcom/playhaven/src/common/PHCrashReport;

    goto :goto_0
.end method

.method public requestSucceeded(Lcom/playhaven/src/common/PHAPIRequest;Lorg/json/JSONObject;)V
    .locals 9
    .param p1, "request"    # Lcom/playhaven/src/common/PHAPIRequest;
    .param p2, "responseData"    # Lorg/json/JSONObject;

    .prologue
    .line 1141
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-nez v6, :cond_0

    .line 1184
    :goto_0
    return-void

    .line 1144
    :cond_0
    :try_start_0
    new-instance v2, Lcom/playhaven/src/publishersdk/content/PHContent;

    invoke-direct {v2, p2}, Lcom/playhaven/src/publishersdk/content/PHContent;-><init>(Lorg/json/JSONObject;)V

    .line 1147
    .local v2, "content":Lcom/playhaven/src/publishersdk/content/PHContent;
    move-object v0, p1

    check-cast v0, Lcom/playhaven/src/publishersdk/content/PHPublisherSubContentRequest;

    move-object v5, v0

    .line 1149
    .local v5, "sub_request":Lcom/playhaven/src/publishersdk/content/PHPublisherSubContentRequest;
    iget-object v6, v2, Lcom/playhaven/src/publishersdk/content/PHContent;->url:Landroid/net/Uri;

    if-eqz v6, :cond_1

    .line 1152
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->tag:Ljava/lang/String;

    invoke-static {v2, p0, v6, v7}, Lcom/playhaven/src/publishersdk/content/PHContentView;->pushContent(Lcom/playhaven/src/publishersdk/content/PHContent;Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    .line 1162
    iget-object v6, v5, Lcom/playhaven/src/publishersdk/content/PHPublisherSubContentRequest;->source:Lcom/playhaven/src/publishersdk/content/PHContentView;

    iget-object v7, v5, Lcom/playhaven/src/publishersdk/content/PHPublisherSubContentRequest;->callback:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p2, v8}, Lcom/playhaven/src/publishersdk/content/PHContentView;->sendCallback(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1181
    .end local v2    # "content":Lcom/playhaven/src/publishersdk/content/PHContent;
    .end local v5    # "sub_request":Lcom/playhaven/src/publishersdk/content/PHPublisherSubContentRequest;
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 1182
    .local v3, "e":Ljava/lang/Exception;
    const-string v6, "PHContentView - requestSucceeded(request, responseData)"

    sget-object v7, Lcom/playhaven/src/common/PHCrashReport$Urgency;->critical:Lcom/playhaven/src/common/PHCrashReport$Urgency;

    invoke-static {v3, v6, v7}, Lcom/playhaven/src/common/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lcom/playhaven/src/common/PHCrashReport$Urgency;)Lcom/playhaven/src/common/PHCrashReport;

    goto :goto_0

    .line 1165
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "content":Lcom/playhaven/src/publishersdk/content/PHContent;
    .restart local v5    # "sub_request":Lcom/playhaven/src/publishersdk/content/PHPublisherSubContentRequest;
    :cond_1
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1166
    .local v4, "error_dict":Lorg/json/JSONObject;
    const-string v6, "error"

    const-string v7, "1"

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1167
    iget-object v6, v5, Lcom/playhaven/src/publishersdk/content/PHPublisherSubContentRequest;->source:Lcom/playhaven/src/publishersdk/content/PHContentView;

    iget-object v7, v5, Lcom/playhaven/src/publishersdk/content/PHPublisherSubContentRequest;->callback:Ljava/lang/String;

    invoke-virtual {v6, v7, p2, v4}, Lcom/playhaven/src/publishersdk/content/PHContentView;->sendCallback(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 1172
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1173
    .local v1, "args":Landroid/os/Bundle;
    sget-object v6, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->CloseType:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    invoke-virtual {v6}, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 1174
    sget-object v7, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;->ApplicationTriggered:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;

    invoke-virtual {v7}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1173
    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    sget-object v6, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;->DidDismiss:Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

    invoke-direct {p0, v6, v1}, Lcom/playhaven/src/publishersdk/content/PHContentView;->broadcastEvent(Lcom/playhaven/src/publishersdk/content/PHContentView$Event;Landroid/os/Bundle;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1177
    .end local v1    # "args":Landroid/os/Bundle;
    .end local v4    # "error_dict":Lorg/json/JSONObject;
    :catch_1
    move-exception v6

    move-object v3, v6

    .line 1178
    .local v3, "e":Lorg/json/JSONException;
    :try_start_2
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public sendCallback(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "callback"    # Ljava/lang/String;
    .param p2, "response"    # Lorg/json/JSONObject;
    .param p3, "error"    # Lorg/json/JSONObject;

    .prologue
    const-string v5, "null"

    .line 1407
    const-string v1, "javascript:PlayHaven.nativeAPI.callback(\"%s\", %s, %s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1408
    if-eqz p1, :cond_0

    move-object v4, p1

    :goto_0
    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 1409
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 1410
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    aput-object v4, v2, v3

    .line 1406
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1413
    .local v0, "callbackCommand":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending JavaScript callback to webview: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 1414
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->webview:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1415
    return-void

    .line 1408
    .end local v0    # "callbackCommand":Ljava/lang/String;
    :cond_0
    const-string v4, "null"

    move-object v4, v5

    goto :goto_0

    .line 1409
    :cond_1
    const-string v4, "null"

    move-object v4, v5

    goto :goto_1

    .line 1410
    :cond_2
    const-string v4, "null"

    move-object v4, v5

    goto :goto_2
.end method

.method public setCancelable(ZZ)V
    .locals 0
    .param p1, "touchCancel"    # Z
    .param p2, "backCancel"    # Z

    .prologue
    .line 822
    iput-boolean p1, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->isTouchCancelable:Z

    .line 823
    iput-boolean p2, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->isBackBtnCancelable:Z

    .line 824
    return-void
.end method

.method public setContent(Lcom/playhaven/src/publishersdk/content/PHContent;)V
    .locals 0
    .param p1, "content"    # Lcom/playhaven/src/publishersdk/content/PHContent;

    .prologue
    .line 847
    if-eqz p1, :cond_0

    .line 848
    iput-object p1, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->content:Lcom/playhaven/src/publishersdk/content/PHContent;

    .line 850
    :cond_0
    return-void
.end method

.method public setIsBackBtnCancelable(Z)Z
    .locals 0
    .param p1, "backCancel"    # Z

    .prologue
    .line 827
    iput-boolean p1, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->isBackBtnCancelable:Z

    return p1
.end method

.method public setOverlayView(Landroid/view/View;)V
    .locals 0
    .param p1, "overlay"    # Landroid/view/View;

    .prologue
    .line 868
    iput-object p1, p0, Lcom/playhaven/src/publishersdk/content/PHContentView;->overlayView:Landroid/view/View;

    .line 869
    return-void
.end method

.method public validatePurchase(Lorg/json/JSONObject;)Z
    .locals 10
    .param p1, "data"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const-string v8, ""

    .line 1114
    sget-object v6, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move v6, v9

    .line 1134
    :goto_0
    return v6

    .line 1116
    :cond_1
    sget-object v6, Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;->ProductIDKey:Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;

    invoke-virtual {v6}, Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;->key()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {p1, v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1117
    .local v2, "productID":Ljava/lang/String;
    sget-object v6, Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;->NameKey:Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;

    invoke-virtual {v6}, Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;->key()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {p1, v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1118
    .local v1, "name":Ljava/lang/String;
    sget-object v6, Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;->QuantityKey:Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;

    invoke-virtual {v6}, Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;->key()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {p1, v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1119
    .local v3, "quantity":Ljava/lang/String;
    sget-object v6, Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;->ReceiptKey:Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;

    invoke-virtual {v6}, Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;->key()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {p1, v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1120
    .local v4, "receipt":Ljava/lang/String;
    sget-object v6, Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;->SignatureKey:Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;

    invoke-virtual {v6}, Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;->key()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {p1, v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1123
    .local v5, "signature":Ljava/lang/String;
    const-string v6, "%s:%s:%s:%s:%s:%s"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v9

    const/4 v8, 0x1

    .line 1124
    aput-object v1, v7, v8

    const/4 v8, 0x2

    .line 1125
    aput-object v3, v7, v8

    const/4 v8, 0x3

    .line 1126
    sget-object v9, Lcom/playhaven/src/common/PHConfig;->device_id:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x4

    .line 1127
    aput-object v4, v7, v8

    const/4 v8, 0x5

    .line 1128
    sget-object v9, Lcom/playhaven/src/common/PHConfig;->secret:Ljava/lang/String;

    aput-object v9, v7, v8

    .line 1123
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1122
    invoke-static {v6}, Lcom/playhaven/src/utils/PHStringUtil;->hexDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1132
    .local v0, "generatedSig":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Checking purchase signature:  "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " against: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 1134
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_0
.end method

.method public validateReward(Lorg/json/JSONObject;)Z
    .locals 10
    .param p1, "data"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const-string v8, ""

    .line 1086
    sget-object v6, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move v6, v9

    .line 1106
    :goto_0
    return v6

    .line 1088
    :cond_1
    sget-object v6, Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;->IDKey:Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;

    invoke-virtual {v6}, Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;->key()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {p1, v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1089
    .local v4, "reward":Ljava/lang/String;
    sget-object v6, Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;->QuantityKey:Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;

    invoke-virtual {v6}, Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;->key()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {p1, v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1090
    .local v2, "quantity":Ljava/lang/String;
    sget-object v6, Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;->ReceiptKey:Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;

    invoke-virtual {v6}, Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;->key()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {p1, v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1091
    .local v3, "receipt":Ljava/lang/String;
    sget-object v6, Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;->SignatureKey:Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;

    invoke-virtual {v6}, Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;->key()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {p1, v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1093
    .local v5, "signature":Ljava/lang/String;
    sget-object v6, Lcom/playhaven/src/common/PHConfig;->device_id:Ljava/lang/String;

    if-eqz v6, :cond_2

    sget-object v6, Lcom/playhaven/src/common/PHConfig;->device_id:Ljava/lang/String;

    move-object v0, v6

    .line 1096
    .local v0, "device_id":Ljava/lang/String;
    :goto_1
    const-string v6, "%s:%s:%s:%s:%s"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    .line 1097
    aput-object v4, v7, v9

    const/4 v8, 0x1

    .line 1098
    aput-object v2, v7, v8

    const/4 v8, 0x2

    .line 1099
    aput-object v0, v7, v8

    const/4 v8, 0x3

    .line 1100
    aput-object v3, v7, v8

    const/4 v8, 0x4

    .line 1101
    sget-object v9, Lcom/playhaven/src/common/PHConfig;->secret:Ljava/lang/String;

    aput-object v9, v7, v8

    .line 1095
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/playhaven/src/utils/PHStringUtil;->hexDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1104
    .local v1, "generatedSig":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Checking reward signature:  "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " against: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 1106
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    goto :goto_0

    .line 1093
    .end local v0    # "device_id":Ljava/lang/String;
    .end local v1    # "generatedSig":Ljava/lang/String;
    :cond_2
    const-string v6, "null"

    move-object v0, v6

    goto :goto_1
.end method
