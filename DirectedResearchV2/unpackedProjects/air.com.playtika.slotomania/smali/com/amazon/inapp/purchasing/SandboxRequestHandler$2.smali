.class Lcom/amazon/inapp/purchasing/SandboxRequestHandler$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/inapp/purchasing/SandboxRequestHandler;->sendPurchaseRequest(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/inapp/purchasing/SandboxRequestHandler;

.field final synthetic val$requestId:Ljava/lang/String;

.field final synthetic val$response:Lcom/amazon/inapp/purchasing/PurchaseResponse;

.field final synthetic val$sku:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/inapp/purchasing/SandboxRequestHandler;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/inapp/purchasing/PurchaseResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/inapp/purchasing/SandboxRequestHandler$2;->this$0:Lcom/amazon/inapp/purchasing/SandboxRequestHandler;

    iput-object p2, p0, Lcom/amazon/inapp/purchasing/SandboxRequestHandler$2;->val$requestId:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/inapp/purchasing/SandboxRequestHandler$2;->val$sku:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/inapp/purchasing/SandboxRequestHandler$2;->val$response:Lcom/amazon/inapp/purchasing/PurchaseResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SandboxRequestHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Running Runnable for sendPurchaseRequest with requestId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/inapp/purchasing/SandboxRequestHandler$2;->val$requestId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sku: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/inapp/purchasing/SandboxRequestHandler$2;->val$sku:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/amazon/inapp/purchasing/PurchasingManager;->getPurchasingObserver()Lcom/amazon/inapp/purchasing/PurchasingObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/amazon/inapp/purchasing/SandboxRequestHandler$2;->val$response:Lcom/amazon/inapp/purchasing/PurchaseResponse;

    invoke-virtual {v0, v1}, Lcom/amazon/inapp/purchasing/PurchasingObserver;->onPurchaseResponse(Lcom/amazon/inapp/purchasing/PurchaseResponse;)V

    :cond_1
    return-void
.end method