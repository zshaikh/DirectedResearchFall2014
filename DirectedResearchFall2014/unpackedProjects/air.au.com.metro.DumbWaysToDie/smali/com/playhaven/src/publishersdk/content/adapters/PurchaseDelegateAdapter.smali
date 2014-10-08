.class public Lcom/playhaven/src/publishersdk/content/adapters/PurchaseDelegateAdapter;
.super Ljava/lang/Object;
.source "PurchaseDelegateAdapter.java"

# interfaces
.implements Lv2/com/playhaven/listeners/PHPurchaseListener;


# instance fields
.field private delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PurchaseDelegate;


# direct methods
.method public constructor <init>(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PurchaseDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PurchaseDelegate;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/playhaven/src/publishersdk/content/adapters/PurchaseDelegateAdapter;->delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PurchaseDelegate;

    .line 18
    return-void
.end method


# virtual methods
.method public onMadePurchase(Lv2/com/playhaven/requests/content/PHContentRequest;Lv2/com/playhaven/model/PHPurchase;)V
    .locals 2
    .param p1, "request"    # Lv2/com/playhaven/requests/content/PHContentRequest;
    .param p2, "purchase"    # Lv2/com/playhaven/model/PHPurchase;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/adapters/PurchaseDelegateAdapter;->delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PurchaseDelegate;

    check-cast p1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;

    .line 23
    .end local p1    # "request":Lv2/com/playhaven/requests/content/PHContentRequest;
    new-instance v1, Lcom/playhaven/src/publishersdk/content/PHPurchase;

    invoke-direct {v1, p2}, Lcom/playhaven/src/publishersdk/content/PHPurchase;-><init>(Lv2/com/playhaven/model/PHPurchase;)V

    .line 22
    invoke-interface {v0, p1, v1}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PurchaseDelegate;->shouldMakePurchase(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Lcom/playhaven/src/publishersdk/content/PHPurchase;)V

    .line 24
    return-void
.end method
