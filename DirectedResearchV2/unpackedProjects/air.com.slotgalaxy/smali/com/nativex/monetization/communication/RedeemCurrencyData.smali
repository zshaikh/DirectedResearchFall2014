.class public Lcom/nativex/monetization/communication/RedeemCurrencyData;
.super Ljava/lang/Object;
.source "RedeemCurrencyData.java"


# instance fields
.field allBalances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nativex/monetization/business/Balance;",
            ">;"
        }
    .end annotation
.end field

.field balances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nativex/monetization/business/Balance;",
            ">;"
        }
    .end annotation
.end field

.field messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nativex/common/Message;",
            ">;"
        }
    .end annotation
.end field

.field receipts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBalances()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nativex/monetization/business/Balance;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/nativex/monetization/communication/RedeemCurrencyData;->balances:Ljava/util/List;

    return-object v0
.end method

.method public getReceipts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/nativex/monetization/communication/RedeemCurrencyData;->receipts:Ljava/util/List;

    return-object v0
.end method

.method public showAlert(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nativex/monetization/communication/RedeemCurrencyData;->messages:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 32
    invoke-static {}, Lcom/nativex/monetization/manager/DialogManager;->getInstance()Lcom/nativex/monetization/manager/DialogManager;

    move-result-object v0

    iget-object v1, p0, Lcom/nativex/monetization/communication/RedeemCurrencyData;->messages:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1, v1, v2}, Lcom/nativex/monetization/manager/DialogManager;->showMessagesDialog(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Landroid/app/Dialog;

    .line 34
    :cond_0
    return-void
.end method
