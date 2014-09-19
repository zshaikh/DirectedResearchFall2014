.class synthetic Lcom/playhaven/src/utils/EnumConversion$1;
.super Ljava/lang/Object;
.source "EnumConversion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playhaven/src/utils/EnumConversion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$playhaven$src$publishersdk$content$PHContentView$ButtonState:[I

.field static final synthetic $SwitchMap$com$playhaven$src$publishersdk$content$PHPurchase$Resolution:[I

.field static final synthetic $SwitchMap$com$playhaven$src$publishersdk$purchases$PHPublisherIAPTrackingRequest$PHPurchaseOrigin:[I

.field static final synthetic $SwitchMap$v2$com$playhaven$model$PHPurchase$AndroidBillingResult:[I

.field static final synthetic $SwitchMap$v2$com$playhaven$model$PHPurchase$PHMarketplaceOrigin:[I

.field static final synthetic $SwitchMap$v2$com$playhaven$requests$content$PHContentRequest$PHDismissType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 104
    invoke-static {}, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;->values()[Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/playhaven/src/utils/EnumConversion$1;->$SwitchMap$v2$com$playhaven$model$PHPurchase$PHMarketplaceOrigin:[I

    :try_start_0
    sget-object v0, Lcom/playhaven/src/utils/EnumConversion$1;->$SwitchMap$v2$com$playhaven$model$PHPurchase$PHMarketplaceOrigin:[I

    sget-object v1, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;->Google:Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

    invoke-virtual {v1}, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_14

    :goto_0
    :try_start_1
    sget-object v0, Lcom/playhaven/src/utils/EnumConversion$1;->$SwitchMap$v2$com$playhaven$model$PHPurchase$PHMarketplaceOrigin:[I

    sget-object v1, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;->Amazon:Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

    invoke-virtual {v1}, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_13

    :goto_1
    :try_start_2
    sget-object v0, Lcom/playhaven/src/utils/EnumConversion$1;->$SwitchMap$v2$com$playhaven$model$PHPurchase$PHMarketplaceOrigin:[I

    sget-object v1, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;->Motorola:Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

    invoke-virtual {v1}, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_12

    :goto_2
    :try_start_3
    sget-object v0, Lcom/playhaven/src/utils/EnumConversion$1;->$SwitchMap$v2$com$playhaven$model$PHPurchase$PHMarketplaceOrigin:[I

    sget-object v1, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;->Paypal:Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

    invoke-virtual {v1}, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_11

    :goto_3
    :try_start_4
    sget-object v0, Lcom/playhaven/src/utils/EnumConversion$1;->$SwitchMap$v2$com$playhaven$model$PHPurchase$PHMarketplaceOrigin:[I

    sget-object v1, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;->Crossmo:Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

    invoke-virtual {v1}, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_10

    .line 84
    :goto_4
    invoke-static {}, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;->values()[Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/playhaven/src/utils/EnumConversion$1;->$SwitchMap$com$playhaven$src$publishersdk$purchases$PHPublisherIAPTrackingRequest$PHPurchaseOrigin:[I

    :try_start_5
    sget-object v0, Lcom/playhaven/src/utils/EnumConversion$1;->$SwitchMap$com$playhaven$src$publishersdk$purchases$PHPublisherIAPTrackingRequest$PHPurchaseOrigin:[I

    sget-object v1, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;->Google:Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

    invoke-virtual {v1}, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_f

    :goto_5
    :try_start_6
    sget-object v0, Lcom/playhaven/src/utils/EnumConversion$1;->$SwitchMap$com$playhaven$src$publishersdk$purchases$PHPublisherIAPTrackingRequest$PHPurchaseOrigin:[I

    sget-object v1, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;->Amazon:Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

    invoke-virtual {v1}, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_e

    :goto_6
    :try_start_7
    sget-object v0, Lcom/playhaven/src/utils/EnumConversion$1;->$SwitchMap$com$playhaven$src$publishersdk$purchases$PHPublisherIAPTrackingRequest$PHPurchaseOrigin:[I

    sget-object v1, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;->Motorola:Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

    invoke-virtual {v1}, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_d

    :goto_7
    :try_start_8
    sget-object v0, Lcom/playhaven/src/utils/EnumConversion$1;->$SwitchMap$com$playhaven$src$publishersdk$purchases$PHPublisherIAPTrackingRequest$PHPurchaseOrigin:[I

    sget-object v1, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;->Paypal:Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

    invoke-virtual {v1}, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_c

    :goto_8
    :try_start_9
    sget-object v0, Lcom/playhaven/src/utils/EnumConversion$1;->$SwitchMap$com$playhaven$src$publishersdk$purchases$PHPublisherIAPTrackingRequest$PHPurchaseOrigin:[I

    sget-object v1, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;->Crossmo:Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

    invoke-virtual {v1}, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_b

    .line 68
    :goto_9
    invoke-static {}, Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;->values()[Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/playhaven/src/utils/EnumConversion$1;->$SwitchMap$com$playhaven$src$publishersdk$content$PHContentView$ButtonState:[I

    :try_start_a
    sget-object v0, Lcom/playhaven/src/utils/EnumConversion$1;->$SwitchMap$com$playhaven$src$publishersdk$content$PHContentView$ButtonState:[I

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;->Up:Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;

    invoke-virtual {v1}, Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :goto_a
    :try_start_b
    sget-object v0, Lcom/playhaven/src/utils/EnumConversion$1;->$SwitchMap$com$playhaven$src$publishersdk$content$PHContentView$ButtonState:[I

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;->Down:Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;

    invoke-virtual {v1}, Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_9

    .line 51
    :goto_b
    invoke-static {}, Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;->values()[Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/playhaven/src/utils/EnumConversion$1;->$SwitchMap$v2$com$playhaven$model$PHPurchase$AndroidBillingResult:[I

    :try_start_c
    sget-object v0, Lcom/playhaven/src/utils/EnumConversion$1;->$SwitchMap$v2$com$playhaven$model$PHPurchase$AndroidBillingResult:[I

    sget-object v1, Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;->Bought:Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;

    invoke-virtual {v1}, Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_8

    :goto_c
    :try_start_d
    sget-object v0, Lcom/playhaven/src/utils/EnumConversion$1;->$SwitchMap$v2$com$playhaven$model$PHPurchase$AndroidBillingResult:[I

    sget-object v1, Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;->Cancelled:Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;

    invoke-virtual {v1}, Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_7

    :goto_d
    :try_start_e
    sget-object v0, Lcom/playhaven/src/utils/EnumConversion$1;->$SwitchMap$v2$com$playhaven$model$PHPurchase$AndroidBillingResult:[I

    sget-object v1, Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;->Failed:Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;

    invoke-virtual {v1}, Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_6

    .line 35
    :goto_e
    invoke-static {}, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;->values()[Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/playhaven/src/utils/EnumConversion$1;->$SwitchMap$com$playhaven$src$publishersdk$content$PHPurchase$Resolution:[I

    :try_start_f
    sget-object v0, Lcom/playhaven/src/utils/EnumConversion$1;->$SwitchMap$com$playhaven$src$publishersdk$content$PHPurchase$Resolution:[I

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;->Buy:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    invoke-virtual {v1}, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_5

    :goto_f
    :try_start_10
    sget-object v0, Lcom/playhaven/src/utils/EnumConversion$1;->$SwitchMap$com$playhaven$src$publishersdk$content$PHPurchase$Resolution:[I

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;->Cancel:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    invoke-virtual {v1}, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_4

    :goto_10
    :try_start_11
    sget-object v0, Lcom/playhaven/src/utils/EnumConversion$1;->$SwitchMap$com$playhaven$src$publishersdk$content$PHPurchase$Resolution:[I

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;->Error:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    invoke-virtual {v1}, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_3

    .line 19
    :goto_11
    invoke-static {}, Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;->values()[Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/playhaven/src/utils/EnumConversion$1;->$SwitchMap$v2$com$playhaven$requests$content$PHContentRequest$PHDismissType:[I

    :try_start_12
    sget-object v0, Lcom/playhaven/src/utils/EnumConversion$1;->$SwitchMap$v2$com$playhaven$requests$content$PHContentRequest$PHDismissType:[I

    sget-object v1, Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;->AdSelfDismiss:Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;

    invoke-virtual {v1}, Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_2

    :goto_12
    :try_start_13
    sget-object v0, Lcom/playhaven/src/utils/EnumConversion$1;->$SwitchMap$v2$com$playhaven$requests$content$PHContentRequest$PHDismissType:[I

    sget-object v1, Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;->CloseButton:Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;

    invoke-virtual {v1}, Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_1

    :goto_13
    :try_start_14
    sget-object v0, Lcom/playhaven/src/utils/EnumConversion$1;->$SwitchMap$v2$com$playhaven$requests$content$PHContentRequest$PHDismissType:[I

    sget-object v1, Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;->ApplicationBackgrounded:Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;

    invoke-virtual {v1}, Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_0

    :goto_14
    return-void

    :catch_0
    move-exception v0

    goto :goto_14

    :catch_1
    move-exception v0

    goto :goto_13

    :catch_2
    move-exception v0

    goto :goto_12

    .line 35
    :catch_3
    move-exception v0

    goto :goto_11

    :catch_4
    move-exception v0

    goto :goto_10

    :catch_5
    move-exception v0

    goto :goto_f

    .line 51
    :catch_6
    move-exception v0

    goto :goto_e

    :catch_7
    move-exception v0

    goto :goto_d

    :catch_8
    move-exception v0

    goto :goto_c

    .line 68
    :catch_9
    move-exception v0

    goto/16 :goto_b

    :catch_a
    move-exception v0

    goto/16 :goto_a

    .line 84
    :catch_b
    move-exception v0

    goto/16 :goto_9

    :catch_c
    move-exception v0

    goto/16 :goto_8

    :catch_d
    move-exception v0

    goto/16 :goto_7

    :catch_e
    move-exception v0

    goto/16 :goto_6

    :catch_f
    move-exception v0

    goto/16 :goto_5

    .line 104
    :catch_10
    move-exception v0

    goto/16 :goto_4

    :catch_11
    move-exception v0

    goto/16 :goto_3

    :catch_12
    move-exception v0

    goto/16 :goto_2

    :catch_13
    move-exception v0

    goto/16 :goto_1

    :catch_14
    move-exception v0

    goto/16 :goto_0
.end method
