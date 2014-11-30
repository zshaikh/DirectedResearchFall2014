.class public Lcom/playhaven/src/utils/EnumConversion;
.super Ljava/lang/Object;
.source "EnumConversion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/playhaven/src/utils/EnumConversion$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static convertToNewBillingResult(Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;)Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;
    .locals 3
    .param p0, "resolution"    # Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    .prologue
    const/4 v2, 0x0

    .line 33
    if-nez p0, :cond_0

    move-object v0, v2

    .line 44
    :goto_0
    return-object v0

    .line 35
    :cond_0
    sget-object v0, Lcom/playhaven/src/utils/EnumConversion$1;->$SwitchMap$com$playhaven$src$publishersdk$content$PHPurchase$Resolution:[I

    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    move-object v0, v2

    .line 44
    goto :goto_0

    .line 37
    :pswitch_0
    sget-object v0, Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;->Bought:Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;

    goto :goto_0

    .line 39
    :pswitch_1
    sget-object v0, Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;->Cancelled:Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;

    goto :goto_0

    .line 41
    :pswitch_2
    sget-object v0, Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;->Failed:Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;

    goto :goto_0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static convertToNewButtonState(Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;)Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;
    .locals 3
    .param p0, "state"    # Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;

    .prologue
    const/4 v2, 0x0

    .line 66
    if-nez p0, :cond_0

    move-object v0, v2

    .line 75
    :goto_0
    return-object v0

    .line 68
    :cond_0
    sget-object v0, Lcom/playhaven/src/utils/EnumConversion$1;->$SwitchMap$com$playhaven$src$publishersdk$content$PHContentView$ButtonState:[I

    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    move-object v0, v2

    .line 75
    goto :goto_0

    .line 70
    :pswitch_0
    sget-object v0, Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;->Up:Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;

    goto :goto_0

    .line 72
    :pswitch_1
    sget-object v0, Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;->Down:Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static convertToNewOrigin(Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;)Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;
    .locals 3
    .param p0, "origin"    # Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

    .prologue
    const/4 v2, 0x0

    .line 82
    if-nez p0, :cond_0

    move-object v0, v2

    .line 97
    :goto_0
    return-object v0

    .line 84
    :cond_0
    sget-object v0, Lcom/playhaven/src/utils/EnumConversion$1;->$SwitchMap$com$playhaven$src$publishersdk$purchases$PHPublisherIAPTrackingRequest$PHPurchaseOrigin:[I

    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    move-object v0, v2

    .line 97
    goto :goto_0

    .line 86
    :pswitch_0
    sget-object v0, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;->Google:Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

    goto :goto_0

    .line 88
    :pswitch_1
    sget-object v0, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;->Amazon:Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

    goto :goto_0

    .line 90
    :pswitch_2
    sget-object v0, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;->Motorola:Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

    goto :goto_0

    .line 92
    :pswitch_3
    sget-object v0, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;->Paypal:Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

    goto :goto_0

    .line 94
    :pswitch_4
    sget-object v0, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;->Crossmo:Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

    goto :goto_0

    .line 84
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

.method public static convertToOldBillingResult(Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;)Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;
    .locals 3
    .param p0, "resolution"    # Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;

    .prologue
    const/4 v2, 0x0

    .line 49
    if-nez p0, :cond_0

    move-object v0, v2

    .line 60
    :goto_0
    return-object v0

    .line 51
    :cond_0
    sget-object v0, Lcom/playhaven/src/utils/EnumConversion$1;->$SwitchMap$v2$com$playhaven$model$PHPurchase$AndroidBillingResult:[I

    invoke-virtual {p0}, Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    move-object v0, v2

    .line 60
    goto :goto_0

    .line 53
    :pswitch_0
    sget-object v0, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;->Buy:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    goto :goto_0

    .line 55
    :pswitch_1
    sget-object v0, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;->Cancel:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    goto :goto_0

    .line 57
    :pswitch_2
    sget-object v0, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;->Error:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    goto :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static convertToOldDismiss(Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;)Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;
    .locals 3
    .param p0, "type"    # Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;

    .prologue
    const/4 v2, 0x0

    .line 17
    if-nez p0, :cond_0

    move-object v0, v2

    .line 28
    :goto_0
    return-object v0

    .line 19
    :cond_0
    sget-object v0, Lcom/playhaven/src/utils/EnumConversion$1;->$SwitchMap$v2$com$playhaven$requests$content$PHContentRequest$PHDismissType:[I

    invoke-virtual {p0}, Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    move-object v0, v2

    .line 28
    goto :goto_0

    .line 21
    :pswitch_0
    sget-object v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;->ContentUnitTriggered:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;

    goto :goto_0

    .line 23
    :pswitch_1
    sget-object v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;->CloseButtonTriggered:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;

    goto :goto_0

    .line 25
    :pswitch_2
    sget-object v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;->ApplicationTriggered:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;

    goto :goto_0

    .line 19
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static convertToOldOrigin(Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;)Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;
    .locals 3
    .param p0, "origin"    # Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

    .prologue
    const/4 v2, 0x0

    .line 102
    if-nez p0, :cond_0

    move-object v0, v2

    .line 117
    :goto_0
    return-object v0

    .line 104
    :cond_0
    sget-object v0, Lcom/playhaven/src/utils/EnumConversion$1;->$SwitchMap$v2$com$playhaven$model$PHPurchase$PHMarketplaceOrigin:[I

    invoke-virtual {p0}, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    move-object v0, v2

    .line 117
    goto :goto_0

    .line 106
    :pswitch_0
    sget-object v0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;->Google:Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

    goto :goto_0

    .line 108
    :pswitch_1
    sget-object v0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;->Amazon:Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

    goto :goto_0

    .line 110
    :pswitch_2
    sget-object v0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;->Motorola:Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

    goto :goto_0

    .line 112
    :pswitch_3
    sget-object v0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;->Paypal:Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

    goto :goto_0

    .line 114
    :pswitch_4
    sget-object v0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;->Crossmo:Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

    goto :goto_0

    .line 104
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
