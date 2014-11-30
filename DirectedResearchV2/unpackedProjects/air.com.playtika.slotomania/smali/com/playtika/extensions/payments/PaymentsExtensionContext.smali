.class public Lcom/playtika/extensions/payments/PaymentsExtensionContext;
.super Lcom/adobe/fre/FREContext;
.source "PaymentsExtensionContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/playtika/extensions/payments/PaymentsExtensionContext$PaymentExtensionPurchaseObserver;
    }
.end annotation


# static fields
.field private static final AS_EVENT_CANCELED:Ljava/lang/String; = "CANCELED"

.field private static final AS_EVENT_ERROR:Ljava/lang/String; = "ERROR"

.field private static final AS_EVENT_PURCHASED:Ljava/lang/String; = "PURCHASED"

.field private static final TAG:Ljava/lang/String; = "PaymentsExtCtx"


# instance fields
.field isBillingSupported:Ljava/lang/Boolean;

.field private mBillingService:Lcom/playtika/nativecode/payments/BillingService;

.field private mHandler:Landroid/os/Handler;

.field private mPurchaseDatabase:Lcom/playtika/nativecode/payments/PurchaseDatabase;

.field private mPurchaseObserver:Lcom/playtika/extensions/payments/PaymentsExtensionContext$PaymentExtensionPurchaseObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/playtika/extensions/payments/PaymentsExtensionContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 147
    invoke-direct/range {p0 .. p6}, Lcom/playtika/extensions/payments/PaymentsExtensionContext;->trackPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/playtika/extensions/payments/PaymentsExtensionContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 177
    invoke-direct/range {p0 .. p7}, Lcom/playtika/extensions/payments/PaymentsExtensionContext;->pushEventToAS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/playtika/extensions/payments/PaymentsExtensionContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 183
    invoke-direct/range {p0 .. p5}, Lcom/playtika/extensions/payments/PaymentsExtensionContext;->pushEventToAS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/playtika/extensions/payments/PaymentsExtensionContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 189
    invoke-direct/range {p0 .. p6}, Lcom/playtika/extensions/payments/PaymentsExtensionContext;->pushEventToAS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logPurchaseConfirmation(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "isConnected"    # Ljava/lang/Boolean;
    .param p2, "orderId"    # Ljava/lang/String;
    .param p3, "notificationId"    # Ljava/lang/String;

    .prologue
    const-string v3, "transaction_id"

    .line 197
    iget-object v2, p0, Lcom/playtika/extensions/payments/PaymentsExtensionContext;->mPurchaseDatabase:Lcom/playtika/nativecode/payments/PurchaseDatabase;

    invoke-virtual {v2, p2}, Lcom/playtika/nativecode/payments/PurchaseDatabase;->getPurchaseItem(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 199
    .local v1, "transaction":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 201
    .local v0, "logParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "transaction_id"

    const-string v2, "transaction_id"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v2, "action_request"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "confirmNotifications({notifyIds = ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]})"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v2, "action_http_response_code"

    invoke-virtual {p1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v2, "action_logical_status"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "OK"

    :goto_0
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v2, "action_response"

    invoke-virtual {p1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v2, "STORE_TRANSACTION_CONFIRMED"

    invoke-static {v2, v0}, Lcom/playtika/extensions/payments/PaymentsLogger;->Log(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 208
    return-void

    .line 204
    :cond_0
    const-string v3, "UNRECOVERABLE"

    goto :goto_0
.end method

.method private pushEventToAS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "order_id"    # Ljava/lang/String;
    .param p3, "notificationId"    # Ljava/lang/String;
    .param p4, "product_id"    # Ljava/lang/String;
    .param p5, "payload"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 186
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, v6

    move-object v8, v6

    invoke-direct/range {v0 .. v8}, Lcom/playtika/extensions/payments/PaymentsExtensionContext;->pushEventToAS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method private pushEventToAS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "order_id"    # Ljava/lang/String;
    .param p3, "notificationId"    # Ljava/lang/String;
    .param p4, "product_id"    # Ljava/lang/String;
    .param p5, "payload"    # Ljava/lang/String;
    .param p6, "error_code"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 192
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, v6

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/playtika/extensions/payments/PaymentsExtensionContext;->pushEventToAS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method private pushEventToAS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "order_id"    # Ljava/lang/String;
    .param p3, "notificationId"    # Ljava/lang/String;
    .param p4, "product_id"    # Ljava/lang/String;
    .param p5, "payload"    # Ljava/lang/String;
    .param p6, "signedData"    # Ljava/lang/String;
    .param p7, "signature"    # Ljava/lang/String;

    .prologue
    .line 180
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/playtika/extensions/payments/PaymentsExtensionContext;->pushEventToAS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method private pushEventToAS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "order_id"    # Ljava/lang/String;
    .param p3, "notificationId"    # Ljava/lang/String;
    .param p4, "product_id"    # Ljava/lang/String;
    .param p5, "payload"    # Ljava/lang/String;
    .param p6, "signedData"    # Ljava/lang/String;
    .param p7, "signature"    # Ljava/lang/String;
    .param p8, "error_code"    # Ljava/lang/String;

    .prologue
    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "level":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&orderId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&notificationId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    :cond_1
    if-eqz p5, :cond_2

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&transaction_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    :cond_2
    if-eqz p6, :cond_3

    if-eqz p7, :cond_3

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&signedData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&signature="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    :cond_3
    if-eqz p8, :cond_4

    invoke-virtual {p8}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    :cond_4
    invoke-virtual {p0, p1, v0}, Lcom/playtika/extensions/payments/PaymentsExtensionContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v1, "LOG"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pushEventToAS() : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void
.end method

.method private trackPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "orderId"    # Ljava/lang/String;
    .param p2, "notificationId"    # Ljava/lang/String;
    .param p3, "itemId"    # Ljava/lang/String;
    .param p4, "developerPayload"    # Ljava/lang/String;
    .param p5, "signedData"    # Ljava/lang/String;
    .param p6, "signature"    # Ljava/lang/String;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/playtika/extensions/payments/PaymentsExtensionContext;->mPurchaseDatabase:Lcom/playtika/nativecode/payments/PurchaseDatabase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/playtika/nativecode/payments/PurchaseDatabase;->insertOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method


# virtual methods
.method public confirmPurchase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "orderId"    # Ljava/lang/String;
    .param p2, "notificationId"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-object v1, p0, Lcom/playtika/extensions/payments/PaymentsExtensionContext;->mBillingService:Lcom/playtika/nativecode/payments/BillingService;

    const/4 v2, -0x1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/playtika/nativecode/payments/BillingService;->confirmNotifications(I[Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 100
    .local v0, "isConnected":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/playtika/extensions/payments/PaymentsExtensionContext;->mPurchaseDatabase:Lcom/playtika/nativecode/payments/PurchaseDatabase;

    invoke-virtual {v1, p1}, Lcom/playtika/nativecode/payments/PurchaseDatabase;->removeOrder(Ljava/lang/String;)V

    .line 102
    invoke-direct {p0, v0, p1, p2}, Lcom/playtika/extensions/payments/PaymentsExtensionContext;->logPurchaseConfirmation(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/playtika/extensions/payments/PaymentsExtensionContext;->mPurchaseDatabase:Lcom/playtika/nativecode/payments/PurchaseDatabase;

    invoke-virtual {v0}, Lcom/playtika/nativecode/payments/PurchaseDatabase;->close()V

    .line 50
    iget-object v0, p0, Lcom/playtika/extensions/payments/PaymentsExtensionContext;->mBillingService:Lcom/playtika/nativecode/payments/BillingService;

    invoke-virtual {v0}, Lcom/playtika/nativecode/payments/BillingService;->unbind()V

    .line 51
    return-void
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v3, "purchase"

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 58
    .local v0, "functionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "init"

    new-instance v2, Lcom/playtika/extensions/payments/PaymentsInitFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/payments/PaymentsInitFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v1, "purchase"

    new-instance v1, Lcom/playtika/extensions/payments/PaymentsPurchaseFunction;

    invoke-direct {v1}, Lcom/playtika/extensions/payments/PaymentsPurchaseFunction;-><init>()V

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v1, "confirmPurchase"

    new-instance v2, Lcom/playtika/extensions/payments/PaymentsConfirmPurchaseFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/payments/PaymentsConfirmPurchaseFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v1, "getTransactions"

    new-instance v2, Lcom/playtika/extensions/payments/PaymentsGetTransactionsFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/payments/PaymentsGetTransactionsFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v1, "purchase"

    new-instance v1, Lcom/playtika/extensions/payments/PaymentsPurchaseFunction;

    invoke-direct {v1}, Lcom/playtika/extensions/payments/PaymentsPurchaseFunction;-><init>()V

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v1, "available"

    new-instance v2, Lcom/playtika/extensions/payments/PaymentsIsAvailableFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/payments/PaymentsIsAvailableFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-object v0
.end method

.method public getTransactions()Ljava/lang/String;
    .locals 12

    .prologue
    .line 108
    const-string v6, ""

    .line 112
    .local v6, "result":Ljava/lang/String;
    iget-object v10, p0, Lcom/playtika/extensions/payments/PaymentsExtensionContext;->mPurchaseDatabase:Lcom/playtika/nativecode/payments/PurchaseDatabase;

    invoke-virtual {v10}, Lcom/playtika/nativecode/payments/PurchaseDatabase;->queryAllPurchasedItems()Ljava/util/ArrayList;

    move-result-object v8

    .line 114
    .local v8, "transactions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v8, :cond_0

    .line 118
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 119
    .local v3, "jarray":Lorg/json/JSONArray;
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_1

    .line 134
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    .line 143
    .end local v3    # "jarray":Lorg/json/JSONArray;
    :cond_0
    :goto_1
    return-object v6

    .line 119
    .restart local v3    # "jarray":Lorg/json/JSONArray;
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    .line 121
    .local v7, "row":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 122
    .local v1, "holder":Lorg/json/JSONObject;
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 123
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_2

    .line 131
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    .end local v1    # "holder":Lorg/json/JSONObject;
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3    # "jarray":Lorg/json/JSONArray;
    .end local v7    # "row":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v10

    move-object v0, v10

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 139
    const-string v6, ""

    goto :goto_1

    .line 126
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "holder":Lorg/json/JSONObject;
    .restart local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v3    # "jarray":Lorg/json/JSONArray;
    .restart local v7    # "row":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 127
    .local v5, "pairs":Ljava/util/Map$Entry;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 128
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 129
    .local v9, "value":Ljava/lang/String;
    invoke-virtual {v1, v4, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method initPayments()V
    .locals 3

    .prologue
    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/playtika/extensions/payments/PaymentsExtensionContext;->mHandler:Landroid/os/Handler;

    .line 73
    new-instance v0, Lcom/playtika/extensions/payments/PaymentsExtensionContext$PaymentExtensionPurchaseObserver;

    invoke-virtual {p0}, Lcom/playtika/extensions/payments/PaymentsExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/playtika/extensions/payments/PaymentsExtensionContext;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2}, Lcom/playtika/extensions/payments/PaymentsExtensionContext$PaymentExtensionPurchaseObserver;-><init>(Lcom/playtika/extensions/payments/PaymentsExtensionContext;Landroid/app/Activity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/playtika/extensions/payments/PaymentsExtensionContext;->mPurchaseObserver:Lcom/playtika/extensions/payments/PaymentsExtensionContext$PaymentExtensionPurchaseObserver;

    .line 74
    new-instance v0, Lcom/playtika/nativecode/payments/BillingService;

    invoke-direct {v0}, Lcom/playtika/nativecode/payments/BillingService;-><init>()V

    iput-object v0, p0, Lcom/playtika/extensions/payments/PaymentsExtensionContext;->mBillingService:Lcom/playtika/nativecode/payments/BillingService;

    .line 75
    iget-object v0, p0, Lcom/playtika/extensions/payments/PaymentsExtensionContext;->mBillingService:Lcom/playtika/nativecode/payments/BillingService;

    invoke-virtual {p0}, Lcom/playtika/extensions/payments/PaymentsExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/playtika/nativecode/payments/BillingService;->setContext(Landroid/content/Context;)V

    .line 76
    new-instance v0, Lcom/playtika/nativecode/payments/PurchaseDatabase;

    invoke-virtual {p0}, Lcom/playtika/extensions/payments/PaymentsExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/playtika/nativecode/payments/PurchaseDatabase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/playtika/extensions/payments/PaymentsExtensionContext;->mPurchaseDatabase:Lcom/playtika/nativecode/payments/PurchaseDatabase;

    .line 79
    iget-object v0, p0, Lcom/playtika/extensions/payments/PaymentsExtensionContext;->mPurchaseObserver:Lcom/playtika/extensions/payments/PaymentsExtensionContext$PaymentExtensionPurchaseObserver;

    invoke-static {v0}, Lcom/playtika/nativecode/payments/ResponseHandler;->register(Lcom/playtika/nativecode/payments/PurchaseObserver;)V

    .line 80
    iget-object v0, p0, Lcom/playtika/extensions/payments/PaymentsExtensionContext;->mBillingService:Lcom/playtika/nativecode/payments/BillingService;

    invoke-virtual {v0}, Lcom/playtika/nativecode/payments/BillingService;->checkBillingSupported()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/playtika/extensions/payments/PaymentsExtensionContext;->isBillingSupported:Ljava/lang/Boolean;

    .line 83
    iget-object v0, p0, Lcom/playtika/extensions/payments/PaymentsExtensionContext;->mBillingService:Lcom/playtika/nativecode/payments/BillingService;

    invoke-virtual {v0}, Lcom/playtika/nativecode/payments/BillingService;->restoreTransactions()Z

    .line 84
    return-void
.end method

.method purchase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "product_id"    # Ljava/lang/String;
    .param p2, "payload"    # Ljava/lang/String;

    .prologue
    .line 90
    iget-object v1, p0, Lcom/playtika/extensions/payments/PaymentsExtensionContext;->mBillingService:Lcom/playtika/nativecode/payments/BillingService;

    invoke-virtual {v1, p1, p2}, Lcom/playtika/nativecode/payments/BillingService;->requestPurchase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 91
    .local v0, "obj":Ljava/lang/Boolean;
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "obj":Ljava/lang/Boolean;
    return-object v0
.end method
