.class public Lcom/gamesys/android/billing/common/ane/PurchaseItemFunction;
.super Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;
.source "PurchaseItemFunction.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/gamesys/android/billing/common/ane/PurchaseItemFunction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/billing/common/ane/PurchaseItemFunction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public callIntern(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 11
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v9, 0x0

    .line 34
    if-eqz p1, :cond_7

    move-object v1, p1

    .line 35
    check-cast v1, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;

    .line 37
    .local v1, "ctx":Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;
    const/4 v0, 0x0

    .local v0, "contentServerUrl":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "dpi":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "productID":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "payload":Ljava/lang/String;
    const/4 v7, 0x0

    .line 38
    .local v7, "thirdPartyId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 39
    .local v2, "debug":Z
    if-eqz p2, :cond_6

    array-length v8, p2

    const/4 v10, 0x6

    if-ne v8, v10, :cond_6

    .line 41
    const/4 v8, 0x0

    :try_start_0
    aget-object v8, p2, v8

    if-eqz v8, :cond_0

    const/4 v8, 0x0

    aget-object v8, p2, v8

    invoke-virtual {v8}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 42
    :goto_0
    const/4 v8, 0x1

    aget-object v8, p2, v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    aget-object v8, p2, v8

    invoke-virtual {v8}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v6

    .line 43
    :goto_1
    const/4 v8, 0x2

    aget-object v8, p2, v8

    if-eqz v8, :cond_2

    const/4 v8, 0x2

    aget-object v8, p2, v8

    invoke-virtual {v8}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v5

    .line 44
    :goto_2
    const/4 v8, 0x3

    aget-object v8, p2, v8

    if-eqz v8, :cond_3

    const/4 v8, 0x3

    aget-object v8, p2, v8

    invoke-virtual {v8}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 45
    :goto_3
    const/4 v8, 0x4

    aget-object v8, p2, v8

    if-eqz v8, :cond_4

    const/4 v8, 0x4

    aget-object v8, p2, v8

    invoke-virtual {v8}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v7

    .line 46
    :goto_4
    const/4 v8, 0x5

    aget-object v8, p2, v8

    if-eqz v8, :cond_5

    const/4 v8, 0x5

    aget-object v8, p2, v8

    invoke-virtual {v8}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    :goto_5
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v2

    .line 62
    :goto_6
    invoke-virtual {v1, v3}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->setDivisionProfileId(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v1, v0}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->setContentServerUrl(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1, v6, v5, v7, v2}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->performBuyItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 70
    .end local v0    # "contentServerUrl":Ljava/lang/String;
    .end local v1    # "ctx":Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;
    .end local v2    # "debug":Z
    .end local v3    # "dpi":Ljava/lang/String;
    .end local v5    # "payload":Ljava/lang/String;
    .end local v6    # "productID":Ljava/lang/String;
    .end local v7    # "thirdPartyId":Ljava/lang/String;
    :goto_7
    return-object v9

    .restart local v0    # "contentServerUrl":Ljava/lang/String;
    .restart local v1    # "ctx":Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;
    .restart local v2    # "debug":Z
    .restart local v3    # "dpi":Ljava/lang/String;
    .restart local v5    # "payload":Ljava/lang/String;
    .restart local v6    # "productID":Ljava/lang/String;
    .restart local v7    # "thirdPartyId":Ljava/lang/String;
    :cond_0
    move-object v3, v9

    .line 41
    goto :goto_0

    :cond_1
    move-object v6, v9

    .line 42
    goto :goto_1

    :cond_2
    move-object v5, v9

    .line 43
    goto :goto_2

    :cond_3
    move-object v0, v9

    .line 44
    goto :goto_3

    :cond_4
    move-object v7, v9

    .line 45
    goto :goto_4

    :cond_5
    move-object v8, v9

    .line 46
    goto :goto_5

    .line 47
    :catch_0
    move-exception v4

    .line 48
    .local v4, "e":Ljava/lang/IllegalStateException;
    sget-object v8, Lcom/gamesys/android/billing/common/ane/PurchaseItemFunction;->TAG:Ljava/lang/String;

    const-string v10, "Unable to retrieve action script parameter"

    invoke-static {v8, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 49
    .end local v4    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v4

    .line 50
    .local v4, "e":Lcom/adobe/fre/FRETypeMismatchException;
    sget-object v8, Lcom/gamesys/android/billing/common/ane/PurchaseItemFunction;->TAG:Ljava/lang/String;

    const-string v10, "Unable to retrieve action script parameter"

    invoke-static {v8, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 51
    .end local v4    # "e":Lcom/adobe/fre/FRETypeMismatchException;
    :catch_2
    move-exception v4

    .line 52
    .local v4, "e":Lcom/adobe/fre/FREInvalidObjectException;
    sget-object v8, Lcom/gamesys/android/billing/common/ane/PurchaseItemFunction;->TAG:Ljava/lang/String;

    const-string v10, "Unable to retrieve action script parameter"

    invoke-static {v8, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 53
    .end local v4    # "e":Lcom/adobe/fre/FREInvalidObjectException;
    :catch_3
    move-exception v4

    .line 54
    .local v4, "e":Lcom/adobe/fre/FREWrongThreadException;
    sget-object v8, Lcom/gamesys/android/billing/common/ane/PurchaseItemFunction;->TAG:Ljava/lang/String;

    const-string v10, "Unable to retrieve action script parameter"

    invoke-static {v8, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 57
    .end local v4    # "e":Lcom/adobe/fre/FREWrongThreadException;
    :cond_6
    const-string v8, "com.gamesys.android.billing.common.ane.CODE_BUY_ITEM_ERROR_SIGNATURES"

    const-string v10, "com.gamesys.android.billing.common.ane.LEVEL_BUY_ITEM"

    invoke-virtual {v1, v8, v10}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 67
    .end local v0    # "contentServerUrl":Ljava/lang/String;
    .end local v1    # "ctx":Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;
    .end local v2    # "debug":Z
    .end local v3    # "dpi":Ljava/lang/String;
    .end local v5    # "payload":Ljava/lang/String;
    .end local v6    # "productID":Ljava/lang/String;
    .end local v7    # "thirdPartyId":Ljava/lang/String;
    :cond_7
    sget-object v8, Lcom/gamesys/android/billing/common/ane/PurchaseItemFunction;->TAG:Ljava/lang/String;

    const-string v10, "Unable to retrieve context no in-app billing operations are possible"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public trackMe()Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    return v0
.end method
