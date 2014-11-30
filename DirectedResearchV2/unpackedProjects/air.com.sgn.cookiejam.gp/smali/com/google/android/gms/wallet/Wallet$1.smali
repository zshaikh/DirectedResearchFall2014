.class final Lcom/google/android/gms/wallet/Wallet$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/Wallet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/Api$b",
        "<",
        "Lcom/google/android/gms/internal/iu;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic b(Landroid/content/Context;Lcom/google/android/gms/internal/dt;Lcom/google/android/gms/common/api/GoogleApiClient$ApiOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$a;
    .locals 1

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/gms/wallet/Wallet$1;->h(Landroid/content/Context;Lcom/google/android/gms/internal/dt;Lcom/google/android/gms/common/api/GoogleApiClient$ApiOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/internal/iu;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public h(Landroid/content/Context;Lcom/google/android/gms/internal/dt;Lcom/google/android/gms/common/api/GoogleApiClient$ApiOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/internal/iu;
    .locals 8

    instance-of v1, p1, Landroid/app/Activity;

    const-string v2, "An Activity must be used for Wallet APIs"

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/eg;->b(ZLjava/lang/Object;)V

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v2, v0

    if-eqz p3, :cond_0

    instance-of v1, p3, Lcom/google/android/gms/wallet/Wallet$WalletOptions;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const-string v3, "WalletOptions must be used for Wallet APIs"

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/eg;->b(ZLjava/lang/Object;)V

    if-eqz p3, :cond_2

    check-cast p3, Lcom/google/android/gms/wallet/Wallet$WalletOptions;

    move-object v3, p3

    :goto_1
    new-instance v1, Lcom/google/android/gms/internal/iu;

    iget v5, v3, Lcom/google/android/gms/wallet/Wallet$WalletOptions;->environment:I

    invoke-virtual {p2}, Lcom/google/android/gms/internal/dt;->getAccountName()Ljava/lang/String;

    move-result-object v6

    iget v7, v3, Lcom/google/android/gms/wallet/Wallet$WalletOptions;->theme:I

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/iu;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;ILjava/lang/String;I)V

    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/google/android/gms/wallet/Wallet$WalletOptions;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/google/android/gms/wallet/Wallet$WalletOptions;-><init>(Lcom/google/android/gms/wallet/Wallet$1;)V

    move-object v3, v1

    goto :goto_1
.end method
