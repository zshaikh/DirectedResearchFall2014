.class Lcom/playhaven/sampleapp/billing/ResponseHandler$1;
.super Ljava/lang/Object;
.source "ResponseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/playhaven/sampleapp/billing/ResponseHandler;->purchaseResponse(Landroid/content/Context;Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$developerPayload:Ljava/lang/String;

.field private final synthetic val$productId:Ljava/lang/String;

.field private final synthetic val$purchaseState:Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;

.field private final synthetic val$purchaseTime:J


# direct methods
.method constructor <init>(Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/playhaven/sampleapp/billing/ResponseHandler$1;->val$purchaseState:Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;

    iput-object p2, p0, Lcom/playhaven/sampleapp/billing/ResponseHandler$1;->val$productId:Ljava/lang/String;

    iput-wide p3, p0, Lcom/playhaven/sampleapp/billing/ResponseHandler$1;->val$purchaseTime:J

    iput-object p5, p0, Lcom/playhaven/sampleapp/billing/ResponseHandler$1;->val$developerPayload:Ljava/lang/String;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 118
    const-class v7, Lcom/playhaven/sampleapp/billing/ResponseHandler;

    monitor-enter v7

    .line 119
    :try_start_0
    # getter for: Lcom/playhaven/sampleapp/billing/ResponseHandler;->sPurchaseObserver:Lcom/playhaven/sampleapp/billing/PurchaseObserver;
    invoke-static {}, Lcom/playhaven/sampleapp/billing/ResponseHandler;->access$0()Lcom/playhaven/sampleapp/billing/PurchaseObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    # getter for: Lcom/playhaven/sampleapp/billing/ResponseHandler;->sPurchaseObserver:Lcom/playhaven/sampleapp/billing/PurchaseObserver;
    invoke-static {}, Lcom/playhaven/sampleapp/billing/ResponseHandler;->access$0()Lcom/playhaven/sampleapp/billing/PurchaseObserver;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/playhaven/sampleapp/billing/ResponseHandler$1;->val$purchaseState:Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;

    iget-object v2, p0, Lcom/playhaven/sampleapp/billing/ResponseHandler$1;->val$productId:Ljava/lang/String;

    const/4 v3, -0x1

    iget-wide v4, p0, Lcom/playhaven/sampleapp/billing/ResponseHandler$1;->val$purchaseTime:J

    iget-object v6, p0, Lcom/playhaven/sampleapp/billing/ResponseHandler$1;->val$developerPayload:Ljava/lang/String;

    .line 123
    invoke-virtual/range {v0 .. v6}, Lcom/playhaven/sampleapp/billing/PurchaseObserver;->postPurchaseStateChange(Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;Ljava/lang/String;IJLjava/lang/String;)V

    .line 118
    :cond_0
    monitor-exit v7

    .line 127
    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
