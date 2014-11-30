.class public Lcom/gamesys/android/billing/common/ane/QueryItemFromStoreFunction;
.super Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;
.source "QueryItemFromStoreFunction.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/gamesys/android/billing/common/ane/QueryItemFromStoreFunction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/billing/common/ane/QueryItemFromStoreFunction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public callIntern(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 13
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 29
    if-eqz p1, :cond_3

    move-object v2, p1

    .line 30
    check-cast v2, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;

    .line 31
    .local v2, "ctx":Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;
    const/4 v7, 0x0

    .line 33
    .local v7, "productID":Ljava/lang/String;
    const/4 v8, 0x0

    .line 34
    .local v8, "skuSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p2, :cond_2

    array-length v10, p2

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 37
    const/4 v10, 0x0

    aget-object v0, p2, v10

    check-cast v0, Lcom/adobe/fre/FREArray;

    .line 38
    .local v0, "a":Lcom/adobe/fre/FREArray;
    const/4 v1, 0x0

    .line 40
    .local v1, "aSize":I
    :try_start_0
    invoke-virtual {v0}, Lcom/adobe/fre/FREArray;->getLength()J

    move-result-wide v10

    long-to-int v1, v10

    .line 41
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9, v1}, Ljava/util/HashSet;-><init>(I)V
    :try_end_0
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v8    # "skuSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v9, "skuSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v8, v9

    .line 49
    .end local v9    # "skuSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v8    # "skuSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-lt v5, v1, :cond_0

    .line 70
    sget-object v10, Lcom/gamesys/android/billing/common/ane/QueryItemFromStoreFunction;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, " product ID"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    sget-object v10, Lcom/gamesys/android/billing/common/ane/QueryItemFromStoreFunction;->TAG:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v2, v8}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->performQueryFromStore(Ljava/util/Set;)V

    .line 79
    .end local v0    # "a":Lcom/adobe/fre/FREArray;
    .end local v1    # "aSize":I
    .end local v2    # "ctx":Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;
    .end local v5    # "i":I
    .end local v7    # "productID":Ljava/lang/String;
    .end local v8    # "skuSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_2
    const/4 v10, 0x0

    :goto_3
    return-object v10

    .line 42
    .restart local v0    # "a":Lcom/adobe/fre/FREArray;
    .restart local v1    # "aSize":I
    .restart local v2    # "ctx":Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;
    .restart local v7    # "productID":Ljava/lang/String;
    .restart local v8    # "skuSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v4

    .line 43
    .local v4, "e1":Lcom/adobe/fre/FREInvalidObjectException;
    const-string v10, "com.gamesys.android.billing.common.ane.CODE_QUERY_ITEM_STORE_ERROR_WRONG_ARG_COUNT"

    const-string v11, "com.gamesys.android.billing.common.ane.LEVEL_QUERY_ITEM_STORE"

    invoke-virtual {v2, v10, v11}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 44
    .end local v4    # "e1":Lcom/adobe/fre/FREInvalidObjectException;
    :catch_1
    move-exception v4

    .line 45
    .local v4, "e1":Lcom/adobe/fre/FREWrongThreadException;
    const-string v10, "com.gamesys.android.billing.common.ane.CODE_QUERY_ITEM_STORE_ERROR_WRONG_ARG_COUNT"

    const-string v11, "com.gamesys.android.billing.common.ane.LEVEL_QUERY_ITEM_STORE"

    invoke-virtual {v2, v10, v11}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 51
    .end local v4    # "e1":Lcom/adobe/fre/FREWrongThreadException;
    .restart local v5    # "i":I
    :cond_0
    int-to-long v10, v5

    :try_start_1
    invoke-virtual {v0, v10, v11}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v6

    .line 52
    .local v6, "o":Lcom/adobe/fre/FREObject;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v7

    .line 53
    :goto_4
    invoke-interface {v8, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_1 .. :try_end_1} :catch_5

    .line 49
    .end local v6    # "o":Lcom/adobe/fre/FREObject;
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 52
    .restart local v6    # "o":Lcom/adobe/fre/FREObject;
    :cond_1
    const/4 v7, 0x0

    goto :goto_4

    .line 54
    .end local v6    # "o":Lcom/adobe/fre/FREObject;
    :catch_2
    move-exception v3

    .line 55
    .local v3, "e":Ljava/lang/IllegalStateException;
    sget-object v10, Lcom/gamesys/android/billing/common/ane/QueryItemFromStoreFunction;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Unable to retrieve product id #"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 56
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v3

    .line 57
    .local v3, "e":Lcom/adobe/fre/FRETypeMismatchException;
    sget-object v10, Lcom/gamesys/android/billing/common/ane/QueryItemFromStoreFunction;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Unable to retrieve product id #"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 58
    .end local v3    # "e":Lcom/adobe/fre/FRETypeMismatchException;
    :catch_4
    move-exception v3

    .line 59
    .local v3, "e":Lcom/adobe/fre/FREInvalidObjectException;
    sget-object v10, Lcom/gamesys/android/billing/common/ane/QueryItemFromStoreFunction;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Unable to retrieve product id #"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 60
    .end local v3    # "e":Lcom/adobe/fre/FREInvalidObjectException;
    :catch_5
    move-exception v3

    .line 61
    .local v3, "e":Lcom/adobe/fre/FREWrongThreadException;
    sget-object v10, Lcom/gamesys/android/billing/common/ane/QueryItemFromStoreFunction;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Unable to retrieve product id #"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 66
    .end local v0    # "a":Lcom/adobe/fre/FREArray;
    .end local v1    # "aSize":I
    .end local v3    # "e":Lcom/adobe/fre/FREWrongThreadException;
    .end local v5    # "i":I
    :cond_2
    const-string v10, "com.gamesys.android.billing.common.ane.CODE_QUERY_ITEM_STORE_ERROR_WRONG_ARG_COUNT"

    const-string v11, "com.gamesys.android.billing.common.ane.LEVEL_QUERY_ITEM_STORE"

    invoke-virtual {v2, v10, v11}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 76
    .end local v2    # "ctx":Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;
    .end local v7    # "productID":Ljava/lang/String;
    .end local v8    # "skuSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    sget-object v10, Lcom/gamesys/android/billing/common/ane/QueryItemFromStoreFunction;->TAG:Ljava/lang/String;

    const-string v11, "Unable to retrieve context no in-app billing operations are possible"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public trackMe()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    return v0
.end method
