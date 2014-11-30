.class Lcom/gamesys/android/billing/google/ane/InAppBillingContext$2;
.super Ljava/lang/Object;
.source "InAppBillingContext.java"

# interfaces
.implements Lcom/gamesys/android/billing/google/util/IabHelper$OnConsumeFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->executeActionConsume(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

.field private final synthetic val$pId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gamesys/android/billing/google/ane/InAppBillingContext;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$2;->this$0:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    iput-object p2, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$2;->val$pId:Ljava/lang/String;

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeFinished(Lcom/gamesys/android/billing/google/util/Purchase;Lcom/gamesys/android/billing/google/util/IabResult;)V
    .locals 3
    .param p1, "purchase"    # Lcom/gamesys/android/billing/google/util/Purchase;
    .param p2, "result"    # Lcom/gamesys/android/billing/google/util/IabResult;

    .prologue
    .line 317
    # getter for: Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Consumption finished for purchase: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-virtual {p2}, Lcom/gamesys/android/billing/google/util/IabResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    # getter for: Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Consumption successful. Purchase: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v0, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$2;->this$0:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    const-string v1, "com.gamesys.android.billing.common.ane.CODE_CONSUME_SUCCESS"

    .line 324
    const-string v2, "com.gamesys.android.billing.common.ane.LEVEL_CONSUME_ITEM"

    .line 323
    invoke-virtual {v0, v1, v2}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$2;->this$0:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    const-string v1, "com.gamesys.android.billing.common.ane.CODE_BUY_ITEM_CONSUMED_SUCCESS"

    .line 326
    const-string v2, "com.gamesys.android.billing.common.ane.LEVEL_BUY_ITEM"

    .line 325
    invoke-virtual {v0, v1, v2}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$2;->this$0:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    # getter for: Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->mInventory:Lcom/gamesys/android/billing/google/util/Inventory;
    invoke-static {v0}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->access$2(Lcom/gamesys/android/billing/google/ane/InAppBillingContext;)Lcom/gamesys/android/billing/google/util/Inventory;

    move-result-object v0

    iget-object v1, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$2;->val$pId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gamesys/android/billing/google/util/Inventory;->removePurchase(Ljava/lang/String;)V

    .line 344
    :goto_0
    iget-object v0, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$2;->this$0:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    invoke-virtual {v0}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->notifyActionDone()V

    .line 345
    return-void

    .line 333
    :cond_0
    # getter for: Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to consume purchase: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual {p2}, Lcom/gamesys/android/billing/google/util/IabResult;->isUserNotOwningItem()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$2;->this$0:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    const-string v1, "com.gamesys.android.billing.common.ane.CODE_CONSUME_ITEM_NOT_OWNED"

    .line 336
    const-string v2, "com.gamesys.android.billing.common.ane.LEVEL_CONSUME_ITEM"

    .line 335
    invoke-virtual {v0, v1, v2}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$2;->this$0:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    const-string v1, "com.gamesys.android.billing.common.ane.CODE_CONSUME_ERROR"

    .line 339
    const-string v2, "com.gamesys.android.billing.common.ane.LEVEL_CONSUME_ITEM"

    .line 338
    invoke-virtual {v0, v1, v2}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
