.class abstract Lcom/android/vending/billing/a;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field protected a:J

.field final synthetic b:Lcom/android/vending/billing/BillingService;

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/android/vending/billing/BillingService;I)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/vending/billing/a;->b:Lcom/android/vending/billing/BillingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput p2, p0, Lcom/android/vending/billing/a;->c:I

    .line 86
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/android/vending/billing/a;->c:I

    return v0
.end method

.method protected a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 167
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 168
    const-string v1, "BILLING_REQUEST"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v1, "API_VERSION"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 170
    const-string v1, "PACKAGE_NAME"

    iget-object v2, p0, Lcom/android/vending/billing/a;->b:Lcom/android/vending/billing/BillingService;

    invoke-virtual {v2}, Lcom/android/vending/billing/BillingService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-object v0
.end method

.method protected a(Landroid/os/RemoteException;)V
    .locals 2

    .prologue
    .line 146
    const-string v0, "BillingService"

    const-string v1, "remote billing service crashed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/vending/billing/BillingService;->a(Lcom/android/vending/billing/j;)Lcom/android/vending/billing/j;

    .line 148
    return-void
.end method

.method protected a(Lcom/android/vending/billing/i;)V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method protected a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 175
    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/android/vending/billing/i;->a(I)Lcom/android/vending/billing/i;

    .line 180
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 99
    invoke-virtual {p0}, Lcom/android/vending/billing/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    :goto_0
    return v0

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/android/vending/billing/a;->b:Lcom/android/vending/billing/BillingService;

    invoke-static {v1}, Lcom/android/vending/billing/BillingService;->a(Lcom/android/vending/billing/BillingService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    invoke-static {}, Lcom/android/vending/billing/BillingService;->d()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 108
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 4

    .prologue
    .line 121
    invoke-static {}, Lcom/android/vending/billing/BillingService;->e()Lcom/android/vending/billing/j;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 123
    :try_start_0
    invoke-virtual {p0}, Lcom/android/vending/billing/a;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/vending/billing/a;->a:J

    .line 127
    iget-wide v0, p0, Lcom/android/vending/billing/a;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 128
    invoke-static {}, Lcom/android/vending/billing/BillingService;->f()Ljava/util/HashMap;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/vending/billing/a;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :cond_0
    const/4 v0, 0x1

    .line 135
    :goto_0
    return v0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    invoke-virtual {p0, v0}, Lcom/android/vending/billing/a;->a(Landroid/os/RemoteException;)V

    .line 135
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract d()J
.end method
