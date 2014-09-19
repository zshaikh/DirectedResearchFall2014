.class public abstract Lcom/fusepowered/util/FuseCallback;
.super Ljava/lang/Object;
.source "FuseCallback.java"


# instance fields
.field public fuseId:Ljava/lang/String;

.field public isClientRequestAd:Z

.field public requestId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract accountLoginComplete(ILjava/lang/String;)V
.end method

.method public abstract adAvailabilityResponse(II)V
.end method

.method public abstract callback()V
.end method

.method public abstract chatListError(Lcom/fusepowered/util/FuseChatError;)V
.end method

.method public abstract chatListReceived(Ljava/util/ArrayList;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/ChatMessage;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract friendAccepted(Ljava/lang/String;Lcom/fusepowered/util/FuseAcceptFriendError;)V
.end method

.method public abstract friendAdded(Ljava/lang/String;Lcom/fusepowered/util/FuseAddFriendError;)V
.end method

.method public abstract friendRejected(Ljava/lang/String;Lcom/fusepowered/util/FuseRejectFriendError;)V
.end method

.method public abstract friendRemoved(Ljava/lang/String;Lcom/fusepowered/util/FuseRemoveFriendError;)V
.end method

.method public abstract friendsListError(Lcom/fusepowered/util/FuseFriendsListError;)V
.end method

.method public abstract friendsListUpdated(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/Player;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract friendsMigrated(Ljava/lang/String;Lcom/fusepowered/util/FuseMigrateFriendsError;)V
.end method

.method public abstract gameConfigurationReceived()V
.end method

.method public abstract incentiveActionCompletedStatus(Ljava/lang/String;)V
.end method

.method public abstract mailAcknowledged(ILjava/lang/String;I)V
.end method

.method public abstract mailError(Lcom/fusepowered/util/FuseMailError;I)V
.end method

.method public abstract mailListError(Lcom/fusepowered/util/FuseMailError;)V
.end method

.method public abstract mailListReceived(Ljava/util/ArrayList;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/Mail;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract notificationAction(Ljava/lang/String;)V
.end method

.method public parseResponse(Lcom/fusepowered/util/Response;Lcom/fusepowered/util/ActionType;Ljava/lang/String;)Z
    .locals 2
    .parameter "response"
    .parameter "actionType"
    .parameter "gameDataRequestId"

    .prologue
    .line 15
    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p1}, Lcom/fusepowered/util/Response;->getXml()Ljava/lang/String;

    move-result-object v0

    .line 17
    .local v0, responseXml:Ljava/lang/String;
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 18
    if-eqz p2, :cond_0

    .line 19
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-static {p2, p3, v0, v1, p0}, Lcom/fusepowered/util/XMLParser;->parseResponse(Lcom/fusepowered/util/ActionType;Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;Lcom/fusepowered/util/FuseCallback;)Z

    move-result v1

    .line 23
    .end local v0           #responseXml:Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public abstract rewardRedeemed(IILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract sessionLoginError(Lcom/fusepowered/util/FuseLoginError;)V
.end method

.method public abstract sessionStartReceived()V
.end method

.method public abstract timeUpdated(I)V
.end method
