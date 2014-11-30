.class public Lcom/nativex/monetization/business/GetDeviceBalanceResponseData;
.super Ljava/lang/Object;
.source "GetDeviceBalanceResponseData.java"


# instance fields
.field private balances:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Balances"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nativex/monetization/business/Balance;",
            ">;"
        }
    .end annotation
.end field

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
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/nativex/monetization/business/GetDeviceBalanceResponseData;->balances:Ljava/util/List;

    .line 36
    iput-object v0, p0, Lcom/nativex/monetization/business/GetDeviceBalanceResponseData;->violations:Ljava/util/List;

    .line 39
    iput-object v0, p0, Lcom/nativex/monetization/business/GetDeviceBalanceResponseData;->messages:Ljava/util/List;

    .line 42
    iput-object v0, p0, Lcom/nativex/monetization/business/GetDeviceBalanceResponseData;->log:Ljava/util/List;

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
    .line 69
    iget-object v0, p0, Lcom/nativex/monetization/business/GetDeviceBalanceResponseData;->balances:Ljava/util/List;

    return-object v0
.end method

.method public getLog()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nativex/common/LogItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nativex/monetization/business/GetDeviceBalanceResponseData;->log:Ljava/util/List;

    return-object v0
.end method

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
    .line 55
    iget-object v0, p0, Lcom/nativex/monetization/business/GetDeviceBalanceResponseData;->messages:Ljava/util/List;

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
    iget-object v0, p0, Lcom/nativex/monetization/business/GetDeviceBalanceResponseData;->violations:Ljava/util/List;

    return-object v0
.end method

.method public setBalances(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nativex/monetization/business/Balance;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "balances":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/monetization/business/Balance;>;"
    iput-object p1, p0, Lcom/nativex/monetization/business/GetDeviceBalanceResponseData;->balances:Ljava/util/List;

    .line 66
    return-void
.end method

.method public setLog(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nativex/common/LogItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "log":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/common/LogItem;>;"
    iput-object p1, p0, Lcom/nativex/monetization/business/GetDeviceBalanceResponseData;->log:Ljava/util/List;

    .line 79
    return-void
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
    .line 60
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/common/Message;>;"
    iput-object p1, p0, Lcom/nativex/monetization/business/GetDeviceBalanceResponseData;->messages:Ljava/util/List;

    .line 61
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
    iput-object p1, p0, Lcom/nativex/monetization/business/GetDeviceBalanceResponseData;->violations:Ljava/util/List;

    .line 52
    return-void
.end method
