.class public Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;
.super Lv2/com/playhaven/requests/content/PHContentRequest;
.source "PHPublisherContentRequest.java"

# interfaces
.implements Lcom/playhaven/src/common/PHAPIRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;,
        Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$CustomizeDelegate;,
        Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$FailureDelegate;,
        Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;,
        Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PurchaseDelegate;,
        Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$RewardDelegate;
    }
.end annotation


# instance fields
.field private content_adapter:Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;

.field public context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private customize_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$CustomizeDelegate;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;Ljava/lang/String;)V
    .locals 0
    .parameter "activity"
    .parameter "delegate"
    .parameter "placement"

    .prologue
    .line 86
    invoke-direct {p0, p1, p3}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0, p2}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->setDelegates(Ljava/lang/Object;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .parameter "activity"
    .parameter "placement"

    .prologue
    .line 80
    invoke-direct {p0, p2}, Lv2/com/playhaven/requests/content/PHContentRequest;-><init>(Ljava/lang/String;)V

    .line 82
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->context:Ljava/lang/ref/WeakReference;

    .line 83
    return-void
.end method

.method public static didDismissContentWithin(J)Z
    .locals 1
    .parameter "range"

    .prologue
    .line 188
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lv2/com/playhaven/requests/content/PHContentRequest;->didDismissContentWithin(Ljava/lang/Long;)Z

    move-result v0

    return v0
.end method

.method private getCloseButtonImages()V
    .locals 4

    .prologue
    .line 214
    iget-object v2, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->customize_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$CustomizeDelegate;

    if-eqz v2, :cond_0

    .line 215
    iget-object v2, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->customize_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$CustomizeDelegate;

    sget-object v3, Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;->Down:Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;

    invoke-interface {v2, p0, v3}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$CustomizeDelegate;->closeButton(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 216
    .local v0, active:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->customize_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$CustomizeDelegate;

    sget-object v3, Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;->Up:Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;

    invoke-interface {v2, p0, v3}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$CustomizeDelegate;->closeButton(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 218
    .local v1, inactive:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 220
    sget-object v2, Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;->Down:Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;

    invoke-super {p0, v0, v2}, Lv2/com/playhaven/requests/content/PHContentRequest;->setCloseButton(Landroid/graphics/Bitmap;Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;)V

    .line 222
    sget-object v2, Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;->Up:Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;

    invoke-super {p0, v1, v2}, Lv2/com/playhaven/requests/content/PHContentRequest;->setCloseButton(Landroid/graphics/Bitmap;Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;)V

    .line 226
    .end local v0           #active:Landroid/graphics/Bitmap;
    .end local v1           #inactive:Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method


# virtual methods
.method public getOverlayImmediately()Z
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public preload()V
    .locals 4

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->getCloseButtonImages()V

    .line 257
    new-instance v0, Lv2/com/playhaven/configuration/PHConfiguration;

    invoke-direct {v0}, Lv2/com/playhaven/configuration/PHConfiguration;-><init>()V

    .line 259
    .local v0, config:Lv2/com/playhaven/configuration/PHConfiguration;
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget-object v2, Lcom/playhaven/src/common/PHConfig;->token:Ljava/lang/String;

    sget-object v3, Lcom/playhaven/src/common/PHConfig;->secret:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lv2/com/playhaven/configuration/PHConfiguration;->setCredentials(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget-boolean v2, Lcom/playhaven/src/common/PHConfig;->precache:Z

    invoke-virtual {v0, v1, v2}, Lv2/com/playhaven/configuration/PHConfiguration;->setShouldPrecache(Landroid/content/Context;Z)V

    .line 264
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-super {p0, v1}, Lv2/com/playhaven/requests/content/PHContentRequest;->preload(Landroid/app/Activity;)V

    .line 265
    return-void
.end method

.method public send()V
    .locals 4

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->getCloseButtonImages()V

    .line 278
    new-instance v0, Lv2/com/playhaven/configuration/PHConfiguration;

    invoke-direct {v0}, Lv2/com/playhaven/configuration/PHConfiguration;-><init>()V

    .line 280
    .local v0, config:Lv2/com/playhaven/configuration/PHConfiguration;
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget-object v2, Lcom/playhaven/src/common/PHConfig;->token:Ljava/lang/String;

    sget-object v3, Lcom/playhaven/src/common/PHConfig;->secret:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lv2/com/playhaven/configuration/PHConfiguration;->setCredentials(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget-boolean v2, Lcom/playhaven/src/common/PHConfig;->precache:Z

    invoke-virtual {v0, v1, v2}, Lv2/com/playhaven/configuration/PHConfiguration;->setShouldPrecache(Landroid/content/Context;Z)V

    .line 285
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-super {p0, v1}, Lv2/com/playhaven/requests/content/PHContentRequest;->send(Landroid/content/Context;)V

    .line 286
    return-void
.end method

.method public setDelegate(Lcom/playhaven/src/common/PHAPIRequest$Delegate;)V
    .locals 3
    .parameter "delegate"

    .prologue
    const/4 v2, 0x0

    .line 232
    const/4 v0, 0x0

    .line 234
    .local v0, existing_failure_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$FailureDelegate;
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content_adapter:Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content_adapter:Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;

    invoke-virtual {v1}, Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;->getFailureDelegate()Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$FailureDelegate;

    move-result-object v0

    .line 239
    :cond_0
    const-class v1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 240
    new-instance v1, Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;

    check-cast p1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;

    .end local p1
    invoke-direct {v1, p1, v0, v2}, Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;-><init>(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$FailureDelegate;Lcom/playhaven/src/common/PHAPIRequest$Delegate;)V

    invoke-virtual {p0, v1}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->setOnContentListener(Lv2/com/playhaven/listeners/PHContentRequestListener;)V

    .line 247
    :goto_0
    return-void

    .line 244
    .restart local p1
    :cond_1
    new-instance v1, Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;

    invoke-direct {v1, v2, v0, p1}, Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;-><init>(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$FailureDelegate;Lcom/playhaven/src/common/PHAPIRequest$Delegate;)V

    invoke-virtual {p0, v1}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->setOnContentListener(Lv2/com/playhaven/listeners/PHContentRequestListener;)V

    goto :goto_0
.end method

.method public setDelegates(Ljava/lang/Object;)V
    .locals 4
    .parameter "delegate"

    .prologue
    const/4 v3, 0x0

    .line 144
    instance-of v1, p1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$RewardDelegate;

    if-eqz v1, :cond_2

    .line 145
    new-instance v2, Lcom/playhaven/src/publishersdk/content/adapters/RewardDelegateAdapter;

    move-object v0, p1

    check-cast v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$RewardDelegate;

    move-object v1, v0

    invoke-direct {v2, v1}, Lcom/playhaven/src/publishersdk/content/adapters/RewardDelegateAdapter;-><init>(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$RewardDelegate;)V

    invoke-super {p0, v2}, Lv2/com/playhaven/requests/content/PHContentRequest;->setOnRewardListener(Lv2/com/playhaven/listeners/PHRewardListener;)V

    .line 149
    :goto_0
    instance-of v1, p1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PurchaseDelegate;

    if-eqz v1, :cond_3

    .line 150
    new-instance v2, Lcom/playhaven/src/publishersdk/content/adapters/PurchaseDelegateAdapter;

    move-object v0, p1

    check-cast v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PurchaseDelegate;

    move-object v1, v0

    invoke-direct {v2, v1}, Lcom/playhaven/src/publishersdk/content/adapters/PurchaseDelegateAdapter;-><init>(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PurchaseDelegate;)V

    invoke-super {p0, v2}, Lv2/com/playhaven/requests/content/PHContentRequest;->setOnPurchaseListener(Lv2/com/playhaven/listeners/PHPurchaseListener;)V

    .line 154
    :goto_1
    instance-of v1, p1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$CustomizeDelegate;

    if-eqz v1, :cond_4

    .line 155
    move-object v0, p1

    check-cast v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$CustomizeDelegate;

    move-object v1, v0

    iput-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->customize_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$CustomizeDelegate;

    .line 161
    :goto_2
    instance-of v1, p1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$FailureDelegate;

    if-eqz v1, :cond_5

    .line 162
    new-instance v2, Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;

    move-object v0, p1

    check-cast v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$FailureDelegate;

    move-object v1, v0

    invoke-direct {v2, v3, v1, v3}, Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;-><init>(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$FailureDelegate;Lcom/playhaven/src/common/PHAPIRequest$Delegate;)V

    invoke-super {p0, v2}, Lv2/com/playhaven/requests/content/PHContentRequest;->setOnContentListener(Lv2/com/playhaven/listeners/PHContentRequestListener;)V

    .line 166
    :goto_3
    instance-of v1, p1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;

    if-eqz v1, :cond_6

    .line 167
    new-instance v2, Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;

    move-object v0, p1

    check-cast v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;

    move-object v1, v0

    invoke-direct {v2, v1, v3, v3}, Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;-><init>(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$FailureDelegate;Lcom/playhaven/src/common/PHAPIRequest$Delegate;)V

    invoke-super {p0, v2}, Lv2/com/playhaven/requests/content/PHContentRequest;->setOnContentListener(Lv2/com/playhaven/listeners/PHContentRequestListener;)V

    .line 173
    :goto_4
    instance-of v1, p1, Lcom/playhaven/src/common/PHAPIRequest$Delegate;

    if-eqz v1, :cond_0

    .line 174
    new-instance v2, Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;

    move-object v0, p1

    check-cast v0, Lcom/playhaven/src/common/PHAPIRequest$Delegate;

    move-object v1, v0

    invoke-direct {v2, v3, v3, v1}, Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;-><init>(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$FailureDelegate;Lcom/playhaven/src/common/PHAPIRequest$Delegate;)V

    invoke-super {p0, v2}, Lv2/com/playhaven/requests/content/PHContentRequest;->setOnContentListener(Lv2/com/playhaven/listeners/PHContentRequestListener;)V

    .line 179
    :cond_0
    instance-of v1, p1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;

    if-eqz v1, :cond_1

    instance-of v1, p1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$FailureDelegate;

    if-eqz v1, :cond_1

    .line 180
    new-instance v2, Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;

    move-object v0, p1

    check-cast v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;

    move-object v1, v0

    check-cast p1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$FailureDelegate;

    .end local p1
    invoke-direct {v2, v1, p1, v3}, Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;-><init>(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$FailureDelegate;Lcom/playhaven/src/common/PHAPIRequest$Delegate;)V

    invoke-super {p0, v2}, Lv2/com/playhaven/requests/content/PHContentRequest;->setOnContentListener(Lv2/com/playhaven/listeners/PHContentRequestListener;)V

    .line 182
    :cond_1
    return-void

    .line 147
    .restart local p1
    :cond_2
    const-string v1, "*** RewardDelegate is not implemented. If you are using rewards this needs to be implemented."

    invoke-static {v1}, Lv2/com/playhaven/utils/PHStringUtil;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_3
    const-string v1, "*** PurchaseDelegate is not implemented. If you are using VGP this needs to be implemented."

    invoke-static {v1}, Lv2/com/playhaven/utils/PHStringUtil;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 157
    :cond_4
    iput-object v3, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->customize_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$CustomizeDelegate;

    .line 158
    const-string v1, "*** CustomizeDelegate is not implemented, using Play Haven close button bitmap. Implement to use own close button bitmap."

    invoke-static {v1}, Lv2/com/playhaven/utils/PHStringUtil;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 164
    :cond_5
    const-string v1, "*** FailureDelegate is not implemented. Implement if want to be notified of failed content downloads."

    invoke-static {v1}, Lv2/com/playhaven/utils/PHStringUtil;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 169
    :cond_6
    const-string v1, "*** ContentDelegate is not implemented. Implement if want to be notified of content request states."

    invoke-static {v1}, Lv2/com/playhaven/utils/PHStringUtil;->log(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public setOnContentListener(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;)V
    .locals 3
    .parameter "content_listener"

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 99
    .local v0, existing_failure_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$FailureDelegate;
    iget-object v2, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content_adapter:Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;

    if-eqz v2, :cond_0

    .line 100
    iget-object v2, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content_adapter:Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;

    invoke-virtual {v2}, Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;->getFailureDelegate()Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$FailureDelegate;

    move-result-object v0

    .line 102
    :cond_0
    const/4 v1, 0x0

    .line 104
    .local v1, existing_request_delegate:Lcom/playhaven/src/common/PHAPIRequest$Delegate;
    iget-object v2, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content_adapter:Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;

    if-eqz v2, :cond_1

    .line 105
    iget-object v2, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content_adapter:Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;

    invoke-virtual {v2}, Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;->getRequestDelegate()Lcom/playhaven/src/common/PHAPIRequest$Delegate;

    move-result-object v1

    .line 107
    :cond_1
    new-instance v2, Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;

    invoke-direct {v2, p1, v0, v1}, Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;-><init>(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$FailureDelegate;Lcom/playhaven/src/common/PHAPIRequest$Delegate;)V

    iput-object v2, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content_adapter:Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;

    invoke-super {p0, v2}, Lv2/com/playhaven/requests/content/PHContentRequest;->setOnContentListener(Lv2/com/playhaven/listeners/PHContentRequestListener;)V

    .line 108
    return-void
.end method

.method public setOnCustomizeListener(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$CustomizeDelegate;)V
    .locals 0
    .parameter "customize_listener"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->customize_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$CustomizeDelegate;

    .line 120
    return-void
.end method

.method public setOnFailureListener(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$FailureDelegate;)V
    .locals 3
    .parameter "failure_listener"

    .prologue
    .line 125
    const/4 v0, 0x0

    .line 127
    .local v0, existing_content_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;
    iget-object v2, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content_adapter:Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;

    if-eqz v2, :cond_0

    .line 128
    iget-object v2, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content_adapter:Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;

    invoke-virtual {v2}, Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;->getContentDelegate()Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;

    move-result-object v0

    .line 130
    :cond_0
    const/4 v1, 0x0

    .line 132
    .local v1, existing_request_delegate:Lcom/playhaven/src/common/PHAPIRequest$Delegate;
    iget-object v2, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content_adapter:Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;

    if-eqz v2, :cond_1

    .line 133
    iget-object v2, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content_adapter:Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;

    invoke-virtual {v2}, Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;->getRequestDelegate()Lcom/playhaven/src/common/PHAPIRequest$Delegate;

    move-result-object v1

    .line 135
    :cond_1
    new-instance v2, Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;

    invoke-direct {v2, v0, p1, v1}, Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;-><init>(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$FailureDelegate;Lcom/playhaven/src/common/PHAPIRequest$Delegate;)V

    iput-object v2, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content_adapter:Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;

    invoke-super {p0, v2}, Lv2/com/playhaven/requests/content/PHContentRequest;->setOnContentListener(Lv2/com/playhaven/listeners/PHContentRequestListener;)V

    .line 137
    return-void
.end method

.method public setOnPurchaseListener(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PurchaseDelegate;)V
    .locals 1
    .parameter "purchase_listener"

    .prologue
    .line 115
    new-instance v0, Lcom/playhaven/src/publishersdk/content/adapters/PurchaseDelegateAdapter;

    invoke-direct {v0, p1}, Lcom/playhaven/src/publishersdk/content/adapters/PurchaseDelegateAdapter;-><init>(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PurchaseDelegate;)V

    invoke-super {p0, v0}, Lv2/com/playhaven/requests/content/PHContentRequest;->setOnPurchaseListener(Lv2/com/playhaven/listeners/PHPurchaseListener;)V

    .line 116
    return-void
.end method

.method public setOnRewardListener(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$RewardDelegate;)V
    .locals 1
    .parameter "reward_listener"

    .prologue
    .line 111
    new-instance v0, Lcom/playhaven/src/publishersdk/content/adapters/RewardDelegateAdapter;

    invoke-direct {v0, p1}, Lcom/playhaven/src/publishersdk/content/adapters/RewardDelegateAdapter;-><init>(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$RewardDelegate;)V

    invoke-super {p0, v0}, Lv2/com/playhaven/requests/content/PHContentRequest;->setOnRewardListener(Lv2/com/playhaven/listeners/PHRewardListener;)V

    .line 112
    return-void
.end method

.method public setOverlayImmediately(Z)V
    .locals 0
    .parameter "doOverlay"

    .prologue
    .line 199
    return-void
.end method
