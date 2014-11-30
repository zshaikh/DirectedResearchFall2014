.class Lcom/nativex/monetization/communication/ServerRequestManager$6;
.super Ljava/lang/Object;
.source "ServerRequestManager.java"

# interfaces
.implements Lcom/nativex/common/OnRequestCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nativex/monetization/communication/ServerRequestManager;->redeemCurrency(Lcom/nativex/monetization/communication/RedeemCurrencyData;Lcom/nativex/common/OnTaskCompletedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nativex/monetization/communication/ServerRequestManager;

.field final synthetic val$balance:Lcom/nativex/monetization/communication/RedeemCurrencyData;

.field final synthetic val$listener:Lcom/nativex/common/OnTaskCompletedListener;


# direct methods
.method constructor <init>(Lcom/nativex/monetization/communication/ServerRequestManager;Lcom/nativex/monetization/communication/RedeemCurrencyData;Lcom/nativex/common/OnTaskCompletedListener;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/nativex/monetization/communication/ServerRequestManager$6;->this$0:Lcom/nativex/monetization/communication/ServerRequestManager;

    iput-object p2, p0, Lcom/nativex/monetization/communication/ServerRequestManager$6;->val$balance:Lcom/nativex/monetization/communication/RedeemCurrencyData;

    iput-object p3, p0, Lcom/nativex/monetization/communication/ServerRequestManager$6;->val$listener:Lcom/nativex/common/OnTaskCompletedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestCompleted(ZLcom/nativex/common/Response;)V
    .locals 4
    .param p1, "succeded"    # Z
    .param p2, "response"    # Lcom/nativex/common/Response;

    .prologue
    const/4 v3, 0x0

    .line 327
    if-eqz p1, :cond_1

    .line 328
    :try_start_0
    iget-object v1, p0, Lcom/nativex/monetization/communication/ServerRequestManager$6;->this$0:Lcom/nativex/monetization/communication/ServerRequestManager;

    # getter for: Lcom/nativex/monetization/communication/ServerRequestManager;->responseHandler:Lcom/nativex/monetization/communication/ServerResponseHandler;
    invoke-static {v1}, Lcom/nativex/monetization/communication/ServerRequestManager;->access$100(Lcom/nativex/monetization/communication/ServerRequestManager;)Lcom/nativex/monetization/communication/ServerResponseHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/nativex/monetization/communication/ServerRequestManager$6;->val$balance:Lcom/nativex/monetization/communication/RedeemCurrencyData;

    invoke-virtual {v1, p2, v2}, Lcom/nativex/monetization/communication/ServerResponseHandler;->handleRedeemCurrency(Lcom/nativex/common/Response;Lcom/nativex/monetization/communication/RedeemCurrencyData;)V

    .line 329
    iget-object v1, p0, Lcom/nativex/monetization/communication/ServerRequestManager$6;->val$listener:Lcom/nativex/common/OnTaskCompletedListener;

    if-eqz v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/nativex/monetization/communication/ServerRequestManager$6;->val$listener:Lcom/nativex/common/OnTaskCompletedListener;

    invoke-virtual {p2}, Lcom/nativex/common/Response;->getResponse()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nativex/common/OnTaskCompletedListener;->onTaskCompleted(Ljava/lang/String;)V

    .line 332
    :cond_0
    const/4 v1, 0x0

    # setter for: Lcom/nativex/monetization/communication/ServerRequestManager;->deviceBalanceExecuting:Z
    invoke-static {v1}, Lcom/nativex/monetization/communication/ServerRequestManager;->access$302(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :goto_0
    return-void

    .line 336
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 337
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ServerRequestManager: Unexpected exception caught while finalizing RedeemCurrency request."

    invoke-static {v1}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 340
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v1, p0, Lcom/nativex/monetization/communication/ServerRequestManager$6;->val$listener:Lcom/nativex/common/OnTaskCompletedListener;

    if-eqz v1, :cond_2

    .line 341
    iget-object v1, p0, Lcom/nativex/monetization/communication/ServerRequestManager$6;->val$listener:Lcom/nativex/common/OnTaskCompletedListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/nativex/common/OnTaskCompletedListener;->onTaskCompleted(Ljava/lang/String;)V

    .line 343
    :cond_2
    # setter for: Lcom/nativex/monetization/communication/ServerRequestManager;->deviceBalanceExecuting:Z
    invoke-static {v3}, Lcom/nativex/monetization/communication/ServerRequestManager;->access$302(Z)Z

    goto :goto_0
.end method
