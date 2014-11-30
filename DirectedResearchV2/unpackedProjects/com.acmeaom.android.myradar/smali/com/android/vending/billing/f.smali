.class public Lcom/android/vending/billing/f;
.super Lcom/android/vending/billing/a;
.source "ProGuard"


# instance fields
.field c:J

.field final synthetic d:Lcom/android/vending/billing/BillingService;


# direct methods
.method public constructor <init>(Lcom/android/vending/billing/BillingService;)V
    .locals 1

    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/vending/billing/f;->d:Lcom/android/vending/billing/BillingService;

    .line 321
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/vending/billing/a;-><init>(Lcom/android/vending/billing/BillingService;I)V

    .line 322
    return-void
.end method


# virtual methods
.method public bridge synthetic a()I
    .locals 1

    .prologue
    .line 314
    invoke-super {p0}, Lcom/android/vending/billing/a;->a()I

    move-result v0

    return v0
.end method

.method protected a(Landroid/os/RemoteException;)V
    .locals 2

    .prologue
    .line 338
    invoke-super {p0, p1}, Lcom/android/vending/billing/a;->a(Landroid/os/RemoteException;)V

    .line 339
    iget-wide v0, p0, Lcom/android/vending/billing/f;->c:J

    invoke-static {v0, v1}, Lcom/android/vending/billing/q;->a(J)V

    .line 340
    return-void
.end method

.method protected a(Lcom/android/vending/billing/i;)V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/vending/billing/f;->d:Lcom/android/vending/billing/BillingService;

    invoke-static {v0, p0, p1}, Lcom/android/vending/billing/o;->a(Landroid/content/Context;Lcom/android/vending/billing/f;Lcom/android/vending/billing/i;)V

    .line 345
    return-void
.end method

.method public bridge synthetic b()Z
    .locals 1

    .prologue
    .line 314
    invoke-super {p0}, Lcom/android/vending/billing/a;->b()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic c()Z
    .locals 1

    .prologue
    .line 314
    invoke-super {p0}, Lcom/android/vending/billing/a;->c()Z

    move-result v0

    return v0
.end method

.method protected d()J
    .locals 4

    .prologue
    .line 326
    invoke-static {}, Lcom/android/vending/billing/q;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/vending/billing/f;->c:J

    .line 328
    const-string v0, "RESTORE_TRANSACTIONS"

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/f;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 329
    const-string v1, "NONCE"

    iget-wide v2, p0, Lcom/android/vending/billing/f;->c:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 330
    invoke-static {}, Lcom/android/vending/billing/BillingService;->e()Lcom/android/vending/billing/j;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/vending/billing/j;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 331
    const-string v1, "restoreTransactions"

    invoke-virtual {p0, v1, v0}, Lcom/android/vending/billing/f;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 332
    const-string v1, "REQUEST_ID"

    sget-wide v2, Lcom/android/vending/billing/g;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
