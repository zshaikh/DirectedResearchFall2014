.class Lcom/gamesys/android/billing/google/util/IabHelper$2;
.super Lcom/gamesys/android/billing/common/fwk/multithread/AbstractCallableForAutoRetry;
.source "IabHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamesys/android/billing/google/util/IabHelper;->queryInventoryAsync(ZLjava/util/Set;Lcom/gamesys/android/billing/google/util/IabHelper$QueryInventoryFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private inv:Lcom/gamesys/android/billing/google/util/Inventory;

.field final synthetic this$0:Lcom/gamesys/android/billing/google/util/IabHelper;

.field private final synthetic val$listener:Lcom/gamesys/android/billing/google/util/IabHelper$QueryInventoryFinishedListener;

.field private final synthetic val$moreSkus:Ljava/util/Set;

.field private final synthetic val$querySkuDetails:Z


# direct methods
.method constructor <init>(Lcom/gamesys/android/billing/google/util/IabHelper;ZLjava/util/Set;Lcom/gamesys/android/billing/google/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamesys/android/billing/google/util/IabHelper$2;->this$0:Lcom/gamesys/android/billing/google/util/IabHelper;

    iput-boolean p2, p0, Lcom/gamesys/android/billing/google/util/IabHelper$2;->val$querySkuDetails:Z

    iput-object p3, p0, Lcom/gamesys/android/billing/google/util/IabHelper$2;->val$moreSkus:Ljava/util/Set;

    iput-object p4, p0, Lcom/gamesys/android/billing/google/util/IabHelper$2;->val$listener:Lcom/gamesys/android/billing/google/util/IabHelper$QueryInventoryFinishedListener;

    .line 628
    invoke-direct {p0}, Lcom/gamesys/android/billing/common/fwk/multithread/AbstractCallableForAutoRetry;-><init>()V

    .line 630
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gamesys/android/billing/google/util/IabHelper$2;->inv:Lcom/gamesys/android/billing/google/util/Inventory;

    return-void
.end method


# virtual methods
.method public backgroundOperationsOver(Ljava/lang/Object;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 648
    iget-object v0, p0, Lcom/gamesys/android/billing/google/util/IabHelper$2;->val$listener:Lcom/gamesys/android/billing/google/util/IabHelper$QueryInventoryFinishedListener;

    check-cast p1, Lcom/gamesys/android/billing/google/util/IabResult;

    .end local p1    # "result":Ljava/lang/Object;
    iget-object v1, p0, Lcom/gamesys/android/billing/google/util/IabHelper$2;->inv:Lcom/gamesys/android/billing/google/util/Inventory;

    invoke-interface {v0, p1, v1}, Lcom/gamesys/android/billing/google/util/IabHelper$QueryInventoryFinishedListener;->onQueryInventoryFinished(Lcom/gamesys/android/billing/google/util/IabResult;Lcom/gamesys/android/billing/google/util/Inventory;)V

    .line 649
    return-void
.end method

.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 634
    new-instance v1, Lcom/gamesys/android/billing/google/util/IabResult;

    const-string v2, "Inventory refresh successful."

    invoke-direct {v1, v3, v2}, Lcom/gamesys/android/billing/google/util/IabResult;-><init>(ILjava/lang/String;)V

    iput-object v1, p0, Lcom/gamesys/android/billing/google/util/IabHelper$2;->internalResult:Ljava/lang/Object;

    .line 636
    :try_start_0
    iget-object v1, p0, Lcom/gamesys/android/billing/google/util/IabHelper$2;->this$0:Lcom/gamesys/android/billing/google/util/IabHelper;

    iget-boolean v2, p0, Lcom/gamesys/android/billing/google/util/IabHelper$2;->val$querySkuDetails:Z

    iget-object v3, p0, Lcom/gamesys/android/billing/google/util/IabHelper$2;->val$moreSkus:Ljava/util/Set;

    invoke-virtual {v1, v2, v3}, Lcom/gamesys/android/billing/google/util/IabHelper;->queryInventory(ZLjava/util/Set;)Lcom/gamesys/android/billing/google/util/Inventory;

    move-result-object v1

    iput-object v1, p0, Lcom/gamesys/android/billing/google/util/IabHelper$2;->inv:Lcom/gamesys/android/billing/google/util/Inventory;

    .line 637
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/gamesys/android/billing/google/util/IabHelper$2;->error:Z
    :try_end_0
    .catch Lcom/gamesys/android/billing/google/util/IabException; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    :goto_0
    iget-object v1, p0, Lcom/gamesys/android/billing/google/util/IabHelper$2;->internalResult:Ljava/lang/Object;

    return-object v1

    .line 638
    :catch_0
    move-exception v0

    .line 639
    .local v0, "ex":Lcom/gamesys/android/billing/google/util/IabException;
    invoke-virtual {v0}, Lcom/gamesys/android/billing/google/util/IabException;->getResult()Lcom/gamesys/android/billing/google/util/IabResult;

    move-result-object v1

    iput-object v1, p0, Lcom/gamesys/android/billing/google/util/IabHelper$2;->internalResult:Ljava/lang/Object;

    .line 640
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/gamesys/android/billing/google/util/IabHelper$2;->error:Z

    goto :goto_0
.end method
