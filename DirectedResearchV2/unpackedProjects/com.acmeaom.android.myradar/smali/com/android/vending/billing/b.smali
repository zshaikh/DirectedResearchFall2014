.class Lcom/android/vending/billing/b;
.super Lcom/android/vending/billing/a;
.source "ProGuard"


# instance fields
.field final synthetic c:Lcom/android/vending/billing/BillingService;


# direct methods
.method public constructor <init>(Lcom/android/vending/billing/BillingService;)V
    .locals 1

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/vending/billing/b;->c:Lcom/android/vending/billing/BillingService;

    .line 191
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/vending/billing/a;-><init>(Lcom/android/vending/billing/BillingService;I)V

    .line 192
    return-void
.end method


# virtual methods
.method protected d()J
    .locals 2

    .prologue
    .line 196
    const-string v0, "CHECK_BILLING_SUPPORTED"

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/b;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 197
    invoke-static {}, Lcom/android/vending/billing/BillingService;->e()Lcom/android/vending/billing/j;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/vending/billing/j;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 198
    const-string v1, "RESPONSE_CODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 203
    sget-object v1, Lcom/android/vending/billing/i;->a:Lcom/android/vending/billing/i;

    invoke-virtual {v1}, Lcom/android/vending/billing/i;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 204
    :goto_0
    invoke-static {v0}, Lcom/android/vending/billing/o;->a(Z)V

    .line 205
    sget-wide v0, Lcom/android/vending/billing/g;->a:J

    return-wide v0

    .line 203
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
