.class public Lcom/gamesys/android/billing/common/fwk/BuyableItem;
.super Ljava/lang/Object;
.source "BuyableItem.java"


# instance fields
.field public final signed_item:Ljava/lang/String;

.field public final sku:Ljava/lang/String;

.field public final thirdPartyId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "sku"    # Ljava/lang/String;
    .param p2, "signed_item"    # Ljava/lang/String;

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/gamesys/android/billing/common/fwk/BuyableItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "sku"    # Ljava/lang/String;
    .param p2, "signed_item"    # Ljava/lang/String;
    .param p3, "thirdPartyId"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/gamesys/android/billing/common/fwk/BuyableItem;->sku:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/gamesys/android/billing/common/fwk/BuyableItem;->signed_item:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/gamesys/android/billing/common/fwk/BuyableItem;->thirdPartyId:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gamesys/android/billing/common/fwk/BuyableItem;->sku:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/gamesys/android/billing/common/fwk/BuyableItem;->signed_item:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
