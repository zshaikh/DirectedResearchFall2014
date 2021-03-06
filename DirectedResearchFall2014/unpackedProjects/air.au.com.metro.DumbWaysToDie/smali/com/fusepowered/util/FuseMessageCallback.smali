.class public Lcom/fusepowered/util/FuseMessageCallback;
.super Lcom/fusepowered/util/FuseCallback;
.source "FuseMessageCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/fusepowered/util/FuseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public accountLoginComplete(ILjava/lang/String;)V
    .locals 0
    .param p1, "accountType"    # I
    .param p2, "accountId"    # Ljava/lang/String;

    .prologue
    .line 31
    return-void
.end method

.method public adAvailabilityResponse(II)V
    .locals 0
    .param p1, "available"    # I
    .param p2, "error"    # I

    .prologue
    .line 103
    return-void
.end method

.method public callback()V
    .locals 0

    .prologue
    .line 11
    return-void
.end method

.method public chatListError(Lcom/fusepowered/util/FuseChatError;)V
    .locals 0
    .param p1, "error"    # Lcom/fusepowered/util/FuseChatError;

    .prologue
    .line 83
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
    .line 79
    .local p1, "chatMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/ChatMessage;>;"
    return-void
.end method

.method public friendAccepted(Ljava/lang/String;Lcom/fusepowered/util/FuseAcceptFriendError;)V
    .locals 0
    .param p1, "fuse_id"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/fusepowered/util/FuseAcceptFriendError;

    .prologue
    .line 58
    return-void
.end method

.method public friendAdded(Ljava/lang/String;Lcom/fusepowered/util/FuseAddFriendError;)V
    .locals 0
    .param p1, "fuse_id"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/fusepowered/util/FuseAddFriendError;

    .prologue
    .line 50
    return-void
.end method

.method public friendRejected(Ljava/lang/String;Lcom/fusepowered/util/FuseRejectFriendError;)V
    .locals 0
    .param p1, "fuse_id"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/fusepowered/util/FuseRejectFriendError;

    .prologue
    .line 62
    return-void
.end method

.method public friendRemoved(Ljava/lang/String;Lcom/fusepowered/util/FuseRemoveFriendError;)V
    .locals 0
    .param p1, "fuse_id"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/fusepowered/util/FuseRemoveFriendError;

    .prologue
    .line 54
    return-void
.end method

.method public friendsListError(Lcom/fusepowered/util/FuseFriendsListError;)V
    .locals 0
    .param p1, "error"    # Lcom/fusepowered/util/FuseFriendsListError;

    .prologue
    .line 75
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
    .line 71
    .local p1, "friendsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Player;>;"
    return-void
.end method

.method public friendsMigrated(Ljava/lang/String;Lcom/fusepowered/util/FuseMigrateFriendsError;)V
    .locals 0
    .param p1, "fuseId"    # Ljava/lang/String;
    .param p2, "migrateFriendsError"    # Lcom/fusepowered/util/FuseMigrateFriendsError;

    .prologue
    .line 67
    return-void
.end method

.method public gameConfigurationReceived()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public incentiveActionCompletedStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 42
    return-void
.end method

.method public mailAcknowledged(ILjava/lang/String;I)V
    .locals 0
    .param p1, "messageId"    # I
    .param p2, "fuse_id"    # Ljava/lang/String;
    .param p3, "requestID"    # I

    .prologue
    .line 95
    return-void
.end method

.method public mailError(Lcom/fusepowered/util/FuseMailError;I)V
    .locals 0
    .param p1, "error"    # Lcom/fusepowered/util/FuseMailError;
    .param p2, "requestID"    # I

    .prologue
    .line 99
    return-void
.end method

.method public mailListError(Lcom/fusepowered/util/FuseMailError;)V
    .locals 0
    .param p1, "error"    # Lcom/fusepowered/util/FuseMailError;

    .prologue
    .line 91
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
    .line 87
    .local p1, "mailMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Mail;>;"
    return-void
.end method

.method public notificationAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 19
    return-void
.end method

.method public rewardRedeemed(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "incentiveId"    # I
    .param p2, "amount"    # I
    .param p3, "rewardItemId"    # Ljava/lang/String;
    .param p4, "rewardItemName"    # Ljava/lang/String;

    .prologue
    .line 37
    return-void
.end method

.method public sessionLoginError(Lcom/fusepowered/util/FuseLoginError;)V
    .locals 0
    .param p1, "error"    # Lcom/fusepowered/util/FuseLoginError;

    .prologue
    .line 23
    return-void
.end method

.method public sessionStartReceived()V
    .locals 0

    .prologue
    .line 15
    return-void
.end method

.method public timeUpdated(I)V
    .locals 0
    .param p1, "timestamp"    # I

    .prologue
    .line 27
    return-void
.end method
