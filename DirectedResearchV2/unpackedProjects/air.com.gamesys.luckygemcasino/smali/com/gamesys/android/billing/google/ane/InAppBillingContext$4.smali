.class Lcom/gamesys/android/billing/google/ane/InAppBillingContext$4;
.super Ljava/lang/Object;
.source "InAppBillingContext.java"

# interfaces
.implements Lcom/gamesys/android/billing/google/util/IabHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->executeActionQueryStore(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

.field private final synthetic val$querySkusDetail:Z


# direct methods
.method constructor <init>(Lcom/gamesys/android/billing/google/ane/InAppBillingContext;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$4;->this$0:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    iput-boolean p2, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$4;->val$querySkusDetail:Z

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/gamesys/android/billing/google/util/IabResult;Lcom/gamesys/android/billing/google/util/Inventory;)V
    .locals 16
    .param p1, "result"    # Lcom/gamesys/android/billing/google/util/IabResult;
    .param p2, "inventory"    # Lcom/gamesys/android/billing/google/util/Inventory;

    .prologue
    .line 490
    # getter for: Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->access$0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Querying Google Play finished"

    invoke-static {v1, v2}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/gamesys/android/billing/google/util/IabResult;->isFailure()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 492
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$4;->this$0:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    const-string v2, "com.gamesys.android.billing.common.ane.CODE_QUERY_ITEM_STORE_ERROR"

    .line 493
    const-string v3, "com.gamesys.android.billing.common.ane.LEVEL_QUERY_ITEM_STORE"

    .line 492
    invoke-virtual {v1, v2, v3}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$4;->this$0:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    invoke-virtual {v1}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->notifyActionDone()V

    .line 557
    :goto_0
    return-void

    .line 498
    :cond_0
    const/4 v12, 0x0

    .line 499
    .local v12, "newPurchases":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/gamesys/android/billing/google/util/Purchase;>;"
    if-eqz p2, :cond_1

    .line 500
    invoke-virtual/range {p2 .. p2}, Lcom/gamesys/android/billing/google/util/Inventory;->getPurchases()Ljava/util/Map;

    move-result-object v12

    .line 504
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$4;->val$querySkusDetail:Z

    if-eqz v1, :cond_4

    .line 505
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$4;->this$0:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    move-object/from16 v0, p2

    invoke-static {v1, v0}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->access$4(Lcom/gamesys/android/billing/google/ane/InAppBillingContext;Lcom/gamesys/android/billing/google/util/Inventory;)V

    .line 515
    :goto_1
    if-eqz v12, :cond_2

    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 516
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$4;->this$0:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->enqueueConsumeItem(Ljava/util/Map;)V

    .line 519
    :cond_2
    # getter for: Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->access$0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Querying Google Play was successful. Inventory up to date"

    invoke-static {v1, v2}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$4;->val$querySkusDetail:Z

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$4;->this$0:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    # getter for: Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->mInventory:Lcom/gamesys/android/billing/google/util/Inventory;
    invoke-static {v1}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->access$2(Lcom/gamesys/android/billing/google/ane/InAppBillingContext;)Lcom/gamesys/android/billing/google/util/Inventory;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 523
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$4;->this$0:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    # getter for: Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->mInventory:Lcom/gamesys/android/billing/google/util/Inventory;
    invoke-static {v1}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->access$2(Lcom/gamesys/android/billing/google/ane/InAppBillingContext;)Lcom/gamesys/android/billing/google/util/Inventory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gamesys/android/billing/google/util/Inventory;->getAllBuyableItems()Ljava/util/List;

    move-result-object v9

    .line 524
    .local v9, "buyable":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    # getter for: Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Buyable: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 526
    .local v8, "array":Lorg/json/JSONArray;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6

    .line 551
    # getter for: Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Formatted store info :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$4;->this$0:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    invoke-virtual {v8}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.gamesys.android.billing.common.ane.LEVEL_QUERY_ITEM_STORE_SUCCESS"

    invoke-virtual {v1, v2, v3}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    .end local v8    # "array":Lorg/json/JSONArray;
    .end local v9    # "buyable":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$4;->this$0:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    invoke-virtual {v1}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->notifyActionDone()V

    goto/16 :goto_0

    .line 507
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$4;->this$0:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    # getter for: Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->mInventory:Lcom/gamesys/android/billing/google/util/Inventory;
    invoke-static {v1}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->access$2(Lcom/gamesys/android/billing/google/ane/InAppBillingContext;)Lcom/gamesys/android/billing/google/util/Inventory;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 508
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$4;->this$0:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    # getter for: Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->mInventory:Lcom/gamesys/android/billing/google/util/Inventory;
    invoke-static {v1}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->access$2(Lcom/gamesys/android/billing/google/ane/InAppBillingContext;)Lcom/gamesys/android/billing/google/util/Inventory;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/gamesys/android/billing/google/util/Inventory;->updatePurchases(Ljava/util/Map;)V

    goto/16 :goto_1

    .line 510
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$4;->this$0:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    move-object/from16 v0, p2

    invoke-static {v1, v0}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->access$4(Lcom/gamesys/android/billing/google/ane/InAppBillingContext;Lcom/gamesys/android/billing/google/util/Inventory;)V

    goto/16 :goto_1

    .line 526
    .restart local v8    # "array":Lorg/json/JSONArray;
    .restart local v9    # "buyable":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 527
    .local v14, "sku":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$4;->this$0:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    # getter for: Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->mInventory:Lcom/gamesys/android/billing/google/util/Inventory;
    invoke-static {v1}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->access$2(Lcom/gamesys/android/billing/google/ane/InAppBillingContext;)Lcom/gamesys/android/billing/google/util/Inventory;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/gamesys/android/billing/google/util/Inventory;->getSkuDetails(Ljava/lang/String;)Lcom/gamesys/android/billing/google/util/SkuDetails;

    move-result-object v10

    .line 528
    .local v10, "detail":Lcom/gamesys/android/billing/google/util/SkuDetails;
    if-eqz v10, :cond_7

    .line 530
    :try_start_0
    invoke-virtual {v10}, Lcom/gamesys/android/billing/google/util/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Lcom/gamesys/android/billing/google/util/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v2

    .line 531
    invoke-virtual {v10}, Lcom/gamesys/android/billing/google/util/SkuDetails;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Lcom/gamesys/android/billing/google/util/SkuDetails;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcom/gamesys/android/billing/google/util/SkuDetails;->getPriceMicros()J

    move-result-wide v5

    invoke-virtual {v10}, Lcom/gamesys/android/billing/google/util/SkuDetails;->getPriceCurrency()Ljava/lang/String;

    move-result-object v7

    .line 530
    invoke-static/range {v1 .. v7}, Lcom/gamesys/android/billing/common/fwk/GamesysContentServerInterface;->formatItemDetailFromStore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 532
    .local v13, "o":Lorg/json/JSONObject;
    invoke-virtual {v8, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    # getter for: Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->access$0()Ljava/lang/String;

    move-result-object v1

    .line 541
    const-string v2, "Item: %s\n Type: %s\n SKU: %s\n Price: %s\n Description: %s\n PriceMicros: %s\n CurrencyCode: %s\n"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 542
    invoke-virtual {v10}, Lcom/gamesys/android/billing/google/util/SkuDetails;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v10}, Lcom/gamesys/android/billing/google/util/SkuDetails;->getType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v10}, Lcom/gamesys/android/billing/google/util/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {v10}, Lcom/gamesys/android/billing/google/util/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-virtual {v10}, Lcom/gamesys/android/billing/google/util/SkuDetails;->getDescription()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 543
    invoke-virtual {v10}, Lcom/gamesys/android/billing/google/util/SkuDetails;->getPriceMicros()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    invoke-virtual {v10}, Lcom/gamesys/android/billing/google/util/SkuDetails;->getPriceCurrency()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 540
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 533
    .end local v13    # "o":Lorg/json/JSONObject;
    :catch_0
    move-exception v11

    .line 534
    .local v11, "e":Ljava/lang/Exception;
    # getter for: Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to get JSON for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/gamesys/android/billing/google/util/SkuDetails;->getJSONStream()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$4;->this$0:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    const-string v2, "com.gamesys.android.billing.common.ane.CODE_QUERY_ITEM_STORE_ERROR"

    const-string v3, "com.gamesys.android.billing.common.ane.LEVEL_QUERY_ITEM_STORE"

    invoke-virtual {v1, v2, v3}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$4;->this$0:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    invoke-virtual {v1}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->notifyActionDone()V

    goto/16 :goto_0

    .line 546
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_7
    # getter for: Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to find sku detail for item : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method
