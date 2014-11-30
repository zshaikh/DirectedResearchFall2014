.class abstract Lcom/jesusla/google/BillingService$BillingRequest;
.super Ljava/lang/Object;
.source "BillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jesusla/google/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "BillingRequest"
.end annotation


# instance fields
.field protected mRequestId:J

.field private final mStartId:I

.field final synthetic this$0:Lcom/jesusla/google/BillingService;


# direct methods
.method public constructor <init>(Lcom/jesusla/google/BillingService;I)V
    .locals 0
    .param p2, "startId"    # I

    .prologue
    .line 90
    iput-object p1, p0, Lcom/jesusla/google/BillingService$BillingRequest;->this$0:Lcom/jesusla/google/BillingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput p2, p0, Lcom/jesusla/google/BillingService$BillingRequest;->mStartId:I

    .line 92
    return-void
.end method


# virtual methods
.method public getStartId()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/jesusla/google/BillingService$BillingRequest;->mStartId:I

    return v0
.end method

.method protected logResponseCode(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Bundle;

    .prologue
    .line 176
    const-string v1, "RESPONSE_CODE"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/jesusla/google/Consts$ResponseCode;->valueOf(I)Lcom/jesusla/google/Consts$ResponseCode;

    move-result-object v0

    .line 179
    .local v0, "responseCode":Lcom/jesusla/google/Consts$ResponseCode;
    const-string v1, "BillingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/jesusla/google/Consts$ResponseCode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-void
.end method

.method protected makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 168
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 169
    .local v0, "request":Landroid/os/Bundle;
    const-string v1, "BILLING_REQUEST"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v1, "API_VERSION"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 171
    const-string v1, "PACKAGE_NAME"

    iget-object v2, p0, Lcom/jesusla/google/BillingService$BillingRequest;->this$0:Lcom/jesusla/google/BillingService;

    invoke-virtual {v2}, Lcom/jesusla/google/BillingService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-object v0
.end method

.method protected onRemoteException(Landroid/os/RemoteException;)V
    .locals 2
    .param p1, "e"    # Landroid/os/RemoteException;

    .prologue
    .line 149
    const-string v0, "BillingService"

    const-string v1, "remote billing service crashed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v0, 0x0

    # setter for: Lcom/jesusla/google/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;
    invoke-static {v0}, Lcom/jesusla/google/BillingService;->access$202(Lcom/android/vending/billing/IMarketBillingService;)Lcom/android/vending/billing/IMarketBillingService;

    .line 151
    return-void
.end method

.method protected responseCodeReceived(Lcom/jesusla/google/Consts$ResponseCode;)V
    .locals 0
    .param p1, "responseCode"    # Lcom/jesusla/google/Consts$ResponseCode;

    .prologue
    .line 165
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
    const-string v2, "BillingService"

    .line 123
    const-string v1, "BillingService"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    # getter for: Lcom/jesusla/google/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;
    invoke-static {}, Lcom/jesusla/google/BillingService;->access$200()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 127
    :try_start_0
    invoke-virtual {p0}, Lcom/jesusla/google/BillingService$BillingRequest;->run()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/jesusla/google/BillingService$BillingRequest;->mRequestId:J

    .line 129
    const-string v1, "BillingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/jesusla/google/BillingService$BillingRequest;->mRequestId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-wide v1, p0, Lcom/jesusla/google/BillingService$BillingRequest;->mRequestId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 132
    # getter for: Lcom/jesusla/google/BillingService;->mSentRequests:Ljava/util/HashMap;
    invoke-static {}, Lcom/jesusla/google/BillingService;->access$300()Ljava/util/HashMap;

    move-result-object v1

    iget-wide v2, p0, Lcom/jesusla/google/BillingService$BillingRequest;->mRequestId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :cond_0
    const/4 v1, 0x1

    .line 139
    :goto_0
    return v1

    .line 135
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 136
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lcom/jesusla/google/BillingService$BillingRequest;->onRemoteException(Landroid/os/RemoteException;)V

    .line 139
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public runRequest()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 104
    invoke-virtual {p0}, Lcom/jesusla/google/BillingService$BillingRequest;->runIfConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 113
    :goto_0
    return v0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/jesusla/google/BillingService$BillingRequest;->this$0:Lcom/jesusla/google/BillingService;

    # invokes: Lcom/jesusla/google/BillingService;->bindToMarketBillingService()Z
    invoke-static {v0}, Lcom/jesusla/google/BillingService;->access$000(Lcom/jesusla/google/BillingService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    # getter for: Lcom/jesusla/google/BillingService;->mPendingRequests:Ljava/util/LinkedList;
    invoke-static {}, Lcom/jesusla/google/BillingService;->access$100()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 111
    goto :goto_0

    .line 113
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
