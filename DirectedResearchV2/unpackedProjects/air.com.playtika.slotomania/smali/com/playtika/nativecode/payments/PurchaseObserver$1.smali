.class Lcom/playtika/nativecode/payments/PurchaseObserver$1;
.super Ljava/lang/Object;
.source "PurchaseObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/playtika/nativecode/payments/PurchaseObserver;->postPurchaseStateChange(Lcom/playtika/nativecode/payments/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/playtika/nativecode/payments/PurchaseObserver;

.field private final synthetic val$developerPayload:Ljava/lang/String;

.field private final synthetic val$itemId:Ljava/lang/String;

.field private final synthetic val$notificationId:Ljava/lang/String;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$purchaseState:Lcom/playtika/nativecode/payments/Consts$PurchaseState;

.field private final synthetic val$purchaseTime:J

.field private final synthetic val$quantity:I

.field private final synthetic val$signature:Ljava/lang/String;

.field private final synthetic val$signedData:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/playtika/nativecode/payments/PurchaseObserver;Lcom/playtika/nativecode/payments/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/playtika/nativecode/payments/PurchaseObserver$1;->this$0:Lcom/playtika/nativecode/payments/PurchaseObserver;

    iput-object p2, p0, Lcom/playtika/nativecode/payments/PurchaseObserver$1;->val$purchaseState:Lcom/playtika/nativecode/payments/Consts$PurchaseState;

    iput-object p3, p0, Lcom/playtika/nativecode/payments/PurchaseObserver$1;->val$itemId:Ljava/lang/String;

    iput-object p4, p0, Lcom/playtika/nativecode/payments/PurchaseObserver$1;->val$orderId:Ljava/lang/String;

    iput-object p5, p0, Lcom/playtika/nativecode/payments/PurchaseObserver$1;->val$notificationId:Ljava/lang/String;

    iput p6, p0, Lcom/playtika/nativecode/payments/PurchaseObserver$1;->val$quantity:I

    iput-wide p7, p0, Lcom/playtika/nativecode/payments/PurchaseObserver$1;->val$purchaseTime:J

    iput-object p9, p0, Lcom/playtika/nativecode/payments/PurchaseObserver$1;->val$developerPayload:Ljava/lang/String;

    iput-object p10, p0, Lcom/playtika/nativecode/payments/PurchaseObserver$1;->val$signedData:Ljava/lang/String;

    iput-object p11, p0, Lcom/playtika/nativecode/payments/PurchaseObserver$1;->val$signature:Ljava/lang/String;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 158
    iget-object v0, p0, Lcom/playtika/nativecode/payments/PurchaseObserver$1;->this$0:Lcom/playtika/nativecode/payments/PurchaseObserver;

    .line 159
    iget-object v1, p0, Lcom/playtika/nativecode/payments/PurchaseObserver$1;->val$purchaseState:Lcom/playtika/nativecode/payments/Consts$PurchaseState;

    iget-object v2, p0, Lcom/playtika/nativecode/payments/PurchaseObserver$1;->val$itemId:Ljava/lang/String;

    iget-object v3, p0, Lcom/playtika/nativecode/payments/PurchaseObserver$1;->val$orderId:Ljava/lang/String;

    iget-object v4, p0, Lcom/playtika/nativecode/payments/PurchaseObserver$1;->val$notificationId:Ljava/lang/String;

    iget v5, p0, Lcom/playtika/nativecode/payments/PurchaseObserver$1;->val$quantity:I

    iget-wide v6, p0, Lcom/playtika/nativecode/payments/PurchaseObserver$1;->val$purchaseTime:J

    iget-object v8, p0, Lcom/playtika/nativecode/payments/PurchaseObserver$1;->val$developerPayload:Ljava/lang/String;

    .line 160
    iget-object v9, p0, Lcom/playtika/nativecode/payments/PurchaseObserver$1;->val$signedData:Ljava/lang/String;

    iget-object v10, p0, Lcom/playtika/nativecode/payments/PurchaseObserver$1;->val$signature:Ljava/lang/String;

    .line 158
    invoke-virtual/range {v0 .. v10}, Lcom/playtika/nativecode/payments/PurchaseObserver;->onPurchaseStateChange(Lcom/playtika/nativecode/payments/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method
