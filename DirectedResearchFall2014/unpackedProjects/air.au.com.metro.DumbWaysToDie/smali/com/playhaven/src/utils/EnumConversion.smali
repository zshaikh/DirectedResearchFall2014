.class public Lcom/playhaven/src/utils/EnumConversion;
.super Ljava/lang/Object;
.source "EnumConversion.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$playhaven$src$publishersdk$content$PHContentView$ButtonState:[I

.field private static synthetic $SWITCH_TABLE$com$playhaven$src$publishersdk$content$PHPurchase$Resolution:[I

.field private static synthetic $SWITCH_TABLE$com$playhaven$src$publishersdk$purchases$PHPublisherIAPTrackingRequest$PHPurchaseOrigin:[I

.field private static synthetic $SWITCH_TABLE$v2$com$playhaven$model$PHPurchase$AndroidBillingResult:[I

.field private static synthetic $SWITCH_TABLE$v2$com$playhaven$model$PHPurchase$PHMarketplaceOrigin:[I

.field private static synthetic $SWITCH_TABLE$v2$com$playhaven$requests$content$PHContentRequest$PHDismissType:[I


# direct methods
.method static synthetic $SWITCH_TABLE$com$playhaven$src$publishersdk$content$PHContentView$ButtonState()[I
    .locals 3

    .prologue
    .line 14
    sget-object v0, Lcom/playhaven/src/utils/EnumConversion;->$SWITCH_TABLE$com$playhaven$src$publishersdk$content$PHContentView$ButtonState:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;->values()[Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;->Down:Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;

    invoke-virtual {v1}, Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;->Up:Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;

    invoke-virtual {v1}, Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/playhaven/src/utils/EnumConversion;->$SWITCH_TABLE$com$playhaven$src$publishersdk$content$PHContentView$ButtonState:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static synthetic $SWITCH_TABLE$com$playhaven$src$publishersdk$content$PHPurchase$Resolution()[I
    .locals 3

    .prologue
    .line 14
    sget-object v0, Lcom/playhaven/src/utils/EnumConversion;->$SWITCH_TABLE$com$playhaven$src$publishersdk$content$PHPurchase$Resolution:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;->values()[Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;->Buy:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    invoke-virtual {v1}, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;->Cancel:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    invoke-virtual {v1}, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;->Error:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    invoke-virtual {v1}, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/playhaven/src/utils/EnumConversion;->$SWITCH_TABLE$com$playhaven$src$publishersdk$content$PHPurchase$Resolution:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static synthetic $SWITCH_TABLE$com$playhaven$src$publishersdk$purchases$PHPublisherIAPTrackingRequest$PHPurchaseOrigin()[I
    .locals 3

    .prologue
    .line 14
    sget-object v0, Lcom/playhaven/src/utils/EnumConversion;->$SWITCH_TABLE$com$playhaven$src$publishersdk$purchases$PHPublisherIAPTrackingRequest$PHPurchaseOrigin:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;->values()[Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;->Amazon:Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

    invoke-virtual {v1}, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;->Crossmo:Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

    invoke-virtual {v1}, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;->Google:Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

    invoke-virtual {v1}, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;->Motorola:Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

    invoke-virtual {v1}, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;->Paypal:Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

    invoke-virtual {v1}, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/playhaven/src/utils/EnumConversion;->$SWITCH_TABLE$com$playhaven$src$publishersdk$purchases$PHPublisherIAPTrackingRequest$PHPurchaseOrigin:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method static synthetic $SWITCH_TABLE$v2$com$playhaven$model$PHPurchase$AndroidBillingResult()[I
    .locals 3

    .prologue
    .line 14
    sget-object v0, Lcom/playhaven/src/utils/EnumConversion;->$SWITCH_TABLE$v2$com$playhaven$model$PHPurchase$AndroidBillingResult:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;->values()[Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;->Bought:Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;

    invoke-virtual {v1}, Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;->Cancelled:Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;

    invoke-virtual {v1}, Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;->Failed:Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;

    invoke-virtual {v1}, Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/playhaven/src/utils/EnumConversion;->$SWITCH_TABLE$v2$com$playhaven$model$PHPurchase$AndroidBillingResult:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static synthetic $SWITCH_TABLE$v2$com$playhaven$model$PHPurchase$PHMarketplaceOrigin()[I
    .locals 3

    .prologue
    .line 14
    sget-object v0, Lcom/playhaven/src/utils/EnumConversion;->$SWITCH_TABLE$v2$com$playhaven$model$PHPurchase$PHMarketplaceOrigin:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;->values()[Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;->Amazon:Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

    invoke-virtual {v1}, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;->Crossmo:Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

    invoke-virtual {v1}, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;->Google:Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

    invoke-virtual {v1}, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;->Motorola:Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

    invoke-virtual {v1}, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;->Paypal:Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

    invoke-virtual {v1}, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/playhaven/src/utils/EnumConversion;->$SWITCH_TABLE$v2$com$playhaven$model$PHPurchase$PHMarketplaceOrigin:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method static synthetic $SWITCH_TABLE$v2$com$playhaven$requests$content$PHContentRequest$PHDismissType()[I
    .locals 3

    .prologue
    .line 14
    sget-object v0, Lcom/playhaven/src/utils/EnumConversion;->$SWITCH_TABLE$v2$com$playhaven$requests$content$PHContentRequest$PHDismissType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;->values()[Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;->AdSelfDismiss:Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;

    invoke-virtual {v1}, Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;->ApplicationBackgrounded:Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;

    invoke-virtual {v1}, Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;->CloseButton:Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;

    invoke-virtual {v1}, Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/playhaven/src/utils/EnumConversion;->$SWITCH_TABLE$v2$com$playhaven$requests$content$PHContentRequest$PHDismissType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToNewBillingResult(Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;)Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;
    .locals 3
    .parameter "resolution"

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
    invoke-static {}, Lcom/playhaven/src/utils/EnumConversion;->$SWITCH_TABLE$com$playhaven$src$publishersdk$content$PHPurchase$Resolution()[I

    move-result-object v0

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
    .parameter "state"

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
    invoke-static {}, Lcom/playhaven/src/utils/EnumConversion;->$SWITCH_TABLE$com$playhaven$src$publishersdk$content$PHContentView$ButtonState()[I

    move-result-object v0

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
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertToNewOrigin(Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;)Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;
    .locals 3
    .parameter "origin"

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
    invoke-static {}, Lcom/playhaven/src/utils/EnumConversion;->$SWITCH_TABLE$com$playhaven$src$publishersdk$purchases$PHPublisherIAPTrackingRequest$PHPurchaseOrigin()[I

    move-result-object v0

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
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public static convertToOldBillingResult(Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;)Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;
    .locals 3
    .parameter "resolution"

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
    invoke-static {}, Lcom/playhaven/src/utils/EnumConversion;->$SWITCH_TABLE$v2$com$playhaven$model$PHPurchase$AndroidBillingResult()[I

    move-result-object v0

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
    .parameter "type"

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
    invoke-static {}, Lcom/playhaven/src/utils/EnumConversion;->$SWITCH_TABLE$v2$com$playhaven$requests$content$PHContentRequest$PHDismissType()[I

    move-result-object v0

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
    .parameter "origin"

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
    invoke-static {}, Lcom/playhaven/src/utils/EnumConversion;->$SWITCH_TABLE$v2$com$playhaven$model$PHPurchase$PHMarketplaceOrigin()[I

    move-result-object v0

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
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method
