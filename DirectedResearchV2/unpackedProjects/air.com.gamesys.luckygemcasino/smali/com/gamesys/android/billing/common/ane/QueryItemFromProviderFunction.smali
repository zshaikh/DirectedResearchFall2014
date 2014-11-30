.class public Lcom/gamesys/android/billing/common/ane/QueryItemFromProviderFunction;
.super Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;
.source "QueryItemFromProviderFunction.java"


# static fields
.field public static final CONTENT_SERVER_URL_JSON_KEY:Ljava/lang/String; = "contentServerUrl"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/gamesys/android/billing/common/ane/QueryItemFromProviderFunction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/billing/common/ane/QueryItemFromProviderFunction;->TAG:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;-><init>()V

    return-void
.end method

.method public static getParams(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .param p0, "Country"    # Ljava/lang/String;
    .param p1, "Created"    # Ljava/lang/String;
    .param p2, "Level"    # I
    .param p3, "LocaleCode"    # Ljava/lang/String;
    .param p4, "UserId"    # Ljava/lang/String;
    .param p5, "UtcTimeOffset"    # I
    .param p6, "contentServerUrl"    # Ljava/lang/String;
    .param p7, "ThirdPartyId"    # Ljava/lang/String;
    .param p8, "Platform"    # Ljava/lang/String;
    .param p9, "AppVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    move-object v1, p8

    .line 118
    .local v1, "plat":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 119
    sget-object v2, Lcom/gamesys/android/billing/common/ane/QueryItemFromProviderFunction;->TAG:Ljava/lang/String;

    const-string v3, "Platform MUST NOT be null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/16 v2, 0xd

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 124
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "LocaleCode"

    invoke-interface {v0, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v2, "Level"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v2, "Created"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v2, "Country"

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v2, "UtcTimeOffset"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v2, "UserId"

    invoke-interface {v0, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v2, "ThirdPartyId"

    invoke-interface {v0, v2, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v2, "Platform"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v2, "contentServerUrl"

    invoke-interface {v0, v2, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v2, "AppVersion"

    invoke-interface {v0, v2, p9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    return-object v0
.end method

.method public static performQueryToContentServer(Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "ctx"    # Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;
    .param p1, "Country"    # Ljava/lang/String;
    .param p2, "Created"    # Ljava/lang/String;
    .param p3, "Level"    # I
    .param p4, "LocaleCode"    # Ljava/lang/String;
    .param p5, "UserId"    # Ljava/lang/String;
    .param p6, "UtcTimeOffset"    # I
    .param p7, "contentServerUrl"    # Ljava/lang/String;
    .param p8, "ThirdPartyId"    # Ljava/lang/String;
    .param p9, "Platform"    # Ljava/lang/String;
    .param p10, "AppVersion"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-static/range {p1 .. p10}, Lcom/gamesys/android/billing/common/ane/QueryItemFromProviderFunction;->getParams(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 151
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, v0}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->performQueryContentServer(Ljava/util/Map;)V

    .line 152
    return-void
.end method


# virtual methods
.method public callIntern(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 15
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 50
    sget-object v13, Lcom/gamesys/android/billing/common/ane/QueryItemFromProviderFunction;->TAG:Ljava/lang/String;

    const-string v14, "call"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    if-eqz p1, :cond_2

    move-object/from16 v1, p1

    .line 53
    check-cast v1, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;

    .line 55
    .local v1, "ctx":Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;
    const/4 v8, 0x0

    .local v8, "contentServerUrl":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "LocaleCode":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "Created":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "Country":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "UserId":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "ThirdPartyId":Ljava/lang/String;
    const/4 v10, 0x0

    .line 56
    .local v10, "Platform":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "Level":I
    const/4 v7, 0x0

    .line 57
    .local v7, "UtcTimeOffset":I
    if-eqz p2, :cond_d

    move-object/from16 v0, p2

    array-length v13, v0

    const/16 v14, 0x8

    if-lt v13, v14, :cond_d

    .line 59
    const/4 v13, 0x0

    :try_start_0
    aget-object v13, p2, v13

    if-eqz v13, :cond_3

    const/4 v13, 0x0

    aget-object v13, p2, v13

    invoke-virtual {v13}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 60
    :goto_0
    const/4 v13, 0x1

    aget-object v13, p2, v13

    if-eqz v13, :cond_4

    const/4 v13, 0x1

    aget-object v13, p2, v13

    invoke-virtual {v13}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 61
    :goto_1
    const/4 v13, 0x2

    aget-object v13, p2, v13

    if-eqz v13, :cond_5

    const/4 v13, 0x2

    aget-object v13, p2, v13

    invoke-virtual {v13}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    :goto_2
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 62
    const/4 v13, 0x3

    aget-object v13, p2, v13

    if-eqz v13, :cond_6

    const/4 v13, 0x3

    aget-object v13, p2, v13

    invoke-virtual {v13}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v5

    .line 63
    :goto_3
    const/4 v13, 0x4

    aget-object v13, p2, v13

    if-eqz v13, :cond_7

    const/4 v13, 0x4

    aget-object v13, p2, v13

    invoke-virtual {v13}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v6

    .line 64
    :goto_4
    const/4 v13, 0x5

    aget-object v13, p2, v13

    if-eqz v13, :cond_8

    const/4 v13, 0x5

    aget-object v13, p2, v13

    invoke-virtual {v13}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    :goto_5
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 65
    const/4 v13, 0x6

    aget-object v13, p2, v13

    if-eqz v13, :cond_9

    const/4 v13, 0x6

    aget-object v13, p2, v13

    invoke-virtual {v13}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v11

    .line 66
    .local v11, "AppVersion":Ljava/lang/String;
    :goto_6
    const/4 v13, 0x7

    aget-object v13, p2, v13

    if-eqz v13, :cond_a

    const/4 v13, 0x7

    aget-object v13, p2, v13

    invoke-virtual {v13}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v8

    .line 68
    :goto_7
    move-object/from16 v0, p2

    array-length v13, v0

    const/16 v14, 0x9

    if-lt v13, v14, :cond_0

    .line 69
    const/16 v13, 0x8

    aget-object v13, p2, v13

    if-eqz v13, :cond_b

    const/16 v13, 0x8

    aget-object v13, p2, v13

    invoke-virtual {v13}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v9

    .line 71
    :cond_0
    :goto_8
    move-object/from16 v0, p2

    array-length v13, v0

    const/16 v14, 0xa

    if-lt v13, v14, :cond_1

    .line 72
    const/16 v13, 0x9

    aget-object v13, p2, v13

    if-eqz v13, :cond_c

    const/16 v13, 0x9

    aget-object v13, p2, v13

    invoke-virtual {v13}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v10

    .line 76
    :cond_1
    :goto_9
    invoke-static/range {v1 .. v11}, Lcom/gamesys/android/billing/common/ane/QueryItemFromProviderFunction;->performQueryToContentServer(Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_2

    .line 97
    .end local v1    # "ctx":Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;
    .end local v2    # "Country":Ljava/lang/String;
    .end local v3    # "Created":Ljava/lang/String;
    .end local v4    # "Level":I
    .end local v5    # "LocaleCode":Ljava/lang/String;
    .end local v6    # "UserId":Ljava/lang/String;
    .end local v7    # "UtcTimeOffset":I
    .end local v8    # "contentServerUrl":Ljava/lang/String;
    .end local v9    # "ThirdPartyId":Ljava/lang/String;
    .end local v10    # "Platform":Ljava/lang/String;
    .end local v11    # "AppVersion":Ljava/lang/String;
    :cond_2
    :goto_a
    const/4 v13, 0x0

    return-object v13

    .line 59
    .restart local v1    # "ctx":Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;
    .restart local v2    # "Country":Ljava/lang/String;
    .restart local v3    # "Created":Ljava/lang/String;
    .restart local v4    # "Level":I
    .restart local v5    # "LocaleCode":Ljava/lang/String;
    .restart local v6    # "UserId":Ljava/lang/String;
    .restart local v7    # "UtcTimeOffset":I
    .restart local v8    # "contentServerUrl":Ljava/lang/String;
    .restart local v9    # "ThirdPartyId":Ljava/lang/String;
    .restart local v10    # "Platform":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 60
    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 61
    :cond_5
    const/4 v13, 0x0

    goto :goto_2

    .line 62
    :cond_6
    const/4 v5, 0x0

    goto :goto_3

    .line 63
    :cond_7
    const/4 v6, 0x0

    goto :goto_4

    .line 64
    :cond_8
    const/4 v13, 0x0

    goto :goto_5

    .line 65
    :cond_9
    const/4 v11, 0x0

    goto :goto_6

    .line 66
    .restart local v11    # "AppVersion":Ljava/lang/String;
    :cond_a
    const/4 v8, 0x0

    goto :goto_7

    .line 69
    :cond_b
    const/4 v9, 0x0

    goto :goto_8

    .line 72
    :cond_c
    const/4 v10, 0x0

    goto :goto_9

    .line 79
    .end local v11    # "AppVersion":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 80
    .local v12, "e":Lcom/adobe/fre/FRETypeMismatchException;
    sget-object v13, Lcom/gamesys/android/billing/common/ane/QueryItemFromProviderFunction;->TAG:Ljava/lang/String;

    const-string v14, "Unable to retrieve action script parameter"

    invoke-static {v13, v14, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    const-string v13, "com.gamesys.android.billing.common.ane.CODE_PROVIDER_ERROR"

    const-string v14, "com.gamesys.android.billing.common.ane.LEVEL_QUERY_ITEM_GAMESYS_PROVIDER"

    invoke-virtual {v1, v13, v14}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 82
    .end local v12    # "e":Lcom/adobe/fre/FRETypeMismatchException;
    :catch_1
    move-exception v12

    .line 83
    .local v12, "e":Lcom/adobe/fre/FREInvalidObjectException;
    sget-object v13, Lcom/gamesys/android/billing/common/ane/QueryItemFromProviderFunction;->TAG:Ljava/lang/String;

    const-string v14, "Unable to retrieve action script parameter"

    invoke-static {v13, v14, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    const-string v13, "com.gamesys.android.billing.common.ane.CODE_PROVIDER_ERROR"

    const-string v14, "com.gamesys.android.billing.common.ane.LEVEL_QUERY_ITEM_GAMESYS_PROVIDER"

    invoke-virtual {v1, v13, v14}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 85
    .end local v12    # "e":Lcom/adobe/fre/FREInvalidObjectException;
    :catch_2
    move-exception v12

    .line 86
    .local v12, "e":Lcom/adobe/fre/FREWrongThreadException;
    sget-object v13, Lcom/gamesys/android/billing/common/ane/QueryItemFromProviderFunction;->TAG:Ljava/lang/String;

    const-string v14, "Unable to retrieve action script parameter"

    invoke-static {v13, v14, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    const-string v13, "com.gamesys.android.billing.common.ane.CODE_PROVIDER_ERROR"

    const-string v14, "com.gamesys.android.billing.common.ane.LEVEL_QUERY_ITEM_GAMESYS_PROVIDER"

    invoke-virtual {v1, v13, v14}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 91
    .end local v12    # "e":Lcom/adobe/fre/FREWrongThreadException;
    :cond_d
    sget-object v13, Lcom/gamesys/android/billing/common/ane/QueryItemFromProviderFunction;->TAG:Ljava/lang/String;

    const-string v14, "Unable to retrieve context no in-app billing operations are possible"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const-string v13, "com.gamesys.android.billing.common.ane.CODE_QUERY_ITEM_PROVIDER_ERROR_WRONG_ARG_COUNT"

    .line 93
    const-string v14, "com.gamesys.android.billing.common.ane.LEVEL_QUERY_ITEM_GAMESYS_PROVIDER"

    .line 92
    invoke-virtual {v1, v13, v14}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public trackMe()Z
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x1

    return v0
.end method
