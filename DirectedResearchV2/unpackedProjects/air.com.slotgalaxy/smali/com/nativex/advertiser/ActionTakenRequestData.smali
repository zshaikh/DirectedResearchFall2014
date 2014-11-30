.class public Lcom/nativex/advertiser/ActionTakenRequestData;
.super Ljava/lang/Object;
.source "ActionTakenRequestData.java"


# instance fields
.field private actionId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ActionId"
    .end annotation
.end field

.field private isHacked:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsHacked"
    .end annotation
.end field

.field private udids:Lcom/nativex/common/UDIDs;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UDIDs"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionId()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nativex/advertiser/ActionTakenRequestData;->actionId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getIsHacked()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/nativex/advertiser/ActionTakenRequestData;->isHacked:Ljava/lang/String;

    return-object v0
.end method

.method public getUdids()Lcom/nativex/common/UDIDs;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/nativex/advertiser/ActionTakenRequestData;->udids:Lcom/nativex/common/UDIDs;

    return-object v0
.end method

.method public setActionId(I)V
    .locals 1
    .param p1, "actionId"    # I

    .prologue
    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/nativex/advertiser/ActionTakenRequestData;->actionId:Ljava/lang/Integer;

    .line 57
    return-void
.end method

.method public setIsHacked(Ljava/lang/String;)V
    .locals 0
    .param p1, "isFirstRun"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/nativex/advertiser/ActionTakenRequestData;->isHacked:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setUdids(Lcom/nativex/common/UDIDs;)V
    .locals 2
    .param p1, "udids"    # Lcom/nativex/common/UDIDs;

    .prologue
    .line 44
    if-nez p1, :cond_0

    .line 45
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "UDIDs must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    iput-object p1, p0, Lcom/nativex/advertiser/ActionTakenRequestData;->udids:Lcom/nativex/common/UDIDs;

    .line 48
    return-void
.end method
