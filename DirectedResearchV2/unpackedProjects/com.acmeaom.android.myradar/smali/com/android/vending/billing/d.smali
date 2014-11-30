.class Lcom/android/vending/billing/d;
.super Lcom/android/vending/billing/a;
.source "ProGuard"


# instance fields
.field c:J

.field final d:[Ljava/lang/String;

.field final synthetic e:Lcom/android/vending/billing/BillingService;


# direct methods
.method public constructor <init>(Lcom/android/vending/billing/BillingService;I[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/vending/billing/d;->e:Lcom/android/vending/billing/BillingService;

    .line 287
    invoke-direct {p0, p1, p2}, Lcom/android/vending/billing/a;-><init>(Lcom/android/vending/billing/BillingService;I)V

    .line 288
    iput-object p3, p0, Lcom/android/vending/billing/d;->d:[Ljava/lang/String;

    .line 289
    return-void
.end method


# virtual methods
.method protected a(Landroid/os/RemoteException;)V
    .locals 2

    .prologue
    .line 306
    invoke-super {p0, p1}, Lcom/android/vending/billing/a;->a(Landroid/os/RemoteException;)V

    .line 307
    iget-wide v0, p0, Lcom/android/vending/billing/d;->c:J

    invoke-static {v0, v1}, Lcom/android/vending/billing/q;->a(J)V

    .line 308
    return-void
.end method

.method protected d()J
    .locals 4

    .prologue
    .line 293
    invoke-static {}, Lcom/android/vending/billing/q;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/vending/billing/d;->c:J

    .line 295
    const-string v0, "GET_PURCHASE_INFORMATION"

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/d;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 296
    const-string v1, "NONCE"

    iget-wide v2, p0, Lcom/android/vending/billing/d;->c:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 297
    const-string v1, "NOTIFY_IDS"

    iget-object v2, p0, Lcom/android/vending/billing/d;->d:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 298
    invoke-static {}, Lcom/android/vending/billing/BillingService;->e()Lcom/android/vending/billing/j;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/vending/billing/j;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 299
    const-string v1, "getPurchaseInformation"

    invoke-virtual {p0, v1, v0}, Lcom/android/vending/billing/d;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 300
    const-string v1, "REQUEST_ID"

    sget-wide v2, Lcom/android/vending/billing/g;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
