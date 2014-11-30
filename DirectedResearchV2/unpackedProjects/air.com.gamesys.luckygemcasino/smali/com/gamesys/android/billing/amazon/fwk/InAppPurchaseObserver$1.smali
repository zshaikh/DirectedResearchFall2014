.class Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$1;
.super Ljava/lang/Object;
.source "InAppPurchaseObserver.java"

# interfaces
.implements Lcom/gamesys/android/billing/amazon/fwk/IServerAsyncCheckPurchase;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->verifySignatures(Lcom/amazon/inapp/purchasing/Receipt;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

.field private final synthetic val$autoClose:Z

.field private final synthetic val$receipt:Lcom/amazon/inapp/purchasing/Receipt;


# direct methods
.method constructor <init>(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;Lcom/amazon/inapp/purchasing/Receipt;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$1;->this$0:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

    iput-object p2, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$1;->val$receipt:Lcom/amazon/inapp/purchasing/Receipt;

    iput-boolean p3, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$1;->val$autoClose:Z

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/amazon/inapp/purchasing/Receipt;Ljava/lang/Object;)V
    .locals 3
    .param p1, "r"    # Lcom/amazon/inapp/purchasing/Receipt;
    .param p2, "extraInfo"    # Ljava/lang/Object;

    .prologue
    .line 189
    # getter for: Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->access$1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error purchasing. Authenticity verification failed :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$1;->val$receipt:Lcom/amazon/inapp/purchasing/Receipt;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$1;->this$0:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

    # getter for: Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->asContext:Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;
    invoke-static {v0}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->access$0(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;)Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;

    move-result-object v0

    const-string v1, "com.gamesys.android.billing.common.ane.CODE_BUY_ITEM_ERROR_SIGNATURES"

    const-string v2, "com.gamesys.android.billing.common.ane.LEVEL_BUY_ITEM"

    invoke-virtual {v0, v1, v2}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    if-eqz p2, :cond_0

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$1;->this$0:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

    # getter for: Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->asContext:Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;
    invoke-static {v0}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->access$0(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;)Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;

    move-result-object v0

    check-cast p2, Ljava/lang/String;

    .end local p2    # "extraInfo":Ljava/lang/Object;
    const-string v1, "com.gamesys.android.billing.common.ane.LEVEL_BUY_ITEM_EXTRA_INFO"

    invoke-virtual {v0, p2, v1}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_0
    iget-boolean v0, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$1;->val$autoClose:Z

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$1;->this$0:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

    # getter for: Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->asContext:Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;
    invoke-static {v0}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->access$0(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;)Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->notifyActionDone()V

    .line 200
    :cond_1
    return-void
.end method

.method public onSuccess(Lcom/amazon/inapp/purchasing/Receipt;Ljava/lang/Object;)V
    .locals 3
    .param p1, "r"    # Lcom/amazon/inapp/purchasing/Receipt;
    .param p2, "extraInfo"    # Ljava/lang/Object;

    .prologue
    .line 173
    # getter for: Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->access$1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Purchase successful, item owned and consumed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$1;->val$receipt:Lcom/amazon/inapp/purchasing/Receipt;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$1;->this$0:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

    # getter for: Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->asContext:Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;
    invoke-static {v0}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->access$0(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;)Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;

    move-result-object v0

    const-string v1, "com.gamesys.android.billing.common.ane.CODE_BUY_ITEM_SUCCESS"

    const-string v2, "com.gamesys.android.billing.common.ane.LEVEL_BUY_ITEM"

    invoke-virtual {v0, v1, v2}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    if-eqz p2, :cond_0

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$1;->this$0:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

    # getter for: Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->asContext:Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;
    invoke-static {v0}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->access$0(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;)Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;

    move-result-object v0

    check-cast p2, Ljava/lang/String;

    .end local p2    # "extraInfo":Ljava/lang/Object;
    const-string v1, "com.gamesys.android.billing.common.ane.LEVEL_BUY_ITEM_EXTRA_INFO"

    invoke-virtual {v0, p2, v1}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_0
    iget-boolean v0, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$1;->val$autoClose:Z

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$1;->this$0:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

    # getter for: Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->asContext:Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;
    invoke-static {v0}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->access$0(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;)Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->notifyActionDone()V

    .line 185
    :cond_1
    return-void
.end method
