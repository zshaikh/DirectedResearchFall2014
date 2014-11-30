.class Lcom/jesusla/storekit/GoogleProvider$4;
.super Ljava/lang/Object;
.source "GoogleProvider.java"

# interfaces
.implements Lcom/jesusla/google/BillingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jesusla/storekit/GoogleProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jesusla/storekit/GoogleProvider;


# direct methods
.method constructor <init>(Lcom/jesusla/storekit/GoogleProvider;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/jesusla/storekit/GoogleProvider$4;->this$0:Lcom/jesusla/storekit/GoogleProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verifyTransaction(ILjava/lang/String;Ljava/lang/String;Lcom/jesusla/google/VerifiedPurchase;)V
    .locals 4
    .param p1, "updateId"    # I
    .param p2, "signedData"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .param p4, "purchase"    # Lcom/jesusla/google/VerifiedPurchase;

    .prologue
    .line 122
    iget-object v2, p0, Lcom/jesusla/storekit/GoogleProvider$4;->this$0:Lcom/jesusla/storekit/GoogleProvider;

    # invokes: Lcom/jesusla/storekit/GoogleProvider;->buildTransaction(ILcom/jesusla/google/VerifiedPurchase;)Ljava/util/Map;
    invoke-static {v2, p1, p4}, Lcom/jesusla/storekit/GoogleProvider;->access$000(Lcom/jesusla/storekit/GoogleProvider;ILcom/jesusla/google/VerifiedPurchase;)Ljava/util/Map;

    move-result-object v0

    .line 123
    .local v0, "transaction":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p4, Lcom/jesusla/google/VerifiedPurchase;->purchaseState:Lcom/jesusla/google/Consts$PurchaseState;

    sget-object v3, Lcom/jesusla/google/Consts$PurchaseState;->PURCHASED:Lcom/jesusla/google/Consts$PurchaseState;

    if-ne v2, v3, :cond_0

    .line 124
    const-string v2, "_signedData"

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v2, "_signature"

    invoke-interface {v0, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v2, p0, Lcom/jesusla/storekit/GoogleProvider$4;->this$0:Lcom/jesusla/storekit/GoogleProvider;

    const-string v3, "VERIFY"

    # invokes: Lcom/jesusla/storekit/GoogleProvider;->notifyTransactionUpdate(Ljava/util/Map;Ljava/lang/String;)V
    invoke-static {v2, v0, v3}, Lcom/jesusla/storekit/GoogleProvider;->access$100(Lcom/jesusla/storekit/GoogleProvider;Ljava/util/Map;Ljava/lang/String;)V

    .line 132
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v2, p0, Lcom/jesusla/storekit/GoogleProvider$4;->this$0:Lcom/jesusla/storekit/GoogleProvider;

    iget-object v3, p4, Lcom/jesusla/google/VerifiedPurchase;->purchaseState:Lcom/jesusla/google/Consts$PurchaseState;

    invoke-virtual {v2, v3}, Lcom/jesusla/storekit/GoogleProvider;->convertStateToType(Lcom/jesusla/google/Consts$PurchaseState;)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "type":Ljava/lang/String;
    iget-object v2, p0, Lcom/jesusla/storekit/GoogleProvider$4;->this$0:Lcom/jesusla/storekit/GoogleProvider;

    # invokes: Lcom/jesusla/storekit/GoogleProvider;->notifyTransactionUpdate(Ljava/util/Map;Ljava/lang/String;)V
    invoke-static {v2, v0, v1}, Lcom/jesusla/storekit/GoogleProvider;->access$100(Lcom/jesusla/storekit/GoogleProvider;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0
.end method
