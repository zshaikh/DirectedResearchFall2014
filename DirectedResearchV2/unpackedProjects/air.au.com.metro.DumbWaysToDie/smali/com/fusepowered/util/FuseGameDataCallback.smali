.class public abstract Lcom/fusepowered/util/FuseGameDataCallback;
.super Lcom/fusepowered/util/FuseCallback;
.source "FuseGameDataCallback.java"


# instance fields
.field fuseGameDataError:Lcom/fusepowered/util/FuseGameDataError;

.field gameKeyValuePairs:Lcom/fusepowered/util/GameKeyValuePairs;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/fusepowered/util/FuseCallback;-><init>()V

    .line 9
    new-instance v0, Lcom/fusepowered/util/GameKeyValuePairs;

    invoke-direct {v0}, Lcom/fusepowered/util/GameKeyValuePairs;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/util/FuseGameDataCallback;->gameKeyValuePairs:Lcom/fusepowered/util/GameKeyValuePairs;

    return-void
.end method


# virtual methods
.method public accountLoginComplete(ILjava/lang/String;)V
    .locals 0
    .param p1, "accountType"    # I
    .param p2, "accountId"    # Ljava/lang/String;

    .prologue
    .line 30
    return-void
.end method

.method public adAvailabilityResponse(II)V
    .locals 0
    .param p1, "available"    # I
    .param p2, "error"    # I

    .prologue
    .line 99
    return-void
.end method

.method public abstract attackRobberyLogError(Lcom/fusepowered/util/FuseAttackErrors;)V
.end method

.method public abstract attackRobberyLogReceived(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/UserTransactionLog;",
            ">;)V"
        }
    .end annotation
.end method

.method public callback()V
    .locals 0

    .prologue
    .line 14
    return-void
.end method

.method public chatListError(Lcom/fusepowered/util/FuseChatError;)V
    .locals 0
    .param p1, "error"    # Lcom/fusepowered/util/FuseChatError;

    .prologue
    .line 82
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
    .line 78
    .local p1, "chatMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/ChatMessage;>;"
    return-void
.end method

.method public abstract enemiesListError(Lcom/fusepowered/util/FuseEnemiesListError;)V
.end method

.method public abstract enemiesListResult(Ljava/util/ArrayList;)V
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
    .line 74
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
    .line 70
    .local p1, "friendsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Player;>;"
    return-void
.end method

.method public friendsMigrated(Ljava/lang/String;Lcom/fusepowered/util/FuseMigrateFriendsError;)V
    .locals 0
    .param p1, "fuseId"    # Ljava/lang/String;
    .param p2, "migrateFriendsError"    # Lcom/fusepowered/util/FuseMigrateFriendsError;

    .prologue
    .line 66
    return-void
.end method

.method public gameConfigurationReceived()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public abstract gameDataError(Lcom/fusepowered/util/FuseGameDataError;)V
.end method

.method public abstract gameDataError(Lcom/fusepowered/util/FuseGameDataError;I)V
.end method

.method public abstract gameDataReceived(Ljava/lang/String;Lcom/fusepowered/util/GameKeyValuePairs;)V
.end method

.method public abstract gameDataReceived(Ljava/lang/String;Lcom/fusepowered/util/GameKeyValuePairs;I)V
.end method

.method public abstract gameDataSetAcknowledged(I)V
.end method

.method public incentiveActionCompletedStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 38
    return-void
.end method

.method public mailAcknowledged(ILjava/lang/String;I)V
    .locals 0
    .param p1, "messageId"    # I
    .param p2, "fuse_id"    # Ljava/lang/String;
    .param p3, "requestID"    # I

    .prologue
    .line 94
    return-void
.end method

.method public mailError(Lcom/fusepowered/util/FuseMailError;I)V
    .locals 0
    .param p1, "error"    # Lcom/fusepowered/util/FuseMailError;
    .param p2, "requestID"    # I

    .prologue
    .line 103
    return-void
.end method

.method public mailListError(Lcom/fusepowered/util/FuseMailError;)V
    .locals 0
    .param p1, "error"    # Lcom/fusepowered/util/FuseMailError;

    .prologue
    .line 90
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
    .line 86
    .local p1, "mailMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Mail;>;"
    return-void
