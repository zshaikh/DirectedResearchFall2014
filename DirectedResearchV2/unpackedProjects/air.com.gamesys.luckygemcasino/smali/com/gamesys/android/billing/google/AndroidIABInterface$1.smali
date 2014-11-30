.class Lcom/gamesys/android/billing/google/AndroidIABInterface$1;
.super Ljava/lang/Object;
.source "AndroidIABInterface.java"

# interfaces
.implements Lcom/gamesys/android/billing/google/util/IabHelper$OnIabPurchaseFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamesys/android/billing/google/AndroidIABInterface;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gamesys/android/billing/google/AndroidIABInterface;

.field private final synthetic val$pIdFinal:Ljava/lang/String;

.field private final synthetic val$thirdPartyIdFinal:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gamesys/android/billing/google/AndroidIABInterface;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamesys/android/billing/google/AndroidIABInterface$1;->this$0:Lcom/gamesys/android/billing/google/AndroidIABInterface;

    iput-object p2, p0, Lcom/gamesys/android/billing/google/AndroidIABInterface$1;->val$thirdPartyIdFinal:Ljava/lang/String;

    iput-object p3, p0, Lcom/gamesys/android/billing/google/AndroidIABInterface$1;->val$pIdFinal:Ljava/lang/String;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Lcom/gamesys/android/billing/google/util/IabResult;Lcom/gamesys/android/billing/google/util/Purchase;)V
    .locals 4
    .param p1, "result"    # Lcom/gamesys/android/billing/google/util/IabResult;
    .param p2, "purchase"    # Lcom/gamesys/android/billing/google/util/Purchase;

    .prologue
    .line 75
    # getter for: Lcom/gamesys/android/billing/google/AndroidIABInterface;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/gamesys/android/billing/google/AndroidIABInterface;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Purchase finished for purchase: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", result: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 76
    if-eqz p1, :cond_0

    move-object v0, p1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {v1, v0}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Lcom/gamesys/android/billing/google/util/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 80
    # getter for: Lcom/gamesys/android/billing/google/AndroidIABInterface;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/gamesys/android/billing/google/AndroidIABInterface;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error purchasing: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p1}, Lcom/gamesys/android/billing/google/util/IabResult;->isUserOwnItem()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/gamesys/android/billing/google/AndroidIABInterface$1;->this$0:Lcom/gamesys/android/billing/google/AndroidIABInterface;

    # getter for: Lcom/gamesys/android/billing/google/AndroidIABInterface;->asPlayContext:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;
    invoke-static {v0}, Lcom/gamesys/android/billing/google/AndroidIABInterface;->access$1(Lcom/gamesys/android/billing/google/AndroidIABInterface;)Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    move-result-object v0

    const-string v1, "com.gamesys.android.billing.common.ane.CODE_BUY_ITEM_ERROR_ALREADY_OWNED"

    .line 84
    const-string v2, "com.gamesys.android.billing.common.ane.LEVEL_BUY_ITEM"

    .line 83
    invoke-virtual {v0, v1, v2}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    # getter for: Lcom/gamesys/android/billing/google/AndroidIABInterface;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/gamesys/android/billing/google/AndroidIABInterface;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[>] Error, Item is already owned, try consumption"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/gamesys/android/billing/google/AndroidIABInterface$1;->this$0:Lcom/gamesys/android/billing/google/AndroidIABInterface;

    # getter for: Lcom/gamesys/android/billing/google/AndroidIABInterface;->asPlayContext:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;
    invoke-static {v0}, Lcom/gamesys/android/billing/google/AndroidIABInterface;->access$1(Lcom/gamesys/android/billing/google/AndroidIABInterface;)Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    move-result-object v0

    iget-object v1, p0, Lcom/gamesys/android/billing/google/AndroidIABInterface$1;->val$thirdPartyIdFinal:Ljava/lang/String;

    iget-object v2, p0, Lcom/gamesys/android/billing/google/AndroidIABInterface$1;->val$pIdFinal:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->verifyPurchaseSignatureAndConsume(Lcom/gamesys/android/billing/google/util/Purchase;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 108
    :goto_1
    return-void

    .line 76
    :cond_0
    const-string v0, "null result"

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {p1}, Lcom/gamesys/android/billing/google/util/IabResult;->hasUserCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/gamesys/android/billing/google/AndroidIABInterface$1;->this$0:Lcom/gamesys/android/billing/google/AndroidIABInterface;

    # getter for: Lcom/gamesys/android/billing/google/AndroidIABInterface;->asPlayContext:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;
    invoke-static {v0}, Lcom/gamesys/android/billing/google/AndroidIABInterface;->access$1(Lcom/gamesys/android/billing/google/AndroidIABInterface;)Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    move-result-object v0

    const-string v1, "com.gamesys.android.billing.common.ane.CODE_BUY_ITEM_ERROR_USER_CANCEL"

    .line 94
    const-string v2, "com.gamesys.android.billing.common.ane.LEVEL_BUY_ITEM"

    .line 93
    invoke-virtual {v0, v1, v2}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :goto_2
    iget-object v0, p0, Lcom/gamesys/android/billing/google/AndroidIABInterface$1;->this$0:Lcom/gamesys/android/billing/google/AndroidIABInterface;

    # getter for: Lcom/gamesys/android/billing/google/AndroidIABInterface;->asPlayContext:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;
    invoke-static {v0}, Lcom/gamesys/android/billing/google/AndroidIABInterface;->access$1(Lcom/gamesys/android/billing/google/AndroidIABInterface;)Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->notifyActionDone()V

    goto :goto_1

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/gamesys/android/billing/google/AndroidIABInterface$1;->this$0:Lcom/gamesys/android/billing/google/AndroidIABInterface;

    # getter for: Lcom/gamesys/android/billing/google/AndroidIABInterface;->asPlayContext:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;
    invoke-static {v0}, Lcom/gamesys/android/billing/google/AndroidIABInterface;->access$1(Lcom/gamesys/android/billing/google/AndroidIABInterface;)Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    move-result-object v0

    const-string v1, "com.gamesys.android.billing.common.ane.CODE_BUY_ITEM_ERROR"

    .line 97
    const-string v2, "com.gamesys.android.billing.common.ane.LEVEL_BUY_ITEM"

    .line 96
    invoke-virtual {v0, v1, v2}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 106
    :cond_3
    iget-object v0, p0, Lcom/gamesys/android/billing/google/AndroidIABInterface$1;->this$0:Lcom/gamesys/android/billing/google/AndroidIABInterface;

    # getter for: Lcom/gamesys/android/billing/google/AndroidIABInterface;->asPlayContext:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;
    invoke-static {v0}, Lcom/gamesys/android/billing/google/AndroidIABInterface;->access$1(Lcom/gamesys/android/billing/google/AndroidIABInterface;)Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    move-result-object v0

    iget-object v1, p0, Lcom/gamesys/android/billing/google/AndroidIABInterface$1;->val$thirdPartyIdFinal:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->verifyPurchaseSignatureAndConsume(Lcom/gamesys/android/billing/google/util/Purchase;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1
.end method
