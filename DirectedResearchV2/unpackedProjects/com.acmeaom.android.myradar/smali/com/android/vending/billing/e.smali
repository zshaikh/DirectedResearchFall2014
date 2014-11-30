.class public Lcom/android/vending/billing/e;
.super Lcom/android/vending/billing/a;
.source "ProGuard"


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field final synthetic e:Lcom/android/vending/billing/BillingService;


# direct methods
.method public constructor <init>(Lcom/android/vending/billing/BillingService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/vending/billing/e;->e:Lcom/android/vending/billing/BillingService;

    .line 224
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/vending/billing/a;-><init>(Lcom/android/vending/billing/BillingService;I)V

    .line 225
    iput-object p2, p0, Lcom/android/vending/billing/e;->c:Ljava/lang/String;

    .line 226
    iput-object p3, p0, Lcom/android/vending/billing/e;->d:Ljava/lang/String;

    .line 227
    return-void
.end method


# virtual methods
.method public bridge synthetic a()I
    .locals 1

    .prologue
    .line 212
    invoke-super {p0}, Lcom/android/vending/billing/a;->a()I

    move-result v0

    return v0
.end method

.method protected a(Lcom/android/vending/billing/i;)V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/vending/billing/e;->e:Lcom/android/vending/billing/BillingService;

    invoke-static {v0, p0, p1}, Lcom/android/vending/billing/o;->a(Landroid/content/Context;Lcom/android/vending/billing/e;Lcom/android/vending/billing/i;)V

    .line 254
    return-void
.end method

.method public bridge synthetic b()Z
    .locals 1

    .prologue
    .line 212
    invoke-super {p0}, Lcom/android/vending/billing/a;->b()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic c()Z
    .locals 1

    .prologue
    .line 212
    invoke-super {p0}, Lcom/android/vending/billing/a;->c()Z

    move-result v0

    return v0
.end method

.method protected d()J
    .locals 4

    .prologue
    .line 231
    const-string v0, "REQUEST_PURCHASE"

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/e;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 232
    const-string v1, "ITEM_ID"

    iget-object v2, p0, Lcom/android/vending/billing/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/android/vending/billing/e;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 235
    const-string v1, "DEVELOPER_PAYLOAD"

    iget-object v2, p0, Lcom/android/vending/billing/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_0
    invoke-static {}, Lcom/android/vending/billing/BillingService;->e()Lcom/android/vending/billing/j;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/vending/billing/j;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 238
    const-string v0, "PURCHASE_INTENT"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 240
    if-nez v0, :cond_1

    .line 241
    const-string v0, "BillingService"

    const-string v1, "Error with requestPurchase"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    sget-wide v0, Lcom/android/vending/billing/g;->a:J

    .line 247
    :goto_0
    return-wide v0

    .line 245
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 246
    invoke-static {v0, v2}, Lcom/android/vending/billing/o;->a(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 247
    const-string v0, "REQUEST_ID"

    sget-wide v2, Lcom/android/vending/billing/g;->a:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method
