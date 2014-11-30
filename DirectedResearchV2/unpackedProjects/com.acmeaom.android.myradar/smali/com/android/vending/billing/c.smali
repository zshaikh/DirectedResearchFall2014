.class Lcom/android/vending/billing/c;
.super Lcom/android/vending/billing/a;
.source "ProGuard"


# instance fields
.field final c:[Ljava/lang/String;

.field final synthetic d:Lcom/android/vending/billing/BillingService;


# direct methods
.method public constructor <init>(Lcom/android/vending/billing/BillingService;I[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/vending/billing/c;->d:Lcom/android/vending/billing/BillingService;

    .line 264
    invoke-direct {p0, p1, p2}, Lcom/android/vending/billing/a;-><init>(Lcom/android/vending/billing/BillingService;I)V

    .line 265
    iput-object p3, p0, Lcom/android/vending/billing/c;->c:[Ljava/lang/String;

    .line 266
    return-void
.end method


# virtual methods
.method protected d()J
    .locals 4

    .prologue
    .line 270
    const-string v0, "CONFIRM_NOTIFICATIONS"

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/c;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 271
    const-string v1, "NOTIFY_IDS"

    iget-object v2, p0, Lcom/android/vending/billing/c;->c:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 272
    invoke-static {}, Lcom/android/vending/billing/BillingService;->e()Lcom/android/vending/billing/j;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/vending/billing/j;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 273
    const-string v1, "confirmNotifications"

    invoke-virtual {p0, v1, v0}, Lcom/android/vending/billing/c;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 274
    const-string v1, "REQUEST_ID"

    sget-wide v2, Lcom/android/vending/billing/g;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
