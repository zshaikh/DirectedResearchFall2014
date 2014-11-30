.class abstract Lcom/playhaven/sampleapp/billing/BillingService$BillingRequest;
.super Ljava/lang/Object;
.source "BillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playhaven/sampleapp/billing/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "BillingRequest"
.end annotation


# instance fields
.field protected mRequestId:J

.field private final mStartId:I

.field final synthetic this$0:Lcom/playhaven/sampleapp/billing/BillingService;


# direct methods
.method public constructor <init>(Lcom/playhaven/sampleapp/billing/BillingService;I)V
    .locals 0
    .param p2, "startId"    # I

    .prologue
    .line 83
    iput-object p1, p0, Lcom/playhaven/sampleapp/billing/BillingService$BillingRequest;->this$0:Lcom/playhaven/sampleapp/billing/BillingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput p2, p0, Lcom/playhaven/sampleapp/billing/BillingService$BillingRequest;->mStartId:I

    .line 85
    return-void
.end method


# virtual methods
.method public getStartId()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/playhaven/sampleapp/billing/BillingService$BillingRequest;->mStartId:I

    return v0
.end method

.method protected logResponseCode(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Bundle;

    .prologue
    .line 170
    const-string v1, "RESPONSE_CODE"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 169
    invoke-static {v1}, Lcom/playhaven/sampleapp/billing/Consts$ResponseCode;->valueOf(I)Lcom/playhaven/sampleapp/billing/Consts$ResponseCode;

    move-result-object v0

    .line 174
    .local v0, "responseCode":Lcom/playhaven/sampleapp/billing/Consts$ResponseCode;
    return-void
.end method

.method protected makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 161
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 162
    .local v0, "request":Landroid/os/Bundle;
    const-string v1, "BILLING_REQUEST"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v1, "API_VERSION"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 164
    const-string v1, "PACKAGE_NAME"

    iget-object v2, p0, Lcom/playhaven/sampleapp/billing/BillingService$BillingRequest;->this$0:Lcom/playhaven/sampleapp/billing/BillingService;

    invoke-virtual {v2}, Lcom/playhaven/sampleapp/billing/BillingService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-object v0
.end method

.method protected onRemoteException(Landroid/os/RemoteException;)V
    .locals 2
    .param p1, "e"    # Landroid/os/RemoteException;

    .prologue
    .line 142
    const-string v0, "BillingService"

    const-string v1, "remote billing service crashed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/playhaven/sampleapp/billing/BillingService;->access$4(Lcom/android/vending/billing/IMarketBillingService;)V

    .line 144
    return-void
.end method

.method protected responseCodeReceived(Lcom/playhaven/sampleapp/billing/Consts$ResponseCode;)V
    .locals 0
    .param p1, "responseCode"    # Lcom/playhaven/sampleapp/billing/Consts$ResponseCode;

    .prologue
    .line 158
    return-void
.end method

.method protected abstract run()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public runIfConnected()Z
    .locals 5

    .prologue
    .line 118
    # getter for: Lcom/playhaven/sampleapp/billing/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;
    invoke-static {}, Lcom/playhaven/sampleapp/billing/BillingService;->access$2()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 120
    :try_start_0
    invoke-virtual {p0}, Lcom/playhaven/sampleapp/billing/BillingService$BillingRequest;->run()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/playhaven/sampleapp/billing/BillingService$BillingRequest;->mRequestId:J

    .line 124
    iget-wide v1, p0, Lcom/playhaven/sampleapp/billing/BillingService$BillingRequest;->mRequestId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 125
    # getter for: Lcom/playhaven/sampleapp/billing/BillingService;->mSentRequests:Ljava/util/HashMap;
    invoke-static {}, Lcom/playhaven/sampleapp/billing/BillingService;->access$3()Ljava/util/HashMap;

    move-result-object v1

    iget-wide v2, p0, Lcom/playhaven/sampleapp/billing/BillingService$BillingRequest;->mRequestId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_0
    const/4 v1, 0x1

    .line 132
    :goto_0
    return v1

    .line 128
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 129
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lcom/playhaven/sampleapp/billing/BillingService$BillingRequest;->onRemoteException(Landroid/os/RemoteException;)V

    .line 132
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public runRequest()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 97
    invoke-virtual {p0}, Lcom/playhaven/sampleapp/billing/BillingService$BillingRequest;->runIfConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 106
    :goto_0
    return v0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/playhaven/sampleapp/billing/BillingService$BillingRequest;->this$0:Lcom/playhaven/sampleapp/billing/BillingService;

    # invokes: Lcom/playhaven/sampleapp/billing/BillingService;->bindToMarketBillingService()Z
    invoke-static {v0}, Lcom/playhaven/sampleapp/billing/BillingService;->access$0(Lcom/playhaven/sampleapp/billing/BillingService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    # getter for: Lcom/playhaven/sampleapp/billing/BillingService;->mPendingRequests:Ljava/util/LinkedList;
    invoke-static {}, Lcom/playhaven/sampleapp/billing/BillingService;->access$1()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 104
    goto :goto_0

    .line 106
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
