.class public Lcom/fusepowered/util/FuseGameDataCallbackImpl;
.super Lcom/fusepowered/util/FuseGameDataCallback;
.source "FuseGameDataCallbackImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/fusepowered/util/FuseGameDataCallback;-><init>()V

    .line 9
    return-void
.end method


# virtual methods
.method public adAvailabilityResponse(II)V
    .locals 0
    .parameter "available"
    .parameter "error"

    .prologue
    .line 54
    return-void
.end method

.method public attackRobberyLogError(Lcom/fusepowered/util/FuseAttackErrors;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 45
    return-void
.end method

.method public attackRobberyLogReceived(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/UserTransactionLog;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, attackRoberyLog:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/fusepowered/util/UserTransactionLog;>;"
    return-void
.end method

.method public enemiesListError(Lcom/fusepowered/util/FuseEnemiesListError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 37
    return-void
.end method

.method public enemiesListResult(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
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
    .line 33
    .local p1, enemiesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/fusepowered/util/Player;>;"
    return-void
.end method

.method public friendsMigrated(Ljava/lang/String;Lcom/fusepowered/util/FuseMigrateFriendsError;)V
    .locals 0
    .parameter "fuseId"
    .parameter "migrateFriendsError"

    .prologue
    .line 50
    return-void
.end method

.method public gameDataError(Lcom/fusepowered/util/FuseGameDataError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 21
    return-void
.end method

.method public gameDataError(Lcom/fusepowered/util/FuseGameDataError;I)V
    .locals 0
    .parameter "error"
    .parameter "requestId"

    .prologue
    .line 25
    return-void
.end method

.method public gameDataReceived(Ljava/lang/String;Lcom/fusepowered/util/GameKeyValuePairs;)V
    .locals 0
    .parameter "fuseId"
    .parameter "gameKeyValuePairs"

    .prologue
    .line 13
    return-void
.end method

.method public gameDataReceived(Ljava/lang/String;Lcom/fusepowered/util/GameKeyValuePairs;I)V
    .locals 0
    .parameter "fuseId"
    .parameter "gameKeyValuePairs"
    .parameter "requestId"

    .prologue
    .line 17
    return-void
.end method

.method public gameDataSetAcknowledged(I)V
    .locals 0
    .parameter "requestId"

    .prologue
    .line 29
    return-void
.end method
