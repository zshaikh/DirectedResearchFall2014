.class public Lcom/nativex/monetization/business/RedeemDeviceBalanceResponseData;
.super Ljava/lang/Object;
.source "RedeemDeviceBalanceResponseData.java"


# instance fields
.field private log:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Log"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nativex/common/LogItem;",
            ">;"
        }
    .end annotation
.end field

.field private messages:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Messages"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nativex/common/Message;",
            ">;"
        }
    .end annotation
.end field

.field private receipts:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Receipts"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nativex/monetization/business/Receipt;",
            ">;"
        }
    .end annotation
.end field

.field private violations:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Violations"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nativex/common/Violation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nativex/common/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/nativex/monetization/business/RedeemDeviceBalanceResponseData;->messages:Ljava/util/List;

    return-object v0
.end method

.method public getReceipts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nativex/monetization/business/Receipt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/nativex/monetization/business/RedeemDeviceBalanceResponseData;->receipts:Ljava/util/List;

    return-object v0
.end method

.method public getViolations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nativex/common/Violation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/nativex/monetization/business/RedeemDeviceBalanceResponseData;->violations:Ljava/util/List;

    return-object v0
.end method

.method public setMessages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nativex/common/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/common/Message;>;"
    iput-object p1, p0, Lcom/nativex/monetization/business/RedeemDeviceBalanceResponseData;->messages:Ljava/util/List;

    .line 57
    return-void
.end method

.method public setReceipts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nativex/monetization/business/Receipt;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "receipts":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/monetization/business/Receipt;>;"
    iput-object p1, p0, Lcom/nativex/monetization/business/RedeemDeviceBalanceResponseData;->receipts:Ljava/util/List;

    .line 70
    return-void
.end method

.method public setViolations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nativex/common/Violation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "violations":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/common/Violation;>;"
    iput-object p1, p0, Lcom/nativex/monetization/business/RedeemDeviceBalanceResponseData;->violations:Ljava/util/List;

    .line 52
    return-void
.end method
