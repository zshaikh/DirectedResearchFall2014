.class public Lcom/nativex/common/billingtracking/InAppPurchaseResponseData;
.super Ljava/lang/Object;
.source "InAppPurchaseResponseData.java"


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

.field private successful:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsSuccessful"
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
    .line 81
    iget-object v0, p0, Lcom/nativex/common/billingtracking/InAppPurchaseResponseData;->log:Ljava/util/List;

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
    .line 65
    iget-object v0, p0, Lcom/nativex/common/billingtracking/InAppPurchaseResponseData;->messages:Ljava/util/List;

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
    .line 49
    iget-object v0, p0, Lcom/nativex/common/billingtracking/InAppPurchaseResponseData;->violations:Ljava/util/List;

    return-object v0
.end method

.method public isSuccessful()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/nativex/common/billingtracking/InAppPurchaseResponseData;->successful:Ljava/lang/Boolean;

    return-object v0
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
    .line 90
    .local p1, "log":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/common/LogItem;>;"
    iput-object p1, p0, Lcom/nativex/common/billingtracking/InAppPurchaseResponseData;->log:Ljava/util/List;

    .line 91
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
    .line 74
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/common/Message;>;"
    iput-object p1, p0, Lcom/nativex/common/billingtracking/InAppPurchaseResponseData;->messages:Ljava/util/List;

    .line 75
    return-void
.end method

.method public setSuccessful(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "successful"    # Ljava/lang/Boolean;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/nativex/common/billingtracking/InAppPurchaseResponseData;->successful:Ljava/lang/Boolean;

    .line 107
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
    .line 58
    .local p1, "violations":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/common/Violation;>;"
    iput-object p1, p0, Lcom/nativex/common/billingtracking/InAppPurchaseResponseData;->violations:Ljava/util/List;

    .line 59
    return-void
.end method
