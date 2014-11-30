.class Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask;->onSuccess(Lcom/amazon/venezia/command/SuccessResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask;

.field final synthetic val$purchaseResponse:Lcom/amazon/inapp/purchasing/PurchaseResponse;


# direct methods
.method constructor <init>(Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask;Lcom/amazon/inapp/purchasing/PurchaseResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask$1;->this$0:Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask;

    iput-object p2, p0, Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask$1;->val$purchaseResponse:Lcom/amazon/inapp/purchasing/PurchaseResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v3, "KiwiPurchaseResponseCommandTask"

    invoke-static {}, Lcom/amazon/inapp/purchasing/PurchasingManager;->getPurchasingObserver()Lcom/amazon/inapp/purchasing/PurchasingObserver;

    move-result-object v0

    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "KiwiPurchaseResponseCommandTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "About to invoke onPurchaseResponse with PurchasingObserver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_3

    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "KiwiPurchaseResponseCommandTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invoking onPurchaseResponse with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask$1;->val$purchaseResponse:Lcom/amazon/inapp/purchasing/PurchaseResponse;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask$1;->val$purchaseResponse:Lcom/amazon/inapp/purchasing/PurchaseResponse;

    invoke-virtual {v0, v1}, Lcom/amazon/inapp/purchasing/PurchasingObserver;->onPurchaseResponse(Lcom/amazon/inapp/purchasing/PurchaseResponse;)V

    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "KiwiPurchaseResponseCommandTask"

    const-string v0, "No exceptions were thrown when invoking onPurchaseResponse"

    invoke-static {v3, v0}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/amazon/inapp/purchasing/ImplementationFactory;->getRequestHandler()Lcom/amazon/inapp/purchasing/RequestHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask$1;->this$0:Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask;

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/inapp/purchasing/RequestHandler;->sendPurchaseResponseReceivedRequest(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
