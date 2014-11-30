.class public Lcom/fusepowered/util/FuseRegisterAccountCallback;
.super Lcom/fusepowered/util/FuseCallback;
.source "FuseRegisterAccountCallback.java"


# instance fields
.field private alias:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/fusepowered/util/FuseCallback;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/fusepowered/util/FuseRegisterAccountCallback;->alias:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public accountLoginComplete(ILjava/lang/String;)V
    .locals 0
    .param p1, "accountType"    # I
    .param p2, "accountId"    # Ljava/lang/String;

    .prologue
    .line 44
    return-void
.end method

.method public adAvailabilityResponse(II)V
    .locals 0
    .param p1, "available"    # I
    .param p2, "error"    # I

    .prologue
    .line 113
    return-void
.end method

.method public callback()V
    .locals 2

    .prologue
    .line 17
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v0}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/util/Account;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v0}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/util/FuseRegisterAccountCallback;->alias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/Account;->setAlias(Ljava/lang/String;)V

    .line 21
    :cond_0
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v0}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 22
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/ResponseValues;->setAccount(Lcom/fusepowered/util/Account;)V

    .line 24
    :cond_1
    return-void
.end method

.method public chatListError(Lcom/fusepowered/util/FuseChatError;)V
    .locals 0
    .param p1, "error"    # Lcom/fusepowered/util/FuseChatError;

    .prologue
    .line 93
    return-void
.end method

.method public chatListReceived(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .param p2, "fuse_id"    # Ljava/lang/String;
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

    .prologue
    .line 89
    .local p1, "chatMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/ChatMessage;>;"
    return-void
.end method

.method public friendAccepted(Ljava/lang/String;Lcom/fusepowered/util/FuseAcceptFriendError;)V
    .locals 0
    .param p1, "fuse_id"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/fusepowered/util/FuseAcceptFriendError;

    .prologue
    .line 68
    return-void
.end method

.method public friendAdded(Ljava/lang/String;Lcom/fusepowered/util/FuseAddFriendError;)V
    .locals 0
    .param p1, "fuse_id"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/fusepowered/util/FuseAddFriendError;

    .prologue
    .line 60
    return-void
.end method

.method public friendRejected(Ljava/lang/String;Lcom/fusepowered/util/FuseRejectFriendError;)V
    .locals 0
    .param p1, "fuse_id"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/fusepowered/util/FuseRejectFriendError;

    .prologue
    .line 72
    return-void
.end method

.method public friendRemoved(Ljava/lang/String;Lcom/fusepowered/util/FuseRemoveFriendError;)V
    .locals 0
    .param p1, "fuse_id"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/fusepowered/util/FuseRemoveFriendError;

    .prologue
    .line 64
    return-void
.end method

.method public friendsListError(Lcom/fusepowered/util/FuseFriendsListError;)V
    .locals 0
    .param p1, "error"    # Lcom/fusepowered/util/FuseFriendsListError;

    .prologue
    .line 85
    return-void
.end method

.method public friendsListUpdated(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/Player;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "friendsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Player;>;"
    return-void
.end method

.method public friendsMigrated(Ljava/lang/String;Lcom/fusepowered/util/FuseMigrateFriendsError;)V
    .locals 0
    .param p1, "fuseId"    # Ljava/lang/String;
    .param p2, "migrateFriendsError"    # Lcom/fusepowered/util/FuseMigrateFriendsError;

    .prologue
    .line 77
    return-void
.end method

.method public gameConfigurationReceived()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public incentiveActionCompletedStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 52
    return-void
.end method

.method public mailAcknowledged(ILjava/lang/String;I)V
    .locals 0
    .param p1, "messageId"    # I
    .param p2, "fuse_id"    # Ljava/lang/String;
    .param p3, "requestID"    # I

    .prologue
    .line 105
    return-void
.end method

.method public mailError(Lcom/fusepowered/util/FuseMailError;I)V
    .locals 0
    .param p1, "error"    # Lcom/fusepowered/util/FuseMailError;
    .param p2, "requestID"    # I

    .prologue
    .line 109
    return-void
.end method

.method public mailListError(Lcom/fusepowered/util/FuseMailError;)V
    .locals 0
    .param p1, "error"    # Lcom/fusepowered/util/FuseMailError;

    .prologue
    .line 101
    return-void
.end method

.method public mailListReceived(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .param p2, "fuse_id"    # Ljava/lang/String;
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

    .prologue
    .line 97
    .local p1, "mailMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Mail;>;"
    return-void
.end method

.method public notificationAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 32
    return-void
.end method

.method public rewardRedeemed(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "incentiveId"    # I
    .param p2, "amount"    # I
    .param p3, "rewardItemId"    # Ljava/lang/String;
    .param p4, "rewardItemName"    # Ljava/lang/String;

    .prologue
    .line 48
    return-void
.end method

.method public sessionLoginError(Lcom/fusepowered/util/FuseLoginError;)V
    .locals 0
    .param p1, "error"    # Lcom/fusepowered/util/FuseLoginError;

    .prologue
    .line 36
    return-void
.end method

.method public sessionStartReceived()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public timeUpdated(I)V
    .locals 0
    .param p1, "timestamp"    # I

    .prologue
    .line 40
    return-void
.end method
