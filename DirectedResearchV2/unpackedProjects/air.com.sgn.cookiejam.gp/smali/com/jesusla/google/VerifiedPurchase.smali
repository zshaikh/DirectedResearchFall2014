.class public Lcom/jesusla/google/VerifiedPurchase;
.super Ljava/lang/Object;
.source "VerifiedPurchase.java"


# instance fields
.field public developerPayload:Ljava/lang/String;

.field public notificationId:Ljava/lang/String;

.field public orderId:Ljava/lang/String;

.field public productId:Ljava/lang/String;

.field public purchaseState:Lcom/jesusla/google/Consts$PurchaseState;

.field public purchaseTime:J


# direct methods
.method public constructor <init>(Lcom/jesusla/google/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .param p1, "purchaseState"    # Lcom/jesusla/google/Consts$PurchaseState;
    .param p2, "notificationId"    # Ljava/lang/String;
    .param p3, "productId"    # Ljava/lang/String;
    .param p4, "orderId"    # Ljava/lang/String;
    .param p5, "purchaseTime"    # J
    .param p7, "developerPayload"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/jesusla/google/VerifiedPurchase;->purchaseState:Lcom/jesusla/google/Consts$PurchaseState;

    .line 19
    iput-object p2, p0, Lcom/jesusla/google/VerifiedPurchase;->notificationId:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/jesusla/google/VerifiedPurchase;->productId:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/jesusla/google/VerifiedPurchase;->orderId:Ljava/lang/String;

    .line 22
    iput-wide p5, p0, Lcom/jesusla/google/VerifiedPurchase;->purchaseTime:J

    .line 23
    iput-object p7, p0, Lcom/jesusla/google/VerifiedPurchase;->developerPayload:Ljava/lang/String;

    .line 24
    return-void
.end method