.end method

.method public notificationAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 34
    return-void
.end method

.method public rewardRedeemed(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "incentiveId"    # I
    .param p2, "amount"    # I
    .param p3, "rewardItemId"    # Ljava/lang/String;
    .param p4, "rewardItemName"    # Ljava/lang/String;

    .prologue
    .line 42
    return-void
.end method

.method public sessionLoginError(Lcom/fusepowered/util/FuseLoginError;)V
    .locals 0
    .param p1, "error"    # Lcom/fusepowered/util/FuseLoginError;

    .prologue
    .line 22
    return-void
.end method

.method public sessionStartReceived()V
    .locals 0

    .prologue
    .line 18
    return-void
.end method

.method public setFuseGameDataError(Lcom/fusepowered/util/FuseGameDataError;)V
    .locals 0
    .param p1, "error"    # Lcom/fusepowered/util/FuseGameDataError;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/fusepowered/util/FuseGameDataCallback;->fuseGameDataError:Lcom/fusepowered/util/FuseGameDataError;

    .line 152
    invoke-virtual {p0, p1}, Lcom/fusepowered/util/FuseGameDataCallback;->gameDataError(Lcom/fusepowered/util/FuseGameDataError;)V

    .line 153
    return-void
.end method

.method public setFuseGameDataError(Lcom/fusepowered/util/FuseGameDataError;I)V
    .locals 0
    .param p1, "error"    # Lcom/fusepowered/util/FuseGameDataError;
    .param p2, "requestId"    # I

    .prologue
    .line 145
    iput-object p1, p0, Lcom/fusepowered/util/FuseGameDataCallback;->fuseGameDataError:Lcom/fusepowered/util/FuseGameDataError;

    .line 146
    iput p2, p0, Lcom/fusepowered/util/FuseGameDataCallback;->requestId:I

    .line 147
    invoke-virtual {p0, p1, p2}, Lcom/fusepowered/util/FuseGameDataCallback;->gameDataError(Lcom/fusepowered/util/FuseGameDataError;I)V

    .line 148
    return-void
.end method

.method public setGameData(Ljava/lang/String;Lcom/fusepowered/util/GameKeyValuePairs;)V
    .locals 6
    .param p1, "fuseId"    # Ljava/lang/String;
    .param p2, "gameKeyValuePairs"    # Lcom/fusepowered/util/GameKeyValuePairs;

    .prologue
    .line 124
    iput-object p2, p0, Lcom/fusepowered/util/FuseGameDataCallback;->gameKeyValuePairs:Lcom/fusepowered/util/GameKeyValuePairs;

    .line 125
    iput-object p1, p0, Lcom/fusepowered/util/FuseGameDataCallback;->fuseId:Ljava/lang/String;

    .line 126
    invoke-virtual {p2}, Lcom/fusepowered/util/GameKeyValuePairs;->getRequestIdToObjectMapKeyMap()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 127
    .local v3, "requestIdEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 129
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 131
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 132
    .local v2, "requestId":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 133
    .local v4, "rowKey":Ljava/lang/String;
    invoke-virtual {p2, v2}, Lcom/fusepowered/util/GameKeyValuePairs;->setReqId(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2, v4}, Lcom/fusepowered/util/GameKeyValuePairs;->setRowKey(Ljava/lang/String;)V

    .line 135
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, p1, p2, v5}, Lcom/fusepowered/util/FuseGameDataCallback;->gameDataReceived(Ljava/lang/String;Lcom/fusepowered/util/GameKeyValuePairs;I)V

    goto :goto_0

    .line 140
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "requestId":Ljava/lang/String;
    .end local v4    # "rowKey":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/fusepowered/util/FuseGameDataCallback;->gameDataReceived(Ljava/lang/String;Lcom/fusepowered/util/GameKeyValuePairs;)V

    .line 142
    :cond_1
    return-void
.end method

.method public timeUpdated(I)V
    .locals 0
    .param p1, "timestamp"    # I

    .prologue
    .line 26
    return-void
.end method
