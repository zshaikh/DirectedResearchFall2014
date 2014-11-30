.class public Lcom/gamesys/android/billing/common/ane/SetupFunction;
.super Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;
.source "SetupFunction.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/gamesys/android/billing/common/ane/SetupFunction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/billing/common/ane/SetupFunction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public callIntern(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 19
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 41
    if-eqz p1, :cond_8

    move-object/from16 v5, p1

    .line 42
    check-cast v5, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;

    .line 43
    .local v5, "ctx":Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 44
    .local v10, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x0

    .local v4, "appId":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "divisionProfileId":Ljava/lang/String;
    const/4 v11, 0x0

    .line 46
    .local v11, "receiptCheckingEndpoint":Ljava/lang/String;
    if-eqz p2, :cond_7

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_7

    .line 49
    const/16 v16, 0x1

    aget-object v2, p2, v16

    check-cast v2, Lcom/adobe/fre/FREArray;

    .line 50
    .local v2, "a":Lcom/adobe/fre/FREArray;
    const/4 v3, 0x0

    .line 52
    .local v3, "aSize":I
    const/16 v16, 0x0

    :try_start_0
    aget-object v16, p2, v16

    if-eqz v16, :cond_0

    const/16 v16, 0x0

    aget-object v16, p2, v16

    invoke-virtual/range {v16 .. v16}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 53
    :goto_0
    invoke-virtual {v2}, Lcom/adobe/fre/FREArray;->getLength()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v3, v0

    .line 55
    const/16 v16, 0x2

    aget-object v16, p2, v16

    if-eqz v16, :cond_1

    const/16 v16, 0x2

    aget-object v16, p2, v16

    invoke-virtual/range {v16 .. v16}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v6

    .line 56
    :goto_1
    const/16 v16, 0x3

    aget-object v16, p2, v16

    if-eqz v16, :cond_2

    const/16 v16, 0x3

    aget-object v16, p2, v16

    invoke-virtual/range {v16 .. v16}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v11

    .line 59
    :goto_2
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    add-int/lit8 v16, v9, 0x1

    move/from16 v0, v16

    if-lt v0, v3, :cond_3

    .line 85
    .end local v9    # "i":I
    :goto_4
    invoke-virtual {v5, v6}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->setDivisionProfileId(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v5, v11}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->setContentServerUrl(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v5, v4, v10}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->performSetup(Ljava/lang/String;Ljava/util/Map;)V

    .line 89
    sget-object v16, Lcom/gamesys/android/billing/common/ane/SetupFunction;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->getAllItemsInfo()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->size()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, " products info loaded"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    sget-object v16, Lcom/gamesys/android/billing/common/ane/SetupFunction;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->getAllItemsInfo()Ljava/util/Collection;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .end local v2    # "a":Lcom/adobe/fre/FREArray;
    .end local v3    # "aSize":I
    .end local v4    # "appId":Ljava/lang/String;
    .end local v5    # "ctx":Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;
    .end local v6    # "divisionProfileId":Ljava/lang/String;
    .end local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v11    # "receiptCheckingEndpoint":Ljava/lang/String;
    :goto_5
    const/16 v16, 0x0

    :goto_6
    return-object v16

    .line 52
    .restart local v2    # "a":Lcom/adobe/fre/FREArray;
    .restart local v3    # "aSize":I
    .restart local v4    # "appId":Ljava/lang/String;
    .restart local v5    # "ctx":Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;
    .restart local v6    # "divisionProfileId":Ljava/lang/String;
    .restart local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v11    # "receiptCheckingEndpoint":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 55
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 56
    :cond_2
    const/4 v11, 0x0

    goto :goto_2

    .line 60
    .restart local v9    # "i":I
    :cond_3
    int-to-long v0, v9

    move-wide/from16 v16, v0

    :try_start_1
    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v12

    .line 61
    .local v12, "s":Lcom/adobe/fre/FREObject;
    add-int/lit8 v16, v9, 0x1

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v13

    .line 62
    .local v13, "si":Lcom/adobe/fre/FREObject;
    if-eqz v12, :cond_5

    invoke-virtual {v12}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v15

    .line 63
    .local v15, "sku":Ljava/lang/String;
    :goto_7
    if-eqz v13, :cond_6

    invoke-virtual {v13}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v14

    .line 65
    .local v14, "signedItem":Ljava/lang/String;
    :goto_8
    if-eqz v15, :cond_4

    .line 66
    new-instance v16, Lcom/gamesys/android/billing/common/fwk/BuyableItem;

    move-object/from16 v0, v16

    invoke-direct {v0, v15, v14}, Lcom/gamesys/android/billing/common/fwk/BuyableItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-interface {v10, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_1 .. :try_end_1} :catch_3

    .line 59
    :cond_4
    add-int/lit8 v9, v9, 0x2

    goto :goto_3

    .line 62
    .end local v14    # "signedItem":Ljava/lang/String;
    .end local v15    # "sku":Ljava/lang/String;
    :cond_5
    const/4 v15, 0x0

    goto :goto_7

    .line 63
    .restart local v15    # "sku":Ljava/lang/String;
    :cond_6
    const/4 v14, 0x0

    goto :goto_8

    .line 70
    .end local v9    # "i":I
    .end local v12    # "s":Lcom/adobe/fre/FREObject;
    .end local v13    # "si":Lcom/adobe/fre/FREObject;
    .end local v15    # "sku":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 71
    .local v8, "e1":Lcom/adobe/fre/FREInvalidObjectException;
    const-string v16, "com.gamesys.android.billing.common.ane.CODE_SETUP_RESULT_ERROR"

    const-string v17, "com.gamesys.android.billing.common.ane.LEVEL_SETUP"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 72
    .end local v8    # "e1":Lcom/adobe/fre/FREInvalidObjectException;
    :catch_1
    move-exception v8

    .line 73
    .local v8, "e1":Lcom/adobe/fre/FREWrongThreadException;
    const-string v16, "com.gamesys.android.billing.common.ane.CODE_SETUP_RESULT_ERROR"

    const-string v17, "com.gamesys.android.billing.common.ane.LEVEL_SETUP"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 74
    .end local v8    # "e1":Lcom/adobe/fre/FREWrongThreadException;
    :catch_2
    move-exception v7

    .line 75
    .local v7, "e":Ljava/lang/IllegalStateException;
    const-string v16, "com.gamesys.android.billing.common.ane.CODE_SETUP_RESULT_ERROR"

    const-string v17, "com.gamesys.android.billing.common.ane.LEVEL_SETUP"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 76
    .end local v7    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v7

    .line 77
    .local v7, "e":Lcom/adobe/fre/FRETypeMismatchException;
    const-string v16, "com.gamesys.android.billing.common.ane.CODE_SETUP_RESULT_ERROR"

    const-string v17, "com.gamesys.android.billing.common.ane.LEVEL_SETUP"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 81
    .end local v2    # "a":Lcom/adobe/fre/FREArray;
    .end local v3    # "aSize":I
    .end local v7    # "e":Lcom/adobe/fre/FRETypeMismatchException;
    :cond_7
    const-string v16, "com.gamesys.android.billing.common.ane.CODE_SETUP_RESULT_ERROR"

    const-string v17, "com.gamesys.android.billing.common.ane.LEVEL_SETUP"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const/16 v16, 0x0

    goto/16 :goto_6

    .line 93
    .end local v4    # "appId":Ljava/lang/String;
    .end local v5    # "ctx":Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;
    .end local v6    # "divisionProfileId":Ljava/lang/String;
    .end local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v11    # "receiptCheckingEndpoint":Ljava/lang/String;
    :cond_8
    sget-object v16, Lcom/gamesys/android/billing/common/ane/SetupFunction;->TAG:Ljava/lang/String;

    const-string v17, "Unable to retrieve context no in-app billing operations are possible"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5
.end method

.method public trackMe()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    return v0
.end method
