.class Lcom/bitrhymes/iab/util/IabHelper$2;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bitrhymes/iab/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/bitrhymes/iab/util/IabHelper$QueryInventoryFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bitrhymes/iab/util/IabHelper;

.field private final synthetic val$handler:Landroid/os/Handler;

.field private final synthetic val$listener:Lcom/bitrhymes/iab/util/IabHelper$QueryInventoryFinishedListener;

.field private final synthetic val$moreSkus:Ljava/util/List;

.field private final synthetic val$querySkuDetails:Z


# direct methods
.method constructor <init>(Lcom/bitrhymes/iab/util/IabHelper;ZLjava/util/List;Landroid/os/Handler;Lcom/bitrhymes/iab/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bitrhymes/iab/util/IabHelper$2;->this$0:Lcom/bitrhymes/iab/util/IabHelper;

    iput-boolean p2, p0, Lcom/bitrhymes/iab/util/IabHelper$2;->val$querySkuDetails:Z

    iput-object p3, p0, Lcom/bitrhymes/iab/util/IabHelper$2;->val$moreSkus:Ljava/util/List;

    iput-object p4, p0, Lcom/bitrhymes/iab/util/IabHelper$2;->val$handler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/bitrhymes/iab/util/IabHelper$2;->val$listener:Lcom/bitrhymes/iab/util/IabHelper$QueryInventoryFinishedListener;

    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 585
    new-instance v3, Lcom/bitrhymes/iab/util/IabResult;

    const/4 v5, 0x0

    const-string v6, "Inventory refresh successful."

    invoke-direct {v3, v5, v6}, Lcom/bitrhymes/iab/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 586
    .local v3, "result":Lcom/bitrhymes/iab/util/IabResult;
    const/4 v1, 0x0

    .line 588
    .local v1, "inv":Lcom/bitrhymes/iab/util/Inventory;
    :try_start_0
    iget-object v5, p0, Lcom/bitrhymes/iab/util/IabHelper$2;->this$0:Lcom/bitrhymes/iab/util/IabHelper;

    iget-boolean v6, p0, Lcom/bitrhymes/iab/util/IabHelper$2;->val$querySkuDetails:Z

    iget-object v7, p0, Lcom/bitrhymes/iab/util/IabHelper$2;->val$moreSkus:Ljava/util/List;

    invoke-virtual {v5, v6, v7}, Lcom/bitrhymes/iab/util/IabHelper;->queryInventory(ZLjava/util/List;)Lcom/bitrhymes/iab/util/Inventory;
    :try_end_0
    .catch Lcom/bitrhymes/iab/util/IabException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 594
    :goto_0
    iget-object v5, p0, Lcom/bitrhymes/iab/util/IabHelper$2;->this$0:Lcom/bitrhymes/iab/util/IabHelper;

    invoke-virtual {v5}, Lcom/bitrhymes/iab/util/IabHelper;->flagEndAsync()V

    .line 596
    move-object v4, v3

    .line 597
    .local v4, "result_f":Lcom/bitrhymes/iab/util/IabResult;
    move-object v2, v1

    .line 598
    .local v2, "inv_f":Lcom/bitrhymes/iab/util/Inventory;
    iget-object v5, p0, Lcom/bitrhymes/iab/util/IabHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v6, Lcom/bitrhymes/iab/util/IabHelper$2$1;

    iget-object v7, p0, Lcom/bitrhymes/iab/util/IabHelper$2;->val$listener:Lcom/bitrhymes/iab/util/IabHelper$QueryInventoryFinishedListener;

    invoke-direct {v6, p0, v7, v4, v2}, Lcom/bitrhymes/iab/util/IabHelper$2$1;-><init>(Lcom/bitrhymes/iab/util/IabHelper$2;Lcom/bitrhymes/iab/util/IabHelper$QueryInventoryFinishedListener;Lcom/bitrhymes/iab/util/IabResult;Lcom/bitrhymes/iab/util/Inventory;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 603
    return-void

    .line 590
    .end local v2    # "inv_f":Lcom/bitrhymes/iab/util/Inventory;
    .end local v4    # "result_f":Lcom/bitrhymes/iab/util/IabResult;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 591
    .local v0, "ex":Lcom/bitrhymes/iab/util/IabException;
    invoke-virtual {v0}, Lcom/bitrhymes/iab/util/IabException;->getResult()Lcom/bitrhymes/iab/util/IabResult;

    move-result-object v3

    goto :goto_0
.end method
