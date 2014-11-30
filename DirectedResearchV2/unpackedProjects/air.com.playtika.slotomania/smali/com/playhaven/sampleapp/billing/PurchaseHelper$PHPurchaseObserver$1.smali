.class Lcom/playhaven/sampleapp/billing/PurchaseHelper$PHPurchaseObserver$1;
.super Ljava/lang/Object;
.source "PurchaseHelper.java"

# interfaces
.implements Lcom/playhaven/src/common/PHAPIRequest$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/playhaven/sampleapp/billing/PurchaseHelper$PHPurchaseObserver;->onPurchaseStateChange(Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;Ljava/lang/String;IJLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/playhaven/sampleapp/billing/PurchaseHelper$PHPurchaseObserver;


# direct methods
.method constructor <init>(Lcom/playhaven/sampleapp/billing/PurchaseHelper$PHPurchaseObserver;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/playhaven/sampleapp/billing/PurchaseHelper$PHPurchaseObserver$1;->this$1:Lcom/playhaven/sampleapp/billing/PurchaseHelper$PHPurchaseObserver;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestFailed(Lcom/playhaven/src/common/PHAPIRequest;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "request"    # Lcom/playhaven/src/common/PHAPIRequest;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error reporting IAP transaction to Playhaven: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public requestSucceeded(Lcom/playhaven/src/common/PHAPIRequest;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "request"    # Lcom/playhaven/src/common/PHAPIRequest;
    .param p2, "responseData"    # Lorg/json/JSONObject;

    .prologue
    .line 118
    const-string v0, "Successfully reported IAP transaction to Playhaven"

    invoke-static {v0}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 120
    return-void
.end method
