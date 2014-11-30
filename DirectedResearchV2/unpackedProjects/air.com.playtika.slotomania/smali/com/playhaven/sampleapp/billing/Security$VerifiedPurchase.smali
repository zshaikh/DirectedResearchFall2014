.class public Lcom/playhaven/sampleapp/billing/Security$VerifiedPurchase;
.super Ljava/lang/Object;
.source "Security.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playhaven/sampleapp/billing/Security;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VerifiedPurchase"
.end annotation


# instance fields
.field public developerPayload:Ljava/lang/String;

.field public notificationId:Ljava/lang/String;

.field public orderId:Ljava/lang/String;

.field public productId:Ljava/lang/String;

.field public purchaseState:Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;

.field public purchaseTime:J


# direct methods
.method public constructor <init>(Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .param p1, "purchaseState"    # Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;
    .param p2, "notificationId"    # Ljava/lang/String;
    .param p3, "productId"    # Ljava/lang/String;
    .param p4, "orderId"    # Ljava/lang/String;
    .param p5, "purchaseTime"    # J
    .param p7, "developerPayload"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/playhaven/sampleapp/billing/Security$VerifiedPurchase;->purchaseState:Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;

    .line 70
    iput-object p2, p0, Lcom/playhaven/sampleapp/billing/Security$VerifiedPurchase;->notificationId:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Lcom/playhaven/sampleapp/billing/Security$VerifiedPurchase;->productId:Ljava/lang/String;

    .line 72
    iput-object p4, p0, Lcom/playhaven/sampleapp/billing/Security$VerifiedPurchase;->orderId:Ljava/lang/String;

    .line 73
    iput-wide p5, p0, Lcom/playhaven/sampleapp/billing/Security$VerifiedPurchase;->purchaseTime:J

    .line 74
    iput-object p7, p0, Lcom/playhaven/sampleapp/billing/Security$VerifiedPurchase;->developerPayload:Ljava/lang/String;

    .line 75
    return-void
.end method
