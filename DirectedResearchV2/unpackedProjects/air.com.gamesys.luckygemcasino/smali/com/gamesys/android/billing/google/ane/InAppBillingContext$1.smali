.class Lcom/gamesys/android/billing/google/ane/InAppBillingContext$1;
.super Ljava/lang/Object;
.source "InAppBillingContext.java"

# interfaces
.implements Lcom/gamesys/android/billing/google/fwk/IServerAsyncCheckPurchase;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->verifyPurchaseSignatureAndConsume(Lcom/gamesys/android/billing/google/util/Purchase;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

.field private final synthetic val$addBuyItem:Z

.field private final synthetic val$pId:Ljava/lang/String;

.field private final synthetic val$purchase:Lcom/gamesys/android/billing/google/util/Purchase;


# direct methods
.method constructor <init>(Lcom/gamesys/android/billing/google/ane/InAppBillingContext;Lcom/gamesys/android/billing/google/util/Purchase;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$1;->this$0:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    iput-object p2, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$1;->val$purchase:Lcom/gamesys/android/billing/google/util/Purchase;

    iput-object p3, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$1;->val$pId:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$1;->val$addBuyItem:Z

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/gamesys/android/billing/google/util/Purchase;Ljava/lang/Object;Z)V
    .locals 3
    .param p1, "p"    # Lcom/gamesys/android/billing/google/util/Purchase;
    .param p2, "extraInfo"    # Ljava/lang/Object;
    .param p3, "autoclose"    # Z

    .prologue
    .line 122
    # getter for: Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error purchasing. Authenticity verification failed :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$1;->val$purchase:Lcom/gamesys/android/billing/google/util/Purchase;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$1;->this$0:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    const-string v1, "com.gamesys.android.billing.common.ane.CODE_BUY_ITEM_ERROR_SIGNATURES"

    .line 124
    const-string v2, "com.gamesys.android.billing.common.ane.LEVEL_BUY_ITEM"

    .line 123
    invoke-virtual {v0, v1, v2}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    if-eqz p2, :cond_0

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$1;->this$0:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "extraInfo":Ljava/lang/Object;
    const-string v1, "com.gamesys.android.billing.common.ane.LEVEL_BUY_ITEM_EXTRA_INFO"

    invoke-virtual {v0, p2, v1}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$1;->this$0:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    invoke-virtual {v0}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->notifyActionDone()V

    .line 130
    return-void
.end method

.method public onSuccess(Lcom/gamesys/android/billing/google/util/Purchase;Ljava/lang/Object;)V
    .locals 4
    .param p1, "p"    # Lcom/gamesys/android/billing/google/util/Purchase;
    .param p2, "extraInfo"    # Ljava/lang/Object;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$1;->this$0:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    const-string v1, "com.gamesys.android.billing.common.ane.CODE_BUY_ITEM_SUCCESS"

    const-string v2, "com.gamesys.android.billing.common.ane.LEVEL_BUY_ITEM"

    invoke-virtual {v0, v1, v2}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    if-eqz p2, :cond_0

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$1;->this$0:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "extraInfo":Ljava/lang/Object;
    const-string v1, "com.gamesys.android.billing.common.ane.LEVEL_BUY_ITEM_EXTRA_INFO"

    invoke-virtual {v0, p2, v1}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_0
    # getter for: Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[>] Purchase successful, item owned, now consuming : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$1;->val$purchase:Lcom/gamesys/android/billing/google/util/Purchase;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$1;->this$0:Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    iget-object v1, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$1;->val$purchase:Lcom/gamesys/android/billing/google/util/Purchase;

    iget-object v2, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$1;->val$pId:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$1;->val$addBuyItem:Z

    # invokes: Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->updateConsumeInfoAndConsume(Lcom/gamesys/android/billing/google/util/Purchase;Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->access$1(Lcom/gamesys/android/billing/google/ane/InAppBillingContext;Lcom/gamesys/android/billing/google/util/Purchase;Ljava/lang/String;Z)V

    .line 118
    return-void
.end method
